uint64_t sub_10118958C()
{
  v106 = v0;
  if ((sub_10098EABC(&_mh_execute_header, "replace(strokes:with:usingActionString:selectNewStrokes:animateChange:)", 71, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 813) & 1) == 0 || (*(v0[41] + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong(), (v0[67] = Strong) == 0))
  {
LABEL_6:

    goto LABEL_7;
  }

  v2 = Strong;
  if ([Strong documentIsSharedReadOnly])
  {

LABEL_7:

    v3 = v0[1];

    return v3();
  }

  v5 = [v2 pkDrawingProvider];
  v0[68] = v5;
  v104 = v0;
  v91 = v5;
  v89 = v2;
  if (!v5)
  {
    v103 = objc_opt_self();
    LODWORD(v22) = [v103 _atomicIncrementAssertCount];
    v105 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v105);
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
LABEL_62:
      swift_once();
    }

    v0 = v104;
    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v22;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v30;
    v31 = sub_1005CF04C();
    *(inited + 104) = v31;
    *(inited + 72) = v23;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 825;
    v33 = v105;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v23;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    [v103 handleFailureInFunction:v40 file:v41 lineNumber:825 isFatal:0 format:v42 args:v39];

    goto LABEL_6;
  }

  v6 = v0[37];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v0[61];
    v9 = v0[54];
    v101 = *(v8 + 16);
    v10 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = (v8 + 8);
    v99 = *(v8 + 72);
    v12 = _swiftEmptyArrayStorage;
    do
    {
      v13 = v0[62];
      v14 = v0[60];
      v101(v13, v10, v14);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v16 = v12;
      v17 = [(objc_class *)isa _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v16;
      (*v11)(v13, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100B356D0(0, v16[2] + 1, 1, v16);
      }

      v19 = v12[2];
      v18 = v12[3];
      v0 = v104;
      if (v19 >= v18 >> 1)
      {
        v12 = sub_100B356D0(v18 > 1, v19 + 1, 1, v12);
      }

      v20 = v104[59];
      v21 = v104[53];
      v12[2] = v19 + 1;
      (*(v9 + 32))(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v20, v21);
      v10 += v99;
      --v7;
    }

    while (v7);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v43 = [v91 strokeUUIDsForNonInteractiveDrawings];
  sub_10119D3B8(&qword_1019FB870, &type metadata accessor for UUID);
  v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v92 = v12[2];
  if (v92)
  {
    v44 = v0[54];
    v86 = v0[49];
    v27 = (v0[41] + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recentlyReplacedStrokes);
    v93 = v12 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    swift_beginAccess();
    v23 = 0;
    v45 = 0;
    v102 = v22;
    v103 = (v44 + 16);
    v100 = v22 + 56;
    v46 = (v44 + 8);
    v83 = (v44 + 32);
    v94 = v44;
    v95 = v12;
    v84 = (v44 + 56);
    v85 = (v44 + 48);
    v90 = v27;
    do
    {
      v97 = v23;
      if (v45 >= v12[2])
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v48 = *(v94 + 72);
      v96 = v45;
      v49 = *(v94 + 16);
      v49(v0[58], &v93[v48 * v45], v0[53]);
      v50 = v102;
      if (*(v102 + 16))
      {
        v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v52 = -1 << *(v102 + 32);
        v53 = v51 & ~v52;
        if ((*(v100 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
        {
          v54 = ~v52;
          while (1)
          {
            v55 = v0[57];
            v56 = v0[53];
            v49(v55, (*(v50 + 48) + v53 * v48), v56);
            sub_10119D3B8(&qword_1019F37C0, &type metadata accessor for UUID);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v58 = *v46;
            (*v46)(v55, v56);
            if (v57)
            {
              break;
            }

            v53 = (v53 + 1) & v54;
            v50 = v102;
            v0 = v104;
            if (((*(v100 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          v77 = v104[58];
          v78 = v104[53];

          v58(v77, v78);
          if (v97)
          {
LABEL_47:
            if (qword_1019F20B0 != -1)
            {
              swift_once();
            }

            v79 = static OS_os_log.crlWarning;
            v80 = static os_log_type_t.default.getter();
            sub_100005404(v79, &_mh_execute_header, v80, "Intelligence Provider: Trying to replace a previously replaced stroke, skipping replacement", 91, 2, _swiftEmptyArrayStorage);
          }

          v0 = v104;
          goto LABEL_7;
        }
      }

LABEL_32:
      if (v97)
      {
        v23 = 1;
        v27 = v90;
      }

      else
      {
        v59 = v0[58];
        v27 = v90;
        v60 = v90[1];

        v23 = sub_10079C3B4(v59, v60);
      }

      v61 = v0[57];
      v22 = v0[58];
      v62 = v0[56];
      v63 = v0[53];
      swift_beginAccess();
      v49(v62, v22, v63);
      LODWORD(v22) = sub_100E6AF38(v61, v62);
      v64 = v63;
      v65 = *v46;
      (*v46)(v61, v64);
      v12 = v95;
      if (v22)
      {
        v98 = v23;
        v66 = v27[3];
        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v67 = v27[2];
        v23 = &qword_1019F6990;
        if (v66 >= *(v67 + 16))
        {
          goto LABEL_59;
        }

        v69 = v0[52];
        v68 = v0[53];
        v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
        v87 = *(v86 + 72) * v66;
        sub_10000BE14(v67 + v88 + v87, v69, &qword_1019F6990);
        if ((*v85)(v69, 1, v68) == 1)
        {
          sub_10000CAAC(v0[52], &qword_1019F6990);
        }

        else
        {
          v70 = v0[55];
          v82 = v0[53];
          v71 = v65;
          v72 = v0[51];
          (*v83)(v70, v0[52]);
          sub_100ED6D70(v70, v72);
          v73 = v72;
          v65 = v71;
          sub_10000CAAC(v73, &qword_1019F6990);
          v71(v70, v82);
        }

        v74 = v0[53];
        v75 = v0[50];
        v49(v75, v0[58], v74);
        (*v84)(v75, 0, 1, v74);
        v22 = v27[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27[2] = v22;
        v23 = v98;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_10113CF84(v22);
          v27[2] = v22;
        }

        if (v66 >= *(v22 + 16))
        {
          goto LABEL_60;
        }

        sub_100803880(v0[50], v22 + v88 + v87);
        v27[2] = v22;
        if (!*v27)
        {
          goto LABEL_61;
        }

        v27[3] = (v66 + 1) % *v27;
      }

      v45 = v96 + 1;
      v22 = v0[58];
      v47 = v0[53];
      swift_endAccess();
      v65(v22, v47);
    }

    while (v96 + 1 != v92);

    if (v23)
    {

      goto LABEL_47;
    }
  }

  else
  {
  }

  v81 = sub_101190C7C(v0[37]);
  v0[69] = sub_10118FED4(v81);

  return _swift_task_switch(sub_10118A288, 0, 0);
}

uint64_t sub_10118A288()
{
  v1 = *(v0 + 552);
  v2 = *(v1 + 16);
  *(v0 + 560) = v2;
  if (v2)
  {
    v4 = *(v0 + 376);
    v3 = *(v0 + 384);
    v5 = *(v4 + 80);
    *(v0 + 640) = v5;
    *(v0 + 568) = *(v4 + 72);
    *(v0 + 608) = _swiftEmptyArrayStorage;
    *(v0 + 600) = 0;
    sub_1011A04B8(v1 + ((v5 + 32) & ~v5), v3, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    *(v0 + 616) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_10118A70C;
    v10 = v6;
    v11 = v8;
LABEL_3:

    return _swift_task_switch(v9, v10, v11);
  }

  *(v0 + 576) = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {

    v11 = *(v0 + 528);
    v10 = *(v0 + 520);
    v9 = sub_10118A5F8;
    goto LABEL_3;
  }

  v13 = *(v0 + 320);
  v12 = *(v0 + 328);
  v14 = *(v0 + 644);
  v15 = *(v0 + 312);
  v16 = swift_task_alloc();
  *(v0 + 584) = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = _swiftEmptyArrayStorage;
  *(v16 + 32) = v15;
  *(v16 + 40) = v13;
  *(v16 + 48) = v14;
  v17 = swift_task_alloc();
  *(v0 + 592) = v17;
  *v17 = v0;
  v17[1] = sub_10118A4A8;

  return withCheckedContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v16, &type metadata for () + 8);
}

uint64_t sub_10118A4A8()
{

  return _swift_task_switch(sub_10118A5DC, 0, 0);
}

uint64_t sub_10118A5F8()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10118A70C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 560);

  if (v1 == v2 - 1)
  {

    v3 = sub_10118AAF4;
  }

  else
  {
    v3 = sub_10118A7A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10118A7A8()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  sub_1011A04B8(*(v0 + 384), v1, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  *(v1 + *(v3 + 20)) = _swiftEmptyArrayStorage;
  *(v1 + *(v3 + 24)) = 0;
  sub_1011A04B8(v1, v2, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 608);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_100B39988(0, v5[2] + 1, 1, *(v0 + 608));
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100B39988(v6 > 1, v7 + 1, 1, v5);
  }

  v8 = *(v0 + 560);
  v9 = *(v0 + 384);
  v10 = *(v0 + 352);
  v11 = *(v0 + 344);
  v12 = *(v0 + 600) + 1;
  sub_1011A0324(*(v0 + 360), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  v5[2] = v7 + 1;
  sub_1011A0450(v10, v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v7, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  sub_1011A0324(v9, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  if (v12 == v8)
  {

    *(v0 + 576) = v5;
    if (v5[2])
    {
      v14 = *(v0 + 320);
      v13 = *(v0 + 328);
      v15 = *(v0 + 644);
      v16 = *(v0 + 312);
      v17 = swift_task_alloc();
      *(v0 + 584) = v17;
      *(v17 + 16) = v13;
      *(v17 + 24) = v5;
      *(v17 + 32) = v16;
      *(v17 + 40) = v14;
      *(v17 + 48) = v15;
      v18 = swift_task_alloc();
      *(v0 + 592) = v18;
      *v18 = v0;
      v18[1] = sub_10118A4A8;

      return withCheckedContinuation<A>(isolation:function:_:)(v18, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v17, &type metadata for () + 8);
    }

    v24 = *(v0 + 528);
    v23 = *(v0 + 520);
    v22 = sub_10118A5F8;
  }

  else
  {
    *(v0 + 608) = v5;
    *(v0 + 600) = v12;
    sub_1011A04B8(*(v0 + 552) + ((*(v0 + 640) + 32) & ~*(v0 + 640)) + *(v0 + 568) * v12, *(v0 + 384), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    *(v0 + 616) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    v22 = sub_10118A70C;
    v23 = v19;
    v24 = v21;
  }

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_10118AAF4()
{
  if (*(v0 + 645))
  {
    v1 = *(*(v0 + 384) + *(*(v0 + 368) + 28));
    v2 = swift_task_alloc();
    *(v0 + 624) = v2;
    *v2 = v0;
    v2[1] = sub_10118AED0;
    v3 = *(v0 + 304);

    return sub_1011920F4(v1, v3);
  }

  v5 = *(v0 + 304);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 336);
  sub_1011A04B8(*(v0 + 384), v6, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  *(v6 + *(v8 + 20)) = v5;
  *(v6 + *(v8 + 24)) = 0;
  sub_1011A04B8(v6, v7, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 608);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100B39988(0, v10[2] + 1, 1, *(v0 + 608));
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_100B39988(v11 > 1, v12 + 1, 1, v10);
  }

  v13 = *(v0 + 560);
  v14 = *(v0 + 384);
  v15 = *(v0 + 352);
  v16 = *(v0 + 344);
  v17 = *(v0 + 600) + 1;
  sub_1011A0324(*(v0 + 360), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  v10[2] = v12 + 1;
  sub_1011A0450(v15, v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  sub_1011A0324(v14, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  if (v17 == v13)
  {

    *(v0 + 576) = v10;
    if (v10[2])
    {
      v19 = *(v0 + 320);
      v18 = *(v0 + 328);
      v20 = *(v0 + 644);
      v21 = *(v0 + 312);
      v22 = swift_task_alloc();
      *(v0 + 584) = v22;
      *(v22 + 16) = v18;
      *(v22 + 24) = v10;
      *(v22 + 32) = v21;
      *(v22 + 40) = v19;
      *(v22 + 48) = v20;
      v23 = swift_task_alloc();
      *(v0 + 592) = v23;
      *v23 = v0;
      v23[1] = sub_10118A4A8;

      return withCheckedContinuation<A>(isolation:function:_:)(v23, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v22, &type metadata for () + 8);
    }

    v29 = *(v0 + 528);
    v28 = *(v0 + 520);
    v27 = sub_10118A5F8;
  }

  else
  {
    *(v0 + 608) = v10;
    *(v0 + 600) = v17;
    sub_1011A04B8(*(v0 + 552) + ((*(v0 + 640) + 32) & ~*(v0 + 640)) + *(v0 + 568) * v17, *(v0 + 384), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    *(v0 + 616) = static MainActor.shared.getter();
    v24 = dispatch thunk of Actor.unownedExecutor.getter();
    v26 = v25;
    v27 = sub_10118A70C;
    v28 = v24;
    v29 = v26;
  }

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_10118AED0(uint64_t a1)
{
  *(*v1 + 632) = a1;

  return _swift_task_switch(sub_10118AFD0, 0, 0);
}

uint64_t sub_10118AFD0()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 304);
  v3 = *(v0 + 384);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 336);
  v31 = v1;
  sub_1011A04B8(v3, v4, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  *(v4 + *(v6 + 20)) = v2;
  *(v4 + *(v6 + 24)) = v1;
  sub_1011A04B8(v4, v5, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 608);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100B39988(0, v8[2] + 1, 1, *(v0 + 608));
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100B39988(v9 > 1, v10 + 1, 1, v8);
  }

  v11 = *(v0 + 600);
  v12 = *(v0 + 560);
  v13 = *(v0 + 384);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 344);

  v17 = v11 + 1;
  sub_1011A0324(v14, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  v8[2] = v10 + 1;
  sub_1011A0450(v15, v8 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v10, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  sub_1011A0324(v13, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  if (v17 == v12)
  {

    *(v0 + 576) = v8;
    if (v8[2])
    {
      v19 = *(v0 + 320);
      v18 = *(v0 + 328);
      v20 = *(v0 + 644);
      v21 = *(v0 + 312);
      v22 = swift_task_alloc();
      *(v0 + 584) = v22;
      *(v22 + 16) = v18;
      *(v22 + 24) = v8;
      *(v22 + 32) = v21;
      *(v22 + 40) = v19;
      *(v22 + 48) = v20;
      v23 = swift_task_alloc();
      *(v0 + 592) = v23;
      *v23 = v0;
      v23[1] = sub_10118A4A8;

      return withCheckedContinuation<A>(isolation:function:_:)(v23, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A7394, v22, &type metadata for () + 8);
    }

    v29 = *(v0 + 528);
    v28 = *(v0 + 520);
    v27 = sub_10118A5F8;
  }

  else
  {
    *(v0 + 608) = v8;
    *(v0 + 600) = v17;
    sub_1011A04B8(*(v0 + 552) + ((*(v0 + 640) + 32) & ~*(v0 + 640)) + *(v0 + 568) * v17, *(v0 + 384), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    *(v0 + 616) = static MainActor.shared.getter();
    v24 = dispatch thunk of Actor.unownedExecutor.getter();
    v26 = v25;
    v27 = sub_10118A70C;
    v28 = v24;
    v29 = v26;
  }

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_10118B340()
{
  v1[2] = v0;
  v2 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Locale();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v5;
  v1[11] = v4;

  return _swift_task_switch(sub_10118B490, v5, v4);
}

uint64_t sub_10118B490()
{
  if ((sub_10098EABC(&_mh_execute_header, "canRefineHandwritingInSelectedStrokes()", 39, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 576) & 1) == 0 || (v2 = v0[7], v1 = v0[8], v3 = v0[6], type metadata accessor for RecognitionController(), static Locale.current.getter(), v4 = static RecognitionController.isRefineAvailableForLocale(_:)(), (*(v2 + 8))(v1, v3), (v4 & 1) == 0))
  {

    v24 = v0[1];

    return v24(0);
  }

  v5 = sub_101181474(0);
  v6 = v5[2];
  if (!v6)
  {

    v11 = _swiftEmptyArrayStorage;
LABEL_25:
    v0[12] = v11;
    v26 = swift_task_alloc();
    v0[13] = v26;
    *v26 = v0;
    v26[1] = sub_10118B7E0;
    v12 = v11;

    return RecognitionController.supportsRefinementForStrokes(_:)(v12);
  }

  v7 = v0[4];
  v27 = v0[5];
  v8 = *(v0[3] + 28);
  v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v10 = *(v7 + 72);
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v0[5];
    sub_1011A04B8(v9, v13, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v14 = *(v27 + v8);

    v12 = sub_1011A0324(v13, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v15 = *(v14 + 16);
    v16 = v11[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v11[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v11 = sub_100B36FA8(isUniquelyReferenced_nonNull_native, v19, 1, v11);
      if (*(v14 + 16))
      {
LABEL_16:
        v20 = (v11[3] >> 1) - v11[2];
        v12 = type metadata accessor for PKStroke();
        if (v20 < v15)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v21 = v11[2];
          v22 = __OFADD__(v21, v15);
          v23 = v21 + v15;
          if (v22)
          {
            goto LABEL_31;
          }

          v11[2] = v23;
        }

        goto LABEL_6;
      }
    }

    if (v15)
    {
      goto LABEL_29;
    }

LABEL_6:
    v9 += v10;
    if (!--v6)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return RecognitionController.supportsRefinementForStrokes(_:)(v12);
}

uint64_t sub_10118B7E0(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_10118B92C, v4, v3);
}

uint64_t sub_10118B92C()
{

  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10118BB1C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10118BBB4, v4, v3);
}

uint64_t sub_10118BBB4()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10118BC64;

  return sub_10118B340();
}

uint64_t sub_10118BC64(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10118BDAC()
{
  v1[31] = v0;
  v2 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper(0);
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  sub_1005B981C(&qword_101A01C10);
  v1[36] = swift_task_alloc();
  v3 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = type metadata accessor for MainActor();
  v1[41] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[42] = v5;
  v1[43] = v4;

  return _swift_task_switch(sub_10118BF44, v5, v4);
}

uint64_t sub_10118BF44()
{
  v37 = v0;
  if (sub_10098EABC(&_mh_execute_header, "refineHandwritingInSelectedStrokes()", 36, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 597))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[44] = Strong;
    if (Strong)
    {
      [Strong viewScale];
      v0[45] = v2;
      v0[46] = sub_101181474(0);
      v3 = [objc_opt_self() mainBundle];
      v4 = String._bridgeToObjectiveC()();
      v5 = String._bridgeToObjectiveC()();
      v6 = String._bridgeToObjectiveC()();
      v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v0[47] = v8;
      v0[48] = v10;

      return _swift_task_switch(sub_10118C4C8, 0, 0);
    }

    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

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
    *(inited + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_1005CF04C();
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 601;
    v24 = v36;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:601 isFatal:0 format:v33 args:v30];
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_10118C4C8()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 16);
  *(v0 + 392) = v2;
  if (v2)
  {
    v4 = *(v0 + 296);
    v3 = *(v0 + 304);
    *(v0 + 400) = *(*(v0 + 248) + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recognitionController);
    v5 = *(v3 + 80);
    *(v0 + 480) = v5;
    *(v0 + 408) = *(v3 + 72);
    *(v0 + 440) = 0;
    *(v0 + 448) = _swiftEmptyArrayStorage;
    v6 = *(v0 + 360);
    v7 = *(v0 + 312);
    sub_1011A04B8(v1 + ((v5 + 32) & ~v5), v7, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v8 = *(v7 + *(v4 + 28));
    *(v0 + 456) = static MainActor.shared.getter();
    v9 = swift_task_alloc();
    *(v0 + 464) = v9;
    *v9 = v0;
    v9[1] = sub_10118C964;
    v11 = *(v0 + 288);

    v10.n128_f64[0] = 1.0 / v6;
    return RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(v11, v8, v10);
  }

  else
  {

    *(v0 + 416) = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v13 = *(v0 + 376);
      v12 = *(v0 + 384);
      v14 = *(v0 + 248);
      v15 = swift_task_alloc();
      *(v0 + 424) = v15;
      *(v15 + 16) = v14;
      *(v15 + 24) = _swiftEmptyArrayStorage;
      *(v15 + 32) = v13;
      *(v15 + 40) = v12;
      *(v15 + 48) = 1;
      v16 = swift_task_alloc();
      *(v0 + 432) = v16;
      *v16 = v0;
      v16[1] = sub_10118C75C;

      return withCheckedContinuation<A>(isolation:function:_:)(v16, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A6540, v15, &type metadata for () + 8);
    }

    else
    {

      v17 = *(v0 + 336);
      v18 = *(v0 + 344);

      return _swift_task_switch(sub_10118C8CC, v17, v18);
    }
  }
}

uint64_t sub_10118C75C()
{

  return _swift_task_switch(sub_10118C8B4, 0, 0);
}

uint64_t sub_10118C8CC()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10118C964()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10118CAA0, v1, v0);
}

uint64_t sub_10118CAA0()
{
  v1 = *(v0 + 288);

  v2 = type metadata accessor for PKDrawing();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 288);
  if (v4 == 1)
  {
    sub_10000CAAC(*(v0 + 288), &qword_101A01C10);
    v6 = sub_10118CBBC;
  }

  else
  {
    *(v0 + 472) = PKDrawing.strokes.getter();
    (*(v3 + 8))(v5, v2);
    v6 = sub_10118CE48;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10118CBBC()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 392);
  v3 = *(v0 + 440) + 1;
  sub_1011A0324(*(v0 + 312), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  if (v3 == v2)
  {

    *(v0 + 416) = v1;
    if (*(v1 + 16))
    {
      v5 = *(v0 + 376);
      v4 = *(v0 + 384);
      v6 = *(v0 + 248);
      v7 = swift_task_alloc();
      *(v0 + 424) = v7;
      *(v7 + 16) = v6;
      *(v7 + 24) = v1;
      *(v7 + 32) = v5;
      *(v7 + 40) = v4;
      *(v7 + 48) = 1;
      v8 = swift_task_alloc();
      *(v0 + 432) = v8;
      *v8 = v0;
      v8[1] = sub_10118C75C;

      return withCheckedContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A6540, v7, &type metadata for () + 8);
    }

    else
    {

      v16 = *(v0 + 336);
      v17 = *(v0 + 344);

      return _swift_task_switch(sub_10118C8CC, v16, v17);
    }
  }

  else
  {
    *(v0 + 440) = v3;
    *(v0 + 448) = v1;
    v9 = *(v0 + 360);
    v10 = *(v0 + 312);
    v11 = *(v0 + 296);
    sub_1011A04B8(*(v0 + 368) + ((*(v0 + 480) + 32) & ~*(v0 + 480)) + *(v0 + 408) * v3, v10, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v12 = *(v10 + *(v11 + 28));
    *(v0 + 456) = static MainActor.shared.getter();
    v13 = swift_task_alloc();
    *(v0 + 464) = v13;
    *v13 = v0;
    v13[1] = sub_10118C964;
    v15 = *(v0 + 288);

    v14.n128_f64[0] = 1.0 / v9;
    return RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(v15, v12, v14);
  }
}

uint64_t sub_10118CE48()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  sub_1011A04B8(*(v0 + 312), v2, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  *(v2 + *(v4 + 20)) = v1;
  *(v2 + *(v4 + 24)) = 0;
  sub_1011A04B8(v2, v3, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 448);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100B39988(0, v6[2] + 1, 1, *(v0 + 448));
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100B39988(v7 > 1, v8 + 1, 1, v6);
  }

  v9 = *(v0 + 272);
  v10 = *(v0 + 264);
  sub_1011A0324(*(v0 + 280), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  v6[2] = v8 + 1;
  sub_1011A0450(v9, v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
  v11 = *(v0 + 392);
  v12 = *(v0 + 440) + 1;
  sub_1011A0324(*(v0 + 312), type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
  if (v12 == v11)
  {

    *(v0 + 416) = v6;
    if (v6[2])
    {
      v14 = *(v0 + 376);
      v13 = *(v0 + 384);
      v15 = *(v0 + 248);
      v16 = swift_task_alloc();
      *(v0 + 424) = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v6;
      *(v16 + 32) = v14;
      *(v16 + 40) = v13;
      *(v16 + 48) = 1;
      v17 = swift_task_alloc();
      *(v0 + 432) = v17;
      *v17 = v0;
      v17[1] = sub_10118C75C;

      return withCheckedContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD00000000000003ALL, 0x80000001015C4850, sub_1011A6540, v16, &type metadata for () + 8);
    }

    else
    {

      v25 = *(v0 + 336);
      v26 = *(v0 + 344);

      return _swift_task_switch(sub_10118C8CC, v25, v26);
    }
  }

  else
  {
    *(v0 + 440) = v12;
    *(v0 + 448) = v6;
    v18 = *(v0 + 360);
    v19 = *(v0 + 312);
    v20 = *(v0 + 296);
    sub_1011A04B8(*(v0 + 368) + ((*(v0 + 480) + 32) & ~*(v0 + 480)) + *(v0 + 408) * v12, v19, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v21 = *(v19 + *(v20 + 28));
    *(v0 + 456) = static MainActor.shared.getter();
    v22 = swift_task_alloc();
    *(v0 + 464) = v22;
    *v22 = v0;
    v22[1] = sub_10118C964;
    v24 = *(v0 + 288);

    v23.n128_f64[0] = 1.0 / v18;
    return RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(v24, v21, v23);
  }
}

uint64_t sub_10118D360(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10118D3F8, v4, v3);
}

uint64_t sub_10118D3F8()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1011A7384;

  return sub_10118BDAC();
}

void *sub_10118D4A8(unint64_t a1, int a2)
{
  v292 = a2;
  v4 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v274 = *(v4 - 8);
  v275 = v4;
  __chkstk_darwin(v4);
  v278 = v265 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v277 = v265 - v7;
  *&v8 = COERCE_DOUBLE(type metadata accessor for PKStroke());
  v297 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v265 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v11 - 8);
  v282 = v265 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v286);
  v285 = v265 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v284);
  v283 = v265 - v14;
  v15 = type metadata accessor for NSFastEnumerationIterator();
  v279 = *(v15 - 8);
  v280 = v15;
  __chkstk_darwin(v15);
  v309 = v265 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v17 - 8);
  *&v315 = v265 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v312 = (v265 - v20);
  v21 = type metadata accessor for UUID();
  v300 = *(v21 - 8);
  __chkstk_darwin(v21);
  v287 = v265 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v291 = v265 - v24;
  __chkstk_darwin(v25);
  v310 = v265 - v26;
  __chkstk_darwin(v27);
  v307 = v265 - v28;
  __chkstk_darwin(v29);
  v31 = v265 - v30;
  __chkstk_darwin(v32);
  *&v314 = v265 - v33;
  __chkstk_darwin(v34);
  v311 = (v265 - v35);
  if ((sub_10098EABC(&_mh_execute_header, "strokesWrappers(for:includeFills:)", 34, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 714) & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v224 = objc_opt_self();
    v225 = [v224 _atomicIncrementAssertCount];
    *&v328.a = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v328);
    StaticString.description.getter();
    v226 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v227 = String._bridgeToObjectiveC()();

    v228 = [v227 lastPathComponent];

    v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v231 = v230;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v232 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v225;
    v234 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v234;
    v235 = sub_1005CF04C();
    *(inited + 104) = v235;
    *(inited + 72) = v226;
    *(inited + 136) = &type metadata for String;
    v236 = sub_1000053B0();
    *(inited + 112) = v229;
    *(inited + 120) = v231;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v236;
    *(inited + 152) = 718;
    a = v328.a;
    *(inited + 216) = v234;
    *(inited + 224) = v235;
    *(inited + 192) = a;
    v238 = v226;
    v239 = *&a;
    v240 = static os_log_type_t.error.getter();
    sub_100005404(v232, &_mh_execute_header, v240, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v241 = static os_log_type_t.error.getter();
    sub_100005404(v232, &_mh_execute_header, v241, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v242 = swift_allocObject();
    v242[2] = 8;
    v242[3] = 0;
    v242[4] = 0;
    v242[5] = 0;
    v243 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v244 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v245 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v246 = String._bridgeToObjectiveC()();

    [v224 handleFailureInFunction:v244 file:v245 lineNumber:718 isFatal:0 format:v246 args:v243];

    return _swiftEmptyArrayStorage;
  }

  v270 = Strong;
  v290 = [Strong pkDrawingProvider];
  if (!v290)
  {
    *&v8 = COERCE_DOUBLE(objc_opt_self());
    v39 = [v8 _atomicIncrementAssertCount];
    *&v328.a = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v328);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v247 = String._bridgeToObjectiveC()();

    v248 = [v247 lastPathComponent];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v249;

    if (qword_1019F20A0 == -1)
    {
LABEL_117:
      v250 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v251 = swift_allocObject();
      *(v251 + 16) = xmmword_10146CA70;
      *(v251 + 56) = &type metadata for Int32;
      *(v251 + 64) = &protocol witness table for Int32;
      *(v251 + 32) = v39;
      v252 = sub_100006370(0, &qword_1019F4D30);
      *(v251 + 96) = v252;
      v253 = sub_1005CF04C();
      *(v251 + 104) = v253;
      *(v251 + 72) = v10;
      *(v251 + 136) = &type metadata for String;
      v254 = sub_1000053B0();
      *(v251 + 112) = v2;
      *(v251 + 120) = v37;
      *(v251 + 176) = &type metadata for UInt;
      *(v251 + 184) = &protocol witness table for UInt;
      *(v251 + 144) = v254;
      *(v251 + 152) = 719;
      v255 = v328.a;
      *(v251 + 216) = v252;
      *(v251 + 224) = v253;
      *(v251 + 192) = v255;
      v256 = v10;
      v257 = *&v255;
      v258 = static os_log_type_t.error.getter();
      sub_100005404(v250, &_mh_execute_header, v258, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v251);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v259 = static os_log_type_t.error.getter();
      sub_100005404(v250, &_mh_execute_header, v259, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v260 = swift_allocObject();
      v260[2] = 8;
      v260[3] = 0;
      v260[4] = 0;
      v260[5] = 0;
      v261 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v262 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v263 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v264 = String._bridgeToObjectiveC()();

      [v8 handleFailureInFunction:v262 file:v263 lineNumber:719 isFatal:0 format:v264 args:v261];

      return _swiftEmptyArrayStorage;
    }

LABEL_130:
    swift_once();
    goto LABEL_117;
  }

  v301 = [objc_allocWithZone(NSMutableOrderedSet) init];
  v37 = COERCE_DOUBLE(sub_100BD9F38(_swiftEmptyArrayStorage));
  if (a1 >> 62)
  {
    goto LABEL_128;
  }

  v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v39 = 27303936;
  v272 = *&v8;
  v308 = v10;
  v289 = v21;
  v306 = v31;
  if (v38)
  {
    if (v38 >= 1)
    {
      v31 = 0;
      v305 = (v300 + 56);
      v303 = v300 + 48;
      *&v304 = a1 & 0xC000000000000001;
      v293 = (v300 + 8);
      v295 = (v300 + 32);
      v296 = (v300 + 16);
      v288 = xmmword_10146CA70;
      v294 = xmmword_101465920;
      v298 = a1;
      v10 = v312;
      v302 = v38;
      while (1)
      {
        if (v304)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v40 = *(a1 + 8 * v31 + 32);
        }

        v41 = v40;
        v42 = swift_unknownObjectWeakLoadStrong();
        *&v316 = v41;
        if (v42)
        {
          v43 = v42;
          v2 = a1;
          v44 = v315;
          (*((swift_isaMask & *v42) + 0x88))();

          v45 = v44;
          (*v305)(v44, 0, 1, v21);
          v46 = v21;
        }

        else
        {
          v313 = v37;
          (*v305)(v315, 1, 1, v21);
          v299 = objc_opt_self();
          v47 = [v299 _atomicIncrementAssertCount];
          *&v328.a = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v328);
          StaticString.description.getter();
          v48 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v49 = String._bridgeToObjectiveC()();

          v50 = [v49 lastPathComponent];

          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v54 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v55 = swift_allocObject();
          *(v55 + 16) = v288;
          *(v55 + 56) = &type metadata for Int32;
          *(v55 + 64) = &protocol witness table for Int32;
          *(v55 + 32) = v47;
          v56 = sub_100006370(0, &qword_1019F4D30);
          *(v55 + 96) = v56;
          v57 = sub_1005CF04C();
          *(v55 + 104) = v57;
          *(v55 + 72) = v48;
          *(v55 + 136) = &type metadata for String;
          v58 = sub_1000053B0();
          *(v55 + 112) = v51;
          *(v55 + 120) = v53;
          *(v55 + 176) = &type metadata for UInt;
          *(v55 + 144) = v58;
          *(v55 + 152) = 731;
          v59 = v328.a;
          *(v55 + 216) = v56;
          *(v55 + 224) = v57;
          *(v55 + 184) = &protocol witness table for UInt;
          *(v55 + 192) = v59;
          v60 = v48;
          v61 = *&v59;
          v62 = static os_log_type_t.error.getter();
          sub_100005404(v54, &_mh_execute_header, v62, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v55);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v63 = static os_log_type_t.error.getter();
          sub_100005404(v54, &_mh_execute_header, v63, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v64 = swift_allocObject();
          v64[2] = 8;
          v64[3] = 0;
          v64[4] = 0;
          v64[5] = 0;
          v65 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v66 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v67 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v68 = String._bridgeToObjectiveC()();

          [v299 handleFailureInFunction:v66 file:v67 lineNumber:731 isFatal:0 format:v68 args:v65];

          v46 = v289;
          v10 = v312;
          v37 = v313;
          v2 = v298;
          v45 = v315;
          v38 = v302;
        }

        sub_10003DFF8(v45, v10, &qword_1019F6990);
        if ((*v303)(v10, 1, v46) == 1)
        {

          sub_10000CAAC(v10, &qword_1019F6990);
          v21 = v46;
          a1 = v2;
        }

        else
        {
          v69 = v311;
          (*v295)();
          isa = UUID._bridgeToObjectiveC()().super.isa;
          *&v8 = COERCE_DOUBLE([v301 containsObject:isa]);

          v21 = v46;
          if ((v8 & 1) == 0)
          {
            v71 = UUID._bridgeToObjectiveC()().super.isa;
            [v301 addObject:v71];
          }

          if (*(*&v37 + 16) && (a1 = v2, v72 = sub_10003E994(v69), (v73 & 1) != 0))
          {
            v74 = *(*(*&v37 + 56) + 8 * v72);
            sub_1005B981C(&unk_1019F4D60);
            v75 = swift_initStackObject();
            *(v75 + 16) = v294;
            v76 = v316;
            *(v75 + 32) = v316;
            v328.a = v74;

            v77 = v76;
            sub_10079C16C(v75);
            v78 = *&v328.a;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v328.a = v37;
            sub_100AA17FC(v78, v69, isUniquelyReferenced_nonNull_native);

            v37 = v328.a;
            (*v293)(v69, v21);
            v10 = v312;
          }

          else
          {
            a1 = *v296;
            v80 = v314;
            (*v296)(v314, v69, v21);
            sub_1005B981C(&unk_1019F4D60);
            v81 = swift_allocObject();
            *(v81 + 16) = v294;
            *(v81 + 32) = v316;
            v10 = swift_isUniquelyReferenced_nonNull_native();
            v328.a = v37;
            v82 = sub_10003E994(v80);
            v84 = *(*&v37 + 16);
            v85 = (v83 & 1) == 0;
            v86 = __OFADD__(v84, v85);
            v87 = v84 + v85;
            if (v86)
            {
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
              v38 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_6;
            }

            v8 = v83;
            if (*(*&v37 + 24) >= v87)
            {
              if ((v10 & 1) == 0)
              {
                v93 = v82;
                sub_100AAD988();
                v82 = v93;
              }
            }

            else
            {
              sub_100A99724(v87, v10);
              v82 = sub_10003E994(v314);
              if ((v8 & 1) != (v88 & 1))
              {
                goto LABEL_134;
              }
            }

            v10 = v312;
            v37 = v328.a;
            if (v8)
            {
              *(*(*&v328.a + 56) + 8 * v82) = v81;
            }

            else
            {
              *(*&v328.a + 8 * (v82 >> 6) + 64) |= 1 << v82;
              v89 = v82;
              (a1)(*(*&v37 + 48) + *(v300 + 72) * v82, v314, v21);
              *(*(*&v37 + 56) + 8 * v89) = v81;
              v90 = *(*&v37 + 16);
              v86 = __OFADD__(v90, 1);
              v91 = v90 + 1;
              if (v86)
              {
                goto LABEL_125;
              }

              *(*&v37 + 16) = v91;
            }

            v92 = *v293;
            (*v293)(v314, v21);
            v92(v311, v21);
            a1 = v298;
          }

          v38 = v302;
        }

        if (v38 == ++v31)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
    goto LABEL_130;
  }

LABEL_38:
  NSOrderedSet.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v334)
  {
    v269 = _swiftEmptyArrayStorage;
LABEL_119:
    (*(v279 + 8))(v309, v280);

    return v269;
  }

  v312 = (v300 + 16);
  v95 = (v300 + 8);
  v265[1] = v297 + 16;
  v266 = PKInkTypePen;
  v265[0] = v297 + 8;
  v295 = (v300 + 32);
  a1 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift";
  v304 = xmmword_10146CA70;
  v269 = _swiftEmptyArrayStorage;
  v313 = v37;
  v96 = v306;
  v311 = (v300 + 8);
  while (1)
  {
    while (1)
    {
      sub_10000BF3C(&v333, &v328);
      swift_dynamicCast();
      v97 = v96;
      v31 = *v312;
      v98 = v307;
      (*v312)(v307, v97, v21);
      if (*(*&v37 + 16))
      {
        v99 = sub_10003E994(v98);
        if (v100)
        {
          break;
        }
      }

      *&v316 = *v95;
      (v316)(v98, v21);
      *&v315 = objc_opt_self();
      v101 = [v315 _atomicIncrementAssertCount];
      *&v328.a = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v328);
      StaticString.description.getter();
      v102 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v103 = String._bridgeToObjectiveC()();

      v104 = [v103 lastPathComponent];

      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      v108 = v21;
      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v109 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v110 = swift_allocObject();
      *(v110 + 16) = v304;
      *(v110 + 56) = &type metadata for Int32;
      *(v110 + 64) = &protocol witness table for Int32;
      *(v110 + 32) = v101;
      v111 = sub_100006370(0, &qword_1019F4D30);
      *(v110 + 96) = v111;
      v112 = sub_1005CF04C();
      *(v110 + 104) = v112;
      *(v110 + 72) = v102;
      *(v110 + 136) = &type metadata for String;
      v113 = sub_1000053B0();
      *(v110 + 112) = v105;
      *(v110 + 120) = v107;
      *(v110 + 176) = &type metadata for UInt;
      *(v110 + 144) = v113;
      *(v110 + 152) = 750;
      v114 = v328.a;
      *(v110 + 216) = v111;
      *(v110 + 224) = v112;
      *(v110 + 184) = &protocol witness table for UInt;
      *(v110 + 192) = v114;
      v115 = v102;
      v116 = *&v114;
      v117 = static os_log_type_t.error.getter();
      sub_100005404(v109, &_mh_execute_header, v117, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v110);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v118 = static os_log_type_t.error.getter();
      sub_100005404(v109, &_mh_execute_header, v118, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v119 = swift_allocObject();
      v119[2] = 8;
      v119[3] = 0;
      v119[4] = 0;
      v119[5] = 0;
      v120 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v121 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v122 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v123 = String._bridgeToObjectiveC()();

      [v315 handleFailureInFunction:v121 file:v122 lineNumber:750 isFatal:0 format:v123 args:v120];

      v96 = v306;
      v95 = v311;
      (v316)(v306, v108);
      NSFastEnumerationIterator.next()();
      v21 = v108;
      a1 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift";
      v37 = v313;
      if (!v334)
      {
        goto LABEL_119;
      }
    }

    v124 = *(*(*&v37 + 56) + 8 * v99);
    v125 = *v95;

    v296 = v125;
    (v125)(v98, v21);
    v276 = v124;
    v126 = v124 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v272;
    v8 = v287;
    v2 = _swiftEmptyArrayStorage;
    if (v126)
    {
      break;
    }

    v299 = _swiftEmptyArrayStorage;
    v281 = _swiftEmptyArrayStorage;
LABEL_106:

    v217 = v277;
    v218 = v2;
    v219 = v306;
    (v31)(v277);
    v220 = v275;
    *(v217 + *(v275 + 20)) = v299;
    *(v217 + *(v220 + 24)) = v281;
    *(v217 + *(v220 + 28)) = v218;
    sub_1011A04B8(v217, v278, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v269 = sub_100B39960(0, v269[2] + 1, 1, v269);
    }

    v37 = v313;
    v95 = v311;
    v222 = v269[2];
    v221 = v269[3];
    v96 = v219;
    if (v222 >= v221 >> 1)
    {
      v269 = sub_100B39960(v221 > 1, v222 + 1, 1, v269);
    }

    sub_1011A0324(v277, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v223 = v269;
    v269[2] = v222 + 1;
    sub_1011A0450(v278, v223 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v222, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    (v296)(v219, v21);
    NSFastEnumerationIterator.next()();
    if (!v334)
    {
      goto LABEL_119;
    }
  }

  v10 = 0;
  v293 = v126;
  *&v294 = v276 & 0xC000000000000001;
  v267 = v276 + 32;
  v268 = v276 & 0xFFFFFFFFFFFFFF8;
  v298 = v31;
  v299 = _swiftEmptyArrayStorage;
  v281 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v294)
    {
      v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v268 + 16))
      {
        goto LABEL_126;
      }

      v128 = *(v267 + 8 * v10);
    }

    a1 = v128;
    v86 = __OFADD__(v10++, 1);
    if (v86)
    {
      __break(1u);
      goto LABEL_121;
    }

    v305 = v10;
    v302 = v2;
    v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    (*(**&v128[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
    v129 = UUID._bridgeToObjectiveC()().super.isa;
    v130 = [v290 pkStrokesForDrawingShapeItemUUID:v129];

    v131 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *&v314 = v131;
    v132 = *(v131 + 16);
    v303 = a1;
    if (!v132 && (v292 & 1) != 0)
    {
      v133 = a1;
      v134 = sub_100C34D80();
      v10 = v305;
      if ((v134 & 1) == 0)
      {

        goto LABEL_85;
      }

      v135 = **&v2[a1];
      v271 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
      if (!swift_conformsToProtocol2())
      {
        goto LABEL_132;
      }

      v136 = *(v135 + 840);

      v138 = v136(v137);

      v139 = [v138 bezierPath];

      [v139 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006370(0, &qword_101A02480);
      swift_dynamicCast();
      *&v288 = v323.a;
      v140 = v133;
      b = 0.0;
      v142 = 1.0;
      v273 = v140;
      c = 0.0;
      d = 1.0;
      tx = 0.0;
      ty = 0.0;
      *&v8 = COERCE_DOUBLE(&swift_isaMask);
      v37 = COERCE_DOUBLE(&unk_101A0A000);
      a1 = &selRef_tailLineEndAngle;
      do
      {
        v10 = *((swift_isaMask & *v140) + 0xE0);
        v31 = (swift_isaMask & *v140) + 224;
        v147 = v140;
        v148 = (v10)();
        [v148 transform];
        v315 = *&v328.c;
        v316 = *&v328.a;
        v314 = *&v328.tx;

        v328.a = v142;
        v328.b = b;
        v328.c = c;
        v328.d = d;
        v328.tx = tx;
        v328.ty = ty;
        *&v323.a = v316;
        *&v323.c = v315;
        *&v323.tx = v314;
        CGAffineTransformConcat(&v318, &v328, &v323);
        v142 = v318.a;
        b = v318.b;
        c = v318.c;
        d = v318.d;
        tx = v318.tx;
        ty = v318.ty;
        v140 = swift_unknownObjectWeakLoadStrong();
      }

      while (v140);

      v328.a = v142;
      v328.b = b;
      v328.c = c;
      v328.d = d;
      v328.tx = tx;
      v328.ty = ty;
      [v288 transformUsingAffineTransform:&v328];
      v149 = [objc_opt_self() blackColor];
      v150 = objc_allocWithZone(CRLPencilKitInkStroke);
      v151 = [v150 initWithInkType:v266 color:v149 adjustedWidth:1.0];

      v152 = *&v2[v303];
      if (*v152 != &off_1019FAE60)
      {
        goto LABEL_127;
      }

      v153 = qword_1019FB140;
      swift_beginAccess();
      v154 = v152 + v153;
      v155 = v283;
      sub_10000BE14(v154, v283, &unk_101A0F400);
      sub_1005B981C(&unk_101A0F410);
      v156 = v285;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v155, &unk_101A0F400);
      v157 = v156 + *(v286 + 28);
      v158 = *v157;
      v159 = *(v157 + 8);
      sub_1011A0324(v156, type metadata accessor for CRLShapeItemParentAffinity);
      if (v159 == 255)
      {
        v160 = 0;
      }

      else if (v159)
      {
        v160 = 0;
      }

      else
      {
        v160 = CRLiCloudConnectionStatus.rawValue.getter(v158);
      }

      v161 = v303;
      v162 = [objc_opt_self() pencilKitStrokesFromPath:v288 inkStroke:v151 strokePathCompactData:0 maskPath:0 snappedShapeType:v160];

      *&v314 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v163 = **&v2[v161];
      v164 = swift_conformsToProtocol2();
      if (!v164)
      {
        goto LABEL_133;
      }

      v165 = v164;
      v166 = *(v164 + 16);

      v167 = v282;
      v166(v163, v165);

      sub_1005B981C(&unk_101A10690);
      CRRegister.wrappedValue.getter();
      sub_1011A0324(v167, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v323 = v318;
      v326 = v321;
      v327 = v322;
      v324 = v319;
      v325 = v320;
      v328 = v318;
      v331 = v321;
      v332 = v322;
      v329 = v319;
      v330 = v320;
      if (v322)
      {
        sub_100006370(0, &qword_101A00EB0);
        v335[2] = v324;
        v335[3] = v325;
        v335[4] = v326;
        v336 = v327;
        v335[0] = *&v323.c;
        v335[1] = *&v323.tx;
        sub_10074A990(&v328.c, &v318);
        v168 = sub_1008B0490(v335);
        v169 = v314;
        if (LOBYTE(v328.b) == 1)
        {
          if (qword_1019F2268 != -1)
          {
            swift_once();
          }

          v170 = static OS_os_log.persistence;
          v171 = static os_log_type_t.info.getter();
          sub_100005404(v170, &_mh_execute_header, v171, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
        }

        v172 = [objc_allocWithZone(CRLColorFill) initWithColor:v168];

        sub_10000CAAC(&v323, &qword_1019FFF80);
        v173 = *(v169 + 16);
        v174 = v272;
        v175 = v308;
        v176 = v265[0];
        v177 = &selRef_concreteClass;
        if (v173)
        {
          v178 = v314 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
          *&v316 = *(v297 + 72);
          *&v315 = *(v297 + 16);
          do
          {
            (v315)(v175, v178, *&v174);
            v179 = PKStroke._bridgeToObjectiveC()().super.isa;
            (*v176)(v175, COERCE_DOUBLE(*&v174));
            [v172 v177[210]];
            v180 = v176;
            v181 = v174;
            v182 = v177;
            v183 = v172;
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100006370(0, &qword_101A2BF30);
            swift_dynamicCast();
            v184 = v317;
            [(objc_class *)v179 crl_setFill:v317];

            v172 = v183;
            v177 = v182;
            v174 = v181;
            v176 = v180;
            v175 = v308;

            v178 += v316;
            --v173;
          }

          while (v173);
        }

        v37 = v174;
        v21 = v289;
        v8 = v287;
      }

      else
      {

        *&v316 = objc_opt_self();
        LODWORD(v315) = [v316 _atomicIncrementAssertCount];
        *&v318.a = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v318);
        StaticString.description.getter();
        v273 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v185 = String._bridgeToObjectiveC()();

        v186 = [v185 lastPathComponent];

        v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v271 = v188;

        v8 = v287;
        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v189 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v190 = swift_allocObject();
        *(v190 + 16) = v304;
        *(v190 + 56) = &type metadata for Int32;
        *(v190 + 64) = &protocol witness table for Int32;
        *(v190 + 32) = v315;
        v191 = sub_100006370(0, &qword_1019F4D30);
        *(v190 + 96) = v191;
        v192 = sub_1005CF04C();
        *(v190 + 104) = v192;
        v193 = v273;
        *(v190 + 72) = v273;
        *(v190 + 136) = &type metadata for String;
        v194 = sub_1000053B0();
        v195 = v271;
        *(v190 + 112) = v187;
        *(v190 + 120) = v195;
        *(v190 + 176) = &type metadata for UInt;
        *(v190 + 144) = v194;
        *(v190 + 152) = 776;
        v196 = v318.a;
        *(v190 + 216) = v191;
        *(v190 + 224) = v192;
        *(v190 + 184) = &protocol witness table for UInt;
        *(v190 + 192) = v196;
        v197 = v193;
        v198 = *&v196;
        v199 = static os_log_type_t.error.getter();
        sub_100005404(v189, &_mh_execute_header, v199, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v190);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v200 = static os_log_type_t.error.getter();
        sub_100005404(v189, &_mh_execute_header, v200, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v201 = swift_allocObject();
        v201[2] = 8;
        v201[3] = 0;
        v201[4] = 0;
        v201[5] = 0;
        v202 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v203 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v204 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v205 = String._bridgeToObjectiveC()();

        [v316 handleFailureInFunction:v203 file:v204 lineNumber:776 isFatal:0 format:v205 args:v202];

        v37 = v272;
      }

      v31 = v298;
    }

    v10 = v305;
LABEL_85:
    a1 = v314;
    v206 = *(v314 + 16);
    v2 = v302;
    if (!v206)
    {

      (v31)(v291, v310, v21);
      v212 = v281;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v212 = sub_100B356D0(0, v212[2] + 1, 1, v212);
      }

      v214 = v212[2];
      v216 = v212[3];
      v215 = v214 + 1;
      if (v214 >= v216 >> 1)
      {
        v212 = sub_100B356D0(v216 > 1, v214 + 1, 1, v212);
        v127 = v291;
        v281 = v212;
      }

      else
      {
        v281 = v212;
        v127 = v291;
      }

      goto LABEL_51;
    }

    v10 = *(v302 + 2);
    v207 = v10 + v206;
    if (__OFADD__(v10, v206))
    {
      goto LABEL_122;
    }

    v208 = swift_isUniquelyReferenced_nonNull_native();
    if (!v208 || v207 > *(v2 + 3) >> 1)
    {
      if (v10 <= v207)
      {
        v209 = v10 + v206;
      }

      else
      {
        v209 = v10;
      }

      v2 = sub_100B36FA8(v208, v209, 1, v2);
    }

    v10 = v305;
    if (!*(a1 + 16))
    {
      break;
    }

    if ((*(v2 + 3) >> 1) - *(v2 + 2) < v206)
    {
      goto LABEL_123;
    }

    swift_arrayInitWithCopy();

    v210 = *(v2 + 2);
    v86 = __OFADD__(v210, v206);
    v211 = v210 + v206;
    if (v86)
    {
      goto LABEL_124;
    }

    *(v2 + 2) = v211;
    (v31)(v8, v310, v21);
    v212 = v299;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v212 = sub_100B356D0(0, v212[2] + 1, 1, v212);
    }

    v214 = v212[2];
    v213 = v212[3];
    v215 = v214 + 1;
    if (v214 < v213 >> 1)
    {
      v299 = v212;
      v127 = v8;
    }

    else
    {
      v212 = sub_100B356D0(v213 > 1, v214 + 1, 1, v212);
      v127 = v8;
      v299 = v212;
    }

LABEL_51:

    (v296)(v310, v21);
    v212[2] = v215;
    (*(v300 + 32))(v212 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v214, v127, v21);
    a1 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift";
    v31 = v298;
    if (v10 == v293)
    {
      goto LABEL_106;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10118FED4(uint64_t a1)
{
  v2 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  if (sub_10098EABC(&_mh_execute_header, "sortedStrokesWrappers(_:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 649))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v77 = Strong;
      v80 = [Strong board];
      if (v80)
      {
        *&v83[0] = _swiftEmptyArrayStorage;
        v8 = *(a1 + 16);
        v76 = a1;
        if (v8)
        {
          v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
          v10 = *(v3 + 72);
          do
          {
            sub_1011A04B8(v9, v5, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v12 = [v80 getBoardItemForUUID:isa];

            sub_1011A0324(v5, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
            if (v12)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*&v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v6 = *&v83[0];
            }

            v9 += v10;
            --v8;
          }

          while (v8);
        }

        v13 = sub_100E93C20(v6);

        sub_1012E3B78(v13);

        v14 = Set._bridgeToObjectiveC()().super.isa;

        v15 = [v77 topLevelZOrderedSiblingsOfInfos:v14];

        sub_1005B981C(&qword_1019F5720);
        v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v16 >> 62)
        {
          goto LABEL_36;
        }

        for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v18 = 0;
          v78 = v16 & 0xFFFFFFFFFFFFFF8;
          v79 = v16 & 0xC000000000000001;
          v19 = _swiftEmptyArrayStorage;
          while (v79)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v20 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_34;
            }

LABEL_19:
            type metadata accessor for CRLBoardItem(0);
            v21 = swift_dynamicCastClass();
            if (v21)
            {
              v22 = *((swift_isaMask & *v21) + 0x88);
              v82 = type metadata accessor for UUID();
              sub_10002C58C(&v81);
              v22();
              swift_unknownObjectRelease();
              sub_10000BF3C(&v81, v83);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_100B3865C(0, *(v19 + 2) + 1, 1, v19);
              }

              v24 = *(v19 + 2);
              v23 = *(v19 + 3);
              if (v24 >= v23 >> 1)
              {
                v19 = sub_100B3865C((v23 > 1), v24 + 1, 1, v19);
              }

              *(v19 + 2) = v24 + 1;
              sub_10000BF3C(v83, &v19[32 * v24 + 32]);
            }

            else
            {
              swift_unknownObjectRelease();
            }

            ++v18;
            if (v20 == i)
            {
              goto LABEL_37;
            }
          }

          if (v18 >= *(v78 + 16))
          {
            goto LABEL_35;
          }

          swift_unknownObjectRetain();
          v20 = v18 + 1;
          if (!__OFADD__(v18, 1))
          {
            goto LABEL_19;
          }

LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          ;
        }

LABEL_37:

        v70 = objc_allocWithZone(NSOrderedSet);
        v71 = Array._bridgeToObjectiveC()().super.isa;

        v72 = [v70 initWithArray:v71];

        *&v83[0] = v76;
        v73 = v72;

        sub_1011A2278(v83, v73);

        return *&v83[0];
      }

      else
      {
        v80 = objc_opt_self();
        v48 = [v80 _atomicIncrementAssertCount];
        *&v83[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v83);
        StaticString.description.getter();
        v49 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v50 = String._bridgeToObjectiveC()();

        v51 = [v50 lastPathComponent];

        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v55 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v48;
        v57 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v57;
        v58 = sub_1005CF04C();
        *(inited + 104) = v58;
        *(inited + 72) = v49;
        *(inited + 136) = &type metadata for String;
        v59 = sub_1000053B0();
        *(inited + 112) = v52;
        *(inited + 120) = v54;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v59;
        *(inited + 152) = 654;
        v60 = *&v83[0];
        *(inited + 216) = v57;
        *(inited + 224) = v58;
        *(inited + 192) = v60;
        v61 = v49;
        v62 = v60;
        v63 = static os_log_type_t.error.getter();
        sub_100005404(v55, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v64 = static os_log_type_t.error.getter();
        v6 = _swiftEmptyArrayStorage;
        sub_100005404(v55, &_mh_execute_header, v64, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v65 = swift_allocObject();
        v65[2] = 8;
        v65[3] = 0;
        v65[4] = 0;
        v65[5] = 0;
        v66 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v67 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v68 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v69 = String._bridgeToObjectiveC()();

        [v80 handleFailureInFunction:v67 file:v68 lineNumber:654 isFatal:0 format:v69 args:v66];
      }
    }

    else
    {
      v25 = objc_opt_self();
      v26 = [v25 _atomicIncrementAssertCount];
      *&v83[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v83);
      StaticString.description.getter();
      v27 = String._bridgeToObjectiveC()();

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
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_10146CA70;
      *(v34 + 56) = &type metadata for Int32;
      *(v34 + 64) = &protocol witness table for Int32;
      *(v34 + 32) = v26;
      v35 = sub_100006370(0, &qword_1019F4D30);
      *(v34 + 96) = v35;
      v36 = sub_1005CF04C();
      *(v34 + 104) = v36;
      *(v34 + 72) = v27;
      *(v34 + 136) = &type metadata for String;
      v37 = sub_1000053B0();
      *(v34 + 112) = v30;
      *(v34 + 120) = v32;
      *(v34 + 176) = &type metadata for UInt;
      *(v34 + 184) = &protocol witness table for UInt;
      *(v34 + 144) = v37;
      *(v34 + 152) = 653;
      v38 = *&v83[0];
      *(v34 + 216) = v35;
      *(v34 + 224) = v36;
      *(v34 + 192) = v38;
      v39 = v27;
      v40 = v38;
      v41 = static os_log_type_t.error.getter();
      sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v34);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v42 = static os_log_type_t.error.getter();
      v6 = _swiftEmptyArrayStorage;
      sub_100005404(v33, &_mh_execute_header, v42, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v43 = swift_allocObject();
      v43[2] = 8;
      v43[3] = 0;
      v43[4] = 0;
      v43[5] = 0;
      v44 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v45 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v46 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      [v25 handleFailureInFunction:v45 file:v46 lineNumber:653 isFatal:0 format:v47 args:v44];
    }
  }

  return v6;
}

uint64_t sub_101190AA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = *(v7 + 16);
  v14(&v22 - v12, a1, v6, v11);
  (v14)(v9, a2, v6);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [a3 indexOfObject:isa];

  v17 = UUID._bridgeToObjectiveC()().super.isa;
  v18 = [a3 indexOfObject:v17];

  if (v16 == NSNotFound.getter() || v18 == NSNotFound.getter())
  {
    v19 = static UUID.< infix(_:_:)();
  }

  else
  {
    v19 = v16 < v18;
  }

  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v13, v6);
  return v19 & 1;
}

void *sub_101190C7C(uint64_t a1)
{
  if ((sub_10098EABC(&_mh_execute_header, "strokesWrappers(for:)", 21, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 684) & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    isa = objc_opt_self();
    LODWORD(v2) = [isa _atomicIncrementAssertCount];
    v147[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v147);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    v45 = [v44 lastPathComponent];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v46;

    if (qword_1019F20A0 != -1)
    {
LABEL_48:
      swift_once();
    }

    v47 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v49 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v49;
    v50 = sub_1005CF04C();
    *(inited + 104) = v50;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v51 = sub_1000053B0();
    *(inited + 112) = a1;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v51;
    *(inited + 152) = 688;
    v52 = v147[0];
    *(inited + 216) = v49;
    *(inited + 224) = v50;
    *(inited + 192) = v52;
    v53 = v14;
    v54 = v52;
    v55 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v55, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v56 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v56, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v57 = swift_allocObject();
    v57[2] = 8;
    v57[3] = 0;
    v57[4] = 0;
    v57[5] = 0;
    v58 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    [isa handleFailureInFunction:v59 file:v60 lineNumber:688 isFatal:0 format:v61 args:v58];
    goto LABEL_34;
  }

  v5 = Strong;
  v6 = [Strong board];
  if (!v6)
  {
    v62 = v5;
    v63 = objc_opt_self();
    v64 = [v63 _atomicIncrementAssertCount];
    v147[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v147);
    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    v67 = [v66 lastPathComponent];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v71 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_10146CA70;
    *(v72 + 56) = &type metadata for Int32;
    *(v72 + 64) = &protocol witness table for Int32;
    *(v72 + 32) = v64;
    v73 = sub_100006370(0, &qword_1019F4D30);
    *(v72 + 96) = v73;
    v74 = sub_1005CF04C();
    *(v72 + 104) = v74;
    *(v72 + 72) = v65;
    *(v72 + 136) = &type metadata for String;
    v75 = sub_1000053B0();
    *(v72 + 112) = v68;
    *(v72 + 120) = v70;
    *(v72 + 176) = &type metadata for UInt;
    *(v72 + 184) = &protocol witness table for UInt;
    *(v72 + 144) = v75;
    *(v72 + 152) = 689;
    v76 = v147[0];
    *(v72 + 216) = v73;
    *(v72 + 224) = v74;
    *(v72 + 192) = v76;
    v77 = v65;
    v78 = v76;
    v79 = static os_log_type_t.error.getter();
    sub_100005404(v71, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v72);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v80 = static os_log_type_t.error.getter();
    sub_100005404(v71, &_mh_execute_header, v80, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v81 = swift_allocObject();
    v81[2] = 8;
    v81[3] = 0;
    v81[4] = 0;
    v81[5] = 0;
    v82 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    [v63 handleFailureInFunction:v59 file:v60 lineNumber:689 isFatal:0 format:v61 args:v82];

LABEL_34:

    return _swiftEmptyArrayStorage;
  }

  v7 = v6;
  v8 = [v5 pkDrawingProvider];
  if (!v8)
  {
    v143 = v7;
    v83 = v5;
    v84 = objc_opt_self();
    v85 = [v84 _atomicIncrementAssertCount];
    v147[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v147);
    StaticString.description.getter();
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v87 = String._bridgeToObjectiveC()();

    v88 = [v87 lastPathComponent];

    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v92 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_10146CA70;
    *(v93 + 56) = &type metadata for Int32;
    *(v93 + 64) = &protocol witness table for Int32;
    *(v93 + 32) = v85;
    v94 = sub_100006370(0, &qword_1019F4D30);
    *(v93 + 96) = v94;
    v95 = sub_1005CF04C();
    *(v93 + 104) = v95;
    *(v93 + 72) = v86;
    *(v93 + 136) = &type metadata for String;
    v96 = sub_1000053B0();
    *(v93 + 112) = v89;
    *(v93 + 120) = v91;
    *(v93 + 176) = &type metadata for UInt;
    *(v93 + 184) = &protocol witness table for UInt;
    *(v93 + 144) = v96;
    *(v93 + 152) = 690;
    v97 = v147[0];
    *(v93 + 216) = v94;
    *(v93 + 224) = v95;
    *(v93 + 192) = v97;
    v98 = v86;
    v99 = v97;
    v100 = static os_log_type_t.error.getter();
    sub_100005404(v92, &_mh_execute_header, v100, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v93);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v101 = static os_log_type_t.error.getter();
    sub_100005404(v92, &_mh_execute_header, v101, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v102 = swift_allocObject();
    v102[2] = 8;
    v102[3] = 0;
    v102[4] = 0;
    v102[5] = 0;
    v103 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v104 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v105 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v106 = String._bridgeToObjectiveC()();

    [v84 handleFailureInFunction:v104 file:v105 lineNumber:690 isFatal:0 format:v106 args:v103];

    v107 = v143;
    goto LABEL_42;
  }

  v9 = v8;
  v10 = [v8 drawingShapeItemUUIDToStrokeUUIDBidirectionalMap];
  if (!v10)
  {
    v134 = v9;
    v144 = v7;
    v108 = v5;
    v109 = objc_opt_self();
    v110 = [v109 _atomicIncrementAssertCount];
    v147[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v147);
    StaticString.description.getter();
    v111 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v112 = String._bridgeToObjectiveC()();

    v113 = [v112 lastPathComponent];

    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v117 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v118 = swift_initStackObject();
    *(v118 + 16) = xmmword_10146CA70;
    *(v118 + 56) = &type metadata for Int32;
    *(v118 + 64) = &protocol witness table for Int32;
    *(v118 + 32) = v110;
    v119 = sub_100006370(0, &qword_1019F4D30);
    *(v118 + 96) = v119;
    v120 = sub_1005CF04C();
    *(v118 + 104) = v120;
    *(v118 + 72) = v111;
    *(v118 + 136) = &type metadata for String;
    v121 = sub_1000053B0();
    *(v118 + 112) = v114;
    *(v118 + 120) = v116;
    *(v118 + 176) = &type metadata for UInt;
    *(v118 + 184) = &protocol witness table for UInt;
    *(v118 + 144) = v121;
    *(v118 + 152) = 691;
    v122 = v147[0];
    *(v118 + 216) = v119;
    *(v118 + 224) = v120;
    *(v118 + 192) = v122;
    v123 = v111;
    v124 = v122;
    v125 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v125, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v118);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v126 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v126, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v127 = swift_allocObject();
    v127[2] = 8;
    v127[3] = 0;
    v127[4] = 0;
    v127[5] = 0;
    v128 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v104 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v105 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v106 = String._bridgeToObjectiveC()();

    [v109 handleFailureInFunction:v104 file:v105 lineNumber:691 isFatal:0 format:v106 args:v128];

    v107 = v134;
LABEL_42:

    return _swiftEmptyArrayStorage;
  }

  v11 = v10;
  v147[0] = _swiftEmptyArrayStorage;
  v12 = *(a1 + 16);
  if (!v12)
  {
    v132 = _swiftEmptyArrayStorage;
    goto LABEL_45;
  }

  v13 = 0;
  v131 = v5;
  v132 = _swiftEmptyArrayStorage;
  v141 = *(a1 + 16);
  v142 = v7;
  v133 = v9;
  v130 = v2;
  v135 = v10;
  v136 = a1;
  do
  {
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v13 >= v12)
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v37 = *(type metadata accessor for PKStroke() - 8);
      v36 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_47;
      }

      v2 = (a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v13);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      result = [isa _strokeUUID];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v35 = result;

      v39 = [v11 objectForKeyedSubscript:v35];
      if (v39)
      {
        break;
      }

LABEL_15:

      ++v13;
      if (v36 == v12)
      {
        v5 = v131;
        v9 = v133;
        goto LABEL_45;
      }
    }

    isa = v39;
    v145 = v13 + 1;
    v40 = [v7 getBoardItemForUUID:v39];
    if (!v40)
    {
      goto LABEL_14;
    }

    v34 = v40;
    type metadata accessor for CRLFreehandDrawingShapeItem();
    if (!swift_dynamicCastClass())
    {
      v140 = isa;
      v139 = objc_opt_self();
      v15 = [v139 _atomicIncrementAssertCount];
      v146 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v146);
      StaticString.description.getter();
      v138 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10146CA70;
      *(v21 + 56) = &type metadata for Int32;
      *(v21 + 64) = &protocol witness table for Int32;
      *(v21 + 32) = v15;
      v22 = sub_100006370(0, &qword_1019F4D30);
      *(v21 + 96) = v22;
      v23 = sub_1005CF04C();
      *(v21 + 104) = v23;
      *(v21 + 72) = v138;
      *(v21 + 136) = &type metadata for String;
      v24 = sub_1000053B0();
      *(v21 + 112) = v137;
      *(v21 + 120) = v19;
      *(v21 + 176) = &type metadata for UInt;
      *(v21 + 144) = v24;
      *(v21 + 152) = 701;
      v25 = v146;
      *(v21 + 216) = v22;
      *(v21 + 224) = v23;
      *(v21 + 184) = &protocol witness table for UInt;
      *(v21 + 192) = v25;
      v26 = v138;
      v2 = v25;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v29 = swift_allocObject();
      LODWORD(v2) = v29;
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

      [v139 handleFailureInFunction:v31 file:v32 lineNumber:701 isFatal:0 format:v33 args:v30];

      v34 = v31;
      isa = v32;
      v35 = v33;
      v7 = v142;
      v11 = v135;
      a1 = v136;
LABEL_12:
      v12 = v141;
      v14 = _swiftEmptyArrayStorage;
LABEL_13:

LABEL_14:
      v36 = v13 + 1;

      goto LABEL_15;
    }

    v41 = swift_unknownObjectWeakLoadStrong();
    if (!v41)
    {
      goto LABEL_13;
    }

    v2 = v41;
    v42 = *((swift_isaMask & *v41) + 0x388);
    v34 = v34;
    LOBYTE(v42) = v42();

    if ((v42 & 1) == 0)
    {

      goto LABEL_12;
    }

    v43 = v34;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v12 = v141;
    if (*((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v132 = v147[0];
    ++v13;
    LODWORD(v2) = v130;
    v5 = v131;
    v9 = v133;
  }

  while (v145 != v141);
LABEL_45:
  v129 = sub_10118D4A8(v132, 0);

  return v129;
}

uint64_t sub_1011920F4(uint64_t a1, uint64_t a2)
{
  v3[61] = a2;
  v3[62] = v2;
  v3[60] = a1;
  type metadata accessor for MainActor();
  v3[63] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[64] = v5;
  v3[65] = v4;

  return _swift_task_switch(sub_101192194, v5, v4);
}

id sub_101192194()
{
  v62 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[66] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      result = [v3 view];
      v0[67] = result;
      if (result)
      {
        v6 = result;

        objc_opt_self();
        v7 = swift_dynamicCastObjCClassUnconditional();
        v8 = v6;
        [v2 viewScale];
        v10 = v9;
        objc_allocWithZone(type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator());

        v11 = swift_task_alloc();
        v0[68] = v11;
        *v11 = v0;
        v11[1] = sub_101192A40;
        v12 = v0[60];
        v13 = v0[61];

        return sub_100C5BA64(v7, v12, v13, v10);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v60 = objc_opt_self();
    v37 = [v60 _atomicIncrementAssertCount];
    v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v61);
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v37;
    v46 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v46;
    v47 = sub_1005CF04C();
    *(inited + 104) = v47;
    *(inited + 72) = v38;
    *(inited + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(inited + 112) = v41;
    *(inited + 120) = v43;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v48;
    *(inited + 152) = 924;
    v49 = v61;
    *(inited + 216) = v46;
    *(inited + 224) = v47;
    *(inited + 192) = v49;
    v50 = v38;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v56 file:v57 lineNumber:924 isFatal:0 format:v58 args:v55];
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v61);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_10146CA70;
    *(v23 + 56) = &type metadata for Int32;
    *(v23 + 64) = &protocol witness table for Int32;
    *(v23 + 32) = v15;
    v24 = sub_100006370(0, &qword_1019F4D30);
    *(v23 + 96) = v24;
    v25 = sub_1005CF04C();
    *(v23 + 104) = v25;
    *(v23 + 72) = v16;
    *(v23 + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(v23 + 112) = v19;
    *(v23 + 120) = v21;
    *(v23 + 176) = &type metadata for UInt;
    *(v23 + 184) = &protocol witness table for UInt;
    *(v23 + 144) = v26;
    *(v23 + 152) = 923;
    v27 = v61;
    *(v23 + 216) = v24;
    *(v23 + 224) = v25;
    *(v23 + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v34 file:v35 lineNumber:923 isFatal:0 format:v36 args:v33];
  }

  v59 = v0[1];

  return v59(0);
}

uint64_t sub_101192A40(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  *(*v1 + 552) = a1;

  v4 = *(v2 + 520);
  v5 = *(v2 + 512);

  return _swift_task_switch(sub_101192B88, v5, v4);
}

uint64_t sub_101192B88()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_101192C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v32 = a6;
  v30 = a4;
  v31 = a5;
  v28 = a3;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v34 = *(v10 - 8);
  v35 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A15A30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_100006370(0, &qword_1019F2D90);
  v29 = static OS_dispatch_queue.main.getter();
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v14 + 32))(v20 + v18, v17, v13);
  *(v20 + v19) = v28;
  v21 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = v31;
  *v21 = v30;
  *(v21 + 8) = v22;
  *(v21 + 16) = v32;
  aBlock[4] = sub_1011A6544;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018B5D78;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10119D3B8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v29;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v36 + 8))(v9, v25);
  (*(v34 + 8))(v12, v35);
}

void sub_101192FF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v74 = a4;
  v11 = sub_1005B981C(&qword_101A15A30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v69 - v14;
  if ((*(a1 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v73 = Strong;
      v17 = [Strong commandController];
      if (v17)
      {
        v72 = v17;
        v18 = swift_allocObject();
        v71 = a5;
        v19 = v18;
        swift_unknownObjectWeakInit();
        (*(v12 + 16))(v15, a2, v11);
        v20 = *(v12 + 80);
        v70 = a3;
        v21 = (v20 + 16) & ~v20;
        v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
        HIDWORD(v69) = a6;
        v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
        v24 = swift_allocObject();
        (*(v12 + 32))(v24 + v21, v15, v11);
        *(v24 + v22) = v19;
        *(v24 + v23) = v70;
        v25 = v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
        v26 = v71;
        *v25 = v74;
        *(v25 + 8) = v26;
        *(v25 + 16) = BYTE4(v69) & 1;

        v27 = v72;
        sub_10088B018(sub_1011A65F4, v24);

        return;
      }

      v72 = a2;
      v74 = v11;
      v71 = objc_opt_self();
      v50 = [v71 _atomicIncrementAssertCount];
      v75[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v75);
      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      v53 = [v52 lastPathComponent];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v57 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v50;
      v59 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v59;
      v60 = sub_1005CF04C();
      *(inited + 104) = v60;
      *(inited + 72) = v51;
      *(inited + 136) = &type metadata for String;
      v61 = sub_1000053B0();
      *(inited + 112) = v54;
      *(inited + 120) = v56;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v61;
      *(inited + 152) = 954;
      v62 = v75[0];
      *(inited + 216) = v59;
      *(inited + 224) = v60;
      *(inited + 192) = v62;
      v63 = v51;
      v64 = v62;
      v65 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v65, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v66 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v66, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v67 = swift_allocObject();
      v67[2] = 8;
      v67[3] = 0;
      v67[4] = 0;
      v67[5] = 0;
      v68 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      [v71 handleFailureInFunction:v47 file:v48 lineNumber:954 isFatal:0 format:v49 args:v68];
    }

    else
    {
      v72 = a2;
      v74 = v11;
      v73 = objc_opt_self();
      v28 = [v73 _atomicIncrementAssertCount];
      v75[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v75);
      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      v31 = [v30 lastPathComponent];

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v35 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_10146CA70;
      *(v36 + 56) = &type metadata for Int32;
      *(v36 + 64) = &protocol witness table for Int32;
      *(v36 + 32) = v28;
      v37 = sub_100006370(0, &qword_1019F4D30);
      *(v36 + 96) = v37;
      v38 = sub_1005CF04C();
      *(v36 + 104) = v38;
      *(v36 + 72) = v29;
      *(v36 + 136) = &type metadata for String;
      v39 = sub_1000053B0();
      *(v36 + 112) = v32;
      *(v36 + 120) = v34;
      *(v36 + 176) = &type metadata for UInt;
      *(v36 + 184) = &protocol witness table for UInt;
      *(v36 + 144) = v39;
      *(v36 + 152) = 953;
      v40 = v75[0];
      *(v36 + 216) = v37;
      *(v36 + 224) = v38;
      *(v36 + 192) = v40;
      v41 = v29;
      v42 = v40;
      v43 = static os_log_type_t.error.getter();
      sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v36);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v44 = static os_log_type_t.error.getter();
      sub_100005404(v35, &_mh_execute_header, v44, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v45 = swift_allocObject();
      v45[2] = 8;
      v45[3] = 0;
      v45[4] = 0;
      v45[5] = 0;
      v46 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      [v73 handleFailureInFunction:v47 file:v48 lineNumber:953 isFatal:0 format:v49 args:v46];
    }
  }

  CheckedContinuation.resume(returning:)();
}

uint64_t sub_101193908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) & 1) == 0)
    {
      sub_1011939C8(a3, a4, a5, a6 & 1, 1);
    }
  }

  sub_1005B981C(&qword_101A15A30);
  return CheckedContinuation.resume(returning:)();
}

void sub_1011939C8(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  v435 = a4;
  v444 = type metadata accessor for PKInkingTool.InkType();
  v10 = *(v444 - 8);
  __chkstk_darwin(v444);
  v443 = &v407 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = type metadata accessor for PKInk();
  v12 = *(v442 - 8);
  __chkstk_darwin(v442);
  v441 = &v407 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = type metadata accessor for PKStroke();
  v14 = *(v452 - 1);
  __chkstk_darwin(v452);
  v450 = &v407 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v453 = type metadata accessor for UUID();
  v448 = *(v453 - 1);
  __chkstk_darwin(v453);
  v438 = &v407 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v437 = &v407 - v18;
  __chkstk_darwin(v19);
  v451 = &v407 - v20;
  v440 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper(0);
  v21 = *(v440 - 8);
  __chkstk_darwin(v440);
  v447 = &v407 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10098EABC(&_mh_execute_header, "immediatelyApplyStrokeMutations(_:withActionString:selectNewStrokes:selectStrokesOnUndoRedo:)", 93, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 989) & 1) == 0)
  {
    return;
  }

  v427 = a5;
  v439 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v33 = objc_opt_self();
    LODWORD(v36) = [v33 _atomicIncrementAssertCount];
    var70[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, var70);
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v40;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_197;
    }

    goto LABEL_12;
  }

  v24 = Strong;
  v25 = [Strong commandController];
  v434 = v24;
  if (!v25)
  {
    v56 = objc_opt_self();
    v57 = [v56 _atomicIncrementAssertCount];
    var70[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, var70);
    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    v60 = [v59 lastPathComponent];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v64 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v57;
    v66 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v66;
    v67 = sub_1005CF04C();
    *(inited + 104) = v67;
    *(inited + 72) = v58;
    *(inited + 136) = &type metadata for String;
    v68 = sub_1000053B0();
    *(inited + 112) = v61;
    *(inited + 120) = v63;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v68;
    *(inited + 152) = 994;
    v69 = var70[0];
    *(inited + 216) = v66;
    *(inited + 224) = v67;
    *(inited + 192) = v69;
    v70 = v58;
    v71 = v69;
    v72 = static os_log_type_t.error.getter();
    sub_100005404(v64, &_mh_execute_header, v72, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v73 = static os_log_type_t.error.getter();
    sub_100005404(v64, &_mh_execute_header, v73, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v74 = swift_allocObject();
    v74[2] = 8;
    v74[3] = 0;
    v74[4] = 0;
    v74[5] = 0;
    v75 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    [v56 handleFailureInFunction:v76 file:v77 lineNumber:994 isFatal:0 format:v78 args:v75];

    goto LABEL_19;
  }

  v426 = v25;
  v26 = [v24 canvasEditor];
  if (!v26)
  {
    v79 = objc_opt_self();
    v80 = [v79 _atomicIncrementAssertCount];
    var70[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, var70);
    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    v83 = [v82 lastPathComponent];

    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v87 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v88 = swift_initStackObject();
    *(v88 + 16) = xmmword_10146CA70;
    *(v88 + 56) = &type metadata for Int32;
    *(v88 + 64) = &protocol witness table for Int32;
    *(v88 + 32) = v80;
    v89 = sub_100006370(0, &qword_1019F4D30);
    *(v88 + 96) = v89;
    v90 = sub_1005CF04C();
    *(v88 + 104) = v90;
    *(v88 + 72) = v81;
    *(v88 + 136) = &type metadata for String;
    v91 = sub_1000053B0();
    *(v88 + 112) = v84;
    *(v88 + 120) = v86;
    *(v88 + 176) = &type metadata for UInt;
    *(v88 + 184) = &protocol witness table for UInt;
    *(v88 + 144) = v91;
    *(v88 + 152) = 995;
    v92 = var70[0];
    *(v88 + 216) = v89;
    *(v88 + 224) = v90;
    *(v88 + 192) = v92;
    v93 = v81;
    v94 = v92;
    v95 = static os_log_type_t.error.getter();
    sub_100005404(v87, &_mh_execute_header, v95, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v88);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v96 = static os_log_type_t.error.getter();
    sub_100005404(v87, &_mh_execute_header, v96, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v97 = swift_allocObject();
    v97[2] = 8;
    v97[3] = 0;
    v97[4] = 0;
    v97[5] = 0;
    v98 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v99 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    [v79 handleFailureInFunction:v99 file:v77 lineNumber:995 isFatal:0 format:v78 args:v98];

LABEL_19:

    return;
  }

  v422 = v26;
  v27 = [v24 editorController];
  if (v27)
  {
    v414 = v27;
    v28 = [v24 selectionModelTranslator];
    if (v28)
    {
      v411 = v28;
      v449 = [v24 board];
      if (v449)
      {
        v29 = [v24 editingCoordinator];
        if (v29)
        {
          v30 = v29;
          v421 = *&v29[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

          v31 = _swiftEmptyArrayStorage;
          var70[0] = _swiftEmptyArrayStorage;
          v462 = _swiftEmptyArrayStorage;
          v463 = _swiftEmptyArrayStorage;
          v460 = _swiftEmptyArrayStorage;
          v461 = _swiftEmptyArrayStorage;
          sub_10088E3FC(0);

          sub_10088DE20(a2, a3);
          v415 = *(a1 + 16);
          if (!v415)
          {
            v169 = _swiftEmptyArrayStorage;
            v324 = _swiftEmptyArrayStorage;
            v420 = _swiftEmptyArrayStorage;
            goto LABEL_158;
          }

          v32 = 0;
          v417 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
          v445 = (v448 + 1);
          v446 = v448 + 2;
          v419 = (v12 + 8);
          v418 = (v10 + 8);
          v432 = v14;
          v428 = (v14 + 8);
          v429 = v14 + 16;
          v425 = v448 + 4;
          v416 = *(v21 + 72);
          v408 = xmmword_10146CA70;
          v407 = xmmword_10146C6B0;
          v33 = _swiftEmptyArrayStorage;
          v34 = v450;
          v35 = v447;
          while (1)
          {
            v423 = v32;
            v101 = v35;
            sub_1011A04B8(v417 + v416 * v32, v35, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v103 = [v449 getBoardItemForUUID:isa];

            if (v103)
            {
              type metadata accessor for CRLFreehandDrawingItem();
              v104 = swift_dynamicCastClass();
              if (v104)
              {
                v37 = v104;
                v105 = v103;
                v413 = [v434 layoutForInfo:v37];
                if (v413)
                {
                  v410 = v105;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((var70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((var70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  v412 = v37;
                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v420 = var70[0];
                  v106 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
                  v107 = *(v447 + *(v106 + 20));
                  v459 = _swiftEmptyArrayStorage;
                  v108 = *(v107 + 16);
                  v409 = v106;
                  if (v108)
                  {
                    v109 = v107 + ((*(v448 + 80) + 32) & ~*(v448 + 80));
                    v110 = v448[9];
                    v111 = v448[2];
                    v424 = _swiftEmptyArrayStorage;
                    do
                    {
                      v112 = v451;
                      v31 = v453;
                      v111(v451, v109, v453);
                      v37 = UUID._bridgeToObjectiveC()().super.isa;
                      v14 = [v449 getBoardItemForUUID:v37];

                      (*v445)(v112, v31);
                      if (v14)
                      {
                        type metadata accessor for CRLFreehandDrawingShapeItem();
                        v113 = swift_dynamicCastClass();
                        if (v113)
                        {
                          v37 = v113;
                          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                          if (*((v459 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v459 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            v31 = *((v459 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                          }

                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                          v424 = v459;
                        }

                        else
                        {
                        }
                      }

                      v109 += v110;
                      --v108;
                    }

                    while (v108);
                  }

                  else
                  {
                    v424 = _swiftEmptyArrayStorage;
                  }

                  v36 = [v413 geometryInRoot];
                  v455 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithLayoutGeometry:v36];

                  v459 = _swiftEmptyArrayStorage;
                  v137 = v439;
                  v433 = *(v447 + *(v440 + 20));
                  v431 = *(v433 + 16);
                  if (v431)
                  {
                    v33 = 0;
                    v430 = v433 + ((v432[80] + 32) & ~v432[80]);
                    while (v33 < *(v433 + 16))
                    {
                      v138 = *(v432 + 9);
                      v436 = v33;
                      (*(v432 + 2))(v34, v430 + v138 * v33, v452);
                      v139 = PKStroke._bridgeToObjectiveC()().super.isa;
                      v37 = [(objc_class *)v139 crl_fill];

                      if (v37)
                      {
                        LODWORD(v36) = v137;
                        v140 = sub_101197BC4(v34, v37);
                      }

                      else
                      {
                        v141 = v441;
                        PKStroke.ink.getter();
                        v142 = PKInk._bridgeToObjectiveC()().super.isa;
                        v143 = *v419;
                        v144 = v442;
                        (*v419)(v141, v442);
                        [(objc_class *)v142 _weight];
                        v146 = v145;

                        PKStroke.ink.getter();
                        v147 = v443;
                        PKInk.inkType.getter();
                        v143(v141, v144);
                        PKInkingTool.InkType.rawValue.getter();
                        (*v418)(v147, v444);
                        v33 = String._bridgeToObjectiveC()();

                        [objc_opt_self() _widthForWeight:v33 type:v146];
                        v149 = v148;
                        v150 = objc_opt_self();
                        v36 = PKStroke._bridgeToObjectiveC()().super.isa;
                        v37 = [v150 freehandDrawingShapeItemsFromPKStroke:v36 unadjustedPencilKitBaseWidth:v421 boardItemFactory:v149];

                        type metadata accessor for CRLFreehandDrawingShapeItem();
                        v140 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
                      }

                      if (v140 >> 62)
                      {
                        v151 = _CocoaArrayWrapper.endIndex.getter();
                        if (!v151)
                        {
                          goto LABEL_45;
                        }

LABEL_52:
                        v37 = 0;
                        v456 = v140;
                        v457 = (v140 & 0xC000000000000001);
                        v454 = v140 & 0xFFFFFFFFFFFFFF8;
LABEL_56:
                        if (v457)
                        {
                          v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          if (v37 >= *(v454 + 16))
                          {
                            __break(1u);
                            break;
                          }

                          v153 = *(v140 + 8 * v37 + 32);
                        }

                        v31 = v153;
                        v154 = v37 + 1;
                        if (__OFADD__(v37, 1))
                        {
                          __break(1u);
LABEL_157:
                          v420 = v33;
                          v169 = v460;
                          v324 = v461;
                          v31 = _swiftEmptyArrayStorage;
LABEL_158:

                          v36 = sub_100E944A4(v325);
                          v448 = v324;

                          sub_1012E3FAC(v36);
                          v33 = v326;

                          v459 = v33;
                          if (!(v169 >> 62))
                          {
                            v327 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            v450 = v169;
                            if (v327)
                            {
                              goto LABEL_160;
                            }

                            goto LABEL_161;
                          }

LABEL_202:
                          v350 = _CocoaArrayWrapper.endIndex.getter();
                          v450 = v169;
                          if (v350)
                          {
LABEL_160:
                            v328 = [v422 canvasEditorHelper];

                            v330 = sub_100E944A4(v329);

                            sub_1012E3FAC(v330);

                            type metadata accessor for CRLBoardItem(0);
                            sub_10119D3B8(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
                            v331 = Set._bridgeToObjectiveC()().super.isa;

                            v332 = [v328 infosToDeleteToDeleteInfos:v331];

                            v333 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
                            v36 = &v459;
                            sub_1006369C4(v333);
                            v33 = v459;
                          }

LABEL_161:
                          v334 = v33 & 0xC000000000000001;
                          if ((v33 & 0xC000000000000001) != 0)
                          {
                            v335 = __CocoaSet.count.getter();
                          }

                          else
                          {
                            v335 = *(v33 + 16);
                          }

                          if (v335)
                          {
                            v36 = objc_allocWithZone(type metadata accessor for CRLCommandDeleteBoardItems());
                            type metadata accessor for CRLBoardItem(0);
                            sub_10119D3B8(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
                            v336 = Set._bridgeToObjectiveC()().super.isa;
                            v337 = [v36 initWithBoardItemsToDelete:v336 canDeleteNewlyCreatedItems:0];

                            LODWORD(v36) = v426;
                            sub_100888700(v337, 0, 0, 4, 0);
                          }

                          v458 = v31;
                          if (!(v420 >> 62))
                          {
                            v37 = *((v420 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            if (v37)
                            {
                              goto LABEL_168;
                            }

LABEL_205:

                            v351 = v458;
                            v458 = v448;
                            sub_10079C16C(v450);
                            v352 = v458;
                            v353 = [v414 selectionPath];
                            v354 = v463;
                            v355 = sub_1011A571C(v411, v353, v435 & 1, v427 & 1, v33, v351, v463, v352, v462);

                            if (([objc_opt_self() isOSFeatureEnabled:9] & 1) == 0)
                            {

LABEL_218:
                              v380 = v355;
                              v381 = v426;
                              sub_10088E600(v355);

                              swift_unknownObjectRelease();
                              return;
                            }

                            v356 = [v434 layerHost];
                            if (v356)
                            {
                              v357 = v356;
                              if ([v356 respondsToSelector:"asPencilGestureProvider"])
                              {
                                v358 = [v357 asPencilGestureProvider];
                                swift_unknownObjectRelease();
                                v359 = [v358 smartSelectionManager];
                                swift_unknownObjectRelease();
                                if (v359)
                                {
                                  if (v352 >> 62)
                                  {
                                    type metadata accessor for CRLBoardItem(0);

                                    _bridgeCocoaArray<A>(_:)();
                                  }

                                  else
                                  {

                                    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                                    type metadata accessor for CRLBoardItem(0);
                                  }

                                  type metadata accessor for CRLBoardItem(0);
                                  v360.super.isa = Array._bridgeToObjectiveC()().super.isa;

                                  if (v354 >> 62)
                                  {
                                    _bridgeCocoaArray<A>(_:)();
                                  }

                                  else
                                  {
                                    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                                  }

                                  v361 = Array._bridgeToObjectiveC()().super.isa;

                                  [v359 replacingPotentiallySmartSelectedItems:v360.super.isa withNewItems:v361];

                                  goto LABEL_218;
                                }
                              }

                              else
                              {
                                swift_unknownObjectRelease();
                              }
                            }

                            v454 = v352;
                            v455 = v354;
                            v456 = v355;
                            v453 = objc_opt_self();
                            LODWORD(v457) = [v453 _atomicIncrementAssertCount];
                            v458 = [objc_allocWithZone(NSString) init];
                            sub_100604538(_swiftEmptyArrayStorage, &v458);
                            StaticString.description.getter();
                            v31 = String._bridgeToObjectiveC()();

                            StaticString.description.getter();
                            v362 = String._bridgeToObjectiveC()();

                            v363 = [v362 lastPathComponent];

                            v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v189 = v364;

                            if (qword_1019F20A0 == -1)
                            {
LABEL_217:
                              v365 = static OS_os_log.crlAssert;
                              sub_1005B981C(&qword_1019F54E0);
                              v366 = swift_allocObject();
                              *(v366 + 16) = xmmword_10146CA70;
                              *(v366 + 56) = &type metadata for Int32;
                              *(v366 + 64) = &protocol witness table for Int32;
                              *(v366 + 32) = v457;
                              v367 = sub_100006370(0, &qword_1019F4D30);
                              *(v366 + 96) = v367;
                              v368 = sub_1005CF04C();
                              *(v366 + 104) = v368;
                              *(v366 + 72) = v31;
                              *(v366 + 136) = &type metadata for String;
                              v369 = sub_1000053B0();
                              *(v366 + 112) = v191;
                              *(v366 + 120) = v189;
                              *(v366 + 176) = &type metadata for UInt;
                              *(v366 + 184) = &protocol witness table for UInt;
                              *(v366 + 144) = v369;
                              *(v366 + 152) = 1130;
                              v370 = v458;
                              *(v366 + 216) = v367;
                              *(v366 + 224) = v368;
                              *(v366 + 192) = v370;
                              v371 = v31;
                              v372 = v370;
                              v373 = static os_log_type_t.error.getter();
                              sub_100005404(v365, &_mh_execute_header, v373, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v366);
                              swift_setDeallocating();
                              sub_1005B981C(&unk_1019F5670);
                              swift_arrayDestroy();
                              swift_deallocClassInstance();
                              v374 = static os_log_type_t.error.getter();
                              sub_100005404(v365, &_mh_execute_header, v374, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                              type metadata accessor for __VaListBuilder();
                              v375 = swift_allocObject();
                              v375[2] = 8;
                              v375[3] = 0;
                              v375[4] = 0;
                              v375[5] = 0;
                              v376 = __VaListBuilder.va_list()();
                              StaticString.description.getter();
                              v377 = String._bridgeToObjectiveC()();

                              StaticString.description.getter();
                              v378 = String._bridgeToObjectiveC()();

                              StaticString.description.getter();
                              v379 = String._bridgeToObjectiveC()();

                              [v453 handleFailureInFunction:v377 file:v378 lineNumber:1130 isFatal:0 format:v379 args:v376];

                              v355 = v456;
                              goto LABEL_218;
                            }

LABEL_220:
                            swift_once();
                            goto LABEL_217;
                          }

                          v37 = _CocoaArrayWrapper.endIndex.getter();
                          if (!v37)
                          {
                            goto LABEL_205;
                          }

LABEL_168:
                          v338 = 0;
                          v453 = (v420 & 0xFFFFFFFFFFFFFF8);
                          v454 = v420 & 0xC000000000000001;
                          v451 = (v420 + 32);
                          v452 = v37;
                          if (v33 < 0)
                          {
                            v31 = v33;
                          }

                          else
                          {
                            v31 = (v33 & 0xFFFFFFFFFFFFFF8);
                          }

                          v339 = v33 + 56;
                          v455 = v31;
LABEL_174:
                          if (v454)
                          {
                            v340 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                          }

                          else
                          {
                            if (v338 >= v453[2])
                            {
                              goto LABEL_196;
                            }

                            v340 = *&v451[8 * v338];
                          }

                          v36 = v340;
                          v457 = (v338 + 1);
                          if (__OFADD__(v338, 1))
                          {
                            goto LABEL_195;
                          }

                          type metadata accessor for CRLBoardItem(0);
                          v14 = v36;
                          v456 = v14;
                          if (!v334)
                          {
                            goto LABEL_181;
                          }

LABEL_179:

                          v36 = v14;
                          v341 = __CocoaSet.contains(_:)();

                          if (v341)
                          {

                            goto LABEL_173;
                          }

                          while (1)
                          {
                            v349 = swift_unknownObjectWeakLoadStrong();

                            if (!v349)
                            {
                              break;
                            }

                            v14 = v349;
                            if (v334)
                            {
                              goto LABEL_179;
                            }

LABEL_181:
                            if (*(v33 + 16))
                            {
                              v342 = v334;
                              v343 = *(v33 + 40);

                              v344 = NSObject._rawHashValue(seed:)(v343);
                              v345 = -1 << *(v33 + 32);
                              v346 = v344 & ~v345;
                              if ((*(v339 + ((v346 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v346))
                              {
                                v347 = ~v345;
                                while (1)
                                {
                                  v348 = *(*(v33 + 48) + 8 * v346);
                                  LODWORD(v36) = static NSObject.== infix(_:_:)();

                                  if (v36)
                                  {
                                    break;
                                  }

                                  v346 = (v346 + 1) & v347;
                                  if (((*(v339 + ((v346 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v346) & 1) == 0)
                                  {
                                    goto LABEL_186;
                                  }
                                }

                                v334 = v342;
                                v31 = v455;
LABEL_173:
                                v37 = v452;
                                v338 = v457;
                                if (v457 == v452)
                                {
                                  goto LABEL_205;
                                }

                                goto LABEL_174;
                              }

LABEL_186:

                              v334 = v342;
                              v31 = v455;
                            }

                            else
                            {
                            }
                          }

                          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                          v36 = &v458;
                          specialized ContiguousArray._endMutation()();
                          goto LABEL_173;
                        }

                        v155 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
                        v156 = *(**(v153 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

                        v158 = v156(v157);

                        v14 = [v158 geometryRelativeToGeometry:v455];

                        if (*(v31 + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext) || (v160 = swift_unknownObjectWeakLoadStrong()) == 0)
                        {
                          v159 = v14;
                        }

                        else
                        {
                          v161 = v160;
                          v162 = (*((swift_isaMask & *v160) + 0x388))(v14);

                          if (v162)
                          {
                            v382 = objc_opt_self();
                            v383 = [v382 _atomicIncrementAssertCount];
                            v458 = [objc_allocWithZone(NSString) init];
                            sub_100604538(_swiftEmptyArrayStorage, &v458);
                            StaticString.description.getter();
                            v384 = String._bridgeToObjectiveC()();

                            StaticString.description.getter();
                            v385 = String._bridgeToObjectiveC()();

                            v386 = [v385 lastPathComponent];

                            v387 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v389 = v388;

                            if (qword_1019F20A0 != -1)
                            {
                              swift_once();
                            }

                            v390 = static OS_os_log.crlAssert;
                            sub_1005B981C(&qword_1019F54E0);
                            v391 = swift_allocObject();
                            *(v391 + 16) = v408;
                            *(v391 + 56) = &type metadata for Int32;
                            *(v391 + 64) = &protocol witness table for Int32;
                            *(v391 + 32) = v383;
                            v392 = sub_100006370(0, &qword_1019F4D30);
                            *(v391 + 96) = v392;
                            v393 = sub_1005CF04C();
                            *(v391 + 104) = v393;
                            *(v391 + 72) = v384;
                            *(v391 + 136) = &type metadata for String;
                            v394 = sub_1000053B0();
                            *(v391 + 112) = v387;
                            *(v391 + 120) = v389;
                            *(v391 + 176) = &type metadata for UInt;
                            *(v391 + 144) = v394;
                            *(v391 + 152) = 79;
                            v395 = v458;
                            *(v391 + 216) = v392;
                            *(v391 + 224) = v393;
                            *(v391 + 184) = &protocol witness table for UInt;
                            *(v391 + 192) = v395;
                            v396 = v384;
                            v397 = v395;
                            v398 = static os_log_type_t.error.getter();
                            sub_100005404(v390, &_mh_execute_header, v398, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v391);

                            v399 = static os_log_type_t.error.getter();
                            sub_100005404(v390, &_mh_execute_header, v399, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

                            sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
                            type metadata accessor for __VaListBuilder();
                            v400 = swift_allocObject();
                            v400[2] = 8;
                            v400[3] = 0;
                            v400[4] = 0;
                            v400[5] = 0;
                            v401 = __VaListBuilder.va_list()();
                            StaticString.description.getter();
                            v402 = String._bridgeToObjectiveC()();

                            StaticString.description.getter();
                            v403 = String._bridgeToObjectiveC()();

                            StaticString.description.getter();
                            v404 = String._bridgeToObjectiveC()();

                            [v382 handleFailureInFunction:v402 file:v403 lineNumber:79 isFatal:1 format:v404 args:v401];

                            SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v405, v406);
                            LODWORD(vars8) = 0;
                            var70[14] = 348;
                            _assertionFailure(_:_:file:line:flags:)();
                            __break(1u);
                            return;
                          }
                        }

                        v33 = *(**(v31 + v155) + 296);

                        v164 = (v33)(v163);

                        sub_100006370(0, &unk_1019F5730);
                        v165 = static NSObject.== infix(_:_:)();

                        if (v165)
                        {
                        }

                        else
                        {
                          v33 = *(**(v31 + v155) + 304);

                          (v33)(v14);
                        }

                        v166 = swift_unknownObjectWeakLoadStrong();
                        if (v166)
                        {
                          v36 = v166;
                          v167 = (*((swift_isaMask & *v166) + 0x388))();

                          if (v167)
                          {

LABEL_55:
                            ++v37;
                            v140 = v456;
                            if (v154 == v151)
                            {
                              goto LABEL_45;
                            }

                            goto LABEL_56;
                          }
                        }

                        else
                        {
                        }

                        *(v31 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

                        v152 = v31 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
                        v36 = *(v31 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace);
                        *(v152 + 1) = 0u;
                        *(v152 + 2) = 0u;
                        *(v152 + 6) = 0;
                        *v152 = 0u;

                        goto LABEL_55;
                      }

                      v151 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v151)
                      {
                        goto LABEL_52;
                      }

LABEL_45:
                      v33 = v436 + 1;
                      sub_10079C16C(v140);
                      v36 = &v463;
                      sub_10079C16C(v140);
                      v34 = v450;
                      (*v428)(v450, v452);
                      v137 = v439;
                      if (v33 == v431)
                      {
                        goto LABEL_73;
                      }
                    }

                    __break(1u);
LABEL_195:
                    __break(1u);
LABEL_196:
                    __break(1u);
LABEL_197:
                    swift_once();
LABEL_12:
                    v41 = static OS_os_log.crlAssert;
                    sub_1005B981C(&qword_1019F54E0);
                    v42 = swift_initStackObject();
                    *(v42 + 16) = xmmword_10146CA70;
                    *(v42 + 56) = &type metadata for Int32;
                    *(v42 + 64) = &protocol witness table for Int32;
                    *(v42 + 32) = v36;
                    v43 = sub_100006370(0, &qword_1019F4D30);
                    *(v42 + 96) = v43;
                    v44 = sub_1005CF04C();
                    *(v42 + 104) = v44;
                    *(v42 + 72) = v37;
                    *(v42 + 136) = &type metadata for String;
                    v45 = sub_1000053B0();
                    *(v42 + 112) = v31;
                    *(v42 + 120) = v14;
                    *(v42 + 176) = &type metadata for UInt;
                    *(v42 + 184) = &protocol witness table for UInt;
                    *(v42 + 144) = v45;
                    *(v42 + 152) = 993;
                    v46 = var70[0];
                    *(v42 + 216) = v43;
                    *(v42 + 224) = v44;
                    *(v42 + 192) = v46;
                    v47 = v37;
                    v48 = v46;
                    v49 = static os_log_type_t.error.getter();
                    sub_100005404(v41, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v42);
                    swift_setDeallocating();
                    sub_1005B981C(&unk_1019F5670);
                    swift_arrayDestroy();
                    v50 = static os_log_type_t.error.getter();
                    sub_100005404(v41, &_mh_execute_header, v50, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                    type metadata accessor for __VaListBuilder();
                    v51 = swift_allocObject();
                    v51[2] = 8;
                    v51[3] = 0;
                    v51[4] = 0;
                    v51[5] = 0;
                    v52 = __VaListBuilder.va_list()();
                    StaticString.description.getter();
                    v53 = String._bridgeToObjectiveC()();

                    StaticString.description.getter();
                    v54 = String._bridgeToObjectiveC()();

                    StaticString.description.getter();
                    v55 = String._bridgeToObjectiveC()();

                    [v33 handleFailureInFunction:v53 file:v54 lineNumber:993 isFatal:0 format:v55 args:v52];

                    return;
                  }

LABEL_73:
                  v168 = *(v447 + *(v409 + 24));
                  v169 = _swiftEmptyArrayStorage;
                  v458 = _swiftEmptyArrayStorage;
                  v170 = *(v168 + 16);
                  if (v170)
                  {
                    v171 = v168 + ((*(v448 + 80) + 32) & ~*(v448 + 80));
                    v172 = v448[9];
                    v14 = v448[2];
                    v173 = v437;
                    do
                    {
                      v31 = v453;
                      (v14)(v173, v171, v453);
                      v174 = UUID._bridgeToObjectiveC()().super.isa;
                      v175 = [v449 getBoardItemForUUID:v174];

                      (*v445)(v173, v31);
                      if (v175)
                      {
                        type metadata accessor for CRLFreehandDrawingShapeItem();
                        v176 = swift_dynamicCastClass();
                        if (v176)
                        {
                          v31 = v176;
                          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                          if (*((v458 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v458 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                          }

                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                          v169 = v458;
                        }

                        else
                        {
                        }
                      }

                      v171 += v172;
                      --v170;
                    }

                    while (v170);
                  }

                  sub_10079C16C(v169);
                  v177 = v459;
                  v178 = v459 >> 62;
                  if (!(v459 >> 62))
                  {
                    v33 = v420;
                    v36 = v412;
                    if (*((v459 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_84;
                    }

LABEL_106:
                    if (v178)
                    {
                      _CocoaArrayWrapper.endIndex.getter();
                    }

                    v201 = v438;
                    sub_10079C16C(v424);
                    v31 = *(v447 + *(v440 + 24));
                    if (v31)
                    {
                      if (v178)
                      {
                        v33 = _CocoaArrayWrapper.endIndex.getter();
                      }

                      else
                      {
                        v33 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      if (v33)
                      {
                        v458 = _swiftEmptyArrayStorage;
                        v169 = v33 & ~(v33 >> 63);
                        v457 = v31;
                        v203 = v31;
                        v36 = &v458;
                        sub_100776524(0, v169, 0);
                        if (v33 < 0)
                        {
                          goto LABEL_199;
                        }

                        v204 = 0;
                        v205 = v458;
                        do
                        {
                          if ((v177 & 0xC000000000000001) != 0)
                          {
                            v206 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                          }

                          else
                          {
                            v206 = *(v177 + 8 * v204 + 32);
                          }

                          v207 = v206;
                          (*(**&v206[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();

                          v458 = v205;
                          v209 = v205[2];
                          v208 = v205[3];
                          v14 = (v209 + 1);
                          if (v209 >= v208 >> 1)
                          {
                            sub_100776524(v208 > 1, v209 + 1, 1);
                            v205 = v458;
                          }

                          ++v204;
                          v205[2] = v14;
                          (v448[4])(v205 + ((*(v448 + 80) + 32) & ~*(v448 + 80)) + v448[9] * v209, v201, v453);
                        }

                        while (v33 != v204);

                        v31 = v457;
                      }

                      else
                      {
                        v210 = v31;

                        v205 = _swiftEmptyArrayStorage;
                      }

                      v211 = sub_100E93A84(v205);

                      v212 = *(v31 + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_incomingShapeItemUUIDs);
                      *(v31 + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_incomingShapeItemUUIDs) = v211;
                      sub_100C5B6C8(v212);

                      v213 = [v434 repForInfo:v412];
                      if (v213)
                      {
                        v214 = v213;
                        objc_opt_self();
                        v215 = swift_dynamicCastObjCClass();
                        if (v215)
                        {
                          v216 = v215;
                          v217 = v214;
                          [v216 runStrokeAnimation:v31];
                          v218 = v410;

                          sub_1011A0324(v447, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
                          goto LABEL_132;
                        }

                        v457 = v31;
                        v456 = objc_opt_self();
                        LODWORD(v454) = [v456 _atomicIncrementAssertCount];
                        v458 = [objc_allocWithZone(NSString) init];
                        sub_100604538(_swiftEmptyArrayStorage, &v458);
                        StaticString.description.getter();
                        v219 = String._bridgeToObjectiveC()();

                        StaticString.description.getter();
                        v220 = String._bridgeToObjectiveC()();

                        v221 = [v220 lastPathComponent];

                        v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v224 = v223;

                        if (qword_1019F20A0 != -1)
                        {
                          swift_once();
                        }

                        v225 = static OS_os_log.crlAssert;
                        sub_1005B981C(&qword_1019F54E0);
                        v226 = swift_allocObject();
                        *(v226 + 16) = v408;
                        *(v226 + 56) = &type metadata for Int32;
                        *(v226 + 64) = &protocol witness table for Int32;
                        *(v226 + 32) = v454;
                        v227 = sub_100006370(0, &qword_1019F4D30);
                        *(v226 + 96) = v227;
                        v228 = sub_1005CF04C();
                        *(v226 + 104) = v228;
                        *(v226 + 72) = v219;
                        *(v226 + 136) = &type metadata for String;
                        v229 = sub_1000053B0();
                        *(v226 + 112) = v222;
                        *(v226 + 120) = v224;
                        *(v226 + 176) = &type metadata for UInt;
                        *(v226 + 144) = v229;
                        *(v226 + 152) = 1087;
                        v230 = v458;
                        *(v226 + 216) = v227;
                        *(v226 + 224) = v228;
                        *(v226 + 184) = &protocol witness table for UInt;
                        *(v226 + 192) = v230;
                        v231 = v219;
                        v232 = v230;
                        v233 = static os_log_type_t.error.getter();
                        sub_100005404(v225, &_mh_execute_header, v233, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v226);
                        swift_setDeallocating();
                        sub_1005B981C(&unk_1019F5670);
                        swift_arrayDestroy();
                        swift_deallocClassInstance();
                        v234 = static os_log_type_t.error.getter();
                        sub_100005404(v225, &_mh_execute_header, v234, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                        type metadata accessor for __VaListBuilder();
                        v235 = swift_allocObject();
                        v235[2] = 8;
                        v235[3] = 0;
                        v235[4] = 0;
                        v235[5] = 0;
                        v236 = __VaListBuilder.va_list()();
                        StaticString.description.getter();
                        v237 = String._bridgeToObjectiveC()();

                        StaticString.description.getter();
                        v31 = String._bridgeToObjectiveC()();

                        StaticString.description.getter();
                        v14 = String._bridgeToObjectiveC()();

                        [v456 handleFailureInFunction:v237 file:v31 lineNumber:1087 isFatal:0 format:v14 args:v236];

                        sub_1011A0324(v447, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
                      }

                      else
                      {
                        sub_1011A0324(v447, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
                      }

                      v238 = v410;
LABEL_132:
                      v33 = v420;
                    }

                    else
                    {
                      sub_1011A0324(v447, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);

                      v202 = v410;
                    }

                    v100 = v423;
                    v34 = v450;
                    goto LABEL_23;
                  }

                  v239 = _CocoaArrayWrapper.endIndex.getter();
                  v33 = v420;
                  v36 = v412;
                  if (!v239)
                  {
                    goto LABEL_106;
                  }

LABEL_84:
                  v33 = v424;
                  if (!(v424 >> 62))
                  {
                    v179 = *((v424 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v179)
                    {
                      goto LABEL_86;
                    }

                    goto LABEL_97;
                  }

                  v179 = _CocoaArrayWrapper.endIndex.getter();
                  if (!v179)
                  {
                    goto LABEL_97;
                  }

LABEL_86:
                  v180 = __OFSUB__(v179, 1);
                  v181 = v179 - 1;
                  if (v180)
                  {
                    __break(1u);
LABEL_199:
                    __break(1u);
LABEL_200:
                    __break(1u);
LABEL_201:
                    __break(1u);
                    goto LABEL_202;
                  }

                  if ((v33 & 0xC000000000000001) != 0)
                  {
                    v182 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if ((v181 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_200;
                    }

                    if (v181 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_201;
                    }

                    v182 = *(v33 + 8 * v181 + 32);
                  }

                  v183 = v182;
                  v184 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
                  v185 = *(v36 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
                  v186 = v410;
                  if (!v185)
                  {
                    v187 = v412;
                    sub_10096C7D4();
                    v185 = *(v187 + v184);
                  }

                  if (v185)
                  {
                    v188 = v185;
                  }

                  else
                  {
                    v188 = _swiftEmptyArrayStorage;
                  }

                  v189 = sub_10100F554(v183, v188);
                  v191 = v190;

                  if (v191)
                  {
LABEL_97:
                    v192 = 0;
                    v193 = 1;
                  }

                  else
                  {
                    v192 = v189 + 1;
                    if (__OFADD__(v189, 1))
                    {
                      __break(1u);
                      goto LABEL_220;
                    }

                    v193 = 0;
                  }

                  if (v178)
                  {
                    type metadata accessor for CRLBoardItem(0);
                    v196 = v410;

                    v195 = _bridgeCocoaArray<A>(_:)();
                  }

                  else
                  {
                    v194 = v410;

                    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                    type metadata accessor for CRLBoardItem(0);
                    v195 = v177;
                  }

                  if (v193)
                  {
                    v192 = NSNotFound.getter();
                  }

                  sub_1005B981C(&unk_101A09DB0);
                  v197 = swift_initStackObject();
                  *(v197 + 16) = v407;
                  *(v197 + 32) = v192;
                  v198 = v197 + 32;
                  *(v197 + 40) = v195;
                  v199 = sub_100BD4E94(v197);
                  swift_setDeallocating();
                  sub_10000CAAC(v198, &qword_101A039D0);
                  v200 = sub_100BDF940(v412, v199);
                  sub_100888700(v200, 0, 0, 4, 0);

                  v33 = v420;
                  goto LABEL_106;
                }

                sub_1011A0324(v447, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
              }

              else
              {
                v420 = v33;
                v457 = objc_opt_self();
                v114 = [v457 _atomicIncrementAssertCount];
                v459 = [objc_allocWithZone(NSString) init];
                sub_100604538(_swiftEmptyArrayStorage, &v459);
                StaticString.description.getter();
                v115 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v116 = String._bridgeToObjectiveC()();

                v117 = [v116 lastPathComponent];

                v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v120 = v119;

                if (qword_1019F20A0 != -1)
                {
                  swift_once();
                }

                v121 = static OS_os_log.crlAssert;
                sub_1005B981C(&qword_1019F54E0);
                v122 = swift_allocObject();
                *(v122 + 16) = v408;
                *(v122 + 56) = &type metadata for Int32;
                *(v122 + 64) = &protocol witness table for Int32;
                *(v122 + 32) = v114;
                v123 = sub_100006370(0, &qword_1019F4D30);
                *(v122 + 96) = v123;
                v124 = sub_1005CF04C();
                *(v122 + 104) = v124;
                *(v122 + 72) = v115;
                *(v122 + 136) = &type metadata for String;
                v125 = sub_1000053B0();
                *(v122 + 112) = v118;
                *(v122 + 120) = v120;
                *(v122 + 176) = &type metadata for UInt;
                *(v122 + 144) = v125;
                *(v122 + 152) = 1020;
                v126 = v115;
                v127 = v459;
                *(v122 + 216) = v123;
                *(v122 + 224) = v124;
                *(v122 + 184) = &protocol witness table for UInt;
                *(v122 + 192) = v127;
                v128 = v126;
                v129 = v127;
                v130 = static os_log_type_t.error.getter();
                sub_100005404(v121, &_mh_execute_header, v130, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v122);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                v131 = static os_log_type_t.error.getter();
                sub_100005404(v121, &_mh_execute_header, v131, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                type metadata accessor for __VaListBuilder();
                v132 = swift_allocObject();
                v132[2] = 8;
                v132[3] = 0;
                v132[4] = 0;
                v132[5] = 0;
                v133 = __VaListBuilder.va_list()();
                StaticString.description.getter();
                v134 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v14 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v31 = v135;
                v136 = String._bridgeToObjectiveC()();

                [v457 handleFailureInFunction:v134 file:v14 lineNumber:1020 isFatal:0 format:v136 args:v133];

                sub_1011A0324(v447, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
                v33 = v420;
                v34 = v450;
              }
            }

            else
            {
              sub_1011A0324(v101, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
            }

            v100 = v423;
LABEL_23:
            v32 = v100 + 1;
            v35 = v447;
            if (v32 == v415)
            {
              goto LABEL_157;
            }
          }
        }

        v303 = objc_opt_self();
        v304 = [v303 _atomicIncrementAssertCount];
        var70[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, var70);
        StaticString.description.getter();
        v305 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v306 = String._bridgeToObjectiveC()();

        v307 = [v306 lastPathComponent];

        v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v310 = v309;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v311 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v312 = swift_allocObject();
        *(v312 + 16) = xmmword_10146CA70;
        *(v312 + 56) = &type metadata for Int32;
        *(v312 + 64) = &protocol witness table for Int32;
        *(v312 + 32) = v304;
        v313 = sub_100006370(0, &qword_1019F4D30);
        *(v312 + 96) = v313;
        v314 = sub_1005CF04C();
        *(v312 + 104) = v314;
        *(v312 + 72) = v305;
        *(v312 + 136) = &type metadata for String;
        v315 = sub_1000053B0();
        *(v312 + 112) = v308;
        *(v312 + 120) = v310;
        *(v312 + 176) = &type metadata for UInt;
        *(v312 + 184) = &protocol witness table for UInt;
        *(v312 + 144) = v315;
        *(v312 + 152) = 999;
        v316 = var70[0];
        *(v312 + 216) = v313;
        *(v312 + 224) = v314;
        *(v312 + 192) = v316;
        v317 = v305;
        v318 = v316;
        v319 = static os_log_type_t.error.getter();
        sub_100005404(v311, &_mh_execute_header, v319, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v312);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v320 = static os_log_type_t.error.getter();
        sub_100005404(v311, &_mh_execute_header, v320, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v321 = swift_allocObject();
        v321[2] = 8;
        v321[3] = 0;
        v321[4] = 0;
        v321[5] = 0;
        v322 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v260 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v261 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v457 = String._bridgeToObjectiveC()();

        [v303 handleFailureInFunction:v260 file:v261 lineNumber:999 isFatal:0 format:v457 args:v322];

        swift_unknownObjectRelease();
        v282 = v449;
      }

      else
      {
        v283 = objc_opt_self();
        v284 = [v283 _atomicIncrementAssertCount];
        var70[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, var70);
        StaticString.description.getter();
        v285 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v286 = String._bridgeToObjectiveC()();

        v287 = [v286 lastPathComponent];

        v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v290 = v289;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v291 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v292 = swift_allocObject();
        *(v292 + 16) = xmmword_10146CA70;
        *(v292 + 56) = &type metadata for Int32;
        *(v292 + 64) = &protocol witness table for Int32;
        *(v292 + 32) = v284;
        v293 = sub_100006370(0, &qword_1019F4D30);
        *(v292 + 96) = v293;
        v294 = sub_1005CF04C();
        *(v292 + 104) = v294;
        *(v292 + 72) = v285;
        *(v292 + 136) = &type metadata for String;
        v295 = sub_1000053B0();
        *(v292 + 112) = v288;
        *(v292 + 120) = v290;
        *(v292 + 176) = &type metadata for UInt;
        *(v292 + 184) = &protocol witness table for UInt;
        *(v292 + 144) = v295;
        *(v292 + 152) = 998;
        v296 = var70[0];
        *(v292 + 216) = v293;
        *(v292 + 224) = v294;
        *(v292 + 192) = v296;
        v297 = v285;
        v298 = v296;
        v299 = static os_log_type_t.error.getter();
        sub_100005404(v291, &_mh_execute_header, v299, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v292);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v300 = static os_log_type_t.error.getter();
        sub_100005404(v291, &_mh_execute_header, v300, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v301 = swift_allocObject();
        v301[2] = 8;
        v301[3] = 0;
        v301[4] = 0;
        v301[5] = 0;
        v302 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v260 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v261 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v457 = String._bridgeToObjectiveC()();

        [v283 handleFailureInFunction:v260 file:v261 lineNumber:998 isFatal:0 format:v457 args:v302];

        swift_unknownObjectRelease();
        v282 = v411;
      }
    }

    else
    {
      v262 = objc_opt_self();
      v263 = [v262 _atomicIncrementAssertCount];
      var70[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, var70);
      StaticString.description.getter();
      v264 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v265 = String._bridgeToObjectiveC()();

      v266 = [v265 lastPathComponent];

      v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v269 = v268;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v270 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v271 = swift_allocObject();
      *(v271 + 16) = xmmword_10146CA70;
      *(v271 + 56) = &type metadata for Int32;
      *(v271 + 64) = &protocol witness table for Int32;
      *(v271 + 32) = v263;
      v272 = sub_100006370(0, &qword_1019F4D30);
      *(v271 + 96) = v272;
      v273 = sub_1005CF04C();
      *(v271 + 104) = v273;
      *(v271 + 72) = v264;
      *(v271 + 136) = &type metadata for String;
      v274 = sub_1000053B0();
      *(v271 + 112) = v267;
      *(v271 + 120) = v269;
      *(v271 + 176) = &type metadata for UInt;
      *(v271 + 184) = &protocol witness table for UInt;
      *(v271 + 144) = v274;
      *(v271 + 152) = 997;
      v275 = var70[0];
      *(v271 + 216) = v272;
      *(v271 + 224) = v273;
      *(v271 + 192) = v275;
      v276 = v264;
      v277 = v275;
      v278 = static os_log_type_t.error.getter();
      sub_100005404(v270, &_mh_execute_header, v278, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v271);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v279 = static os_log_type_t.error.getter();
      sub_100005404(v270, &_mh_execute_header, v279, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v280 = swift_allocObject();
      v280[2] = 8;
      v280[3] = 0;
      v280[4] = 0;
      v280[5] = 0;
      v281 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v260 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v261 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v457 = String._bridgeToObjectiveC()();

      [v262 handleFailureInFunction:v260 file:v261 lineNumber:997 isFatal:0 format:v457 args:v281];

      swift_unknownObjectRelease();
      v282 = v414;
    }
  }

  else
  {
    v240 = objc_opt_self();
    v241 = [v240 _atomicIncrementAssertCount];
    var70[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, var70);
    StaticString.description.getter();
    v242 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v243 = String._bridgeToObjectiveC()();

    v244 = [v243 lastPathComponent];

    v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v247 = v246;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v248 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v249 = swift_allocObject();
    *(v249 + 16) = xmmword_10146CA70;
    *(v249 + 56) = &type metadata for Int32;
    *(v249 + 64) = &protocol witness table for Int32;
    *(v249 + 32) = v241;
    v250 = sub_100006370(0, &qword_1019F4D30);
    *(v249 + 96) = v250;
    v251 = sub_1005CF04C();
    *(v249 + 104) = v251;
    *(v249 + 72) = v242;
    *(v249 + 136) = &type metadata for String;
    v252 = sub_1000053B0();
    *(v249 + 112) = v245;
    *(v249 + 120) = v247;
    *(v249 + 176) = &type metadata for UInt;
    *(v249 + 184) = &protocol witness table for UInt;
    *(v249 + 144) = v252;
    *(v249 + 152) = 996;
    v253 = var70[0];
    *(v249 + 216) = v250;
    *(v249 + 224) = v251;
    *(v249 + 192) = v253;
    v254 = v242;
    v255 = v253;
    v256 = static os_log_type_t.error.getter();
    sub_100005404(v248, &_mh_execute_header, v256, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v249);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v257 = static os_log_type_t.error.getter();
    sub_100005404(v248, &_mh_execute_header, v257, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v258 = swift_allocObject();
    v258[2] = 8;
    v258[3] = 0;
    v258[4] = 0;
    v258[5] = 0;
    v259 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v260 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v261 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v457 = String._bridgeToObjectiveC()();

    [v240 handleFailureInFunction:v260 file:v261 lineNumber:996 isFatal:0 format:v457 args:v259];

    swift_unknownObjectRelease();
  }

  v323 = v457;
}

void *sub_101197BC4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong editingCoordinator];
    if (v5)
    {
      v6 = v5;
      v7 = *&v5[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

      v8 = objc_opt_self();
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v10 = [v8 pathFromPKStroke:isa pencilKitStrokePathData:0];

      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v15 = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:v10];
      if (v15)
      {
        v16 = v15;
        v17 = PKStroke._bridgeToObjectiveC()().super.isa;
        v18 = [(objc_class *)v17 _shapeType];

        v19 = sub_100D633F0(v18);
        v20 = sub_10111E0E8(v16, 0, a2, 0, 0, v19, v12, v14);
        type metadata accessor for CRLFreehandDrawingShapeItem();
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v22 = v21;
          sub_1005B981C(&unk_1019F4D60);
          v23 = swift_allocObject();
          *(v23 + 1) = xmmword_101465920;
          v23[4] = v22;
        }

        else
        {
          v113 = v20;
          v117 = v7;
          v112 = objc_opt_self();
          v115 = [v112 _atomicIncrementAssertCount];
          v118[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v118);
          StaticString.description.getter();
          v111 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v91 = String._bridgeToObjectiveC()();

          v92 = [v91 lastPathComponent];

          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = v94;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v96 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v115;
          v98 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v98;
          v99 = sub_1005CF04C();
          *(inited + 104) = v99;
          *(inited + 72) = v111;
          *(inited + 136) = &type metadata for String;
          v100 = sub_1000053B0();
          *(inited + 112) = v93;
          *(inited + 120) = v95;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v100;
          *(inited + 152) = 1164;
          v101 = v118[0];
          *(inited + 216) = v98;
          *(inited + 224) = v99;
          *(inited + 192) = v101;
          v102 = v111;
          v103 = v101;
          v104 = static os_log_type_t.error.getter();
          sub_100005404(v96, &_mh_execute_header, v104, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v105 = static os_log_type_t.error.getter();
          v23 = _swiftEmptyArrayStorage;
          sub_100005404(v96, &_mh_execute_header, v105, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v106 = swift_allocObject();
          v106[2] = 8;
          v106[3] = 0;
          v106[4] = 0;
          v106[5] = 0;
          v107 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v108 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v109 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v110 = String._bridgeToObjectiveC()();

          [v112 handleFailureInFunction:v108 file:v109 lineNumber:1164 isFatal:0 format:v110 args:v107];
        }

        return v23;
      }

      v116 = v7;
      v114 = objc_opt_self();
      v70 = [v114 _atomicIncrementAssertCount];
      v118[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v118);
      StaticString.description.getter();
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v72 = String._bridgeToObjectiveC()();

      v73 = [v72 lastPathComponent];

      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v77 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v78 = swift_initStackObject();
      *(v78 + 16) = xmmword_10146CA70;
      *(v78 + 56) = &type metadata for Int32;
      *(v78 + 64) = &protocol witness table for Int32;
      *(v78 + 32) = v70;
      v79 = sub_100006370(0, &qword_1019F4D30);
      *(v78 + 96) = v79;
      v80 = sub_1005CF04C();
      *(v78 + 104) = v80;
      *(v78 + 72) = v71;
      *(v78 + 136) = &type metadata for String;
      v81 = sub_1000053B0();
      *(v78 + 112) = v74;
      *(v78 + 120) = v76;
      *(v78 + 176) = &type metadata for UInt;
      *(v78 + 184) = &protocol witness table for UInt;
      *(v78 + 144) = v81;
      *(v78 + 152) = 1151;
      v82 = v118[0];
      *(v78 + 216) = v79;
      *(v78 + 224) = v80;
      *(v78 + 192) = v82;
      v83 = v71;
      v84 = v82;
      v85 = static os_log_type_t.error.getter();
      sub_100005404(v77, &_mh_execute_header, v85, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v78);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v86 = static os_log_type_t.error.getter();
      v23 = _swiftEmptyArrayStorage;
      sub_100005404(v77, &_mh_execute_header, v86, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v87 = swift_allocObject();
      v87[2] = 8;
      v87[3] = 0;
      v87[4] = 0;
      v87[5] = 0;
      v88 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v89 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      [v114 handleFailureInFunction:v89 file:v68 lineNumber:1151 isFatal:0 format:v69 args:v88];
    }

    else
    {
      v47 = objc_opt_self();
      v48 = [v47 _atomicIncrementAssertCount];
      v118[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v118);
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      v51 = [v50 lastPathComponent];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v55 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_10146CA70;
      *(v56 + 56) = &type metadata for Int32;
      *(v56 + 64) = &protocol witness table for Int32;
      *(v56 + 32) = v48;
      v57 = sub_100006370(0, &qword_1019F4D30);
      *(v56 + 96) = v57;
      v58 = sub_1005CF04C();
      *(v56 + 104) = v58;
      *(v56 + 72) = v49;
      *(v56 + 136) = &type metadata for String;
      v59 = sub_1000053B0();
      *(v56 + 112) = v52;
      *(v56 + 120) = v54;
      *(v56 + 176) = &type metadata for UInt;
      *(v56 + 184) = &protocol witness table for UInt;
      *(v56 + 144) = v59;
      *(v56 + 152) = 1143;
      v60 = v118[0];
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v60;
      v61 = v49;
      v62 = v60;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v64 = static os_log_type_t.error.getter();
      v23 = _swiftEmptyArrayStorage;
      sub_100005404(v55, &_mh_execute_header, v64, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v65 = swift_allocObject();
      v65[2] = 8;
      v65[3] = 0;
      v65[4] = 0;
      v65[5] = 0;
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      [v47 handleFailureInFunction:v67 file:v68 lineNumber:1143 isFatal:0 format:v69 args:v66];
    }

    return v23;
  }

  v24 = objc_opt_self();
  v25 = [v24 _atomicIncrementAssertCount];
  v118[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v118);
  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [v27 lastPathComponent];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v32 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_10146CA70;
  *(v33 + 56) = &type metadata for Int32;
  *(v33 + 64) = &protocol witness table for Int32;
  *(v33 + 32) = v25;
  v34 = sub_100006370(0, &qword_1019F4D30);
  *(v33 + 96) = v34;
  v35 = sub_1005CF04C();
  *(v33 + 104) = v35;
  *(v33 + 72) = v26;
  *(v33 + 136) = &type metadata for String;
  v36 = sub_1000053B0();
  *(v33 + 112) = v29;
  *(v33 + 120) = v31;
  *(v33 + 176) = &type metadata for UInt;
  *(v33 + 184) = &protocol witness table for UInt;
  *(v33 + 144) = v36;
  *(v33 + 152) = 1142;
  v37 = v118[0];
  *(v33 + 216) = v34;
  *(v33 + 224) = v35;
  *(v33 + 192) = v37;
  v38 = v26;
  v39 = v37;
  v40 = static os_log_type_t.error.getter();
  sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v33);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v41 = static os_log_type_t.error.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100005404(v32, &_mh_execute_header, v41, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v42 = swift_allocObject();
  v42[2] = 8;
  v42[3] = 0;
  v42[4] = 0;
  v42[5] = 0;
  v43 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  [v24 handleFailureInFunction:v44 file:v45 lineNumber:1142 isFatal:0 format:v46 args:v43];

  return v23;
}

uint64_t sub_101198BC0(uint64_t a1, int a2)
{
  v5 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10098EABC(&_mh_execute_header, "deleteStrokes(_:selectDeletedStrokesOnUndo:)", 44, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 1262);
  if (result)
  {
    v29 = v2;
    v10 = sub_101190C7C(a1);
    v11 = v10[2];
    if (v11)
    {
      v28 = a2;
      v30 = _swiftEmptyArrayStorage;
      sub_100776DA4(0, v11, 0);
      v12 = v30;
      v13 = *(type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0) - 8);
      v14 = *(v13 + 80);
      v27 = v10;
      v15 = v10 + ((v14 + 32) & ~v14);
      v16 = *(v13 + 72);
      do
      {
        sub_1011A04B8(v15, v8, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        *&v8[*(v5 + 20)] = _swiftEmptyArrayStorage;
        *&v8[*(v5 + 24)] = 0;
        v30 = v12;
        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          sub_100776DA4(v17 > 1, v18 + 1, 1);
          v12 = v30;
        }

        v12[2] = v18 + 1;
        sub_1011A0450(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLUpdatedStrokesWrapper);
        v15 += v16;
        --v11;
      }

      while (v11);

      LOBYTE(a2) = v28;
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
    }

    v19 = [objc_opt_self() mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    sub_1011939C8(v12, v24, v26, 0, a2 & 1);
  }

  return result;
}

uint64_t sub_101198F8C()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) & 1) == 0 && ([objc_opt_self() isOSFeatureEnabled:3] & 1) != 0 && (sub_10119A3E4() & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong freehandDrawingToolkit];

      if (v4)
      {
        if (![v4 isInDrawingMode])
        {
          [v4 isInHandwritingMode];
        }
      }
    }
  }

  return CanvasDataDetectorInteraction.wantsDataDetection.setter();
}

id sub_1011990F4(double a1, double a2)
{
  if ((sub_10098EABC(&_mh_execute_header, "isDetectionDecoratorViewHit(atScaledPoint:)", 43, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 1292) & 1) == 0)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = Strong, v7 = [Strong canvasView], v6, !v7))
  {
    v34 = objc_opt_self();
    v35 = [v34 _atomicIncrementAssertCount];
    v60[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v60);
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
    v45 = sub_1005CF04C();
    *(inited + 104) = v45;
    *(inited + 72) = v36;
    *(inited + 136) = &type metadata for String;
    v46 = sub_1000053B0();
    *(inited + 112) = v39;
    *(inited + 120) = v41;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v46;
    *(inited + 152) = 1296;
    v47 = v60[0];
    *(inited + 216) = v44;
    *(inited + 224) = v45;
    *(inited + 192) = v47;
    v48 = v36;
    v49 = v47;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v51 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v51, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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
    v33 = String._bridgeToObjectiveC()();

    [v34 handleFailureInFunction:v54 file:v55 lineNumber:1296 isFatal:0 format:v33 args:v53];

    goto LABEL_12;
  }

  v8 = [v7 hitTest:0 withEvent:{a1, a2}];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_dataDetectorDecorationView);
  sub_100006370(0, &qword_1019F54D0);
  v11 = v10;
  if (static NSObject.== infix(_:_:)())
  {
    v59 = v11;
    v58 = objc_opt_self();
    v12 = [v58 _atomicIncrementAssertCount];
    v60[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v60);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_10146CA70;
    *(v20 + 56) = &type metadata for Int32;
    *(v20 + 64) = &protocol witness table for Int32;
    *(v20 + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(v20 + 96) = v21;
    v22 = sub_1005CF04C();
    *(v20 + 104) = v22;
    *(v20 + 72) = v13;
    *(v20 + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(v20 + 112) = v16;
    *(v20 + 120) = v18;
    *(v20 + 176) = &type metadata for UInt;
    *(v20 + 184) = &protocol witness table for UInt;
    *(v20 + 144) = v23;
    *(v20 + 152) = 1307;
    v24 = v60[0];
    *(v20 + 216) = v21;
    *(v20 + 224) = v22;
    *(v20 + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v20);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "We don't expect the top-level decoration view to be hit.", 56, 2, _swiftEmptyArrayStorage);

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

    [v58 handleFailureInFunction:v31 file:v32 lineNumber:1307 isFatal:0 format:v33 args:v30];

LABEL_12:

    return 0;
  }

  v57 = [v9 isDescendantOfView:v11];

  return v57;
}

void sub_101199A34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    [Strong viewScale];
    CGAffineTransformMakeScale(&v26, v1, v1);
    CanvasDataDetectorInteraction.drawingTransform.setter();
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    *&v26.a = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26);
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
    *(inited + 152) = 1373;
    a = v26.a;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = a;
    v16 = v4;
    v17 = *&a;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:1373 isFatal:0 format:v24 args:v21];
  }
}

uint64_t sub_101199E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a4;
  sub_10064191C(0, 0, v10, &unk_1014CE3E0, v13);
}

uint64_t sub_101199F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_10119A028, v8, v7);
}

uint64_t sub_10119A028()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = Strong;
  if (*(Strong + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown))
  {

LABEL_5:
    v3 = v0[1];

    return v3();
  }

  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v0[12] = v12;
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_10119A238;
  v15 = v0[6];
  v14 = v0[7];

  return sub_1011892B4(v15, v14, v10, v12, 0, 1);
}

uint64_t sub_10119A238()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10119A37C, v3, v2);
}

uint64_t sub_10119A37C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10119A3E4()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown))
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
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
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 1402;
    v21 = v31;
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

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:1402 isFatal:0 format:v30 args:v27];

    return 0;
  }

  v2 = Strong;
  if (![Strong isInDynamicOperation])
  {

    return 0;
  }

  v3 = [v2 tmCoordinator];
  v4 = [v3 controllingTM];

  if (v4 && (v5 = [v4 tracker], swift_unknownObjectRelease(), v5))
  {
    if ([v5 respondsToSelector:"keepsFreehandDrawingDecorationsVisibleWhileTracking"])
    {
      v6 = [v5 keepsFreehandDrawingDecorationsVisibleWhileTracking];

      swift_unknownObjectRelease();
      return v6 ^ 1;
    }

    else
    {

      swift_unknownObjectRelease();
      return 1;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t sub_10119A880()
{
  v1[31] = v0;
  v2 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[35] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[36] = v4;
  v1[37] = v3;

  return _swift_task_switch(sub_10119A974, v4, v3);
}

uint64_t sub_10119A974()
{
  if ((sub_10098EABC(&_mh_execute_header, "recognizedTextInSelectedStrokes()", 33, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 1471) & 1) == 0)
  {

LABEL_27:

    v21 = v0[1];

    return v21(0, 0);
  }

  v1 = sub_101181474(0);
  v2 = v1[2];
  if (!v2)
  {

    v7 = _swiftEmptyArrayStorage;
LABEL_22:
    v0[38] = v7;
    if (v7[2])
    {
      v20 = swift_task_alloc();
      v0[39] = v20;
      *v20 = v0;
      v20[1] = sub_10119AC94;
      v8 = v7;

      return RecognitionController.recognizedText(strokes:)(v8);
    }

    goto LABEL_27;
  }

  v3 = v0[33];
  v23 = v0[34];
  v4 = *(v0[32] + 28);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6 = *(v3 + 72);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v0[34];
    sub_1011A04B8(v5, v9, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v10 = *(v23 + v4);

    v8 = sub_1011A0324(v9, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
    v11 = *(v10 + 16);
    v12 = v7[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v7[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v7 = sub_100B36FA8(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v7[3] >> 1) - v7[2];
        v8 = type metadata accessor for PKStroke();
        if (v16 < v11)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v7[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_33;
          }

          v7[2] = v19;
        }

        goto LABEL_5;
      }
    }

    if (v11)
    {
      goto LABEL_31;
    }

LABEL_5:
    v5 += v6;
    if (!--v2)
    {

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return RecognitionController.recognizedText(strokes:)(v8);
}

uint64_t sub_10119AC94(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = a2;

  v5 = *(v3 + 296);
  v6 = *(v3 + 288);

  return _swift_task_switch(sub_10119ADE0, v6, v5);
}

uint64_t sub_10119ADE0()
{
  v30 = v0;
  v1 = v0[41];

  if (v1)
  {
    v2 = v0[40];
    v1 = v0[41];
    v3 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v3)
    {

      v4 = objc_opt_self();
      v5 = [v4 _atomicIncrementAssertCount];
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
      *(inited + 152) = 1493;
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
      sub_100005404(v12, &_mh_execute_header, v21, "Recognized text should not return an empty string.", 50, 2, _swiftEmptyArrayStorage);

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

      [v4 handleFailureInFunction:v24 file:v25 lineNumber:1493 isFatal:0 format:v26 args:v23];

      v2 = 0;
      v1 = 0;
    }
  }

  else
  {
    v2 = v0[40];
  }

  v27 = v0[1];

  return v27(v2, v1);
}

uint64_t sub_10119B36C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10119B404, v4, v3);
}

uint64_t sub_10119B404()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10119B4B4;

  return sub_10119A880();
}

uint64_t sub_10119B4B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 40);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10119B618()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10119B6B0, v3, v2);
}

uint64_t sub_10119B6B0()
{
  if (sub_10098EABC(&_mh_execute_header, "copyAsTextSelectedStrokes()", 27, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingIntelligenceProvider.swift", 109, 2, 1502))
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_10119B7AC;

    return sub_10119A880();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10119B7AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v4[10] = a2;

  v5 = v3[8];
  v6 = v3[7];

  return _swift_task_switch(sub_10119B8D4, v6, v5);
}

uint64_t sub_10119B8D4()
{
  v1 = v0[10];

  if (v1)
  {
    v2 = v0[10];
    v3 = v0[3];
    v4 = [objc_allocWithZone(NSItemProvider) init];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    sub_10119DB34();
    NSItemProvider.registerObject<A>(ofClass:visibility:loadHandler:)();

    v6 = [objc_opt_self() generalPasteboard];
    sub_1005B981C(&unk_1019F4D60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101465920;
    *(v7 + 32) = v4;
    sub_100006370(0, &unk_101A23D20);
    v8 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setItemProviders:isa];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10119BC14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10119BCAC, v4, v3);
}

uint64_t sub_10119BCAC()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10119BD5C;

  return sub_10119B618();
}

uint64_t sub_10119BD5C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10119BE94(uint64_t a1)
{
  v2 = v1;
  v79[1] = a1;
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v85 = v79 - v4;
  v5 = sub_1005B981C(&qword_101A01C10);
  __chkstk_darwin(v5 - 8);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v79 - v9;
  v11 = type metadata accessor for PKDrawing();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v83 = v13;
  v84 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v89 = v79 - v15;
  v16 = OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_icc;
  Strong = swift_unknownObjectWeakLoadStrong();
  v87 = v11;
  v88 = v1;
  v86 = v12;
  if (Strong && (v18 = Strong, v19 = [Strong pkDrawingProvider], v18, v19))
  {
    v20 = [v19 unifiedDrawing];

    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v12 + 56))(v7, 0, 1, v11);
  }

  else
  {
    v81 = v16;
    v82 = v7;
    (*(v12 + 56))(v7, 1, 1, v11);
    v80 = objc_opt_self();
    v21 = [v80 _atomicIncrementAssertCount];
    v90[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v90);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v30;
    v31 = sub_1005CF04C();
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 1618;
    v33 = v90[0];
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    [v80 handleFailureInFunction:v40 file:v41 lineNumber:1618 isFatal:0 format:v42 args:v39];

    v11 = v87;
    v2 = v88;
    v12 = v86;
    v7 = v82;
  }

  sub_10003DFF8(v7, v10, &qword_101A01C10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CAAC(v10, &qword_101A01C10);
  }

  v81 = *(v12 + 32);
  v82 = (v12 + 32);
  v81(v89, v10, v11);
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44 && (v45 = v44, v46 = [v44 layerHost], v45, v46) && ((objc_msgSend(v46, "respondsToSelector:", "asiOSCVC") & 1) == 0 ? (v47 = 0) : (v47 = objc_msgSend(v46, "asiOSCVC")), swift_unknownObjectRelease(), v48 = objc_msgSend(v47, "smartSelectionManager"), v47, v48))
  {
    type metadata accessor for PKStroke();
    v49.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v50.super.isa = PKDrawing._bridgeToObjectiveC()().super.isa;
    [v48 allStrokesOnCanvasDidChange:v49.super.isa inDrawing:v50.super.isa];
  }

  else
  {
    v51 = objc_opt_self();
    v52 = [v51 _atomicIncrementAssertCount];
    v90[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v90);
    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    v55 = [v54 lastPathComponent];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v59 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_10146CA70;
    *(v60 + 56) = &type metadata for Int32;
    *(v60 + 64) = &protocol witness table for Int32;
    *(v60 + 32) = v52;
    v61 = sub_100006370(0, &qword_1019F4D30);
    *(v60 + 96) = v61;
    v62 = sub_1005CF04C();
    *(v60 + 104) = v62;
    *(v60 + 72) = v53;
    *(v60 + 136) = &type metadata for String;
    v63 = sub_1000053B0();
    *(v60 + 112) = v56;
    *(v60 + 120) = v58;
    *(v60 + 176) = &type metadata for UInt;
    *(v60 + 184) = &protocol witness table for UInt;
    *(v60 + 144) = v63;
    *(v60 + 152) = 1620;
    v64 = v90[0];
    *(v60 + 216) = v61;
    *(v60 + 224) = v62;
    *(v60 + 192) = v64;
    v65 = v53;
    v66 = v64;
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v59, &_mh_execute_header, v67, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v60);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v68 = static os_log_type_t.error.getter();
    sub_100005404(v59, &_mh_execute_header, v68, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v69 = swift_allocObject();
    v69[2] = 8;
    v69[3] = 0;
    v69[4] = 0;
    v69[5] = 0;
    v70 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49.super.isa = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50.super.isa = String._bridgeToObjectiveC()();

    [v51 handleFailureInFunction:v48 file:v49.super.isa lineNumber:1620 isFatal:0 format:v50.super.isa args:v70];

    v11 = v87;
    v2 = v88;
    v12 = v86;
  }

  v71 = type metadata accessor for TaskPriority();
  v72 = v85;
  (*(*(v71 - 8) + 56))(v85, 1, 1, v71);
  v73 = v84;
  v74 = v89;
  (*(v12 + 16))(v84, v89, v11);
  type metadata accessor for MainActor();
  v75 = v2;
  v76 = static MainActor.shared.getter();
  v77 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v78 = swift_allocObject();
  *(v78 + 2) = v76;
  *(v78 + 3) = &protocol witness table for MainActor;
  *(v78 + 4) = v75;
  v81(&v78[v77], v73, v11);
  sub_10064191C(0, 0, v72, &unk_1014CE1F0, v78);

  return (*(v12 + 8))(v74, v11);
}

uint64_t sub_10119CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10119CACC, v7, v6);
}

uint64_t sub_10119CACC()
{
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_strokeProvider);
  type metadata accessor for RecognitionStrokeProvider();
  sub_10119D3B8(&qword_101A2BF20, &type metadata accessor for RecognitionStrokeProvider);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10119CB94, v2, v1);
}

uint64_t sub_10119CB94()
{
  RecognitionStrokeProvider.updateDrawing(_:)();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100658F10, v1, v2);
}

void *sub_10119CD20()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong layerHost], v2, v3) && (v4 = objc_msgSend(v3, "canvasLayer"), swift_unknownObjectRelease(), v4))
  {
    v5 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_dataDetectorDecorationView);
    v6 = v4;
    [v6 frame];
    [v5 setFrame:?];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v5 setBounds:{v8, v10, v12, v14}];
    sub_101199A34();
    sub_1005B981C(&unk_1019F4D60);
    v15 = swift_allocObject();
    *(v15 + 1) = xmmword_101465920;
    v15[4] = v5;
  }

  else
  {
    v16 = objc_opt_self();
    v17 = [v16 _atomicIncrementAssertCount];
    v40 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v40);
    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v26;
    v27 = sub_1005CF04C();
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 1648;
    v29 = v40;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    v15 = _swiftEmptyArrayStorage;
    sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v16 handleFailureInFunction:v36 file:v37 lineNumber:1648 isFatal:0 format:v38 args:v35];
  }

  return v15;
}

uint64_t sub_10119D1E4()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown) & 1) == 0 && ([objc_opt_self() isOSFeatureEnabled:11])
  {
    sub_10119A3E4();
  }

  CanvasDataDetectorInteraction.wantsProofreadingDetection.setter();

  return sub_101198F8C();
}

uint64_t sub_10119D26C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10119D2C0(uint64_t a1)
{
  v4 = *(type metadata accessor for PKDrawing() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10119CA34(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10119D3B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10119D400()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_10119BC14(v2, v3);
}

uint64_t sub_10119D4AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10002D4C8;

  return v6();
}

uint64_t sub_10119D594(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002D3D4;

  return v7();
}

uint64_t sub_10119D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000BE14(a3, v23 - v10, &qword_1019FB750);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000CAAC(v11, &qword_1019FB750);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000CAAC(a3, &qword_1019FB750);

    return v21;
  }

LABEL_8:
  sub_10000CAAC(a3, &qword_1019FB750);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10119D978(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_10002C9A4(a1, v4);
}

uint64_t sub_10119DA30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_10002C9A4(a1, v4);
}

uint64_t sub_10119DAE8(void (*a1)(void *, void))
{
  v2 = *(v1 + 24);
  v4[0] = *(v1 + 16);
  v4[1] = v2;
  a1(v4, 0);
  return 0;
}

unint64_t sub_10119DB34()
{
  result = qword_101A2BF28;
  if (!qword_101A2BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BF28);
  }

  return result;
}

void *sub_10119DBA8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_10119DC40(void *result, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a6;
      v11 = a5;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a5 = v11;
      a6 = v10;
    }

    sub_10119FF50(result, a2, a3, a4, a5, a6);
    v13 = v12;

    return v13;
  }

  return result;
}

void *sub_10119DCE8(uint64_t a1, Swift::Int a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = __CocoaSet.count.getter();
      a2 = sub_100E7377C(v4, v5);
      goto LABEL_8;
    }

    sub_100006370(0, &qword_1019F69D0);
    v7 = &_swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = NSObject._rawHashValue(seed:)(*(a1 + 40)), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = static NSObject.== infix(_:_:)();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v15)
          {
            sub_100E78C7C(v15 + 1);
          }

          v7 = &_swiftEmptySetSingleton;
          sub_100EA6320(v16, &_swiftEmptySetSingleton);
        }

        else
        {
LABEL_13:
        }
      }

      while (__CocoaSet.Iterator.next()());
    }

    return v7;
  }

  if (!v3)
  {
    return sub_10119E474(a1, a2, sub_10119FB6C, sub_10119FB6C);
  }

LABEL_8:

  return sub_100BD29A0(a1, a2);
}

void *sub_10119DF24(uint64_t a1, Swift::Int a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = __CocoaSet.count.getter();
      a2 = sub_100E73128(v4, v5);
      goto LABEL_8;
    }

    type metadata accessor for CRLCollaborationParticipant(0);
    v7 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = NSObject._rawHashValue(seed:)(*(a1 + 40)), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = static NSObject.== infix(_:_:)();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = _swiftEmptySetSingleton[2];
          if (_swiftEmptySetSingleton[3] <= v15)
          {
            sub_100E76708(v15 + 1);
          }

          v7 = _swiftEmptySetSingleton;
          sub_100EA6320(v16);
        }

        else
        {
LABEL_13:
        }
      }

      while (__CocoaSet.Iterator.next()());
    }

    return v7;
  }

  if (!v3)
  {
    return sub_10119E6D0(a1, a2, type metadata accessor for CRLCollaborationParticipant, sub_1010F5904);
  }

LABEL_8:

  return sub_100BD2B40(a1, a2);
}

void *sub_10119E14C(uint64_t a1, Swift::Int a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = __CocoaSet.count.getter();
      a2 = sub_100E72EDC(v4, v5);
      goto LABEL_8;
    }

    type metadata accessor for CRLBoardItem(0);
    v7 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = NSObject._rawHashValue(seed:)(*(a1 + 40)), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = static NSObject.== infix(_:_:)();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = _swiftEmptySetSingleton[2];
          if (_swiftEmptySetSingleton[3] <= v15)
          {
            sub_100E75360(v15 + 1);
          }

          v7 = _swiftEmptySetSingleton;
          sub_100EA6320(v16);
        }

        else
        {
LABEL_13:
        }
      }

      while (__CocoaSet.Iterator.next()());
    }

    return v7;
  }

  if (!v3)
  {
    return sub_10119E6D0(a1, a2, type metadata accessor for CRLBoardItem, sub_1010F47D4);
  }

LABEL_8:

  return sub_100BD2D24(a1, a2);
}

void *sub_10119E374(uint64_t a1, uint64_t a2)
{

  return sub_10119E474(a1, a2, sub_10119E8B4, sub_10119E8B4);
}

void *sub_10119E3F4(uint64_t a1, uint64_t a2)
{

  return sub_10119E474(a1, a2, sub_10119EF9C, sub_10119EF9C);
}

void *sub_10119E474(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_10119DBA8(v15, v10, a2, a1, a4);
  }

  return v13;
}

void *sub_10119E650(uint64_t a1, uint64_t a2)
{

  return sub_10119E474(a1, a2, sub_10119F760, sub_10119F760);
}

void *sub_10119E6D0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, uint64_t, char *))
{
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    sub_10119FF50(&v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1, a3, a4);
    v14 = v13;
  }

  else
  {
    v16 = swift_slowAlloc();

    v14 = sub_10119DC40(v16, v10, a2, a1, a3, a4);
  }

  return v14;
}

uint64_t sub_10119E8B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = v61 - v11;
  v13 = __chkstk_darwin(v10);
  v76 = (v61 - v14);
  result = __chkstk_darwin(v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_1010F4288(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_10119D3B8(&qword_1019FB870, &type metadata accessor for UUID);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_10119D3B8(&qword_1019F37C0, &type metadata accessor for UUID);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_10119D3B8(&qword_1019FB870, &type metadata accessor for UUID);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_10119D3B8(&qword_1019F37C0, &type metadata accessor for UUID);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void sub_10119EF9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v72 = a1;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v75 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v68 - v10;
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  __chkstk_darwin(v14);
  v79 = &v68 - v15;
  __chkstk_darwin(v16);
  v71 = &v68 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v81 = a3;
  v80 = a4;
  if (v19 >= v18)
  {
    goto LABEL_29;
  }

  v74 = 0;
  v20 = 0;
  v21 = *(a4 + 56);
  v68 = a4 + 56;
  v22 = 1 << *(a4 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v77 = a3 + 56;
  v70 = v25;
  while (1)
  {
LABEL_7:
    if (v24)
    {
      v26 = __clz(__rbit64(v24));
      v73 = (v24 - 1) & v24;
    }

    else
    {
      v27 = v20;
      do
      {
        v20 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_58;
        }

        if (v20 >= v25)
        {
LABEL_56:

          sub_1010F47E8(v72, v69, v74, a3);
          return;
        }

        v28 = *(v68 + 8 * v20);
        ++v27;
      }

      while (!v28);
      v26 = __clz(__rbit64(v28));
      v73 = (v28 - 1) & v28;
    }

    v29 = *(a4 + 48);
    v78 = *(v75 + 72);
    v30 = v71;
    sub_1011A04B8(v29 + v78 * (v26 | (v20 << 6)), v71, type metadata accessor for CRLBoardIdentifier);
    v31 = v79;
    sub_1011A0450(v30, v79, type metadata accessor for CRLBoardIdentifier);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10119D3B8(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v76 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v32 = (v31 + *(v76 + 20));
    v8 = *v32;
    v33 = v32[1];
    String.hash(into:)();
    v34 = Hasher._finalize()();
    a3 = v81;
    v35 = -1 << *(v81 + 32);
    v36 = v34 & ~v35;
    v37 = v36 >> 6;
    v38 = 1 << v36;
    if (((1 << v36) & *(v77 + 8 * (v36 >> 6))) != 0)
    {
      break;
    }

LABEL_6:
    sub_1011A0324(v79, type metadata accessor for CRLBoardIdentifier);
    a4 = v80;
    v25 = v70;
    v24 = v73;
  }

  v39 = ~v35;
  while (1)
  {
    sub_1011A04B8(*(a3 + 48) + v36 * v78, v13, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_1011A0324(v13, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_17;
    }

    v40 = &v13[*(v76 + 20)];
    if (*v40 == v8 && v40[1] == v33)
    {
      break;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1011A0324(v13, type metadata accessor for CRLBoardIdentifier);
    if (v42)
    {
      goto LABEL_26;
    }

LABEL_17:
    v36 = (v36 + 1) & v39;
    v37 = v36 >> 6;
    v38 = 1 << v36;
    a3 = v81;
    if ((*(v77 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_1011A0324(v13, type metadata accessor for CRLBoardIdentifier);
LABEL_26:
  sub_1011A0324(v79, type metadata accessor for CRLBoardIdentifier);
  v24 = v73;
  v72[v37] |= v38;
  v43 = __OFADD__(v74++, 1);
  a3 = v81;
  a4 = v80;
  v25 = v70;
  if (!v43)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_29:
  v44 = 0;
  v45 = *(a3 + 56);
  v71 = a3 + 56;
  v46 = 1 << *(a3 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & v45;
  v49 = (v46 + 63) >> 6;
  v79 = a4 + 56;
  v73 = v49;
  v74 = 0;
LABEL_34:
  while (2)
  {
    if (v48)
    {
      v50 = __clz(__rbit64(v48));
      v77 = (v48 - 1) & v48;
LABEL_41:
      v53 = v50 | (v44 << 6);
      v54 = *(a3 + 48);
      v55 = *(v75 + 72);
      v76 = v53;
      v56 = v78;
      sub_1011A04B8(v54 + v55 * v53, v78, type metadata accessor for CRLBoardIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10119D3B8(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v57 = type metadata accessor for CRLBoardIdentifierStorage(0);
      v58 = (v56 + *(v57 + 20));
      v59 = *v58;
      v60 = v58[1];
      String.hash(into:)();
      v61 = Hasher._finalize()();
      v62 = -1 << *(a4 + 32);
      v63 = v61 & ~v62;
      if (((*(v79 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
LABEL_33:
        sub_1011A0324(v78, type metadata accessor for CRLBoardIdentifier);
        a3 = v81;
        a4 = v80;
        v49 = v73;
        v48 = v77;
        continue;
      }

      v64 = ~v62;
      while (1)
      {
        sub_1011A04B8(*(v80 + 48) + v63 * v55, v8, type metadata accessor for CRLBoardIdentifier);
        if (static UUID.== infix(_:_:)())
        {
          v65 = &v8[*(v57 + 20)];
          if (*v65 == v59 && *(v65 + 1) == v60)
          {
            sub_1011A0324(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_53:
            sub_1011A0324(v78, type metadata accessor for CRLBoardIdentifier);
            *(v72 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
            v49 = v73;
            v43 = __OFADD__(v74++, 1);
            a3 = v81;
            a4 = v80;
            v48 = v77;
            if (v43)
            {
              __break(1u);
              goto LABEL_56;
            }

            goto LABEL_34;
          }

          v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1011A0324(v8, type metadata accessor for CRLBoardIdentifier);
          if (v67)
          {
            goto LABEL_53;
          }
        }

        else
        {
          sub_1011A0324(v8, type metadata accessor for CRLBoardIdentifier);
        }

        v63 = (v63 + 1) & v64;
        if (((*(v79 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    break;
  }

  v51 = v44;
  while (1)
  {
    v44 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v44 >= v49)
    {
      goto LABEL_56;
    }

    v52 = *(v71 + 8 * v44);
    ++v51;
    if (v52)
    {
      v50 = __clz(__rbit64(v52));
      v77 = (v52 - 1) & v52;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_10119F760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v46 = result;
  v6 = *(a3 + 16);
  v7 = *(a4 + 16);
  v56 = a4;
  if (v7 >= v6)
  {
    v47 = 0;
    v27 = 0;
    v28 = 1 << *(a3 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(a3 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = a4 + 56;
LABEL_30:
    while (2)
    {
      if (v30)
      {
        v33 = __clz(__rbit64(v30));
        v49 = (v30 - 1) & v30;
      }

      else
      {
        v34 = v27;
        do
        {
          v27 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_49;
          }

          if (v27 >= v31)
          {
            goto LABEL_47;
          }

          v35 = *(a3 + 56 + 8 * v27);
          ++v34;
        }

        while (!v35);
        v33 = __clz(__rbit64(v35));
        v49 = (v35 - 1) & v35;
      }

      v45 = v33 | (v27 << 6);
      sub_10063FD8C(*(a3 + 48) + 48 * v45, v54);
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      v36 = *(&v55 + 1);
      Hasher._combine(_:)(*(&v55 + 1));
      v37 = Hasher._finalize()();
      v38 = -1 << *(v4 + 32);
      v39 = v37 & ~v38;
      if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
LABEL_29:
        result = sub_10063FDE8(v54);
        v30 = v49;
        continue;
      }

      break;
    }

    v40 = ~v38;
    while (1)
    {
      sub_10063FD8C(*(v4 + 48) + 48 * v39, v52);
      if (static AnyHashable.== infix(_:_:)())
      {
        v41 = v53;
        sub_10063FDE8(v52);
        v25 = v41 == v36;
        v4 = v56;
        if (v25)
        {
          result = sub_10063FDE8(v54);
          *(v46 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
          v30 = v49;
          v26 = __OFADD__(v47++, 1);
          if (!v26)
          {
            goto LABEL_30;
          }

          __break(1u);
LABEL_47:

          return sub_1010F4D2C(v46, a2, v47, a3);
        }
      }

      else
      {
        sub_10063FDE8(v52);
      }

      v39 = (v39 + 1) & v40;
      if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  v47 = 0;
  v8 = 0;
  v42 = a4 + 56;
  v9 = 1 << *(a4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = a3 + 56;
  v44 = v12;
  if (!v11)
  {
    goto LABEL_7;
  }

  do
  {
    v14 = __clz(__rbit64(v11));
    v48 = (v11 - 1) & v11;
LABEL_12:
    sub_10063FD8C(*(v4 + 48) + 48 * (v14 | (v8 << 6)), v54);
    v50[0] = v54[0];
    v50[1] = v54[1];
    *v51 = v55;
    Hasher.init(_seed:)();
    AnyHashable.hash(into:)();
    v17 = v51[1];
    Hasher._combine(_:)(v51[1]);
    v18 = Hasher._finalize()();
    v19 = -1 << *(a3 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v13 + 8 * (v20 >> 6))) == 0)
    {
LABEL_22:
      result = sub_10063FDE8(v50);
      goto LABEL_23;
    }

    v23 = ~v19;
    while (1)
    {
      sub_10063FD8C(*(a3 + 48) + 48 * v20, v52);
      if (static AnyHashable.== infix(_:_:)())
      {
        break;
      }

      sub_10063FDE8(v52);
LABEL_15:
      v20 = (v20 + 1) & v23;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if ((*(v13 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_22;
      }
    }

    v24 = v53;
    sub_10063FDE8(v52);
    v25 = v24 == v17;
    v4 = v56;
    if (!v25)
    {
      goto LABEL_15;
    }

    result = sub_10063FDE8(v50);
    v46[v21] |= v22;
    v26 = __OFADD__(v47++, 1);
    if (v26)
    {
      goto LABEL_50;
    }

LABEL_23:
    v12 = v44;
    v11 = v48;
  }

  while (v48);
LABEL_7:
  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
      goto LABEL_47;
    }

    v16 = *(v42 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void sub_10119FB6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v51 = 0;
    v27 = 0;
    v47 = v5 + 56;
    v28 = 1 << *(v5 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v5 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = v4 + 56;
    while (v30)
    {
      v33 = __clz(__rbit64(v30));
      v53 = (v30 - 1) & v30;
LABEL_34:
      v50 = v33 | (v27 << 6);
      v36 = *(v4 + 40);
      v37 = *(*(a3 + 48) + 8 * v50);
      v38 = NSObject._rawHashValue(seed:)(v36);
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        sub_100006370(0, &qword_1019F69D0);
        while (1)
        {
          v42 = *(*(v4 + 48) + 8 * v40);
          v43 = static NSObject.== infix(_:_:)();

          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v4 = a4;
          if (((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v30 = v53;
        v26 = __OFADD__(v51++, 1);
        v4 = a4;
        if (v26)
        {
          __break(1u);
LABEL_42:
          v5 = a3;
          goto LABEL_43;
        }
      }

      else
      {
LABEL_26:

        v30 = v53;
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_45;
      }

      if (v27 >= v31)
      {
        goto LABEL_42;
      }

      v35 = *(v47 + 8 * v27);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v53 = (v35 - 1) & v35;
        goto LABEL_34;
      }
    }
  }

  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 56;
  v46 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(v5 + 40);
    v15 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
    v16 = NSObject._rawHashValue(seed:)(v14);
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) != 0)
    {
      sub_100006370(0, &qword_1019F69D0);
      v21 = *(*(v5 + 48) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        v23 = ~v17;
        do
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          v5 = a3;
          if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v24 = *(*(a3 + 48) + 8 * v18);
          v25 = static NSObject.== infix(_:_:)();
        }

        while ((v25 & 1) == 0);
      }

      v10 = v46;
      a1[v19] |= v20;
      v9 = v49;
      v26 = __OFADD__(v51++, 1);
      v5 = a3;
      v4 = a4;
      if (v26)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v4 = a4;
      v10 = v46;
      v9 = v49;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_43:

      sub_100035D8C(a1, a2, v51, v5);
      return;
    }

    v13 = *(v44 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_10119FF50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, char *))
{
  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) >= a3[2])
  {
LABEL_22:
    v52 = 0;
    v27 = 0;
    v47 = v7 + 56;
    v28 = 1 << v7[32];
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v7 + 7);
    v31 = (v28 + 63) >> 6;
    v32 = v6 + 56;
    while (1)
    {
      v7 = a3;
      if (!v30)
      {
        break;
      }

      v33 = __clz(__rbit64(v30));
      v54 = (v30 - 1) & v30;
LABEL_34:
      v51 = v33 | (v27 << 6);
      v36 = *(v6 + 40);
      v37 = *(a3[6] + 8 * v51);
      v38 = NSObject._rawHashValue(seed:)(v36);
      v39 = -1 << *(v6 + 32);
      v40 = v38 & ~v39;
      if ((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        a5(0);
        while (1)
        {
          v7 = *(*(v6 + 48) + 8 * v40);
          v42 = static NSObject.== infix(_:_:)();

          if (v42)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v6 = a4;
          if (((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v30 = v54;
        v26 = __OFADD__(v52++, 1);
        v6 = a4;
        if (v26)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v30 = v54;
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v31)
      {
        goto LABEL_42;
      }

      v35 = *&v47[8 * v27];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v54 = (v35 - 1) & v35;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v8 = 0;
  v43 = a4 + 56;
  v9 = 1 << *(a4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a4 + 56);
  v12 = (v9 + 63) >> 6;
  v52 = 0;
  v53 = a3 + 7;
  v46 = v12;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v50 = (v11 - 1) & v11;
LABEL_14:
    v16 = *(v7 + 5);
    v17 = *(*(a4 + 48) + 8 * (v13 | (v8 << 6)));
    v18 = NSObject._rawHashValue(seed:)(v16);
    v19 = -1 << v7[32];
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v53[v20 >> 6]) != 0)
    {
      a5(0);
      v23 = *(*(v7 + 6) + 8 * v20);
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        v24 = ~v19;
        do
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          v7 = a3;
          if (((1 << v20) & v53[v20 >> 6]) == 0)
          {
            goto LABEL_6;
          }

          v25 = *(a3[6] + 8 * v20);
          v6 = static NSObject.== infix(_:_:)();
        }

        while ((v6 & 1) == 0);
      }

      v7 = a3;

      v12 = v46;
      *(a1 + 8 * v21) |= v22;
      v11 = v50;
      v26 = __OFADD__(v52++, 1);
      if (v26)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v12 = v46;
      v11 = v50;
    }
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
LABEL_42:

      a6(a1, a2, v52, v7);
      return;
    }

    v15 = *(v43 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v50 = (v15 - 1) & v15;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_1011A0324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011A0384()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_10119B36C(v2, v3);
}

uint64_t sub_1011A0450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011A04B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1011A0520(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v86 = a5;
  v91 = type metadata accessor for UUID();
  v9 = *(v91 - 8);
  __chkstk_darwin(v91);
  v84 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v75 - v12;
  __chkstk_darwin(v13);
  v90 = &v75 - v14;
  __chkstk_darwin(v15);
  v89 = &v75 - v16;
  v85 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  __chkstk_darwin(v85);
  v82 = (&v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v81 = (&v75 - v19);
  __chkstk_darwin(v20);
  v88 = &v75 - v21;
  __chkstk_darwin(v22);
  v87 = &v75 - v23;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_70;
  }

  v26 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_71;
  }

  v27 = (a2 - a1) / v25;
  v94 = a1;
  v93 = a4;
  if (v27 >= v26 / v25)
  {
    v29 = v26 / v25 * v25;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v29;
    if (v29 >= 1)
    {
      v52 = -v25;
      v79 = a4;
      v80 = (v9 + 16);
      v78 = (v9 + 8);
      v53 = a4 + v29;
      v90 = v52;
      while (2)
      {
        while (1)
        {
          v76 = v51;
          v54 = a2;
          a2 += v52;
          v87 = a2;
          v88 = v54;
          while (1)
          {
            if (v54 <= a1)
            {
              v94 = v54;
              v92 = v76;
              goto LABEL_68;
            }

            v55 = a3;
            v77 = v51;
            v89 = (v53 + v52);
            v56 = v81;
            sub_1011A04B8(v53 + v52, v81, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
            v57 = v82;
            sub_1011A04B8(a2, v82, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
            v58 = *v80;
            v59 = v56;
            v60 = v91;
            (*v80)(v83, v59, v91);
            v58(v84, v57, v60);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v62 = v86;
            v63 = [v86 indexOfObject:isa];

            v64 = UUID._bridgeToObjectiveC()().super.isa;
            v65 = [v62 indexOfObject:v64];

            if (v63 == NSNotFound.getter() || v65 == NSNotFound.getter())
            {
              v67 = v83;
              v66 = v84;
              v68 = static UUID.< infix(_:_:)();
            }

            else
            {
              v68 = v63 < v65;
              v67 = v83;
              v66 = v84;
            }

            a3 = &v90[v55];
            v69 = *v78;
            v70 = v66;
            v71 = v91;
            (*v78)(v70, v91);
            v69(v67, v71);
            sub_1011A0324(v82, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
            sub_1011A0324(v81, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
            a2 = v87;
            if (v68)
            {
              break;
            }

            v72 = v89;
            v51 = v89;
            v73 = v79;
            if (v55 < v53 || a3 >= v53)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v53 = v51;
            v52 = v90;
            v54 = v88;
            if (v72 <= v73)
            {
              a2 = v88;
              goto LABEL_67;
            }
          }

          v74 = v79;
          if (v55 < v88 || a3 >= v88)
          {
            break;
          }

          v51 = v77;
          v52 = v90;
          if (v55 != v88)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v53 <= v74)
          {
            goto LABEL_67;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v51 = v77;
        v52 = v90;
        if (v53 > v74)
        {
          continue;
        }

        break;
      }
    }

LABEL_67:
    v94 = a2;
    v92 = v51;
  }

  else
  {
    v28 = v27 * v25;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v83 = a3;
    v84 = (a4 + v28);
    v92 = a4 + v28;
    if (v28 >= 1 && a2 < a3)
    {
      v81 = (v9 + 8);
      v82 = (v9 + 16);
      v80 = v25;
      v31 = v88;
      do
      {
        v32 = a2;
        v33 = v87;
        sub_1011A04B8(a2, v87, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        v34 = a4;
        sub_1011A04B8(a4, v31, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        v35 = *v82;
        v36 = v33;
        v37 = v91;
        (*v82)(v89, v36, v91);
        v35(v90, v31, v37);
        v38 = UUID._bridgeToObjectiveC()().super.isa;
        v39 = v86;
        v40 = [v86 indexOfObject:v38];

        v41 = UUID._bridgeToObjectiveC()().super.isa;
        v42 = [v39 indexOfObject:v41];

        if (v40 == NSNotFound.getter() || v42 == NSNotFound.getter())
        {
          v44 = v89;
          v43 = v90;
          v45 = static UUID.< infix(_:_:)();
        }

        else
        {
          v45 = v40 < v42;
          v44 = v89;
          v43 = v90;
        }

        v46 = *v81;
        v47 = v43;
        v48 = v91;
        (*v81)(v47, v91);
        v46(v44, v48);
        sub_1011A0324(v88, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        sub_1011A0324(v87, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        a2 = v32;
        a4 = v34;
        if (v45)
        {
          v49 = v80;
          if (a1 < a2 || a1 >= v80 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v49;
        }

        else
        {
          v49 = v80;
          v50 = v80 + v34;
          if (a1 < v34 || a1 >= v50)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v93 = v50;
          a4 = v34 + v49;
        }

        a1 += v49;
        v94 = a1;
      }

      while (a4 < v84 && a2 < v83);
    }
  }

LABEL_68:
  sub_10063F83C(&v94, &v93, &v92);
}

void sub_1011A0D68(char **a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v24 = a4;
  v25 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_10113DE48(v25);
  }

  v20 = v5;
  *v5 = v25;
  v8 = v25 + 16;
  v7 = *(v25 + 2);
  if (v7 < 2)
  {
LABEL_10:

    *v20 = v25;
  }

  else
  {
    v21 = (v25 + 16);
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v25[16 * v7];
      v11 = *v10;
      v12 = &v8[16 * v7];
      v13 = *v12;
      v5 = *(v12 + 1);
      v14 = *(*(type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0) - 8) + 72);
      v15 = v9 + v14 * v11;
      v26 = v9 + v14 * v13;
      v16 = v9 + v14 * v5;
      v17 = v24;
      sub_1011A0520(v15, v26, v16, a2, v17);

      if (v4)
      {
        *v20 = v25;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v8 = v25 + 16;
      v18 = *v21;
      if (v7 - 2 >= *v21)
      {
        goto LABEL_13;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v19 = v18 - v7;
      if (v18 < v7)
      {
        goto LABEL_14;
      }

      v7 = v18 - 1;
      memmove(v12, v12 + 16, 16 * v19);
      *v21 = v7;
      if (v7 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v20 = v25;
    __break(1u);
  }
}

void sub_1011A0F20(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int64_t a5)
{
  v6 = v5;
  v162 = a4;
  v163 = a1;
  v190 = type metadata accessor for UUID();
  v9 = *(v190 - 8);
  __chkstk_darwin(v190);
  v11 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v158 - v13;
  __chkstk_darwin(v15);
  v17 = &v158 - v16;
  __chkstk_darwin(v18);
  v20 = &v158 - v19;
  v182 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  v171 = *(v182 - 8);
  __chkstk_darwin(v182);
  v165 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v181 = &v158 - v23;
  __chkstk_darwin(v24);
  v188 = &v158 - v25;
  __chkstk_darwin(v26);
  v187 = &v158 - v27;
  __chkstk_darwin(v28);
  v177 = &v158 - v29;
  __chkstk_darwin(v30);
  v176 = &v158 - v31;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  v191 = _swiftEmptyArrayStorage;
  v174 = a3;
  v36 = a3[1];
  if (v36 >= 1)
  {
    v158 = &v158 - v34;
    v159 = v35;
    v183 = (v9 + 8);
    v184 = (v9 + 16);
    v185 = a5;
    v37 = 0;
    v38 = _swiftEmptyArrayStorage;
    v189 = v11;
    v186 = v14;
    v173 = v17;
    v175 = v20;
    v170 = a5;
    while (1)
    {
      v39 = v37;
      v40 = v37 + 1;
      if (v40 >= v36)
      {
        v54 = v40;
        v65 = v162;
      }

      else
      {
        v178 = v36;
        v172 = v38;
        v41 = *v174;
        v42 = *(v171 + 72);
        v43 = v39;
        v44 = *v174 + v42 * v40;
        v45 = v158;
        sub_1011A04B8(v44, v158, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        v179 = v41;
        v46 = v41 + v42 * v43;
        v47 = v159;
        sub_1011A04B8(v46, v159, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        LODWORD(v180) = sub_101190AA8(v45, v47, v185);
        if (v6)
        {
          sub_1011A0324(v47, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
          sub_1011A0324(v45, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
LABEL_103:
          a5 = v170;
          goto LABEL_108;
        }

        v161 = 0;
        sub_1011A0324(v47, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        sub_1011A0324(v45, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
        v160 = v43;
        v48 = (v43 + 2);
        v49 = v179 + v42 * (v43 + 2);
        v179 = v42;
        while (1)
        {
          v54 = v178;
          if (v178 == v48)
          {
            break;
          }

          v55 = v176;
          sub_1011A04B8(v49, v176, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
          v56 = v177;
          sub_1011A04B8(v44, v177, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
          v57 = *v184;
          v58 = v55;
          v59 = v190;
          (*v184)(v175, v58, v190);
          v57(v17, v56, v59);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v61 = v185;
          v62 = [v185 indexOfObject:isa];

          v63 = UUID._bridgeToObjectiveC()().super.isa;
          v64 = [v61 indexOfObject:v63];

          if (v62 == NSNotFound.getter() || v64 == NSNotFound.getter())
          {
            v50 = v175;
            v51 = static UUID.< infix(_:_:)();
          }

          else
          {
            v51 = v62 < v64;
            v50 = v175;
          }

          v52 = *v183;
          v53 = v190;
          (*v183)(v17, v190);
          v52(v50, v53);
          sub_1011A0324(v177, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
          sub_1011A0324(v176, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
          ++v48;
          v49 += v179;
          v44 += v179;
          v11 = v189;
          if ((v180 ^ v51))
          {
            v54 = (v48 - 1);
            break;
          }
        }

        v6 = v161;
        v65 = v162;
        v38 = v172;
        a5 = v170;
        v39 = v160;
        if (v180)
        {
          if (v54 < v160)
          {
            goto LABEL_131;
          }

          if (v160 < v54)
          {
            v66 = v54;
            a5 = v179;
            v67 = v179 * (v54 - 1);
            v68 = v54 * v179;
            v178 = v54;
            v69 = v160;
            v70 = v160 * v179;
            do
            {
              if (v69 != --v66)
              {
                v71 = *v174;
                if (!*v174)
                {
                  goto LABEL_134;
                }

                sub_1011A0450(v71 + v70, v165, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
                if (v70 < v67 || v71 + v70 >= v71 + v68)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v70 != v67)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1011A0450(v165, v71 + v67, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
                v17 = v173;
              }

              ++v69;
              v67 -= a5;
              v68 -= a5;
              v70 += a5;
            }

            while (v69 < v66);
            v6 = v161;
            v65 = v162;
            v11 = v189;
            a5 = v170;
            v39 = v160;
            v54 = v178;
          }
        }
      }

      v72 = v174[1];
      if (v54 < v72)
      {
        if (__OFSUB__(v54, v39))
        {
          goto LABEL_128;
        }

        if (v54 - v39 < v65)
        {
          if (__OFADD__(v39, v65))
          {
            goto LABEL_129;
          }

          if (v39 + v65 < v72)
          {
            v72 = v39 + v65;
          }

          if (v72 < v39)
          {
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            v154 = v185;

            __break(1u);
LABEL_133:
            v155 = v185;

            __break(1u);
LABEL_134:
            v156 = v185;

            __break(1u);
LABEL_135:
            v157 = v185;

            __break(1u);
LABEL_136:

            __break(1u);
            return;
          }

          if (v54 != v72)
          {
            v166 = v72;
            v172 = v38;
            v161 = v6;
            v73 = *v174;
            v74 = *(v171 + 72);
            v75 = *v174 + v74 * (v54 - 1);
            v179 = -v74;
            v160 = v39;
            a5 = v39 - v54;
            v180 = v73;
            v164 = v74;
            v76 = v73 + v54 * v74;
            do
            {
              v178 = v54;
              v167 = v76;
              v168 = a5;
              v169 = v75;
              while (1)
              {
                v77 = v187;
                sub_1011A04B8(v76, v187, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
                v78 = v188;
                sub_1011A04B8(v75, v188, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
                v79 = *v184;
                v80 = v77;
                v81 = v190;
                (*v184)(v186, v80, v190);
                v79(v11, v78, v81);
                v82 = UUID._bridgeToObjectiveC()().super.isa;
                v83 = v185;
                v84 = [v185 indexOfObject:v82];

                v85 = UUID._bridgeToObjectiveC()().super.isa;
                v86 = [v83 indexOfObject:v85];

                if (v84 == NSNotFound.getter() || v86 == NSNotFound.getter())
                {
                  v87 = v186;
                  v88 = v189;
                  v89 = static UUID.< infix(_:_:)();
                }

                else
                {
                  v89 = v84 < v86;
                  v88 = v189;
                  v87 = v186;
                }

                v90 = *v183;
                v91 = v88;
                v92 = v190;
                (*v183)(v91, v190);
                v90(v87, v92);
                sub_1011A0324(v188, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
                sub_1011A0324(v187, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
                if ((v89 & 1) == 0)
                {
                  break;
                }

                if (!v180)
                {
                  goto LABEL_132;
                }

                v93 = v181;
                sub_1011A0450(v76, v181, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
                swift_arrayInitWithTakeFrontToBack();
                sub_1011A0450(v93, v75, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
                v75 += v179;
                v76 += v179;
                v94 = __CFADD__(a5++, 1);
                v11 = v189;
                if (v94)
                {
                  goto LABEL_40;
                }
              }

              v11 = v189;
LABEL_40:
              v54 = (v178 + 1);
              v75 = v169 + v164;
              a5 = v168 - 1;
              v76 = v167 + v164;
            }

            while (v178 + 1 != v166);
            v6 = v161;
            a5 = v170;
            v38 = v172;
            v17 = v173;
            v39 = v160;
            v54 = v166;
          }
        }
      }

      if (v54 < v39)
      {
        goto LABEL_127;
      }

      v166 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_100B355CC(0, *(v38 + 2) + 1, 1, v38);
      }

      v96 = *(v38 + 2);
      v95 = *(v38 + 3);
      v97 = v96 + 1;
      if (v96 >= v95 >> 1)
      {
        v38 = sub_100B355CC((v95 > 1), v96 + 1, 1, v38);
      }

      *(v38 + 2) = v97;
      v98 = v38 + 32;
      v99 = &v38[16 * v96 + 32];
      v100 = v166;
      *v99 = v39;
      *(v99 + 1) = v100;
      v191 = v38;
      v179 = *v163;
      if (!v179)
      {
        goto LABEL_135;
      }

      if (v96)
      {
        v172 = v38;
        v178 = v38 + 32;
        while (1)
        {
          v101 = v97 - 1;
          if (v97 >= 4)
          {
            break;
          }

          if (v97 == 3)
          {
            v102 = *(v38 + 4);
            v103 = *(v38 + 5);
            v112 = __OFSUB__(v103, v102);
            v104 = v103 - v102;
            v105 = v112;
LABEL_73:
            if (v105)
            {
              goto LABEL_118;
            }

            v118 = &v38[16 * v97];
            v120 = *v118;
            v119 = *(v118 + 1);
            v121 = __OFSUB__(v119, v120);
            v122 = v119 - v120;
            v123 = v121;
            if (v121)
            {
              goto LABEL_121;
            }

            v124 = &v98[16 * v101];
            v126 = *v124;
            v125 = *(v124 + 1);
            v112 = __OFSUB__(v125, v126);
            v127 = v125 - v126;
            if (v112)
            {
              goto LABEL_124;
            }

            if (__OFADD__(v122, v127))
            {
              goto LABEL_125;
            }

            if (v122 + v127 >= v104)
            {
              if (v104 < v127)
              {
                v101 = v97 - 2;
              }

              goto LABEL_94;
            }

            goto LABEL_87;
          }

          v128 = &v38[16 * v97];
          v130 = *v128;
          v129 = *(v128 + 1);
          v112 = __OFSUB__(v129, v130);
          v122 = v129 - v130;
          v123 = v112;
LABEL_87:
          if (v123)
          {
            goto LABEL_120;
          }

          v131 = &v98[16 * v101];
          v133 = *v131;
          v132 = *(v131 + 1);
          v112 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v112)
          {
            goto LABEL_123;
          }

          if (v134 < v122)
          {
            goto LABEL_3;
          }

LABEL_94:
          if (v101 - 1 >= v97)
          {
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v139 = *v174;
          if (!*v174)
          {
            goto LABEL_133;
          }

          v140 = &v98[16 * v101 - 16];
          a5 = *v140;
          v141 = v101;
          v142 = &v98[16 * v101];
          v143 = *v142;
          v144 = *(v142 + 1);
          v145 = *(v171 + 72);
          v180 = v139 + v145 * *v140;
          v146 = v139 + v145 * v143;
          v147 = v139 + v145 * v144;
          v148 = v185;
          sub_1011A0520(v180, v146, v147, v179, v148);
          if (v6)
          {

            v191 = v172;
            goto LABEL_103;
          }

          v38 = v172;
          if (v144 < a5)
          {
            goto LABEL_113;
          }

          v149 = *(v172 + 2);
          if (v141 > v149)
          {
            goto LABEL_114;
          }

          *v140 = a5;
          v140[1] = v144;
          if (v141 >= v149)
          {
            goto LABEL_115;
          }

          v150 = v141;
          v97 = v149 - 1;
          memmove(v142, v142 + 16, 16 * (v149 - 1 - v150));
          *(v38 + 2) = v149 - 1;
          a5 = v170;
          v11 = v189;
          v17 = v173;
          v98 = v178;
          if (v149 <= 2)
          {
LABEL_3:
            v191 = v38;
            goto LABEL_4;
          }
        }

        v106 = &v98[16 * v97];
        v107 = *(v106 - 8);
        v108 = *(v106 - 7);
        v112 = __OFSUB__(v108, v107);
        v109 = v108 - v107;
        if (v112)
        {
          goto LABEL_116;
        }

        v111 = *(v106 - 6);
        v110 = *(v106 - 5);
        v112 = __OFSUB__(v110, v111);
        v104 = v110 - v111;
        v105 = v112;
        if (v112)
        {
          goto LABEL_117;
        }

        v113 = &v38[16 * v97];
        v115 = *v113;
        v114 = *(v113 + 1);
        v112 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v112)
        {
          goto LABEL_119;
        }

        v112 = __OFADD__(v104, v116);
        v117 = v104 + v116;
        if (v112)
        {
          goto LABEL_122;
        }

        if (v117 >= v109)
        {
          v135 = &v98[16 * v101];
          v137 = *v135;
          v136 = *(v135 + 1);
          v112 = __OFSUB__(v136, v137);
          v138 = v136 - v137;
          if (v112)
          {
            goto LABEL_126;
          }

          if (v104 < v138)
          {
            v101 = v97 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_73;
      }

LABEL_4:
      v36 = v174[1];
      v37 = v166;
      if (v166 >= v36)
      {
        goto LABEL_105;
      }
    }
  }

  v151 = a5;
LABEL_105:
  v152 = *v163;
  if (!*v163)
  {
    goto LABEL_136;
  }

  v153 = a5;
  sub_1011A0D68(&v191, v152, v174, v153);
  if (v6)
  {

LABEL_108:
  }

  else
  {
  }
}