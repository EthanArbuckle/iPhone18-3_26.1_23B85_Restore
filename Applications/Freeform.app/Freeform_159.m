uint64_t sub_101289888()
{
  sub_1005B981C(&qword_101A31640);
  sub_10001A2F8(&qword_101A31648, &qword_101A31640);
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10128992C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v25 = type metadata accessor for CRLScenesListUI_iv(0);
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = v3;
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1005B981C(&qword_101A30E18) - 8;
  __chkstk_darwin(v32);
  v31 = &v25 - v5;
  v33 = sub_1005B981C(&qword_101A30E08);
  __chkstk_darwin(v33);
  v34 = &v25 - v6;
  v30 = *(v1 + 24);
  v26 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  KeyPath = swift_getKeyPath();
  v29 = type metadata accessor for CRLScenesListUI_iv;
  sub_1012A48F4(v1, v4, type metadata accessor for CRLScenesListUI_iv);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_1012A495C(v4, v8 + v7, type metadata accessor for CRLScenesListUI_iv);
  sub_1005B981C(&qword_101A22710);
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_10001A2F8(&qword_101A310E8, &qword_101A22710);
  sub_1012967DC(&qword_101A28670, type metadata accessor for CRLSceneInfo);
  sub_1012967DC(&qword_101A30E40, type metadata accessor for CRLSceneRowItemUI_iv);
  v9 = v31;
  v10 = v26;
  ForEach<>.init(_:id:content:)();
  v11 = v29;
  sub_1012A48F4(v10, v4, v29);
  v12 = swift_allocObject();
  sub_1012A495C(v4, v12 + v7, type metadata accessor for CRLScenesListUI_iv);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1012A7CB8;
  *(v13 + 24) = v12;
  v14 = &v9[*(sub_1005B981C(&qword_101A30E28) + 36)];
  *v14 = sub_1012A7E2C;
  *(v14 + 1) = v13;
  v15 = v9;
  sub_1012A48F4(v10, v4, v11);
  v16 = swift_allocObject();
  sub_1012A495C(v4, v16 + v7, type metadata accessor for CRLScenesListUI_iv);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1012A7D7C;
  *(v17 + 24) = v16;
  v18 = (v15 + *(v32 + 44));
  *v18 = sub_1012A7E28;
  v18[1] = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v37 & 1) == 0)
  {
    v37 = *(v10 + *(v25 + 36));
    sub_1005B981C(&qword_101A30F28);
    State.wrappedValue.getter();
    if (!v36)
    {
      v19 = 0;
      goto LABEL_5;
    }
  }

  v19 = 1;
LABEL_5:
  v20 = v15;
  v21 = v34;
  sub_10003DFF8(v20, v34, &qword_101A30E18);
  *(v21 + *(v33 + 36)) = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v37;
  v23 = v35;
  sub_10003DFF8(v21, v35, &qword_101A30E08);
  result = sub_1005B981C(&qword_101A30DF0);
  *(v23 + *(result + 36)) = v22;
  return result;
}

uint64_t sub_101289EE4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  swift_unknownObjectWeakLoadStrong();
  v28 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = v5;
  v6;
  sub_1005B981C(&qword_101A310F8);
  State.projectedValue.getter();
  type metadata accessor for CRLScenesListUI_iv(0);
  sub_1005B981C(&qword_101A30F28);
  State.projectedValue.getter();
  KeyPath = swift_getKeyPath();
  v9 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  *(a3 + v9[7]) = KeyPath;
  sub_1005B981C(&qword_101A31100);
  swift_storeEnumTagMultiPayload();
  *(a3 + v9[8]) = swift_getKeyPath();
  sub_1005B981C(&qword_101A0A8A0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v9[9]) = swift_getKeyPath();
  sub_1005B981C(&qword_101A31108);
  swift_storeEnumTagMultiPayload();
  v10 = FocusState.init<>()();
  v12 = v11;
  v14 = v13;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  *a3 = v7;
  a3[2] = v28;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  type metadata accessor for CRLScenesPopoverState(0);
  sub_1012967DC(&qword_101A10C98, type metadata accessor for CRLScenesPopoverState);
  a3[3] = ObservedObject.init(wrappedValue:)();
  a3[4] = v17;
  v18 = a3 + v9[10];
  *v18 = *v29;
  *(v18 + 8) = *&v29[8];
  v19 = a3 + v9[11];
  *v19 = *v29;
  *(v19 + 2) = *&v29[16];
  v20 = v9[12];
  sub_1005B981C(&qword_101A31110);
  State.init(wrappedValue:)();
  *(a3 + v20) = *v29;
  v21 = a3 + v9[13];
  State.init(wrappedValue:)();
  *v21 = *v29;
  *(v21 + 2) = *&v29[16];
  v22 = a3 + v9[14];
  State.init(wrappedValue:)();
  *v22 = v29[0];
  *(v22 + 1) = *&v29[8];
  v23 = a3 + v9[15];
  State.init(wrappedValue:)();
  *v23 = v29[0];
  *(v23 + 1) = *&v29[8];
  v24 = a3 + v9[16];
  *v24 = v10 & 1;
  *(v24 + 1) = v12;
  v24[16] = v14 & 1;
  result = AccessibilityFocusState.init<>()();
  v26 = a3 + v9[18];
  *v26 = v15;
  v26[8] = 0;
  v27 = a3 + v9[19];
  *v27 = v16;
  v27[8] = 0;
  return result;
}

uint64_t sub_10128A270()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1005B981C(&qword_101A22710);
  sub_10001A2F8(&qword_101A310F0, &qword_101A22710);
  MutableCollection.move(fromOffsets:toOffset:)();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_10104BC24(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10128A398(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    v6[2] = a2;
    v6[3] = v4;
    v6[4] = v5;
    sub_1012E384C(sub_1012A7DEC, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10128A434(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v53 >> 62)
  {
    goto LABEL_41;
  }

  v2 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v1 >= v2)
  {
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = v1;
    v52 = inited + 32;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    v50 = objc_opt_self();
    v9 = [v50 _atomicIncrementAssertCount];
    v53 = [objc_allocWithZone(NSString) init];
    v51 = inited;
    sub_100604538(inited, &v53);
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
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_10146CA70;
    *(v17 + 56) = &type metadata for Int32;
    *(v17 + 64) = &protocol witness table for Int32;
    *(v17 + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(v17 + 96) = v18;
    v19 = sub_1005CF04C();
    *(v17 + 104) = v19;
    *(v17 + 72) = v10;
    *(v17 + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(v17 + 112) = v13;
    *(v17 + 120) = v15;
    *(v17 + 176) = &type metadata for UInt;
    *(v17 + 184) = &protocol witness table for UInt;
    *(v17 + 144) = v20;
    *(v17 + 152) = 101;
    v21 = v53;
    *(v17 + 216) = v18;
    *(v17 + 224) = v19;
    *(v17 + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v17);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    v26 = v51;
    sub_100005404(v16, &_mh_execute_header, v25, "Tried to delete scene at invalid index: %d", 42, 2, v51);

    type metadata accessor for __VaListBuilder();
    v27 = swift_allocObject();
    v27[2] = 8;
    v27[3] = 0;
    v1 = (v27 + 3);
    v27[4] = 0;
    v27[5] = 0;
    v28 = *(v51 + 16);
    if (!v28)
    {
LABEL_36:
      v46 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      [v50 handleFailureInFunction:v47 file:v48 lineNumber:101 isFatal:0 format:v49 args:v46];

      swift_setDeallocating();
      return swift_arrayDestroy();
    }

    v29 = 0;
    while (1)
    {
      sub_100020E58((v52 + 40 * v29), *(v52 + 40 * v29 + 24));
      v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v31 = *v1;
      v32 = *(v30 + 16);
      v33 = __OFADD__(*v1, v32);
      v34 = *v1 + v32;
      if (v33)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v35 = v27[4];
      if (v35 >= v34)
      {
        goto LABEL_28;
      }

      if (v35 + 0x4000000000000000 < 0)
      {
        goto LABEL_39;
      }

      v36 = v27[5];
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      v27[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_40;
      }

      v37 = v26;
      v38 = v30;
      v39 = swift_slowAlloc();
      v40 = v39;
      v27[5] = v39;
      if (v36)
      {
        break;
      }

      v30 = v38;
      v26 = v37;
      if (!v40)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_29:
      v42 = *(v30 + 16);
      if (v42)
      {
        v43 = (v30 + 32);
        v44 = *v1;
        while (1)
        {
          v45 = *v43++;
          *&v40[8 * v44] = v45;
          v44 = *v1 + 1;
          if (__OFADD__(*v1, 1))
          {
            break;
          }

          *v1 = v44;
          if (!--v42)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_13:

      if (++v29 == v28)
      {
        goto LABEL_36;
      }
    }

    if (v39 != v36 || v39 >= &v36[8 * v31])
    {
      memmove(v39, v36, 8 * v31);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v30 = v38;
    v26 = v37;
LABEL_28:
    v40 = v27[5];
    if (!v40)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v53 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1 < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v53 + 8 * v1 + 32);
LABEL_8:
    v5 = v4;

    sub_1005B981C(&unk_1019F4D60);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_101465920;
    *(v6 + 32) = v5;
    v7 = v5;
    sub_10104B498(v6);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  __break(1u);
  return result;
}

uint64_t sub_10128AB28@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v96 = sub_1005B981C(&qword_101A318C8);
  __chkstk_darwin(v96);
  v98 = &v74 - v2;
  v3 = sub_1005B981C(&qword_101A318B0);
  v102 = *(v3 - 8);
  v103 = v3;
  __chkstk_darwin(v3);
  v101 = &v74 - v4;
  v5 = sub_1005B981C(&qword_101A318D0);
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  __chkstk_darwin(v5);
  v89 = &v74 - v7;
  v85 = type metadata accessor for EditMode();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A318D8);
  v86 = *(v9 - 8);
  __chkstk_darwin(v9);
  v97 = &v74 - v10;
  v100 = sub_1005B981C(&qword_101A318E0);
  v88 = *(v100 - 8);
  __chkstk_darwin(v100);
  v87 = &v74 - v11;
  v12 = sub_1005B981C(&qword_101A318E8);
  __chkstk_darwin(v12 - 8);
  v99 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  v17 = sub_1005B981C(&qword_101A318F0);
  v95 = *(v17 - 8);
  __chkstk_darwin(v17);
  v81 = &v74 - v18;
  v19 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v19 - 8);
  v90 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1005B981C(&qword_101A318F8);
  v80 = *(v94 - 8);
  __chkstk_darwin(v94);
  v22 = &v74 - v21;
  v23 = sub_1005B981C(&qword_101A31900);
  __chkstk_darwin(v23 - 8);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v107 = &v74 - v27;
  v105 = sub_1005B981C(&qword_101A31898);
  __chkstk_darwin(v105);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v104 = &v74 - v31;
  v32 = v1;
  v33 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v33;
  static Published.subscript.getter();

  if (!(v109 >> 62))
  {
    v34 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v34)
    {
      goto LABEL_3;
    }

LABEL_16:
    (*(v102 + 56))(v29, 1, 1, v103);
    sub_10001A2F8(&qword_101A318A8, &qword_101A318B0);
    v69 = v104;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    v71 = &qword_101A31898;
    v70 = v29;
    goto LABEL_17;
  }

  v72 = _CocoaArrayWrapper.endIndex.getter();

  if (!v72)
  {
    goto LABEL_16;
  }

LABEL_3:
  v79 = type metadata accessor for CRLScenesListUI_iv(0);
  v35 = (v32 + *(v79 + 36));
  v37 = *v35;
  v36 = v35[1];
  v78 = v37;
  v109 = v37;
  v110 = v36;
  v77 = v36;
  v76 = sub_1005B981C(&qword_101A30F28);
  State.wrappedValue.getter();
  v82 = v29;
  if (v108)
  {

    (*(v95 + 56))(v25, 1, 1, v17);
    v38 = sub_10001A2F8(&qword_101A31958, &qword_101A318F8);
    v109 = v94;
    v110 = v38;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000CAAC(v25, &qword_101A31900);
  }

  else
  {
    v39 = v17;
    v40 = static ToolbarItemPlacement.topBarLeading.getter();
    v74 = &v74;
    __chkstk_darwin(v40);
    *(&v74 - 2) = v32;
    sub_1005B981C(&qword_101A31908);
    v75 = v9;
    sub_1012A69B8(&qword_101A31910, &qword_101A31908, &unk_1014DA020, sub_1012A76F4);
    ToolbarItem<>.init(placement:content:)();
    v41 = sub_10001A2F8(&qword_101A31958, &qword_101A318F8);
    v42 = v81;
    v43 = v94;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v44 = v95;
    (*(v95 + 16))(v25, v42, v39);
    (*(v44 + 56))(v25, 0, 1, v39);
    v109 = v43;
    v110 = v41;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000CAAC(v25, &qword_101A31900);
    v45 = v42;
    v9 = v75;
    (*(v44 + 8))(v45, v39);
    (*(v80 + 8))(v22, v43);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v109 & 1) == 0)
  {
    v49 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v49);
    *(&v74 - 2) = v32;
    sub_1005B981C(&qword_101A31960);
    sub_1012A79B8();
    ToolbarItem<>.init(placement:content:)();
    sub_1005B981C(&qword_101A30C98);
    v50 = v83;
    State.wrappedValue.getter();
    v51 = EditMode.isEditing.getter();
    (*(v84 + 8))(v50, v85);
    if ((v51 & 1) == 0)
    {
      v109 = v78;
      v110 = v77;
      State.wrappedValue.getter();
      if (!v108)
      {
        v52 = v9;
        goto LABEL_12;
      }
    }

    v52 = v9;
    static Color.accentColor.getter();
LABEL_12:
    v53 = sub_10001A2F8(&qword_101A31970, &qword_101A318D8);
    v54 = v87;
    v55 = v97;
    ToolbarContent.containerTint(_:)();

    (*(v86 + 8))(v55, v52);
    v109 = v52;
    v110 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v89;
    v58 = v100;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v60 = v91;
    v59 = v92;
    v61 = v99;
    (*(v92 + 16))(v99, v57, v91);
    (*(v59 + 56))(v61, 0, 1, v60);
    v109 = v58;
    v110 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000CAAC(v61, &qword_101A318E8);
    (*(v59 + 8))(v57, v60);
    (*(v88 + 8))(v54, v58);
    goto LABEL_13;
  }

  v46 = v99;
  (*(v92 + 56))(v99, 1, 1, v91);
  v47 = sub_10001A2F8(&qword_101A31970, &qword_101A318D8);
  v109 = v9;
  v110 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v109 = v100;
  v110 = v48;
  swift_getOpaqueTypeConformance2();
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_10000CAAC(v46, &qword_101A318E8);
LABEL_13:
  v62 = *(v96 + 48);
  v63 = v107;
  v64 = v98;
  sub_10000BE14(v107, v98, &qword_101A31900);
  sub_10000BE14(v16, v64 + v62, &qword_101A318E8);
  v65 = v101;
  TupleToolbarContent.init(_:)();
  v66 = v102;
  v67 = v103;
  v68 = v82;
  (*(v102 + 16))(v82, v65, v103);
  (*(v66 + 56))(v68, 0, 1, v67);
  sub_10001A2F8(&qword_101A318A8, &qword_101A318B0);
  v69 = v104;
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_10000CAAC(v68, &qword_101A31898);
  (*(v66 + 8))(v65, v67);
  sub_10000CAAC(v16, &qword_101A318E8);
  v70 = v63;
  v71 = &qword_101A31900;
LABEL_17:
  sub_10000CAAC(v70, v71);
  sub_1012A7564();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_10000CAAC(v69, &qword_101A31898);
}

uint64_t sub_10128BAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v24 = type metadata accessor for BorderlessButtonMenuStyle();
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1005B981C(&qword_101A31948);
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v22 - v6;
  v25 = sub_1005B981C(&qword_101A31920);
  __chkstk_darwin(v25);
  v9 = &v22 - v8;
  v28 = a1;
  sub_1005B981C(&qword_101A03878);
  sub_1005B981C(&qword_101A30FB8);
  sub_10001A2F8(&qword_101A03870, &qword_101A03878);
  sub_10001A2F8(&qword_101A30FC8, &qword_101A30FB8);
  Menu.init(content:label:)();
  BorderlessButtonMenuStyle.init()();
  sub_10001A2F8(&qword_101A31950, &qword_101A31948);
  sub_1012967DC(&qword_101A30FD8, &type metadata accessor for BorderlessButtonMenuStyle);
  v11 = v23;
  v10 = v24;
  View.menuStyle<A>(_:)();
  (*(v26 + 8))(v4, v10);
  (*(v5 + 8))(v7, v11);
  KeyPath = swift_getKeyPath();
  v13 = &v9[*(sub_1005B981C(&qword_101A31940) + 36)];
  *v13 = KeyPath;
  v13[8] = 2;
  *&v9[*(sub_1005B981C(&qword_101A31930) + 36)] = 257;
  *&v9[*(v25 + 36)] = static Color.accentColor.getter();
  v14 = [objc_opt_self() mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v29 = v18;
  v30 = v20;
  sub_1012A76F4();
  sub_100017CD8();
  View.accessibilityLabel<A>(_:)();

  return sub_10000CAAC(v9, &qword_101A31920);
}

uint64_t sub_10128BF4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for CRLScenesListUI_iv(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_1005B981C(&qword_1019FEA78);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v30 = &v28 - v12;
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  if (qword_1019F1C98 != -1)
  {
    swift_once();
  }

  v34 = qword_101AD7328;
  v35 = qword_101AD7330;
  sub_1012A48F4(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLScenesListUI_iv);
  v16 = *(v4 + 80);
  v29 = a1;
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_1012A495C(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLScenesListUI_iv);
  sub_100017CD8();

  Button<>.init<A>(_:action:)();
  if (qword_1019F1CA8 != -1)
  {
    swift_once();
  }

  v34 = qword_101AD7348;
  v35 = unk_101AD7350;
  sub_1012A48F4(v29, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLScenesListUI_iv);
  v19 = swift_allocObject();
  sub_1012A495C(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for CRLScenesListUI_iv);

  v20 = v30;
  Button<>.init<A>(_:action:)();
  v21 = *(v7 + 16);
  v22 = v31;
  v21(v31, v15, v6);
  v23 = v32;
  v21(v32, v20, v6);
  v24 = v33;
  v21(v33, v22, v6);
  v25 = sub_1005B981C(&qword_101A31040);
  v21(&v24[*(v25 + 48)], v23, v6);
  v26 = *(v7 + 8);
  v26(v20, v6);
  v26(v15, v6);
  v26(v23, v6);
  return (v26)(v22, v6);
}

uint64_t sub_10128C394()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_10128C3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v53 = type metadata accessor for EditButton();
  v44 = *(v53 - 8);
  __chkstk_darwin(v53);
  v43 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1005B981C(&qword_101A31048);
  v46 = *(v54 - 8);
  __chkstk_darwin(v54);
  v45 = v41 - v4;
  v50 = sub_1005B981C(&qword_101A31978);
  __chkstk_darwin(v50);
  v52 = v41 - v5;
  v6 = type metadata accessor for CRLScenesListUI_iv(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v51 = sub_1005B981C(&qword_101A30F08);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v41 - v8;
  v9 = type metadata accessor for EditMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = *(v6 + 36);
  v56 = a1;
  v16 = (a1 + v15);
  v17 = *v16;
  v18 = v16[1];
  v57 = *v16;
  v58 = v18;
  sub_1005B981C(&qword_101A30F28);
  State.wrappedValue.getter();
  v19 = v61;
  if (!v61)
  {
    v20 = *(v6 + 32);
    v21 = sub_1005B981C(&qword_101A30C98);
    v41[2] = v20;
    v41[1] = v21;
    State.wrappedValue.getter();
    LOBYTE(v20) = EditMode.isEditing.getter();
    v22 = *(v10 + 8);
    v22(v14, v9);
    if (v20)
    {
      goto LABEL_4;
    }

    v57 = v17;
    v58 = v18;
    State.wrappedValue.getter();
    v19 = v61;
    if (!v61)
    {
      v34 = v43;
      EditButton.init()();
      v35 = v42;
      State.wrappedValue.getter();
      EditMode.isEditing.getter();
      v22(v35, v9);
      v36 = sub_1012967DC(&qword_101A30F20, &type metadata accessor for EditButton);
      v37 = v45;
      v38 = v53;
      View.bold(_:)();
      (*(v44 + 8))(v34, v38);
      v39 = v46;
      v40 = v54;
      (*(v46 + 16))(v52, v37, v54);
      swift_storeEnumTagMultiPayload();
      sub_10001A2F8(&qword_101A30F00, &qword_101A30F08);
      v57 = v38;
      v58 = v36;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v39 + 8))(v37, v40);
    }
  }

LABEL_4:
  sub_1012A48F4(v56, v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLScenesListUI_iv);
  v23 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v24 = swift_allocObject();
  sub_1012A495C(v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for CRLScenesListUI_iv);
  sub_1005B981C(&qword_101A30FB0);
  v25 = sub_1005C4E5C(&qword_101A03878);
  v26 = type metadata accessor for IconOnlyLabelStyle();
  v27 = sub_10001A2F8(&qword_101A03870, &qword_101A03878);
  v28 = sub_1012967DC(&qword_101A30FC0, &type metadata accessor for IconOnlyLabelStyle);
  v57 = v25;
  v58 = v26;
  v59 = v27;
  v60 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v48;
  Button.init(action:label:)();
  v30 = v49;
  v31 = v51;
  (*(v49 + 16))(v52, v29, v51);
  swift_storeEnumTagMultiPayload();
  sub_10001A2F8(&qword_101A30F00, &qword_101A30F08);
  v32 = sub_1012967DC(&qword_101A30F20, &type metadata accessor for EditButton);
  v57 = v53;
  v58 = v32;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v30 + 8))(v29, v31);
}

uint64_t sub_10128CBE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v80 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLScenesListUI_iv(0);
  v68 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v69 = v6;
  v70 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ContentMarginPlacement();
  v7 = *(v66 - 8);
  __chkstk_darwin(v66);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_101A30DB8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v63 = sub_1005B981C(&qword_101A31888);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v15 = &v60 - v14;
  v67 = sub_1005B981C(&qword_101A31880);
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v61 = &v60 - v16;
  v74 = sub_1005B981C(&qword_101A31878);
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v64 = &v60 - v17;
  v18 = sub_1005B981C(&qword_101A31870);
  v75 = *(v18 - 8);
  v76 = v18;
  __chkstk_darwin(v18);
  v73 = &v60 - v19;
  v20 = sub_1005B981C(&qword_101A31860);
  v78 = *(v20 - 8);
  v79 = v20;
  __chkstk_darwin(v20);
  v77 = &v60 - v21;
  v72 = v2;
  v84 = v2;
  sub_1005B981C(&qword_101A30DF0);
  sub_101296448();
  List<>.init(content:)();
  static Edge.Set.horizontal.getter();
  if (qword_1019F1C50 != -1)
  {
    swift_once();
  }

  static ContentMarginPlacement.scrollContent.getter();
  v22 = sub_10001A2F8(&qword_101A30DB0, &qword_101A30DB8);
  View.contentMargins(_:_:for:)();
  v23 = *(v7 + 8);
  v24 = v66;
  v23(v9, v66);
  (*(v11 + 8))(v13, v10);
  static Edge.Set.vertical.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v85 = v10;
  v86 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v61;
  v27 = v63;
  View.contentMargins(_:_:for:)();
  v23(v9, v24);
  (*(v62 + 8))(v15, v27);
  v28 = v70;
  sub_1012A48F4(v72, v70, type metadata accessor for CRLScenesListUI_iv);
  v29 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v30 = swift_allocObject();
  sub_1012A495C(v28, v30 + v29, type metadata accessor for CRLScenesListUI_iv);
  v85 = v27;
  v86 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v64;
  v33 = v67;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v65 + 8))(v26, v33);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v33;
  v35 = v32;
  if (v85 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();

    if (v36)
    {
      goto LABEL_5;
    }

LABEL_7:
    v42 = 0xE000000000000000;
    goto LABEL_8;
  }

  v36 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v36)
  {
    goto LABEL_7;
  }

LABEL_5:
  v37 = [objc_opt_self() mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v35 = v32;
LABEL_8:
  v89 = v36;
  v90 = v42;
  v85 = v34;
  v86 = &type metadata for Bool;
  v87 = v31;
  v88 = &protocol witness table for Bool;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_100017CD8();
  v46 = v73;
  v45 = v74;
  View.navigationTitle<A>(_:)();

  (*(v71 + 8))(v35, v45);
  v48 = v80;
  v47 = v81;
  v49 = v82;
  (*(v81 + 104))(v80, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v82);
  v85 = v45;
  v86 = &type metadata for String;
  v87 = v43;
  v88 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v76;
  v52 = v77;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v47 + 8))(v48, v49);
  v53 = (*(v75 + 8))(v46, v51);
  __chkstk_darwin(v53);
  sub_1005B981C(&qword_101A31868);
  v85 = v51;
  v86 = v50;
  swift_getOpaqueTypeConformance2();
  v54 = sub_1005C4E5C(&qword_101A31890);
  v55 = sub_1005C4E5C(&qword_101A31898);
  v56 = sub_1012A7564();
  v85 = v55;
  v86 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v85 = v54;
  v86 = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v79;
  View.toolbar<A>(content:)();
  return (*(v78 + 8))(v52, v58);
}

uint64_t sub_10128D768@<X0>(BOOL *a1@<X8>)
{
  ScrollGeometry.contentSize.getter();
  v3 = v2;
  ScrollGeometry.bounds.getter();
  v4 = v3 - CGRectGetHeight(v7);
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v6 + 1.0 < v4;
  return result;
}

unsigned __int8 *sub_10128D7C0(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (*result != *a2)
  {
    type metadata accessor for CRLScenesListUI_iv(0);
    sub_1005B981C(&qword_101A31980);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10128D840()
{
  v0 = sub_1005B981C(&qword_101A31890);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  sub_10128AB28(v7 - v2);
  v4 = sub_1005C4E5C(&qword_101A31898);
  v5 = sub_1012A7564();
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10128D970@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for EditMode();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLScenesListUI_iv(0);
  v70 = *(v5 - 8);
  v6 = *(v70 + 64);
  __chkstk_darwin(v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A317A8);
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v56 = sub_1005B981C(&qword_101A317B0);
  __chkstk_darwin(v56);
  v57 = &v51 - v11;
  v12 = sub_1005B981C(&qword_101A317B8);
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v69 = &v51 - v13;
  v14 = sub_1005B981C(&qword_101A317C0);
  v64 = *(v14 - 8);
  v65 = v14;
  __chkstk_darwin(v14);
  v63 = &v51 - v15;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v16 = sub_1005B981C(&qword_101A317C8);
  sub_10128E2D0(v1, &v10[*(v16 + 44)]);
  if (qword_1019F1C48 != -1)
  {
    swift_once();
  }

  v17 = qword_101AD72A0;
  v18 = Color.init(_:)();
  v19 = static Edge.Set.all.getter();
  v20 = &v10[*(sub_1005B981C(&qword_101A317D0) + 36)];
  *v20 = v18;
  v20[8] = v19;
  KeyPath = swift_getKeyPath();
  v22 = *(v8 + 36);
  v53 = v8;
  v23 = &v10[v22];
  v24 = *(sub_1005B981C(&qword_101A30DE0) + 28);
  v54 = *(v5 + 32);
  v55 = sub_1005B981C(&qword_101A30C98);
  State.projectedValue.getter();
  v25 = sub_1005B981C(&qword_101A30E88);
  (*(*(v25 - 8) + 56))(v23 + v24, 0, 1, v25);
  *v23 = KeyPath;
  v26 = *(v2 + 56);
  *&v71 = *(v2 + 48);
  *(&v71 + 1) = v26;
  sub_1005B981C(&qword_101A310F8);
  State.wrappedValue.getter();
  *&v71 = v74;
  v67 = type metadata accessor for CRLScenesListUI_iv;
  sub_1012A48F4(v2, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLScenesListUI_iv);
  v27 = *(v70 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = swift_allocObject();
  v51 = v5;
  v52 = type metadata accessor for CRLScenesListUI_iv;
  sub_1012A495C(&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for CRLScenesListUI_iv);
  v68 = v6;
  sub_1005B981C(&qword_101A286C8);
  v30 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1012A7028();
  v70 = v2;
  sub_10001A2F8(&qword_101A31318, &qword_101A286C8);
  v31 = v57;
  View.onChange<A>(of:initial:_:)();

  sub_10000CAAC(v10, &qword_101A317A8);
  sub_1012A48F4(v70, v7, v67);
  v32 = swift_allocObject();
  v33 = v52;
  sub_1012A495C(v7, v32 + v28, v52);
  v34 = v56;
  v35 = (v31 + *(v56 + 36));
  *v35 = 0;
  v35[1] = 0;
  v35[2] = sub_1012A73B4;
  v35[3] = v32;
  v36 = *(v70 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v36;
  static Published.subscript.getter();

  sub_1012A48F4(v70, v30, v67);
  v37 = v30;
  v67 = v27;
  v38 = swift_allocObject();
  sub_1012A495C(v30, v38 + v28, v33);
  v39 = sub_1012A73F4();
  View.onChange<A>(of:initial:_:)();
  v40 = v70;

  sub_10000CAAC(v31, &qword_101A317B0);
  v41 = v58;
  State.wrappedValue.getter();
  LOBYTE(v32) = EditMode.isEditing.getter();
  (*(v59 + 8))(v41, v60);
  v42 = 1;
  if ((v32 & 1) == 0)
  {
    v71 = *(v40 + *(v51 + 36));
    sub_1005B981C(&qword_101A30F28);
    State.wrappedValue.getter();
    v42 = v74;
    if (v74)
    {

      v42 = 1;
    }
  }

  LOBYTE(v74) = v42;
  sub_1012A48F4(v40, v37, type metadata accessor for CRLScenesListUI_iv);
  v43 = swift_allocObject();
  sub_1012A495C(v37, v43 + v28, type metadata accessor for CRLScenesListUI_iv);
  *&v71 = v34;
  *(&v71 + 1) = &type metadata for Bool;
  v72 = v39;
  v73 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v44 = v62;
  v45 = v63;
  v46 = v69;
  View.onChange<A>(of:initial:_:)();

  (*(v61 + 8))(v46, v44);
  swift_beginAccess();
  v47 = sub_1005B981C(&qword_101A31810);
  sub_1005B981C(&qword_101A10E18);
  v48 = v66;
  Published.projectedValue.getter();
  swift_endAccess();
  result = (*(v64 + 32))(v48, v45, v65);
  v50 = (v48 + *(v47 + 56));
  *v50 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  v50[1] = 0;
  return result;
}

uint64_t sub_10128E2D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v101 = a2;
  v100 = sub_1005B981C(&qword_101A31818);
  v93 = *(v100 - 8);
  __chkstk_darwin(v100);
  v4 = &v83 - v3;
  v95 = sub_1005B981C(&qword_101A31820);
  __chkstk_darwin(v95);
  v99 = &v83 - v5;
  v98 = sub_1005B981C(&qword_101A31828);
  __chkstk_darwin(v98);
  v92 = (&v83 - v6);
  v7 = type metadata accessor for CRLScenesListUI_iv(0);
  v89 = *(v7 - 8);
  v8 = *(v89 + 64);
  __chkstk_darwin(v7 - 8);
  v90 = (&v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = sub_1005B981C(&qword_101A31830);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v10 = &v83 - v9;
  v84 = sub_1005B981C(&qword_101A31838);
  __chkstk_darwin(v84);
  v12 = &v83 - v11;
  v87 = sub_1005B981C(&qword_101A31840);
  __chkstk_darwin(v87);
  v14 = &v83 - v13;
  v88 = sub_1005B981C(&qword_101A31848);
  __chkstk_darwin(v88);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v83 - v18;
  __chkstk_darwin(v20);
  v91 = &v83 - v21;
  v22 = sub_1005B981C(&qword_101A31850);
  __chkstk_darwin(v22 - 8);
  v97 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v96 = &v83 - v25;
  v94 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v104 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v27 = v4;
    v83 = v4;
    sub_10128CBE0(v4);
    v28 = v93;
    v29 = v100;
    (v93)[2](v99, v27, v100);
    swift_storeEnumTagMultiPayload();
    v95 = sub_10001A2F8(&qword_101A31858, &qword_101A31828);
    v94 = sub_1005C4E5C(&qword_101A31860);
    v92 = sub_1005C4E5C(&qword_101A31868);
    v30 = sub_1005C4E5C(&qword_101A31870);
    v31 = sub_1005C4E5C(&qword_101A31878);
    v32 = sub_1005C4E5C(&qword_101A31880);
    v33 = sub_1005C4E5C(&qword_101A31888);
    v34 = sub_1005C4E5C(&qword_101A30DB8);
    v35 = sub_10001A2F8(&qword_101A30DB0, &qword_101A30DB8);
    v104 = v34;
    v105 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v104 = v33;
    v105 = OpaqueTypeConformance2;
    v37 = swift_getOpaqueTypeConformance2();
    v104 = v32;
    v105 = &type metadata for Bool;
    v106 = v37;
    v107 = &protocol witness table for Bool;
    v38 = swift_getOpaqueTypeConformance2();
    v39 = sub_100017CD8();
    v104 = v31;
    v105 = &type metadata for String;
    v106 = v38;
    v107 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v104 = v30;
    v105 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = sub_1005C4E5C(&qword_101A31890);
    v43 = sub_1005C4E5C(&qword_101A31898);
    v44 = sub_1012A7564();
    v104 = v43;
    v105 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v104 = v42;
    v105 = v45;
    v46 = swift_getOpaqueTypeConformance2();
    v104 = v94;
    v105 = v92;
    v106 = v41;
    v107 = v46;
    swift_getOpaqueTypeConformance2();
    v47 = v96;
    _ConditionalContent<>.init(storage:)();
    (v28[1])(v83, v29);
  }

  else
  {
    if (qword_1019F1C68 != -1)
    {
      swift_once();
    }

    v104 = qword_101AD72C8;
    v105 = qword_101AD72D0;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v102 == 1)
    {
      if (qword_1019F1C78 != -1)
      {
        swift_once();
      }

      v48 = &qword_101AD72E8;
    }

    else
    {
      if (qword_1019F1C70 != -1)
      {
        swift_once();
      }

      v48 = &qword_101AD72D8;
    }

    v49 = *v48;

    v102 = v49;
    v103 = v50;
    v51 = sub_100017CD8();
    Text.init<A>(_:)();
    v93 = v51;
    ContentUnavailableView<>.init<A>(_:image:description:)();
    (*(v85 + 32))(v12, v10, v86);
    *&v12[*(v84 + 36)] = 256;
    if (qword_1019F1C48 != -1)
    {
      swift_once();
    }

    v52 = qword_101AD72A0;
    v53 = Color.init(_:)();
    v54 = static Edge.Set.all.getter();
    sub_10003DFF8(v12, v14, &qword_101A31838);
    v55 = &v14[*(v87 + 36)];
    *v55 = v53;
    v55[8] = v54;
    v56 = v90;
    sub_1012A48F4(v94, v90, type metadata accessor for CRLScenesListUI_iv);
    v57 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v58 = swift_allocObject();
    sub_1012A495C(v56, v58 + v57, type metadata accessor for CRLScenesListUI_iv);
    sub_10003DFF8(v14, v19, &qword_101A31840);
    v59 = &v19[*(v88 + 36)];
    *v59 = sub_1012A7614;
    v59[1] = v58;
    v59[2] = 0;
    v59[3] = 0;
    v60 = v91;
    sub_10003DFF8(v19, v91, &qword_101A31848);
    sub_10000BE14(v60, v16, &qword_101A31848);
    v61 = v92;
    sub_10000BE14(v16, v92, &qword_101A31848);
    v62 = v61 + *(sub_1005B981C(&qword_101A318C0) + 48);
    *v62 = 0;
    *(v62 + 8) = 1;
    sub_10000CAAC(v16, &qword_101A31848);
    sub_10000BE14(v61, v99, &qword_101A31828);
    swift_storeEnumTagMultiPayload();
    v95 = sub_10001A2F8(&qword_101A31858, &qword_101A31828);
    v94 = sub_1005C4E5C(&qword_101A31860);
    v90 = sub_1005C4E5C(&qword_101A31868);
    v63 = sub_1005C4E5C(&qword_101A31870);
    v64 = sub_1005C4E5C(&qword_101A31878);
    v65 = sub_1005C4E5C(&qword_101A31880);
    v66 = sub_1005C4E5C(&qword_101A31888);
    v67 = sub_1005C4E5C(&qword_101A30DB8);
    v68 = sub_10001A2F8(&qword_101A30DB0, &qword_101A30DB8);
    v104 = v67;
    v105 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    v104 = v66;
    v105 = v69;
    v70 = swift_getOpaqueTypeConformance2();
    v104 = v65;
    v105 = &type metadata for Bool;
    v106 = v70;
    v107 = &protocol witness table for Bool;
    v71 = swift_getOpaqueTypeConformance2();
    v104 = v64;
    v105 = &type metadata for String;
    v106 = v71;
    v107 = v93;
    v72 = swift_getOpaqueTypeConformance2();
    v104 = v63;
    v105 = v72;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = sub_1005C4E5C(&qword_101A31890);
    v75 = sub_1005C4E5C(&qword_101A31898);
    v76 = sub_1012A7564();
    v104 = v75;
    v105 = v76;
    v77 = swift_getOpaqueTypeConformance2();
    v104 = v74;
    v105 = v77;
    v78 = swift_getOpaqueTypeConformance2();
    v104 = v94;
    v105 = v90;
    v106 = v73;
    v107 = v78;
    swift_getOpaqueTypeConformance2();
    v47 = v96;
    _ConditionalContent<>.init(storage:)();
    sub_10000CAAC(v61, &qword_101A31828);
    sub_10000CAAC(v60, &qword_101A31848);
  }

  v79 = v97;
  sub_10000BE14(v47, v97, &qword_101A31850);
  v80 = v101;
  *v101 = 0;
  *(v80 + 8) = 1;
  v81 = sub_1005B981C(&qword_101A318B8);
  sub_10000BE14(v79, v80 + *(v81 + 48), &qword_101A31850);
  sub_10000CAAC(v47, &qword_101A31850);
  return sub_10000CAAC(v79, &qword_101A31850);
}

uint64_t sub_10128F198(uint64_t a1)
{
  v2 = type metadata accessor for EditMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = v12 - v8;
  (*(v3 + 104))(v12 - v8, enum case for EditMode.inactive(_:), v2, v7);
  v10 = type metadata accessor for CRLScenesListUI_iv(0);
  (*(v3 + 16))(v5, v9, v2);
  sub_1005B981C(&qword_101A30C98);
  State.wrappedValue.setter();
  (*(v3 + 8))(v9, v2);
  v13 = *(a1 + *(v10 + 36));
  v12[1] = 0;
  sub_1005B981C(&qword_101A30F28);
  return State.wrappedValue.setter();
}

uint64_t sub_10128F338(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A30E90);
  __chkstk_darwin(v2 - 8);
  sub_10000BE14(a1, &v5 - v3, &qword_101A30E90);
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_10128F3E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1005B981C(&qword_101A310F8);
  State.wrappedValue.getter();
  *(v1 + OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_sceneInfosToDelete) = v3;
}

uint64_t sub_10128F44C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = type metadata accessor for EditMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v12 - v9;
  (*(v4 + 104))(&v12 - v9, enum case for EditMode.inactive(_:), v3, v8);
  a2(0);
  (*(v4 + 16))(v6, v10, v3);
  sub_1005B981C(&qword_101A30C98);
  State.wrappedValue.setter();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_10128F5B0(uint64_t a1)
{
  v2 = type metadata accessor for EditMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLScenesListUI_iv(0);
  sub_1005B981C(&qword_101A30C98);
  State.wrappedValue.getter();
  v7 = EditMode.isEditing.getter();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v12 = *(a1 + *(v6 + 36));
    sub_1005B981C(&qword_101A30F28);
    State.wrappedValue.getter();
    if (v11)
    {

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 == v12)
  {
    __chkstk_darwin(result);
    *(&v10 - 2) = a1;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10128F7C0(uint64_t a1)
{
  v2 = type metadata accessor for EditMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for CRLScenesListUI_iv(0);
  v8 = v6;
  sub_1005B981C(&qword_101A30C98);
  State.wrappedValue.getter();
  LOBYTE(v6) = EditMode.isEditing.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v11 = *(a1 + *(v7 + 36));
    sub_1005B981C(&qword_101A30F28);
    State.wrappedValue.getter();
    if (v12)
    {

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v11) = v9;
  return static Published.subscript.setter();
}

uint64_t sub_10128F9D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (_UISolariumEnabled())
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

uint64_t sub_10128FA28()
{
  result = _UISolariumEnabled();
  v1 = 0.0;
  *&xmmword_101AD9620 = 0;
  if (result)
  {
    v1 = 16.0;
  }

  *(&xmmword_101AD9620 + 1) = v1;
  qword_101AD9630 = 0;
  qword_101AD9638 = *&v1;
  return result;
}

uint64_t sub_10128FA68()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = [objc_opt_self() isReduceMotionEnabled];
    sub_10102E160(v1 ^ 1, 0, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10128FAD8()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A03878);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_10001A2F8(&qword_101A03870, &qword_101A03878);
  sub_1012967DC(&qword_101A30FC0, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10128FD2C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_10128FE28@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10128FE60(uint64_t a1, uint64_t (*a2)(void, __n128))
{
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = v13 - v10;
  v14 = *(a1 + *(a2(0, v9) + 36));
  v13[1] = 0;
  sub_1005B981C(&qword_101A30F28);
  State.wrappedValue.setter();
  (*(v5 + 104))(v11, enum case for EditMode.inactive(_:), v4);
  (*(v5 + 16))(v7, v11, v4);
  sub_1005B981C(&qword_101A30C98);
  State.wrappedValue.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_101290008()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A03878);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  IconOnlyLabelStyle.init()();
  sub_10001A2F8(&qword_101A03870, &qword_101A03878);
  sub_1012967DC(&qword_101A30FC0, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_101290238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v71 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v76 = v3;
  v77 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A30DA0);
  __chkstk_darwin(v6);
  v8 = &v59 - v7;
  v9 = sub_1005B981C(&qword_101A30D98);
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  v65 = sub_1005B981C(&qword_101A30D88);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v59 - v12;
  v69 = sub_1005B981C(&qword_101A30DE8);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v59 - v13;
  v61 = sub_1005B981C(&qword_101A30D80);
  __chkstk_darwin(v61);
  v70 = &v59 - v14;
  v80 = sub_1005B981C(&qword_101A30D68);
  __chkstk_darwin(v80);
  v72 = &v59 - v15;
  v16 = sub_1005B981C(&qword_101A30D60);
  v74 = *(v16 - 8);
  v75 = v16;
  __chkstk_darwin(v16);
  v81 = &v59 - v17;
  v83 = a1;
  sub_1005B981C(&qword_101A30DF0);
  sub_101296448();
  List<>.init(content:)();
  v18 = static Alignment.center.getter();
  v20 = v19;
  v21 = &v8[*(v6 + 36)];
  sub_101291928(v21);
  v22 = (v21 + *(sub_1005B981C(&qword_101A30DC8) + 36));
  *v22 = v18;
  v22[1] = v20;
  v82 = a1;
  v23 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v79 = v23;
  static Published.subscript.getter();

  if (v85 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {
    v25 = [objc_opt_self() mainBundle];
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v85 = v24;
  v86 = v30;
  v31 = sub_10129635C();
  v32 = sub_100017CD8();
  View.navigationTitle<A>(_:)();

  sub_10000CAAC(v8, &qword_101A30DA0);
  v33 = v64;
  v34 = v66;
  (*(v64 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v66);
  v85 = v6;
  v86 = &type metadata for String;
  v87 = v31;
  v88 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v62;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v33 + 8))(v5, v34);
  v37 = (*(v60 + 8))(v11, v9);
  __chkstk_darwin(v37);
  v38 = v82;
  *(&v59 - 2) = v82;
  sub_1005B981C(&qword_101A30D90);
  v85 = v9;
  v86 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10001A2F8(&qword_101A30DD0, &qword_101A30D90);
  v39 = v67;
  v40 = v65;
  View.toolbar<A>(content:)();
  (*(v63 + 8))(v36, v40);
  KeyPath = swift_getKeyPath();
  v42 = v70;
  v43 = &v70[*(v61 + 36)];
  v44 = *(sub_1005B981C(&qword_101A30DE0) + 28);
  sub_1005B981C(&qword_101A30C98);
  State.projectedValue.getter();
  v45 = sub_1005B981C(&qword_101A30E88);
  (*(*(v45 - 8) + 56))(v43 + v44, 0, 1, v45);
  *v43 = KeyPath;
  (*(v68 + 32))(v42, v39, v69);
  v46 = v38;
  v47 = v77;
  sub_1012A48F4(v46, v77, type metadata accessor for CRLCompactScenesListUI_i);
  v48 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v49 = swift_allocObject();
  sub_1012A495C(v47, v49 + v48, type metadata accessor for CRLCompactScenesListUI_i);
  v50 = v72;
  sub_10003DFF8(v42, v72, &qword_101A30D80);
  v51 = (v50 + *(v80 + 36));
  *v51 = 0;
  v51[1] = 0;
  v51[2] = sub_1012A3090;
  v51[3] = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1012A48F4(v82, v47, type metadata accessor for CRLCompactScenesListUI_i);
  v52 = swift_allocObject();
  sub_1012A495C(v47, v52 + v48, type metadata accessor for CRLCompactScenesListUI_i);
  v53 = sub_1012960E8();
  View.onChange<A>(of:initial:_:)();

  sub_10000CAAC(v50, &qword_101A30D68);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v85 >> 62)
  {
    v54 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v54 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = v54 == 0;
  sub_1012A48F4(v82, v47, type metadata accessor for CRLCompactScenesListUI_i);
  v55 = swift_allocObject();
  sub_1012A495C(v47, v55 + v48, type metadata accessor for CRLCompactScenesListUI_i);
  v85 = v80;
  v86 = &type metadata for Bool;
  v87 = v53;
  v88 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v56 = v75;
  v57 = v81;
  View.onChange<A>(of:initial:_:)();

  return (*(v74 + 8))(v57, v56);
}

uint64_t sub_101290E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(a1 + 32);
  v24 = a1;
  v26 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  KeyPath = swift_getKeyPath();
  v23 = type metadata accessor for CRLCompactScenesListUI_i;
  sub_1012A48F4(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLCompactScenesListUI_i);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v21 = type metadata accessor for CRLCompactScenesListUI_i;
  sub_1012A495C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for CRLCompactScenesListUI_i);
  sub_1005B981C(&qword_101A22710);
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_10001A2F8(&qword_101A310E8, &qword_101A22710);
  sub_1012967DC(&qword_101A28670, type metadata accessor for CRLSceneInfo);
  sub_1012967DC(&qword_101A30E40, type metadata accessor for CRLSceneRowItemUI_iv);
  v9 = v25;
  ForEach<>.init(_:id:content:)();
  v11 = v23;
  v10 = v24;
  sub_1012A48F4(v24, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v12 = swift_allocObject();
  v13 = v21;
  sub_1012A495C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v7, v21);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1012A3F6C;
  *(v14 + 24) = v12;
  v15 = (v9 + *(sub_1005B981C(&qword_101A30E28) + 36));
  *v15 = sub_1012A3F98;
  v15[1] = v14;
  sub_1012A48F4(v10, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v16 = swift_allocObject();
  sub_1012A495C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v7, v13);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1012A3FC4;
  *(v17 + 24) = v16;
  v18 = (v9 + *(sub_1005B981C(&qword_101A30E18) + 36));
  *v18 = sub_100055B40;
  v18[1] = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v17) = v27;
  *(v9 + *(sub_1005B981C(&qword_101A30E08) + 36)) = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v16) = v27;
  result = sub_1005B981C(&qword_101A30DF0);
  *(v9 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_101291310@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  swift_unknownObjectWeakLoadStrong();
  v28 = *(a2 + 8);
  v6 = *(a2 + 32);
  v7 = v5;
  v6;
  sub_1005B981C(&qword_101A310F8);
  State.projectedValue.getter();
  type metadata accessor for CRLCompactScenesListUI_i(0);
  sub_1005B981C(&qword_101A30F28);
  State.projectedValue.getter();
  KeyPath = swift_getKeyPath();
  v9 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  *(a3 + v9[7]) = KeyPath;
  sub_1005B981C(&qword_101A31100);
  swift_storeEnumTagMultiPayload();
  *(a3 + v9[8]) = swift_getKeyPath();
  sub_1005B981C(&qword_101A0A8A0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v9[9]) = swift_getKeyPath();
  sub_1005B981C(&qword_101A31108);
  swift_storeEnumTagMultiPayload();
  v10 = FocusState.init<>()();
  v12 = v11;
  v14 = v13;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  *a3 = v7;
  a3[2] = v28;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  type metadata accessor for CRLScenesPopoverState(0);
  sub_1012967DC(&qword_101A10C98, type metadata accessor for CRLScenesPopoverState);
  a3[3] = ObservedObject.init(wrappedValue:)();
  a3[4] = v17;
  v18 = a3 + v9[10];
  *v18 = *v29;
  *(v18 + 8) = *&v29[8];
  v19 = a3 + v9[11];
  *v19 = *v29;
  *(v19 + 2) = *&v29[16];
  v20 = v9[12];
  sub_1005B981C(&qword_101A31110);
  State.init(wrappedValue:)();
  *(a3 + v20) = *v29;
  v21 = a3 + v9[13];
  State.init(wrappedValue:)();
  *v21 = *v29;
  *(v21 + 2) = *&v29[16];
  v22 = a3 + v9[14];
  State.init(wrappedValue:)();
  *v22 = v29[0];
  *(v22 + 1) = *&v29[8];
  v23 = a3 + v9[15];
  State.init(wrappedValue:)();
  *v23 = v29[0];
  *(v23 + 1) = *&v29[8];
  v24 = a3 + v9[16];
  *v24 = v10 & 1;
  *(v24 + 1) = v12;
  v24[16] = v14 & 1;
  result = AccessibilityFocusState.init<>()();
  v26 = a3 + v9[18];
  *v26 = v15;
  v26[8] = 0;
  v27 = a3 + v9[19];
  *v27 = v16;
  v27[8] = 0;
  return result;
}

uint64_t sub_10129169C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1005B981C(&qword_101A22710);
  sub_10001A2F8(&qword_101A310F0, &qword_101A22710);
  MutableCollection.move(fromOffsets:toOffset:)();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_10104BC24(v1);

  return swift_unknownObjectRelease();
}

void sub_1012917C4(unint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v6 + 8 * v1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v3 = v2;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1005B981C(&unk_1019F4D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101465920;
    *(inited + 32) = v3;
    v5 = v3;
    sub_10104B498(inited);
    swift_unknownObjectRelease();

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_101291928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&qword_101A31058);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12[3] = v12;
    __chkstk_darwin(v7);
    __chkstk_darwin(v10);
    v13 = a1;
    v12[2] = sub_1005B981C(&qword_101A03878);
    v12[1] = sub_1005B981C(&qword_101A31060);
    sub_1005B981C(&qword_101A31068);
    sub_10001A2F8(&qword_101A03870, &qword_101A03878);
    sub_1012A3ED0(&qword_101A31070, &qword_101A31060);
    sub_1012A4798(&qword_101A31078, &qword_101A31068, &unk_1014D9610, sub_1012A3B58);
    a1 = v13;
    ContentUnavailableView.init(label:description:actions:)();
    (*(v3 + 32))(a1, v5, v2);
    v8 = 0;
    return (*(v3 + 56))(a1, v8, 1, v2);
  }

  v6 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 1;
  return (*(v3 + 56))(a1, v8, 1, v2);
}

uint64_t sub_101291C64()
{
  if (qword_1019F1C68 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  return Label<>.init<A>(_:image:)();
}

double sub_101291D1C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 == 1)
  {
    if (qword_1019F1C78 != -1)
    {
      swift_once();
    }

    v2 = &qword_101AD72E8;
  }

  else
  {
    if (qword_1019F1C70 != -1)
    {
      swift_once();
    }

    v2 = &qword_101AD72D8;
  }

  *&v12 = *v2;

  sub_100017CD8();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  result = *&v14;
  *(a1 + 64) = v14;
  return result;
}

uint64_t sub_101291EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1005B981C(&qword_101A310A0);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v36 = sub_1005B981C(&qword_101A31088);
  v11 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v30 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v38)
  {
    v14 = 1;
    v16 = v36;
    v15 = v37;
  }

  else
  {
    sub_1012A48F4(a1, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLCompactScenesListUI_i);
    v17 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v18 = swift_allocObject();
    sub_1012A495C(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLCompactScenesListUI_i);
    sub_1005B981C(&qword_101A310B8);
    sub_1012A3D5C();
    Button.init(action:label:)();
    BorderedProminentButtonStyle.init()();
    sub_10001A2F8(&qword_101A310A8, &qword_101A310A0);
    sub_1012967DC(&qword_101A10DF0, &type metadata accessor for BorderedProminentButtonStyle);
    v19 = v33;
    v20 = v35;
    View.buttonStyle<A>(_:)();
    (*(v34 + 8))(v5, v20);
    (*(v32 + 8))(v10, v19);
    v21 = &v13[*(sub_1005B981C(&qword_101A31098) + 36)];
    v22 = *(sub_1005B981C(&qword_101A10DF8) + 28);
    v23 = enum case for ControlSize.large(_:);
    v24 = type metadata accessor for ControlSize();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v26 = v36;
    v25 = v37;
    v27 = &v13[*(v36 + 36)];
    v28 = v39;
    *v27 = v38;
    *(v27 + 1) = v28;
    *(v27 + 2) = v40;
    sub_10003DFF8(v13, v25, &qword_101A31088);
    v14 = 0;
    v15 = v25;
    v16 = v26;
  }

  return (*(v11 + 56))(v15, v14, 1, v16);
}

uint64_t sub_1012923D0@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = sub_1005B981C(&qword_101A310D8);
  __chkstk_darwin(v42);
  v2 = &v39 - v1;
  v3 = sub_1005B981C(&qword_101A10D80);
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_1005B981C(&qword_101A310E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v41 = sub_1005B981C(&qword_101A310D0);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  if (_UISolariumEnabled())
  {
    v40 = v6;
    if (qword_1019F1C60 != -1)
    {
      swift_once();
    }

    v45 = xmmword_101AD72B8;
    sub_100017CD8();

    Label<>.init<A>(_:systemImage:)();
    v15 = &v5[*(v3 + 36)];
    v16 = *(sub_1005B981C(&qword_101A10D90) + 28);
    v17 = enum case for Image.Scale.large(_:);
    v18 = type metadata accessor for Image.Scale();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = swift_getKeyPath();
    sub_100B052A8();
    View.bold(_:)();
    sub_10000CAAC(v5, &qword_101A10D80);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v7 + 32))(v11, v9, v40);
    v19 = &v11[*(v41 + 36)];
    v20 = v50;
    v19[4] = v49;
    v19[5] = v20;
    v19[6] = v51;
    v21 = v46;
    *v19 = v45;
    v19[1] = v21;
    v22 = v48;
    v19[2] = v47;
    v19[3] = v22;
    sub_10003DFF8(v11, v14, &qword_101A310D0);
    sub_10000BE14(v14, v2, &qword_101A310D0);
    swift_storeEnumTagMultiPayload();
    sub_1005B981C(&qword_101A10DB8);
    sub_1012A3E08();
    sub_1012A3ED0(&qword_101A10DB0, &qword_101A10DB8);
    _ConditionalContent<>.init(storage:)();
    return sub_10000CAAC(v14, &qword_101A310D0);
  }

  else
  {
    if (qword_1019F1C60 != -1)
    {
      swift_once();
    }

    v45 = xmmword_101AD72B8;
    sub_100017CD8();

    v24 = Text.init<A>(_:)();
    v26 = v25;
    v28 = v27;
    v29 = Text.bold()();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_10007441C(v24, v26, v28 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v44 = v33 & 1;
    *v2 = v29;
    *(v2 + 1) = v31;
    v2[16] = v33 & 1;
    *(v2 + 3) = v35;
    v36 = v50;
    *(v2 + 6) = v49;
    *(v2 + 7) = v36;
    *(v2 + 8) = v51;
    v37 = v46;
    *(v2 + 2) = v45;
    *(v2 + 3) = v37;
    v38 = v48;
    *(v2 + 4) = v47;
    *(v2 + 5) = v38;
    swift_storeEnumTagMultiPayload();
    sub_1005B981C(&qword_101A10DB8);
    sub_1012A3E08();
    sub_1012A3ED0(&qword_101A10DB0, &qword_101A10DB8);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1012929F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v116 = sub_1005B981C(&qword_101A30E98);
  __chkstk_darwin(v116);
  v115 = &v90 - v3;
  v4 = sub_1005B981C(&qword_101A30EA0);
  v112 = *(v4 - 8);
  __chkstk_darwin(v4);
  v94 = &v90 - v5;
  v113 = sub_1005B981C(&qword_101A30EA8);
  v93 = *(v113 - 8);
  __chkstk_darwin(v113);
  v92 = &v90 - v6;
  v7 = sub_1005B981C(&qword_101A30EB0);
  __chkstk_darwin(v7 - 8);
  v111 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = &v90 - v10;
  v110 = sub_1005B981C(&qword_101A30EB8);
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v96 = &v90 - v11;
  v109 = sub_1005B981C(&qword_101A30EC0);
  v91 = *(v109 - 8);
  __chkstk_darwin(v109);
  v95 = &v90 - v12;
  v13 = sub_1005B981C(&qword_101A30EC8);
  __chkstk_darwin(v13 - 8);
  v107 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v122 = &v90 - v16;
  v105 = sub_1005B981C(&qword_101A30ED0);
  v17 = *(v105 - 1);
  __chkstk_darwin(v105);
  v100 = &v90 - v18;
  v19 = type metadata accessor for EditMode();
  v118 = *(v19 - 8);
  v119 = v19;
  __chkstk_darwin(v19);
  v103 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v101 = &v90 - v22;
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v26 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v26 - 8);
  v102 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1005B981C(&qword_101A30ED8);
  v97 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v90 - v29;
  v104 = sub_1005B981C(&qword_101A30EE0);
  v99 = *(v104 - 8);
  __chkstk_darwin(v104);
  v98 = &v90 - v31;
  v32 = sub_1005B981C(&qword_101A30EE8);
  __chkstk_darwin(v32 - 8);
  v34 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v90 - v36;
  v121 = a1;
  v38 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v124 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v120 = v37;
  v106 = v38;
  if (v39)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v124 & 1) == 0)
    {
      v90 = v4;
      v42 = static ToolbarItemPlacement.topBarLeading.getter();
      __chkstk_darwin(v42);
      *(&v90 - 2) = v121;
      sub_1005B981C(&qword_101A30EF0);
      sub_1012A31F4();
      ToolbarItem<>.init(placement:content:)();
      v43 = type metadata accessor for CRLCompactScenesListUI_i(0);
      sub_1005B981C(&qword_101A30C98);
      State.wrappedValue.getter();
      v44 = EditMode.isEditing.getter();
      (*(v118 + 8))(v25, v119);
      if ((v44 & 1) == 0)
      {
        v124 = *(v121 + *(v43 + 36));
        sub_1005B981C(&qword_101A30F28);
        State.wrappedValue.getter();
        if (!v123)
        {
          goto LABEL_10;
        }
      }

      static Color.accentColor.getter();
LABEL_10:
      v45 = sub_10001A2F8(&qword_101A30F30, &qword_101A30ED8);
      v46 = v98;
      ToolbarContent.containerTint(_:)();

      (*(v97 + 8))(v30, v28);
      *&v124 = v28;
      *(&v124 + 1) = v45;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v48 = v100;
      v49 = v104;
      static ToolbarContentBuilder.buildBlock<A>(_:)();
      v50 = v105;
      (*(v17 + 16))(v34, v48, v105);
      (*(v17 + 56))(v34, 0, 1, v50);
      *&v124 = v49;
      *(&v124 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      static ToolbarContentBuilder.buildIf<A>(_:)();
      sub_10000CAAC(v34, &qword_101A30EE8);
      (*(v17 + 8))(v48, v50);
      (*(v99 + 8))(v46, v49);
      v4 = v90;
      goto LABEL_11;
    }
  }

  (*(v17 + 56))(v34, 1, 1, v105);
  v40 = sub_10001A2F8(&qword_101A30F30, &qword_101A30ED8);
  *&v124 = v28;
  *(&v124 + 1) = v40;
  v41 = swift_getOpaqueTypeConformance2();
  *&v124 = v104;
  *(&v124 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_10000CAAC(v34, &qword_101A30EE8);
LABEL_11:
  v51 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v52 = v121;
  v53 = (v121 + *(v51 + 36));
  v54 = *v53;
  v55 = v53[1];
  *&v124 = *v53;
  *(&v124 + 1) = v55;
  sub_1005B981C(&qword_101A30F28);
  State.wrappedValue.getter();
  v56 = v123;
  if (v123)
  {
    goto LABEL_12;
  }

  sub_1005B981C(&qword_101A30C98);
  v57 = v101;
  State.wrappedValue.getter();
  v58 = EditMode.isEditing.getter();
  (*(v118 + 8))(v57, v119);
  if (v58)
  {
    goto LABEL_14;
  }

  *&v124 = v54;
  *(&v124 + 1) = v55;
  State.wrappedValue.getter();
  v56 = v123;
  if (v123)
  {
LABEL_12:

LABEL_14:
    v59 = v107;
    (*(v108 + 56))(v107, 1, 1, v110);
    v60 = sub_10001A2F8(&qword_101A30F38, &qword_101A30EC0);
    *&v124 = v109;
    *(&v124 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000CAAC(v59, &qword_101A30EC8);
    goto LABEL_15;
  }

  v74 = static ToolbarItemPlacement.topBarTrailing.getter();
  v105 = &v90;
  __chkstk_darwin(v74);
  *(&v90 - 2) = v52;
  sub_1005B981C(&qword_101A30F08);
  v52 = v121;
  sub_10001A2F8(&qword_101A30F00, &qword_101A30F08);
  ToolbarItem<>.init(placement:content:)();
  v105 = sub_10001A2F8(&qword_101A30F38, &qword_101A30EC0);
  v75 = v96;
  v76 = v109;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  v77 = v107;
  v78 = v108;
  v79 = v75;
  v80 = v110;
  (*(v108 + 16))(v107, v79, v110);
  (*(v78 + 56))(v77, 0, 1, v80);
  *&v124 = v76;
  *(&v124 + 1) = v105;
  swift_getOpaqueTypeConformance2();
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_10000CAAC(v77, &qword_101A30EC8);
  (*(v78 + 8))(v96, v80);
  (*(v91 + 8))(v95, v76);
LABEL_15:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v61 = v114;
  if (v124 >> 62)
  {
    v89 = _CocoaArrayWrapper.endIndex.getter();

    if (!v89)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v62 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v62)
    {
      goto LABEL_20;
    }
  }

  sub_1005B981C(&qword_101A30C98);
  v63 = v103;
  State.wrappedValue.getter();
  v64 = EditMode.isEditing.getter();
  (*(v118 + 8))(v63, v119);
  if ((v64 & 1) == 0)
  {
    *&v124 = v54;
    *(&v124 + 1) = v55;
    State.wrappedValue.getter();
    if (!v123)
    {
      v81 = static ToolbarItemPlacement.bottomBar.getter();
      v82 = v4;
      __chkstk_darwin(v81);
      *(&v90 - 2) = v52;
      sub_1005B981C(&qword_101A30F40);
      sub_10001A2F8(&qword_101A30F48, &qword_101A30F40);
      v83 = v92;
      ToolbarItemGroup.init(placement:content:)();
      v84 = sub_10001A2F8(&qword_101A30F50, &qword_101A30EA8);
      v85 = v94;
      v86 = v113;
      static ToolbarContentBuilder.buildBlock<A>(_:)();
      v88 = v111;
      v87 = v112;
      (*(v112 + 16))(v111, v85, v82);
      (*(v87 + 56))(v88, 0, 1, v82);
      *&v124 = v86;
      *(&v124 + 1) = v84;
      swift_getOpaqueTypeConformance2();
      static ToolbarContentBuilder.buildIf<A>(_:)();
      sub_10000CAAC(v88, &qword_101A30EB0);
      (*(v87 + 8))(v85, v82);
      (*(v93 + 8))(v83, v86);
      goto LABEL_21;
    }
  }

LABEL_20:
  v65 = v111;
  (*(v112 + 56))(v111, 1, 1, v4);
  v66 = sub_10001A2F8(&qword_101A30F50, &qword_101A30EA8);
  *&v124 = v113;
  *(&v124 + 1) = v66;
  swift_getOpaqueTypeConformance2();
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_10000CAAC(v65, &qword_101A30EB0);
LABEL_21:
  v67 = v61;
  v68 = v115;
  v69 = *(v116 + 48);
  v70 = *(v116 + 64);
  v71 = v120;
  sub_10000BE14(v120, v115, &qword_101A30EE8);
  v72 = v122;
  sub_10000BE14(v122, v68 + v69, &qword_101A30EC8);
  sub_10000BE14(v67, v68 + v70, &qword_101A30EB0);
  TupleToolbarContent.init(_:)();
  sub_10000CAAC(v67, &qword_101A30EB0);
  sub_10000CAAC(v72, &qword_101A30EC8);
  return sub_10000CAAC(v71, &qword_101A30EE8);
}

uint64_t sub_101293D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v51 = type metadata accessor for EditButton();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1005B981C(&qword_101A31048);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = v44 - v4;
  v60 = sub_1005B981C(&qword_101A30F18);
  __chkstk_darwin(v60);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = v44 - v7;
  v57 = sub_1005B981C(&qword_101A31050);
  __chkstk_darwin(v57);
  v59 = v44 - v8;
  v9 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v58 = sub_1005B981C(&qword_101A30F08);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = v44 - v11;
  v12 = type metadata accessor for EditMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v45 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v44 - v16;
  v18 = *(v9 + 36);
  v62 = a1;
  v19 = (a1 + v18);
  v21 = *v19;
  v20 = v19[1];
  v63 = *v19;
  v64 = v20;
  sub_1005B981C(&qword_101A30F28);
  State.wrappedValue.getter();
  v22 = v67;
  if (v67)
  {
    goto LABEL_2;
  }

  v23 = *(v9 + 32);
  v24 = sub_1005B981C(&qword_101A30C98);
  v44[1] = v23;
  v44[0] = v24;
  State.wrappedValue.getter();
  LOBYTE(v23) = EditMode.isEditing.getter();
  v25 = *(v13 + 8);
  v25(v17, v12);
  if (v23)
  {
    goto LABEL_4;
  }

  v63 = v21;
  v64 = v20;
  State.wrappedValue.getter();
  v22 = v67;
  if (v67)
  {
LABEL_2:

LABEL_4:
    sub_1012A48F4(v62, v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLCompactScenesListUI_i);
    v26 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v27 = swift_allocObject();
    sub_1012A495C(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for CRLCompactScenesListUI_i);
    sub_1005B981C(&qword_101A30FB0);
    v28 = sub_1005C4E5C(&qword_101A03878);
    v29 = type metadata accessor for IconOnlyLabelStyle();
    v30 = sub_10001A2F8(&qword_101A03870, &qword_101A03878);
    v31 = sub_1012967DC(&qword_101A30FC0, &type metadata accessor for IconOnlyLabelStyle);
    v63 = v28;
    v64 = v29;
    v65 = v30;
    v66 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v54;
    Button.init(action:label:)();
    v33 = v56;
    v34 = v58;
    (*(v56 + 16))(v59, v32, v58);
    swift_storeEnumTagMultiPayload();
    sub_10001A2F8(&qword_101A30F00, &qword_101A30F08);
    sub_1012A32AC();
    _ConditionalContent<>.init(storage:)();
    return (*(v33 + 8))(v32, v34);
  }

  v36 = v47;
  EditButton.init()();
  v37 = v45;
  State.wrappedValue.getter();
  EditMode.isEditing.getter();
  v25(v37, v12);
  sub_1012967DC(&qword_101A30F20, &type metadata accessor for EditButton);
  v38 = v48;
  v39 = v51;
  View.bold(_:)();
  (*(v49 + 8))(v36, v39);
  if (_UISolariumEnabled())
  {
    v40 = static Color.primary.getter();
  }

  else
  {
    v40 = static Color.accentColor.getter();
  }

  v41 = v40;
  v42 = v46;
  (*(v50 + 32))(v46, v38, v52);
  *(v42 + *(v60 + 36)) = v41;
  v43 = v53;
  sub_10003DFF8(v42, v53, &qword_101A30F18);
  sub_10000BE14(v43, v59, &qword_101A30F18);
  swift_storeEnumTagMultiPayload();
  sub_10001A2F8(&qword_101A30F00, &qword_101A30F08);
  sub_1012A32AC();
  _ConditionalContent<>.init(storage:)();
  return sub_10000CAAC(v43, &qword_101A30F18);
}

uint64_t sub_1012945A0(uint64_t a1)
{
  v2 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1012A48F4(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLCompactScenesListUI_i);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1012A495C(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for CRLCompactScenesListUI_i);
  sub_1005B981C(&qword_101A30FB0);
  v7 = sub_1005C4E5C(&qword_101A03878);
  v8 = type metadata accessor for IconOnlyLabelStyle();
  v9 = sub_10001A2F8(&qword_101A03870, &qword_101A03878);
  v10 = sub_1012967DC(&qword_101A30FC0, &type metadata accessor for IconOnlyLabelStyle);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  return Button.init(action:label:)();
}

uint64_t sub_1012947C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v96 = a2;
  v3 = type metadata accessor for BorderlessButtonMenuStyle();
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v87 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A30F58);
  v85 = *(v5 - 8);
  v86 = v5;
  __chkstk_darwin(v5);
  v84 = &v79 - v6;
  v92 = sub_1005B981C(&qword_101A30F60);
  __chkstk_darwin(v92);
  v93 = &v79 - v7;
  v8 = sub_1005B981C(&qword_101A30F68);
  __chkstk_darwin(v8 - 8);
  v95 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v79 - v11;
  v12 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v82 = sub_1005B981C(&qword_101A30F70);
  v15 = *(v82 - 8);
  __chkstk_darwin(v82);
  v17 = &v79 - v16;
  v18 = sub_1005B981C(&qword_101A30F78);
  __chkstk_darwin(v18 - 8);
  v91 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  v90 = _UISolariumEnabled();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v97)
  {
    v23 = 1;
    v24 = a1;
    v25 = v82;
  }

  else
  {
    v26 = v22;
    v81 = a1;
    sub_1012A48F4(a1, &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLCompactScenesListUI_i);
    v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v28 = swift_allocObject();
    sub_1012A495C(&v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for CRLCompactScenesListUI_i);
    sub_1005B981C(&qword_101A30F80);
    sub_10001A2F8(&qword_101A30F88, &qword_101A30F80);
    Button.init(action:label:)();
    if (qword_1019F2BE8 != -1)
    {
      swift_once();
    }

    v80 = xmmword_101AD9620;
    v79 = *&qword_101AD9630;
    v29 = static Edge.Set.all.getter();
    v30 = &v17[*(sub_1005B981C(&qword_101A30F90) + 36)];
    *v30 = v29;
    *(v30 + 24) = v79;
    *(v30 + 8) = v80;
    v30[40] = 0;
    v25 = v82;
    v31 = &v17[*(v82 + 36)];
    v32 = enum case for RoundedCornerStyle.continuous(_:);
    v33 = type metadata accessor for RoundedCornerStyle();
    (*(*(v33 - 8) + 104))(v31, v32, v33);
    v22 = v26;
    if (qword_1019F2BE0 != -1)
    {
      swift_once();
    }

    v34 = qword_101AD9608;
    v35 = sub_1005B981C(&qword_101A30F98);
    *&v31[*(v35 + 52)] = v34;
    *&v31[*(v35 + 56)] = 256;

    LOBYTE(v34) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = &v31[*(sub_1005B981C(&qword_101A30FA0) + 36)];
    *v44 = v34;
    *(v44 + 1) = v37;
    *(v44 + 2) = v39;
    *(v44 + 3) = v41;
    *(v44 + 4) = v43;
    v44[40] = 0;
    v45 = static Alignment.center.getter();
    v47 = v46;
    v48 = &v31[*(sub_1005B981C(&qword_101A30FA8) + 36)];
    *v48 = v45;
    v48[1] = v47;
    sub_10003DFF8(v17, v26, &qword_101A30F70);
    v23 = 0;
    v24 = v81;
  }

  v83 = v22;
  v49 = (*(v15 + 56))(v22, v23, 1, v25);
  __chkstk_darwin(v49);
  *(&v79 - 2) = v24;
  sub_1005B981C(&qword_101A30FB0);
  sub_1005B981C(&qword_101A30FB8);
  v50 = sub_1005C4E5C(&qword_101A03878);
  v51 = type metadata accessor for IconOnlyLabelStyle();
  v52 = sub_10001A2F8(&qword_101A03870, &qword_101A03878);
  v53 = sub_1012967DC(&qword_101A30FC0, &type metadata accessor for IconOnlyLabelStyle);
  v97 = v50;
  v98 = v51;
  v99 = v52;
  v100 = v53;
  swift_getOpaqueTypeConformance2();
  sub_10001A2F8(&qword_101A30FC8, &qword_101A30FB8);
  v54 = v84;
  Menu.init(content:label:)();
  v55 = v87;
  BorderlessButtonMenuStyle.init()();
  sub_10001A2F8(&qword_101A30FD0, &qword_101A30F58);
  sub_1012967DC(&qword_101A30FD8, &type metadata accessor for BorderlessButtonMenuStyle);
  v56 = v93;
  v57 = v86;
  v58 = v89;
  View.menuStyle<A>(_:)();
  (*(v88 + 8))(v55, v58);
  (*(v85 + 8))(v54, v57);
  KeyPath = swift_getKeyPath();
  v60 = v56 + *(sub_1005B981C(&qword_101A30FE0) + 36);
  *v60 = KeyPath;
  *(v60 + 8) = 2;
  *(v56 + *(sub_1005B981C(&qword_101A30FE8) + 36)) = 257;
  v61 = static Color.accentColor.getter();
  *(v56 + *(sub_1005B981C(&qword_101A30FF0) + 36)) = v61;
  if (qword_1019F2BE0 != -1)
  {
    swift_once();
  }

  *(v56 + *(v92 + 36)) = qword_101AD9608;
  v62 = objc_opt_self();

  v63 = [v62 mainBundle];
  v64 = String._bridgeToObjectiveC()();
  v65 = String._bridgeToObjectiveC()();
  v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v97 = v67;
  v98 = v69;
  sub_1012A3694();
  sub_100017CD8();
  v70 = v94;
  View.accessibilityLabel<A>(_:)();

  sub_10000CAAC(v56, &qword_101A30F60);
  v71 = v83;
  v72 = v91;
  sub_10000BE14(v83, v91, &qword_101A30F78);
  v73 = v95;
  sub_10000BE14(v70, v95, &qword_101A30F68);
  v74 = v96;
  *v96 = 0;
  v75 = v90;
  *(v74 + 8) = v90;
  *(v74 + 9) = v75 ^ 1;
  v76 = sub_1005B981C(&qword_101A31038);
  sub_10000BE14(v72, v74 + v76[12], &qword_101A30F78);
  v77 = v74 + v76[16];
  *v77 = 0;
  v77[8] = 1;
  sub_10000BE14(v73, v74 + v76[20], &qword_101A30F68);
  sub_10000CAAC(v70, &qword_101A30F68);
  sub_10000CAAC(v71, &qword_101A30F78);
  sub_10000CAAC(v73, &qword_101A30F68);
  return sub_10000CAAC(v72, &qword_101A30F78);
}

uint64_t sub_1012953F8@<X0>(uint64_t a1@<X8>)
{
  v17 = Image.init(systemName:)();
  if (qword_1019F2BD8 != -1)
  {
    swift_once();
  }

  v2 = qword_101AD9600;
  v3 = qword_1019F1C60;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;

  v9 = Text.foregroundStyle<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10007441C(v4, v6, v8 & 1);

  *a1 = v17;
  *(a1 + 8) = v2;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13 & 1;
  *(a1 + 40) = v15;

  sub_10081EF10(v9, v11, v13 & 1);

  sub_10007441C(v9, v11, v13 & 1);
}

uint64_t sub_1012955E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for CRLCompactScenesListUI_i(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_1005B981C(&qword_1019FEA78);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v30 = &v28 - v12;
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  if (qword_1019F1C98 != -1)
  {
    swift_once();
  }

  v34 = qword_101AD7328;
  v35 = qword_101AD7330;
  sub_1012A48F4(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLCompactScenesListUI_i);
  v16 = *(v4 + 80);
  v29 = a1;
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_1012A495C(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLCompactScenesListUI_i);
  sub_100017CD8();

  Button<>.init<A>(_:action:)();
  if (qword_1019F1CA8 != -1)
  {
    swift_once();
  }

  v34 = qword_101AD7348;
  v35 = unk_101AD7350;
  sub_1012A48F4(v29, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLCompactScenesListUI_i);
  v19 = swift_allocObject();
  sub_1012A495C(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for CRLCompactScenesListUI_i);

  v20 = v30;
  Button<>.init<A>(_:action:)();
  v21 = *(v7 + 16);
  v22 = v31;
  v21(v31, v15, v6);
  v23 = v32;
  v21(v32, v20, v6);
  v24 = v33;
  v21(v33, v22, v6);
  v25 = sub_1005B981C(&qword_101A31040);
  v21(&v24[*(v25 + 48)], v23, v6);
  v26 = *(v7 + 8);
  v26(v20, v6);
  v26(v15, v6);
  v26(v23, v6);
  return (v26)(v22, v6);
}

uint64_t sub_101295A30()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10103EECC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_101295A7C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(*(result + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v2 = sub_100EC8784();

    sub_10104BEF0(v2);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_101295B18@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = type metadata accessor for IconOnlyLabelStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A03878);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v17[2] = v13;
  v17[3] = v15;
  sub_100017CD8();
  Label<>.init<A>(_:systemImage:)();
  IconOnlyLabelStyle.init()();
  sub_10001A2F8(&qword_101A03870, &qword_101A03878);
  sub_1012967DC(&qword_101A30FC0, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101295DE4()
{
  v0 = type metadata accessor for EditMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v11 >> 62))
  {
    v7 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      return result;
    }

    goto LABEL_3;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();

  if (!v9)
  {
LABEL_3:
    (*(v1 + 104))(v6, enum case for EditMode.inactive(_:), v0);
    type metadata accessor for CRLCompactScenesListUI_i(0);
    (*(v1 + 16))(v3, v6, v0);
    sub_1005B981C(&qword_101A30C98);
    State.wrappedValue.setter();
    return (*(v1 + 8))(v6, v0);
  }

  return result;
}

uint64_t sub_101295FDC()
{
  sub_1005B981C(&qword_101A30D58);
  sub_1005C4E5C(&qword_101A30D60);
  sub_1005C4E5C(&qword_101A30D68);
  sub_1012960E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1012960E8()
{
  result = qword_101A30D70;
  if (!qword_101A30D70)
  {
    sub_1005C4E5C(&qword_101A30D68);
    sub_101296174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30D70);
  }

  return result;
}

unint64_t sub_101296174()
{
  result = qword_101A30D78;
  if (!qword_101A30D78)
  {
    sub_1005C4E5C(&qword_101A30D80);
    sub_1005C4E5C(&qword_101A30D88);
    sub_1005C4E5C(&qword_101A30D90);
    sub_1005C4E5C(&qword_101A30D98);
    sub_1005C4E5C(&qword_101A30DA0);
    sub_10129635C();
    sub_100017CD8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A30DD0, &qword_101A30D90);
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A30DD8, &qword_101A30DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30D78);
  }

  return result;
}

unint64_t sub_10129635C()
{
  result = qword_101A30DA8;
  if (!qword_101A30DA8)
  {
    sub_1005C4E5C(&qword_101A30DA0);
    sub_10001A2F8(&qword_101A30DB0, &qword_101A30DB8);
    sub_10001A2F8(&qword_101A30DC0, &qword_101A30DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30DA8);
  }

  return result;
}

unint64_t sub_101296448()
{
  result = qword_101A30DF8;
  if (!qword_101A30DF8)
  {
    sub_1005C4E5C(&qword_101A30DF0);
    sub_101296500();
    sub_10001A2F8(&qword_101A30E78, &qword_101A30E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30DF8);
  }

  return result;
}

unint64_t sub_101296500()
{
  result = qword_101A30E00;
  if (!qword_101A30E00)
  {
    sub_1005C4E5C(&qword_101A30E08);
    sub_1012965B8();
    sub_10001A2F8(&qword_101A30E68, &qword_101A30E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30E00);
  }

  return result;
}

unint64_t sub_1012965B8()
{
  result = qword_101A30E10;
  if (!qword_101A30E10)
  {
    sub_1005C4E5C(&qword_101A30E18);
    sub_101296670();
    sub_10001A2F8(&qword_101A30E58, &qword_101A30E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30E10);
  }

  return result;
}

unint64_t sub_101296670()
{
  result = qword_101A30E20;
  if (!qword_101A30E20)
  {
    sub_1005C4E5C(&qword_101A30E28);
    sub_101296728();
    sub_10001A2F8(&qword_101A30E48, &qword_101A30E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30E20);
  }

  return result;
}

unint64_t sub_101296728()
{
  result = qword_101A30E30;
  if (!qword_101A30E30)
  {
    sub_1005C4E5C(&qword_101A30E38);
    sub_1012967DC(&qword_101A30E40, type metadata accessor for CRLSceneRowItemUI_iv);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30E30);
  }

  return result;
}

uint64_t sub_1012967DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101296844()
{
  result = _UISolariumEnabled();
  v1 = 0.0;
  if (result)
  {
    v1 = 4.0;
  }

  qword_101AD9640 = *&v1;
  return result;
}

uint64_t sub_101296874()
{
  result = _UISolariumEnabled();
  v1 = 20.0;
  *&xmmword_101AD9660 = 0x4014000000000000;
  if (result)
  {
    v1 = 16.0;
  }

  *(&xmmword_101AD9660 + 1) = v1;
  qword_101AD9670 = 0x4014000000000000;
  qword_101AD9678 = *&v1;
  return result;
}

uint64_t sub_1012968B8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A0A8A0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_10000BE14(v1 + *(v10 + 32), v9, &qword_101A0A8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_101296AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A31108);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_10000BE14(v1 + *(v10 + 36), v9, &qword_101A31108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_101296CC8()
{
  v1 = type metadata accessor for EditMode();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A31100);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = sub_1005B981C(&qword_101A30E90);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_10000BE14(v0 + *(v14 + 28), v10, &qword_101A31100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003DFF8(v10, v13, &qword_101A30E90);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v16 = sub_1005B981C(&qword_101A30E88);
  if ((*(*(v16 - 8) + 48))(v13, 1, v16) == 1)
  {
    sub_10000CAAC(v13, &qword_101A30E90);
    v17 = 0;
  }

  else
  {
    Binding.wrappedValue.getter();
    sub_10000CAAC(v13, &qword_101A30E88);
    v17 = EditMode.isEditing.getter();
    (*(v19 + 8))(v3, v20);
  }

  return v17 & 1;
}

uint64_t sub_101297034()
{
  v1 = type metadata accessor for EditMode();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A31100);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_1005B981C(&qword_101A30E90);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v14 = *(v13 + 28);
  v26 = v0;
  sub_10000BE14(v0 + v14, v9, &qword_101A31100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003DFF8(v9, v12, &qword_101A30E90);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v16 = sub_1005B981C(&qword_101A30E88);
  if ((*(*(v16 - 8) + 48))(v12, 1, v16) == 1)
  {
    sub_10000CAAC(v12, &qword_101A30E90);
  }

  else
  {
    v17 = v23;
    Binding.wrappedValue.getter();
    sub_10000CAAC(v12, &qword_101A30E88);
    v18 = EditMode.isEditing.getter();
    (*(v24 + 8))(v17, v25);
    if (v18)
    {
      return 1;
    }
  }

  v19 = (v26 + *(v13 + 44));
  v20 = *v19;
  v21 = *(v19 + 2);
  v28 = v20;
  v29 = v21;
  sub_1005B981C(&qword_101A31320);
  Binding.wrappedValue.getter();
  if (v27)
  {

    return 1;
  }

  return 0;
}

double sub_101297400()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v41;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v6 >= 1.0)
  {
    v40 = v5;
    v16 = &unk_10146C000;
    if (Strong && (sub_101296AC0(v4), sub_1005B981C(&qword_101A287F8), v17 = *(v2 + 72), v18 = (*(v2 + 80) + 32) & ~*(v2 + 80), v39 = v4, v19 = swift_allocObject(), *(v19 + 16) = xmmword_10146C4D0, v20 = v19 + v18, v21 = *(v2 + 104), v21(v20, enum case for DynamicTypeSize.accessibility3(_:), v1), v21(v20 + v17, enum case for DynamicTypeSize.accessibility4(_:), v1), v4 = v39, v21(v20 + 2 * v17, enum case for DynamicTypeSize.accessibility5(_:), v1), v16 = &unk_10146C000, LOBYTE(v17) = sub_1012CDFB0(v4, v19), swift_unknownObjectRelease(), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), (*(v2 + 8))(v4, v1), (v17 & 1) != 0))
    {
      *&v22 = 75.0;
    }

    else
    {
      *&v22 = 50.0;
    }

    v30 = *&v22;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_101296AC0(v4);
      sub_1005B981C(&qword_101A287F8);
      v31 = v16;
      v32 = *(v2 + 72);
      v33 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v31[77];
      v35 = v34 + v33;
      v36 = *(v2 + 104);
      v36(v35, enum case for DynamicTypeSize.accessibility3(_:), v1);
      v36(v35 + v32, enum case for DynamicTypeSize.accessibility4(_:), v1);
      v36(v35 + 2 * v32, enum case for DynamicTypeSize.accessibility5(_:), v1);
      sub_1012CDFB0(v4, v34);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v2 + 8))(v4, v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  else
  {
    if (Strong && (sub_101296AC0(v4), sub_1005B981C(&qword_101A287F8), v8 = *(v2 + 72), v9 = *(v2 + 80), v40 = v5, v10 = (v9 + 32) & ~v9, v11 = swift_allocObject(), *(v11 + 16) = xmmword_10146C4D0, v12 = v11 + v10, v39 = v4, v13 = *(v2 + 104), v13(v12, enum case for DynamicTypeSize.accessibility3(_:), v1), v13(v12 + v8, enum case for DynamicTypeSize.accessibility4(_:), v1), v13(v12 + 2 * v8, enum case for DynamicTypeSize.accessibility5(_:), v1), v4 = v39, v14 = sub_1012CDFB0(v39, v11), swift_unknownObjectRelease(), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), (*(v2 + 8))(v4, v1), v14))
    {
      *&v15 = 75.0;
    }

    else
    {
      *&v15 = 50.0;
    }

    v23 = *&v15;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = v41;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_101296AC0(v4);
      sub_1005B981C(&qword_101A287F8);
      v25 = *(v2 + 72);
      v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10146C4D0;
      v28 = v27 + v26;
      v29 = *(v2 + 104);
      v29(v28, enum case for DynamicTypeSize.accessibility3(_:), v1);
      v29(v28 + v25, enum case for DynamicTypeSize.accessibility4(_:), v1);
      v29(v28 + 2 * v25, enum case for DynamicTypeSize.accessibility5(_:), v1);
      sub_1012CDFB0(v4, v27);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v2 + 8))(v4, v1);
    }

    return v23 * v24;
  }

  return v30;
}

uint64_t sub_101297AC8()
{
  v1 = type metadata accessor for ColorScheme();
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin(v1);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v38 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v8);
  v45 = &v38 - v9;
  v10 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v10 - 8);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v46 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v47;
  if (v47)
  {
    v19 = *(v6 + 16);
    v19(v17, &v47[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID], v5);

    v20 = *(v6 + 56);
    v20(v17, 0, 1, v5);
  }

  else
  {
    v20 = *(v6 + 56);
    v20(v17, 1, 1, v5);
    v19 = *(v6 + 16);
  }

  v19(v14, (*v46 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID), v5);
  v20(v14, 0, 1, v5);
  v21 = *(v8 + 48);
  v22 = v45;
  sub_10000BE14(v17, v45, &qword_1019F6990);
  sub_10000BE14(v14, v22 + v21, &qword_1019F6990);
  v23 = *(v6 + 48);
  if (v23(v22, 1, v5) != 1)
  {
    v38 = v17;
    v24 = v22;
    v25 = v22;
    v26 = v44;
    sub_10000BE14(v24, v44, &qword_1019F6990);
    if (v23(v25 + v21, 1, v5) != 1)
    {
      v29 = v39;
      (*(v6 + 32))(v39, v25 + v21, v5);
      sub_1012967DC(&qword_1019F37C0, &type metadata accessor for UUID);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v6 + 8);
      v31(v29, v5);
      sub_10000CAAC(v14, &qword_1019F6990);
      sub_10000CAAC(v38, &qword_1019F6990);
      v31(v26, v5);
      sub_10000CAAC(v25, &qword_1019F6990);
      if (v30)
      {
        goto LABEL_12;
      }

LABEL_10:
      v27 = [objc_opt_self() tertiarySystemBackgroundColor];
      return Color.init(uiColor:)();
    }

    sub_10000CAAC(v14, &qword_1019F6990);
    sub_10000CAAC(v38, &qword_1019F6990);
    (*(v6 + 8))(v26, v5);
    v22 = v25;
LABEL_9:
    sub_10000CAAC(v22, &unk_101A0AFE0);
    goto LABEL_10;
  }

  sub_10000CAAC(v14, &qword_1019F6990);
  sub_10000CAAC(v17, &qword_1019F6990);
  if (v23(v22 + v21, 1, v5) != 1)
  {
    goto LABEL_9;
  }

  sub_10000CAAC(v22, &qword_1019F6990);
LABEL_12:
  v32 = v40;
  sub_1012968B8(v40);
  v34 = v41;
  v33 = v42;
  v35 = v43;
  (*(v42 + 104))(v41, enum case for ColorScheme.dark(_:), v43);
  static ColorScheme.== infix(_:_:)();
  v36 = *(v33 + 8);
  v36(v34, v35);
  v36(v32, v35);
  static Color.accentColor.getter();
  v37 = Color.opacity(_:)();

  return v37;
}

uint64_t sub_10129815C@<X0>(uint64_t a1@<X8>)
{
  v184 = a1;
  v183 = type metadata accessor for AccessibilityTraits();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v180 = &v147 - v4;
  v179 = type metadata accessor for AccessibilityActionKind();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for AccessibilityChildBehavior();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v168 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v196 = *(v187 - 8);
  __chkstk_darwin(v187);
  v198 = v7;
  v197 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A31238);
  __chkstk_darwin(v8);
  v10 = &v147 - v9;
  v185 = sub_1005B981C(&qword_101A31240);
  v190 = *(v185 - 1);
  __chkstk_darwin(v185);
  v12 = &v147 - v11;
  v153 = sub_1005B981C(&qword_101A31248);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v186 = &v147 - v13;
  v156 = sub_1005B981C(&qword_101A31250);
  v154 = *(v156 - 8);
  __chkstk_darwin(v156);
  v151 = &v147 - v14;
  v159 = sub_1005B981C(&qword_101A31258);
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v155 = &v147 - v15;
  v164 = sub_1005B981C(&qword_101A31260);
  v161 = *(v164 - 8);
  __chkstk_darwin(v164);
  v158 = &v147 - v16;
  v165 = sub_1005B981C(&qword_101A31268);
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v160 = &v147 - v17;
  v167 = sub_1005B981C(&qword_101A31270);
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v162 = &v147 - v18;
  v194 = sub_1005B981C(&qword_101A31278);
  __chkstk_darwin(v194);
  v172 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v173 = &v147 - v21;
  __chkstk_darwin(v22);
  v174 = &v147 - v23;
  __chkstk_darwin(v24);
  v175 = &v147 - v25;
  __chkstk_darwin(v26);
  v191 = &v147 - v27;
  __chkstk_darwin(v28);
  v176 = &v147 - v29;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v30 = &v10[*(sub_1005B981C(&qword_101A31280) + 44)];
  *v30 = static VerticalAlignment.center.getter();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = sub_1005B981C(&qword_101A31288);
  sub_101299B80(v1, &v30[*(v31 + 44)]);
  if (qword_1019F2BF8 != -1)
  {
    swift_once();
  }

  v32 = &v10[*(sub_1005B981C(&qword_101A31290) + 36)];
  v33 = *&qword_101AD9670;
  *v32 = xmmword_101AD9660;
  *(v32 + 1) = v33;
  v32[32] = 0;
  *&v205 = sub_101297AC8();
  v34 = AnyView.init<A>(_:)();
  *&v10[*(v8 + 36)] = v34;
  __chkstk_darwin(v34);
  *(&v147 - 2) = v35;
  v36 = v35;
  v189 = v8;
  v37 = sub_1005B981C(&qword_101A31298);
  v38 = sub_1012A45FC();
  v39 = sub_1012A4798(&qword_101A312D0, &qword_101A31298, &unk_1014D9968, sub_1012A4814);
  View.contextMenu<A>(menuItems:)();
  sub_10000CAAC(v10, &qword_101A31238);
  v199 = v36;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v40 = v205;
  v201 = v205;
  v193 = type metadata accessor for CRLSceneRowItemUI_iv;
  v41 = v197;
  sub_1012A48F4(v36, v197, type metadata accessor for CRLSceneRowItemUI_iv);
  v195 = *(v196 + 80);
  v42 = (v195 + 16) & ~v195;
  v43 = swift_allocObject();
  v192 = type metadata accessor for CRLSceneRowItemUI_iv;
  sub_1012A495C(v41, v43 + v42, type metadata accessor for CRLSceneRowItemUI_iv);
  v44 = sub_1005B981C(&qword_101A286D0);
  *&v205 = v189;
  *(&v205 + 1) = v37;
  v206 = v38;
  v207 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_1012A49F0();
  v47 = v185;
  v48 = v44;
  v150 = v44;
  v149 = v46;
  View.onChange<A>(of:initial:_:)();

  (*(v190 + 8))(v12, v47);
  v49 = v199;
  v50 = (v199 + *(v187 + 40));
  v51 = *v50;
  v52 = v50[1];
  v53 = v50[2];
  v169 = v51;
  *&v205 = v51;
  *(&v205 + 1) = v52;
  v190 = v52;
  v189 = v53;
  v206 = v53;
  v188 = sub_1005B981C(&qword_101A31310);
  Binding.wrappedValue.getter();
  v54 = v197;
  sub_1012A48F4(v49, v197, v193);
  v196 = v42;
  v55 = swift_allocObject();
  sub_1012A495C(v54, v55 + v42, v192);
  v148 = sub_1005B981C(&qword_101A286C8);
  *&v205 = v47;
  *(&v205 + 1) = v48;
  v206 = OpaqueTypeConformance2;
  v207 = v46;
  v185 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = sub_10001A2F8(&qword_101A31318, &qword_101A286C8);
  v58 = v151;
  v59 = v153;
  v60 = v186;
  View.onChange<A>(of:initial:_:)();

  (*(v152 + 8))(v60, v59);
  v61 = v199;
  LOBYTE(v201) = sub_101296CC8() & 1;
  v62 = v197;
  v63 = v193;
  sub_1012A48F4(v61, v197, v193);
  v64 = v196;
  v65 = swift_allocObject();
  v66 = v192;
  sub_1012A495C(v62, v65 + v64, v192);
  *&v205 = v59;
  *(&v205 + 1) = v148;
  v206 = v56;
  v207 = v57;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v155;
  v69 = v156;
  View.onChange<A>(of:initial:_:)();

  (*(v154 + 8))(v58, v69);
  v70 = v199;
  LOBYTE(v201) = sub_101297034() & 1;
  v71 = v70;
  v72 = v197;
  sub_1012A48F4(v71, v197, v63);
  v73 = v196;
  v74 = swift_allocObject();
  v75 = v72;
  sub_1012A495C(v72, v74 + v73, v66);
  *&v205 = v69;
  *(&v205 + 1) = &type metadata for Bool;
  v206 = v67;
  v207 = &protocol witness table for Bool;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v158;
  v78 = v159;
  View.onChange<A>(of:initial:_:)();

  (*(v157 + 8))(v68, v78);
  v79 = v199;
  v80 = v199 + *(v187 + 44);
  v81 = *v80;
  v82 = *(v80 + 2);
  v205 = v81;
  v206 = v82;
  sub_1005B981C(&qword_101A31320);
  Binding.wrappedValue.getter();
  v83 = v201;
  sub_1012A48F4(v79, v72, v193);
  v84 = v196;
  v85 = swift_allocObject();
  sub_1012A495C(v75, v85 + v84, v192);
  *&v205 = v78;
  *(&v205 + 1) = &type metadata for Bool;
  v206 = v76;
  v207 = &protocol witness table for Bool;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v160;
  v88 = v164;
  v89 = v150;
  v90 = v149;
  View.onChange<A>(of:initial:_:)();

  (*(v161 + 8))(v77, v88);
  v91 = v168;
  static AccessibilityChildBehavior.combine.getter();
  *&v205 = v88;
  *(&v205 + 1) = v89;
  v206 = v86;
  v207 = v90;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = v162;
  v94 = v165;
  View.accessibilityElement(children:)();
  (*(v170 + 8))(v91, v171);
  (*(v163 + 8))(v87, v94);
  v193 = *v199;
  v95 = (v193 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name);
  v96 = *(v193 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name + 8);
  v203 = *(v193 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name);
  v204[0] = v96;

  v97 = 0;
  v204[1] = sub_10129DAB8();
  v204[2] = v98;
  v99 = _swiftEmptyArrayStorage;
LABEL_4:
  v100 = &v204[2 * v97];
  while (++v97 != 3)
  {
    v101 = v100 + 2;
    v102 = *v100;
    v100 += 2;
    if (v102)
    {
      v192 = v95;
      v103 = v92;
      v104 = v93;
      v105 = *(v101 - 3);

      v106 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_100024CBC(0, *(v99 + 2) + 1, 1, v99);
      }

      v108 = *(v99 + 2);
      v107 = *(v99 + 3);
      if (v108 >= v107 >> 1)
      {
        v99 = sub_100024CBC((v107 > 1), v108 + 1, 1, v99);
      }

      *(v99 + 2) = v108 + 1;
      v109 = &v99[16 * v108];
      *(v109 + 4) = v105;
      *(v109 + 5) = v102;
      v94 = v106;
      v93 = v104;
      v92 = v103;
      v95 = v192;
      goto LABEL_4;
    }
  }

  sub_1005B981C(&unk_1019F6C70);
  swift_arrayDestroy();
  *&v205 = v99;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v110 = BidirectionalCollection<>.joined(separator:)();
  v112 = v111;

  *&v205 = v110;
  *(&v205 + 1) = v112;
  v201 = v94;
  v202 = v92;
  swift_getOpaqueTypeConformance2();
  sub_100017CD8();
  v113 = v172;
  v114 = v167;
  View.accessibilityLabel<A>(_:)();

  (*(v166 + 8))(v93, v114);
  v116 = *v95;
  v115 = *(v95 + 1);
  v200[0] = *v95;
  v200[1] = v115;

  v117 = _swiftEmptyArrayStorage;
  if (v115)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = sub_100024CBC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v119 = *(v117 + 2);
    v118 = *(v117 + 3);
    if (v119 >= v118 >> 1)
    {
      v117 = sub_100024CBC((v118 > 1), v119 + 1, 1, v117);
    }

    *(v117 + 2) = v119 + 1;
    v120 = &v117[16 * v119];
    *(v120 + 4) = v116;
    *(v120 + 5) = v115;
  }

  sub_10000CAAC(v200, &unk_1019F6C70);
  v121 = v173;
  ModifiedContent<>.accessibilityInputLabels<A>(_:)();

  sub_10000CAAC(v113, &qword_101A31278);
  v122 = [objc_opt_self() mainBundle];
  v123 = String._bridgeToObjectiveC()();
  v124 = String._bridgeToObjectiveC()();
  v125 = [v122 localizedStringForKey:v123 value:v124 table:0];

  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = v127;

  *&v205 = v126;
  *(&v205 + 1) = v128;
  v129 = v174;
  ModifiedContent<>.accessibilityHint<A>(_:)();

  sub_10000CAAC(v121, &qword_101A31278);
  v130 = v177;
  static AccessibilityActionKind.default.getter();
  v131 = v199;
  v132 = v197;
  sub_1012A48F4(v199, v197, type metadata accessor for CRLSceneRowItemUI_iv);
  v133 = v196;
  v134 = swift_allocObject();
  sub_1012A495C(v132, v134 + v133, type metadata accessor for CRLSceneRowItemUI_iv);
  v135 = v175;
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v178 + 8))(v130, v179);
  sub_10000CAAC(v129, &qword_101A31278);
  v136 = v169;
  *&v205 = v169;
  *(&v205 + 1) = v190;
  v206 = v189;
  Binding.wrappedValue.getter();
  LOBYTE(v128) = sub_1007A0498(v193, v201);

  if (v128)
  {
    v137 = v180;
    static AccessibilityTraits.isSelected.getter();
    v138 = v183;
  }

  else
  {
    *&v205 = _swiftEmptyArrayStorage;
    sub_1012967DC(&qword_101A31328, &type metadata accessor for AccessibilityTraits);
    sub_1005B981C(&qword_101A31330);
    sub_10001A2F8(&qword_101A31338, &qword_101A31330);
    v137 = v180;
    v138 = v183;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  v139 = v182;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v140 = *(v139 + 8);
  v140(v137, v138);
  sub_10000CAAC(v135, &qword_101A31278);
  *&v205 = v136;
  *(&v205 + 1) = v190;
  v206 = v189;
  Binding.wrappedValue.getter();
  v141 = sub_1007A0498(v193, v201);

  if (v141)
  {
    *&v205 = _swiftEmptyArrayStorage;
    sub_1012967DC(&qword_101A31328, &type metadata accessor for AccessibilityTraits);
    sub_1005B981C(&qword_101A31330);
    sub_10001A2F8(&qword_101A31338, &qword_101A31330);
    v142 = v181;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v142 = v181;
    static AccessibilityTraits.isSelected.getter();
  }

  v143 = v176;
  v144 = v191;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v140(v142, v138);
  v145 = sub_10000CAAC(v144, &qword_101A31278);
  __chkstk_darwin(v145);
  *(&v147 - 2) = v131;
  sub_1005B981C(&qword_101A31340);
  sub_1012A4F78();
  sub_1012A52AC();
  View.accessibilityActions<A>(_:)();
  return sub_10000CAAC(v143, &qword_101A31278);
}

uint64_t sub_101299B80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v56 = sub_1005B981C(&qword_101A313F8);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v52 - v3;
  v4 = sub_1005B981C(&qword_101A31400);
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v53 = &v52 - v5;
  v6 = sub_1005B981C(&qword_101A31408);
  __chkstk_darwin(v6 - 8);
  v67 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v52 - v9;
  v10 = type metadata accessor for DynamicTypeSize();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v60);
  v14 = sub_1005B981C(&qword_101A31410);
  v62 = *(v14 - 8);
  v63 = v14;
  __chkstk_darwin(v14);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v69 = &v52 - v17;
  v18 = sub_10129A48C();
  v20 = v19;
  sub_1012A48F4(a1, &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLSceneRowItemUI_iv);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  sub_1012A495C(&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for CRLSceneRowItemUI_iv);
  v72 = v18;
  LOBYTE(v73) = v20 & 1;
  v74 = 0;
  v75 = 0;
  v76 = sub_1012A54AC;
  v77 = v22;
  v78 = 0;
  sub_1012A48F4(a1, &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLSceneRowItemUI_iv);
  v23 = swift_allocObject();
  sub_1012A495C(&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21, type metadata accessor for CRLSceneRowItemUI_iv);
  sub_1005B981C(&qword_101A31418);
  sub_1012A5558();
  View.onTapGesture(count:perform:)();

  v70 = a1;
  if (swift_unknownObjectWeakLoadStrong() && (v24 = v57, sub_101296AC0(v57), sub_1005B981C(&qword_101A287F8), v25 = v58, v26 = *(v58 + 72), v27 = (*(v58 + 80) + 32) & ~*(v58 + 80), v28 = swift_allocObject(), *(v28 + 16) = xmmword_10146C4D0, v29 = v28 + v27, v30 = *(v25 + 104), v31 = v59, v30(v29, enum case for DynamicTypeSize.accessibility3(_:), v59), v30(v29 + v26, enum case for DynamicTypeSize.accessibility4(_:), v31), v30(v29 + 2 * v26, enum case for DynamicTypeSize.accessibility5(_:), v31), LOBYTE(v26) = sub_1012CDFB0(v24, v28), swift_unknownObjectRelease(), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), (*(v25 + 8))(v24, v31), (v26 & 1) != 0))
  {
    LODWORD(v59) = 0;
    LODWORD(v58) = 1;
  }

  else
  {
    LODWORD(v58) = 0;
    LODWORD(v59) = 1;
  }

  v32 = v70 + *(v60 + 56);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v72) = v33;
  v73 = v34;
  sub_1005B981C(&qword_101A1CF70);
  v35 = State.wrappedValue.getter();
  if (v71 == 1)
  {
    __chkstk_darwin(v35);
    *(&v52 - 2) = v70;
    sub_1005B981C(&qword_101A31450);
    sub_1005B981C(&qword_101A31458);
    sub_1012A5644();
    sub_10001A2F8(&qword_101A31478, &qword_101A31458);
    v36 = v54;
    Menu.init(content:label:)();
    sub_10001A2F8(&qword_101A31480, &qword_101A313F8);
    v37 = v53;
    v38 = v56;
    View.accessibilityHidden(_:)();
    (*(v55 + 8))(v36, v38);
    v39 = v66;
    sub_10003DFF8(v37, v66, &qword_101A31400);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v66;
  }

  (*(v64 + 56))(v39, v40, 1, v65);
  v42 = v61;
  v41 = v62;
  v43 = *(v62 + 16);
  v44 = v69;
  v45 = v63;
  v43(v61, v69, v63);
  v46 = v67;
  sub_10000BE14(v39, v67, &qword_101A31408);
  v47 = v68;
  v43(v68, v42, v45);
  v48 = sub_1005B981C(&qword_101A31448);
  v49 = &v47[*(v48 + 48)];
  *v49 = 0;
  v49[8] = v58;
  v49[9] = v59;
  sub_10000BE14(v46, &v47[*(v48 + 64)], &qword_101A31408);
  sub_10000CAAC(v39, &qword_101A31408);
  v50 = *(v41 + 8);
  v50(v44, v45);
  sub_10000CAAC(v46, &qword_101A31408);
  return (v50)(v42, v45);
}

uint64_t sub_10129A48C()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong() && (sub_101296AC0(v3), sub_1005B981C(&qword_101A287F8), v4 = *(v1 + 72), v5 = (*(v1 + 80) + 32) & ~*(v1 + 80), v6 = swift_allocObject(), *(v6 + 16) = xmmword_10146C4D0, v7 = v6 + v5, v8 = *(v1 + 104), v8(v7, enum case for DynamicTypeSize.accessibility3(_:), v0), v8(v7 + v4, enum case for DynamicTypeSize.accessibility4(_:), v0), v8(v7 + 2 * v4, enum case for DynamicTypeSize.accessibility5(_:), v0), LOBYTE(v4) = sub_1012CDFB0(v3, v6), swift_unknownObjectRelease(), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    return static HorizontalAlignment.leading.getter();
  }

  else
  {
    return static VerticalAlignment.center.getter();
  }
}

uint64_t sub_10129A684@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&qword_101A314A8);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_1005B981C(&qword_101A314B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  sub_10129A8B8(&v20 - v13);
  sub_10129AD9C(v8);
  v15 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v16 = &v8[*(v3 + 44)];
  *v16 = v15;
  v16[1] = sub_10129BD68;
  v16[2] = 0;
  sub_10000BE14(v14, v11, &qword_101A314B0);
  sub_10000BE14(v8, v5, &qword_101A314A8);
  sub_10000BE14(v11, a1, &qword_101A314B0);
  v17 = sub_1005B981C(&qword_101A314B8);
  sub_10000BE14(v5, a1 + *(v17 + 48), &qword_101A314A8);
  v18 = a1 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_10000CAAC(v8, &qword_101A314A8);
  sub_10000CAAC(v14, &qword_101A314B0);
  sub_10000CAAC(v5, &qword_101A314A8);
  return sub_10000CAAC(v11, &qword_101A314B0);
}

uint64_t sub_10129A8B8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1005B981C(&qword_101A31520);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = (&v34 - v6);
  v8 = sub_1005B981C(&qword_101A31528);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  __chkstk_darwin(v8);
  v43 = &v34 - v10;
  *v7 = static Alignment.center.getter();
  v7[1] = v11;
  v12 = sub_1005B981C(&qword_101A31530);
  sub_10129F248(v1, (v7 + *(v12 + 44)));
  v13 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v14 = v7 + *(v5 + 36);
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  v42 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CRLSceneRowItemUI_iv;
  sub_1012A48F4(v1, v19, type metadata accessor for CRLSceneRowItemUI_iv);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v37 = v4;
  v21 = swift_allocObject();
  v35 = type metadata accessor for CRLSceneRowItemUI_iv;
  sub_1012A495C(v19, v21 + v20, type metadata accessor for CRLSceneRowItemUI_iv);
  v22 = sub_1012A5C88();
  v23 = v38;
  View.onChange<A>(of:initial:_:)();

  sub_10000CAAC(v7, &qword_101A31520);
  v24 = (*v42 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect);
  v25 = v24[1];
  v48 = *v24;
  v49 = v25;
  sub_1012A48F4(v42, v19, type metadata accessor for CRLSceneRowItemUI_iv);
  v26 = swift_allocObject();
  v27 = v35;
  sub_1012A495C(v19, v26 + v20, v35);
  type metadata accessor for CGRect(0);
  v44 = v23;
  v45 = &type metadata for Bool;
  v46 = v22;
  v47 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_1012967DC(&qword_101A31550, type metadata accessor for CGRect);
  v28 = v41;
  v29 = v39;
  v30 = v43;
  View.onChange<A>(of:initial:_:)();

  (*(v40 + 8))(v30, v29);
  sub_1012A48F4(v42, v19, v36);
  v31 = swift_allocObject();
  sub_1012A495C(v19, v31 + v20, v27);
  v32 = (v28 + *(sub_1005B981C(&qword_101A314B0) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v32 = &unk_1014D9C70;
  v32[1] = v31;
  return result;
}

uint64_t sub_10129AD9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v95 = type metadata accessor for DynamicTypeSize();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  KeyPath = (v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1005B981C(&qword_101A314C0);
  v112 = *(v4 - 8);
  __chkstk_darwin(v4);
  v110 = v92 - v5;
  v6 = sub_1005B981C(&qword_101A314C8);
  __chkstk_darwin(v6);
  v8 = v92 - v7;
  v113 = type metadata accessor for WritingToolsBehavior();
  v111 = *(v113 - 1);
  __chkstk_darwin(v113);
  v107 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for SubmitLabel();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v115 = *(v11 - 1);
  __chkstk_darwin(v11);
  v123 = v12;
  v13 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1005B981C(&qword_101A0A908);
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v15 = v92 - v14;
  v100 = sub_1005B981C(&qword_101A314D0);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = v92 - v16;
  v17 = sub_1005B981C(&qword_101A314D8);
  __chkstk_darwin(v17);
  v104 = v92 - v18;
  v19 = sub_1005B981C(&qword_101A314E0);
  v106 = *(v19 - 8);
  __chkstk_darwin(v19);
  v105 = v92 - v20;
  v119 = sub_1005B981C(&qword_101A314E8);
  v109 = *(v119 - 8);
  __chkstk_darwin(v119);
  v108 = v92 - v21;
  v22 = &v2[v11[15]];
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v126) = v23;
  v127 = v24;
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.getter();
  v121 = v8;
  v122 = v4;
  v120 = v6;
  v117 = v17;
  v118 = v19;
  if (v124 == 1)
  {
    v110 = LocalizedStringKey.init(stringLiteral:)();
    v95 = v25;
    v92[3] = v26;
    v94 = v27;
    v28 = v11[13];
    v93 = v11;
    v29 = &v2[v28];
    v30 = *v29;
    v31 = *(v29 + 2);
    v124 = v30;
    v125 = v31;
    sub_1005B981C(&qword_101A0A910);
    State.projectedValue.getter();
    KeyPath = type metadata accessor for CRLSceneRowItemUI_iv;
    sub_1012A48F4(v2, v13, type metadata accessor for CRLSceneRowItemUI_iv);
    v115 = *(v115 + 80);
    v32 = (v115 + 16) & ~v115;
    v33 = swift_allocObject();
    v112 = type metadata accessor for CRLSceneRowItemUI_iv;
    sub_1012A495C(v13, v33 + v32, type metadata accessor for CRLSceneRowItemUI_iv);
    TextField<>.init(_:text:onEditingChanged:onCommit:)();
    v34 = &v2[v11[16]];
    v35 = v2;
    v36 = *v34;
    v37 = *(v34 + 1);
    LOBYTE(v34) = v34[16];
    LOBYTE(v126) = v36;
    v127 = v37;
    LOBYTE(v128) = v34;
    sub_1005B981C(&qword_101A31518);
    FocusState.projectedValue.getter();
    v38 = sub_10001A2F8(&qword_101A0A918, &qword_101A0A908);
    v39 = v97;
    v40 = v98;
    View.focused(_:)();

    (*(v96 + 8))(v15, v40);
    v41 = v101;
    static SubmitLabel.done.getter();
    v126 = v40;
    v127 = v38;
    swift_getOpaqueTypeConformance2();
    v42 = v104;
    v43 = v100;
    View.submitLabel(_:)();
    (*(v102 + 8))(v41, v103);
    (*(v99 + 8))(v39, v43);
    v44 = KeyPath;
    sub_1012A48F4(v35, v13, KeyPath);
    v45 = swift_allocObject();
    v46 = v112;
    sub_1012A495C(v13, v45 + v32, v112);
    v47 = (v42 + *(sub_1005B981C(&qword_101A31510) + 36));
    *v47 = sub_1012A5B38;
    v47[1] = v45;
    v47[2] = 0;
    v47[3] = 0;
    sub_1012A48F4(v35, v13, v44);
    v48 = swift_allocObject();
    sub_1012A495C(v13, v48 + v32, v46);
    v49 = v117;
    v50 = (v42 + *(v117 + 36));
    *v50 = 0;
    v50[1] = 0;
    v50[2] = sub_1012A7E60;
    v50[3] = v48;
    sub_1005B981C(&qword_101A166A0);
    AccessibilityFocusState.projectedValue.getter();
    v51 = sub_1012A5954();
    v52 = v105;
    View.accessibilityFocused(_:)();

    sub_10000CAAC(v42, &qword_101A314D8);
    v53 = v107;
    static WritingToolsBehavior.disabled.getter();
    v126 = v49;
    v127 = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v108;
    v56 = v118;
    View.writingToolsBehavior(_:)();
    (*(v111 + 8))(v53, v113);
    v57 = v56;
    (*(v106 + 8))(v52, v56);
    v58 = v109;
    v59 = v119;
    (*(v109 + 16))(v121, v55, v119);
    swift_storeEnumTagMultiPayload();
    v126 = v57;
    v127 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v60 = sub_1005C4E5C(&qword_101A314F0);
    v61 = sub_1012A589C();
    v126 = v60;
    v127 = v61;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v58 + 8))(v55, v59);
  }

  else
  {
    v113 = v13;
    v63 = (*v2 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name);
    v64 = v63[1];
    v126 = *v63;
    v127 = v64;
    sub_100017CD8();

    v111 = Text.init<A>(_:)();
    v65 = v2;
    v109 = v66;
    LODWORD(v68) = v67;
    v70 = v69;
    if (!swift_unknownObjectWeakLoadStrong() || (sub_101296AC0(KeyPath), sub_1005B981C(&qword_101A287F8), LODWORD(v106) = v68, v68 = v94, v71 = *(v94 + 72), v72 = (*(v94 + 80) + 32) & ~*(v94 + 80), v73 = swift_allocObject(), *(v73 + 16) = xmmword_10146C4D0, v74 = v73 + v72, v107 = v2, v75 = *(v68 + 104), v108 = v70, v76 = v95, v75(v74, enum case for DynamicTypeSize.accessibility3(_:), v95), v75(v74 + v71, enum case for DynamicTypeSize.accessibility4(_:), v76), v75(v74 + 2 * v71, enum case for DynamicTypeSize.accessibility5(_:), v76), v65 = v107, v77 = KeyPath, LOBYTE(v71) = sub_1012CDFB0(KeyPath, v73), swift_unknownObjectRelease(), swift_setDeallocating(), v78 = 3, swift_arrayDestroy(), swift_deallocClassInstance(), v79 = v77, v70 = v108, (*(v68 + 8))(v79, v76), LOBYTE(v68) = v106, (v71 & 1) == 0))
    {
      v78 = 1;
    }

    KeyPath = swift_getKeyPath();
    v80 = v111;
    v81 = v109;
    v126 = v111;
    v127 = v109;
    LOBYTE(v128) = v68 & 1;
    v129 = v70;
    v130 = KeyPath;
    v131 = v78;
    v132 = 0;
    v82 = v113;
    sub_1012A48F4(v65, v113, type metadata accessor for CRLSceneRowItemUI_iv);
    v83 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v84 = swift_allocObject();
    sub_1012A495C(v82, v84 + v83, type metadata accessor for CRLSceneRowItemUI_iv);
    v85 = sub_1005B981C(&qword_101A314F0);
    v86 = sub_1012A589C();
    v87 = v110;
    View.onTapGesture(count:perform:)();

    sub_10007441C(v80, v81, v68 & 1);

    v88 = v112;
    v89 = v122;
    (*(v112 + 2))(v121, v87, v122);
    swift_storeEnumTagMultiPayload();
    v90 = sub_1012A5954();
    v126 = v117;
    v127 = v90;
    v91 = swift_getOpaqueTypeConformance2();
    v126 = v118;
    v127 = v91;
    swift_getOpaqueTypeConformance2();
    v126 = v85;
    v127 = v86;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v88 + 1))(v87, v89);
  }
}

double sub_10129BD68()
{
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  return v0 + 1.0;
}

uint64_t sub_10129BD98(id *a1)
{
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_1005B981C(&qword_101A31320);
  Binding.wrappedValue.getter();
  if (v7)
  {

LABEL_4:
    sub_1005B981C(&qword_101A1CF70);
    State.wrappedValue.setter();
    v2 = *a1;
    return Binding.wrappedValue.setter();
  }

  if (sub_101296CC8())
  {
    goto LABEL_4;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10104AB60(*a1);
    swift_unknownObjectRelease();
  }

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  v5 = *a1;
  *(inited + 32) = *a1;
  v6 = v5;
  sub_1005C1D24(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1005B981C(&qword_101A31310);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10129BF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v133 = sub_1005B981C(&qword_101A31300);
  __chkstk_darwin(v133);
  v120 = v113 - v3;
  v130 = sub_1005B981C(&qword_101A313B8);
  __chkstk_darwin(v130);
  v132 = v113 - v4;
  v131 = sub_1005B981C(&qword_101A312F0);
  __chkstk_darwin(v131);
  v125 = v113 - v5;
  v6 = sub_1005B981C(&qword_101A313C0);
  __chkstk_darwin(v6 - 8);
  v122 = v113 - v7;
  v8 = sub_1005B981C(&qword_101A313C8);
  __chkstk_darwin(v8 - 8);
  v137 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v141 = v113 - v11;
  v124 = type metadata accessor for Divider();
  v142 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = v113 - v14;
  __chkstk_darwin(v15);
  v136 = v113 - v16;
  __chkstk_darwin(v17);
  v138 = v113 - v18;
  __chkstk_darwin(v19);
  v139 = v113 - v20;
  __chkstk_darwin(v21);
  v140 = v113 - v22;
  v23 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v24 = v23 - 8;
  v128 = *(v23 - 8);
  v25 = *(v128 + 8);
  __chkstk_darwin(v23);
  v127 = (v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_1005B981C(&qword_101A313D0);
  v143 = *(v134 - 8);
  __chkstk_darwin(v134);
  v129 = v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v121 = v113 - v28;
  __chkstk_darwin(v29);
  v31 = v113 - v30;
  __chkstk_darwin(v32);
  v34 = v113 - v33;
  __chkstk_darwin(v35);
  v37 = v113 - v36;
  __chkstk_darwin(v38);
  v40 = v113 - v39;
  __chkstk_darwin(v41);
  v43 = v113 - v42;
  __chkstk_darwin(v44);
  v46 = v113 - v45;
  v47 = sub_1005B981C(&qword_101A312E0);
  v144 = *(v47 - 8);
  v145 = v47;
  __chkstk_darwin(v47);
  v49 = v113 - v48;
  v50 = a1 + *(v24 + 52);
  v51 = *v50;
  v52 = *(v50 + 16);
  v148 = v51;
  v149 = v52;
  sub_1005B981C(&qword_101A31320);
  Binding.wrappedValue.getter();
  if (v147)
  {

    v53 = 1;
    v54 = v146;
  }

  else
  {
    v115 = v31;
    v116 = v46;
    v117 = v34;
    v118 = v37;
    v119 = v40;
    v114 = v49;
    v126 = v43;
    v55 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v56 = v148;
    v57 = v127;
    sub_1012A48F4(a1, v127, type metadata accessor for CRLSceneRowItemUI_iv);
    v58 = (*(v128 + 80) + 16) & ~*(v128 + 80);
    if (v56)
    {
      v59 = swift_allocObject();
      sub_1012A495C(v57, v59 + v58, type metadata accessor for CRLSceneRowItemUI_iv);
      v60 = v57;
      sub_1005B981C(&qword_101A313D8);
      v142 = &protocol conformance descriptor for TupleView<A>;
      sub_10001A2F8(&qword_101A313E0, &qword_101A313D8);
      v61 = v126;
      Button.init(action:label:)();
      sub_1012A48F4(a1, v60, type metadata accessor for CRLSceneRowItemUI_iv);
      v62 = swift_allocObject();
      sub_1012A495C(v60, v62 + v58, type metadata accessor for CRLSceneRowItemUI_iv);
      v63 = v119;
      Button.init(action:label:)();
      v64 = v143;
      v65 = *(v143 + 16);
      v66 = v118;
      v67 = v134;
      v65(v118, v61, v134);
      v68 = v117;
      v65(v117, v63, v67);
      v69 = v120;
      v65(v120, v66, v67);
      v70 = sub_1005B981C(&qword_101A313F0);
      v65((v69 + *(v70 + 48)), v68, v67);
      v71 = *(v64 + 8);
      v71(v68, v67);
      v71(v66, v67);
      sub_10000BE14(v69, v132, &qword_101A31300);
      swift_storeEnumTagMultiPayload();
      sub_10001A2F8(&qword_101A312E8, &qword_101A312F0);
      sub_10001A2F8(&qword_101A312F8, &qword_101A31300);
      v72 = v114;
      _ConditionalContent<>.init(storage:)();
      sub_10000CAAC(v69, &qword_101A31300);
      v71(v63, v67);
      v71(v126, v67);
      v73 = v72;
    }

    else
    {
      v128 = *(v128 + 80);
      v74 = swift_allocObject();
      sub_1012A495C(v57, v74 + v58, type metadata accessor for CRLSceneRowItemUI_iv);
      v75 = sub_1005B981C(&qword_101A313D8);
      v76 = sub_10001A2F8(&qword_101A313E0, &qword_101A313D8);
      Button.init(action:label:)();
      Divider.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v77 = v148;
      v78 = v126;
      v120 = v76;
      v113[1] = v75;
      if (v148 && (v79 = v126, v80 = *v55, type metadata accessor for CRLSceneInfo(), v81 = v80, v82 = static NSObject.== infix(_:_:)(), v81, v78 = v79, v77, (v82 & 1) != 0))
      {
        v83 = 1;
        v84 = v143;
        v85 = v55;
        v86 = v134;
        v87 = v141;
      }

      else
      {
        v85 = v55;
        sub_1012A48F4(v55, v57, type metadata accessor for CRLSceneRowItemUI_iv);
        v88 = swift_allocObject();
        sub_1012A495C(v57, v88 + v58, type metadata accessor for CRLSceneRowItemUI_iv);
        Button.init(action:label:)();
        v84 = v143;
        v87 = v141;
        v86 = v134;
        (*(v143 + 32))(v141, v78, v134);
        v83 = 0;
      }

      (*(v84 + 56))(v87, v83, 1, v86);
      Divider.init()();
      v128 = type metadata accessor for CRLSceneRowItemUI_iv;
      sub_1012A48F4(v85, v57, type metadata accessor for CRLSceneRowItemUI_iv);
      v89 = swift_allocObject();
      v127 = type metadata accessor for CRLSceneRowItemUI_iv;
      sub_1012A495C(v57, v89 + v58, type metadata accessor for CRLSceneRowItemUI_iv);
      Button.init(action:label:)();
      v90 = v85;
      sub_1012A48F4(v85, v57, type metadata accessor for CRLSceneRowItemUI_iv);
      v91 = swift_allocObject();
      v92 = v127;
      sub_1012A495C(v57, v91 + v58, v127);
      Button.init(action:label:)();
      Divider.init()();
      v93 = v122;
      static ButtonRole.destructive.getter();
      v94 = type metadata accessor for ButtonRole();
      (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
      sub_1012A48F4(v90, v57, v128);
      v95 = swift_allocObject();
      sub_1012A495C(v57, v95 + v58, v92);
      Button.init(role:action:label:)();
      v96 = *(v143 + 16);
      v97 = v117;
      v98 = v134;
      v96(v117, v116, v134);
      v99 = v142[2];
      v100 = v124;
      v99(v136, v140, v124);
      sub_10000BE14(v141, v137, &qword_101A313C8);
      v99(v135, v139, v100);
      v96(v115, v126, v98);
      v101 = v121;
      v96(v121, v119, v98);
      v102 = v123;
      v99(v123, v138, v100);
      v96(v129, v118, v98);
      v103 = v125;
      v96(v125, v97, v98);
      v104 = sub_1005B981C(&qword_101A313E8);
      v99((v103 + v104[12]), v136, v100);
      sub_10000BE14(v137, v103 + v104[16], &qword_101A313C8);
      v99((v103 + v104[20]), v135, v100);
      v96((v103 + v104[24]), v115, v98);
      v96((v103 + v104[28]), v101, v98);
      v99((v103 + v104[32]), v102, v100);
      v105 = v103 + v104[36];
      v106 = v129;
      v107 = v98;
      v96(v105, v129, v98);
      v108 = *(v143 + 8);
      v108(v106, v98);
      v109 = (v142 + 1);
      v110 = v142[1];
      v110(v102, v100);
      v111 = v110;
      v142 = v109;
      v108(v101, v107);
      v108(v115, v107);
      v110(v135, v100);
      sub_10000CAAC(v137, &qword_101A313C8);
      v110(v136, v100);
      v108(v117, v107);
      sub_10000BE14(v103, v132, &qword_101A312F0);
      swift_storeEnumTagMultiPayload();
      sub_10001A2F8(&qword_101A312E8, &qword_101A312F0);
      sub_10001A2F8(&qword_101A312F8, &qword_101A31300);
      v73 = v114;
      _ConditionalContent<>.init(storage:)();
      sub_10000CAAC(v103, &qword_101A312F0);
      v108(v118, v107);
      v111(v138, v100);
      v108(v119, v107);
      v108(v126, v107);
      v111(v139, v100);
      sub_10000CAAC(v141, &qword_101A313C8);
      v111(v140, v100);
      v108(v116, v107);
    }

    v54 = v146;
    sub_10003DFF8(v73, v146, &qword_101A312E0);
    v53 = 0;
  }

  return (*(v144 + 56))(v54, v53, 1, v145);
}

void sub_10129D2E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
    sub_1005B981C(&unk_1019F4D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101465920;
    *(inited + 32) = v2;
    v1 = v2;
    sub_1005C1D24(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for CRLSceneRowItemUI_iv(0);

    sub_1005B981C(&qword_101A31310);
    Binding.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for CRLSceneRowItemUI_iv(0);

    sub_1005B981C(&qword_101A31310);
    Binding.wrappedValue.getter();

    Binding.wrappedValue.setter();
  }
}

void sub_10129D4F0()
{
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  LOBYTE(v4) = 0;
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.setter();
  sub_1005B981C(&qword_101A31320);
  Binding.wrappedValue.getter();
  if (v4)
  {
    v1 = *v0;
    type metadata accessor for CRLSceneInfo();
    v2 = v1;
    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {
      Binding.wrappedValue.setter();
    }
  }
}

uint64_t sub_10129D610(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_100006370(0, &qword_1019F2D90);
  v11 = static OS_dispatch_queue.main.getter();
  sub_1012A48F4(a1, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLSceneRowItemUI_iv);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_1012A495C(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CRLSceneRowItemUI_iv);
  aBlock[4] = sub_1012A5440;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018BAA88;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1012967DC(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t sub_10129D9B8()
{
  sub_101297034();
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_1005B981C(&qword_101A1CF70);
  return State.wrappedValue.setter();
}

void sub_10129DA38()
{
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_1005B981C(&qword_101A31320);
  Binding.wrappedValue.getter();
  if (v0)
  {
  }

  else
  {
    sub_10129D4F0();
  }
}

uint64_t sub_10129DAB8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v6 = v0 + v5[18];
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100FBEBD4(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v18)
    {
      goto LABEL_9;
    }
  }

  v9 = v0 + v5[19];
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100FBEBD4(v10, 0);
    (*(v2 + 8))(v4, v1);
    if (v18 != 1)
    {
      return 0;
    }
  }

LABEL_9:
  v18 = *(v0 + v5[12]);
  sub_1005B981C(&qword_101A313B0);
  State.wrappedValue.getter();
  v12 = v17;
  if (v17)
  {
    v13 = [v17 crlaxDescription];

    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v14;
    }
  }

  return 0;
}

uint64_t sub_10129DD58(char **a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10104AB60(*a1);
    swift_unknownObjectRelease();
  }

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  v3 = *a1;
  *(inited + 32) = *a1;
  v4 = v3;
  sub_1005C1D24(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_1005B981C(&qword_101A31310);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10129DE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_1005B981C(&qword_101A31370);
  __chkstk_darwin(v3);
  v89 = &v85 - v4;
  v5 = sub_1005B981C(&qword_101A31378);
  __chkstk_darwin(v5 - 8);
  v88 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v85 - v8;
  __chkstk_darwin(v9);
  v11 = (&v85 - v10);
  __chkstk_darwin(v12);
  v101 = &v85 - v13;
  v95 = sub_1005B981C(&qword_101A31380);
  __chkstk_darwin(v95);
  v97 = &v85 - v14;
  v96 = sub_1005B981C(&qword_101A31360);
  __chkstk_darwin(v96);
  v87 = &v85 - v15;
  v16 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = sub_1005B981C(&qword_101A31388);
  v103 = *(v19 - 8);
  v104 = v19;
  __chkstk_darwin(v19);
  v92 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v93 = &v85 - v22;
  __chkstk_darwin(v23);
  v102 = &v85 - v24;
  __chkstk_darwin(v25);
  v105 = &v85 - v26;
  v27 = a1;
  v28 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v28;
  static Published.subscript.getter();

  v98 = v3;
  v100 = a1;
  if (v107 == 1)
  {
    v94 = type metadata accessor for CRLSceneRowItemUI_iv;
    sub_1012A48F4(a1, &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLSceneRowItemUI_iv);
    v29 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v30 = swift_allocObject();
    sub_1012A495C(&v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for CRLSceneRowItemUI_iv);
    sub_1005B981C(&qword_101A31390);
    v101 = &protocol conformance descriptor for TupleView<A>;
    sub_10001A2F8(&qword_101A31398, &qword_101A31390);
    v31 = v105;
    Button.init(action:label:)();
    sub_1012A48F4(v100, &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v94);
    v32 = swift_allocObject();
    sub_1012A495C(&v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v29, type metadata accessor for CRLSceneRowItemUI_iv);
    v33 = v102;
    Button.init(action:label:)();
    v35 = v103;
    v34 = v104;
    v36 = *(v103 + 16);
    v37 = v93;
    v36(v93, v31, v104);
    v38 = v92;
    v36(v92, v33, v34);
    v39 = v87;
    v36(v87, v37, v34);
    v40 = sub_1005B981C(&qword_101A313A8);
    v36(&v39[*(v40 + 48)], v38, v34);
    v41 = *(v35 + 8);
    v41(v38, v34);
    v41(v37, v34);
    sub_10000BE14(v39, v97, &qword_101A31360);
    swift_storeEnumTagMultiPayload();
    sub_10001A2F8(&qword_101A31358, &qword_101A31360);
    sub_10001A2F8(&qword_101A31368, &qword_101A31370);
    _ConditionalContent<>.init(storage:)();
    sub_10000CAAC(v39, &qword_101A31360);
    v41(v33, v34);
    return (v41)(v105, v34);
  }

  else
  {
    v85 = v17;
    v90 = v18;
    v87 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v94 = v11;
    v43 = v105;
    v44 = a1 + *(v16 + 44);
    v45 = *v44;
    v46 = *(v44 + 16);
    v107 = v45;
    v108 = v46;
    sub_1005B981C(&qword_101A31320);
    Binding.wrappedValue.getter();
    v47 = v106;
    v48 = *v27;
    if (v106 && (type metadata accessor for CRLSceneInfo(), v49 = v48, v50 = static NSObject.== infix(_:_:)(), v49, v47, (v50 & 1) != 0))
    {
      v51 = 1;
      v53 = v103;
      v52 = v104;
      v54 = v43;
      v55 = v101;
    }

    else
    {
      v56 = v27;
      v57 = v87;
      sub_1012A48F4(v56, v87, type metadata accessor for CRLSceneRowItemUI_iv);
      v58 = (*(v85 + 80) + 16) & ~*(v85 + 80);
      v59 = swift_allocObject();
      sub_1012A495C(v57, v59 + v58, type metadata accessor for CRLSceneRowItemUI_iv);
      sub_1005B981C(&qword_101A31390);
      sub_10001A2F8(&qword_101A31398, &qword_101A31390);
      v54 = v43;
      Button.init(action:label:)();
      v53 = v103;
      v52 = v104;
      v55 = v101;
      (*(v103 + 32))(v101, v43, v104);
      v51 = 0;
    }

    v60 = *(v53 + 56);
    v60(v55, v51, 1, v52);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v61 = v107;
    if (v107 && (type metadata accessor for CRLSceneInfo(), v62 = v48, v63 = static NSObject.== infix(_:_:)(), v62, v61, (v63 & 1) != 0))
    {
      v64 = 1;
      v65 = v94;
      v66 = v87;
      v67 = v85;
    }

    else
    {
      v66 = v87;
      sub_1012A48F4(v100, v87, type metadata accessor for CRLSceneRowItemUI_iv);
      v67 = v85;
      v68 = (*(v85 + 80) + 16) & ~*(v85 + 80);
      v69 = swift_allocObject();
      sub_1012A495C(v66, v69 + v68, type metadata accessor for CRLSceneRowItemUI_iv);
      v86 = v60;
      sub_1005B981C(&qword_101A31390);
      v52 = v104;
      sub_10001A2F8(&qword_101A31398, &qword_101A31390);
      Button.init(action:label:)();
      v65 = v94;
      v60 = v86;
      (*(v103 + 32))(v94, v54, v52);
      v64 = 0;
    }

    v60(v65, v64, 1, v52);
    v70 = v100;
    sub_1012A48F4(v100, v66, type metadata accessor for CRLSceneRowItemUI_iv);
    v71 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v72 = swift_allocObject();
    sub_1012A495C(v66, v72 + v71, type metadata accessor for CRLSceneRowItemUI_iv);
    sub_1005B981C(&qword_101A31390);
    v87 = &protocol conformance descriptor for TupleView<A>;
    sub_10001A2F8(&qword_101A31398, &qword_101A31390);
    Button.init(action:label:)();
    sub_1012A48F4(v70, v66, type metadata accessor for CRLSceneRowItemUI_iv);
    v73 = swift_allocObject();
    sub_1012A495C(v66, v73 + v71, type metadata accessor for CRLSceneRowItemUI_iv);
    v74 = v102;
    Button.init(action:label:)();
    v75 = v91;
    sub_10000BE14(v101, v91, &qword_101A31378);
    v76 = v88;
    sub_10000BE14(v94, v88, &qword_101A31378);
    v77 = v103;
    v78 = v104;
    v79 = *(v103 + 16);
    v80 = v93;
    v79(v93, v105, v104);
    v81 = v92;
    v79(v92, v74, v78);
    v82 = v89;
    sub_10000BE14(v75, v89, &qword_101A31378);
    v83 = sub_1005B981C(&qword_101A313A0);
    sub_10000BE14(v76, v82 + v83[12], &qword_101A31378);
    v79((v82 + v83[16]), v80, v78);
    v79((v82 + v83[20]), v81, v78);
    v84 = *(v77 + 8);
    v84(v81, v78);
    v84(v80, v78);
    sub_10000CAAC(v76, &qword_101A31378);
    sub_10000CAAC(v91, &qword_101A31378);
    sub_10000BE14(v82, v97, &qword_101A31370);
    swift_storeEnumTagMultiPayload();
    sub_10001A2F8(&qword_101A31358, &qword_101A31360);
    sub_10001A2F8(&qword_101A31368, &qword_101A31370);
    _ConditionalContent<>.init(storage:)();
    sub_10000CAAC(v82, &qword_101A31370);
    v84(v102, v78);
    v84(v105, v78);
    sub_10000CAAC(v94, &qword_101A31378);
    return sub_10000CAAC(v101, &qword_101A31378);
  }
}

uint64_t sub_10129ED1C(id *a1)
{
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.setter();
  v2 = *a1;
  sub_1005B981C(&qword_101A31320);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10129EDE4@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  if (qword_1019F1C80 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_10081EF10(v3, v5, v7);

  sub_10007441C(v3, v5, v7);
}

uint64_t sub_10129EEF8@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  if (qword_1019F1C88 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_10081EF10(v3, v5, v7);

  sub_10007441C(v3, v5, v7);
}

uint64_t sub_10129F014@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  if (qword_1019F1CA0 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_10081EF10(v3, v5, v7);

  sub_10007441C(v3, v5, v7);
}

uint64_t sub_10129F12C@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  if (qword_1019F1CB0 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_10081EF10(v3, v5, v7);

  sub_10007441C(v3, v5, v7);
}

uint64_t sub_10129F248@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v104 = a2;
  v3 = type metadata accessor for SeparatorShapeStyle();
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin(v3);
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v90);
  v91 = (&v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Image.ResizingMode();
  v88 = *(v6 - 8);
  v89 = v6;
  __chkstk_darwin(v6);
  v87 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1005B981C(&qword_101A31558);
  __chkstk_darwin(v103);
  v95 = &v82 - v8;
  v97 = sub_1005B981C(&qword_101A31560);
  __chkstk_darwin(v97);
  v100 = &v82 - v9;
  v85 = sub_1005B981C(&qword_101A31568);
  __chkstk_darwin(v85);
  v84 = &v82 - v10;
  v98 = sub_1005B981C(&qword_101A31570);
  __chkstk_darwin(v98);
  v86 = &v82 - v11;
  v12 = sub_1005B981C(&qword_101A31578);
  __chkstk_darwin(v12 - 8);
  v102 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v101 = &v82 - v15;
  v16 = type metadata accessor for DynamicTypeSize();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = static Color.clear.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  v105 = v19;
  if (!Strong || (v96 = Strong, sub_101296AC0(v19), sub_1005B981C(&qword_101A287F8), v21 = *(v17 + 72), v22 = (*(v17 + 80) + 32) & ~*(v17 + 80), v23 = swift_allocObject(), *(v23 + 16) = xmmword_10146C4D0, v24 = v23 + v22, v25 = a1, v26 = *(v17 + 104), v26(v24, enum case for DynamicTypeSize.accessibility3(_:), v16), v26(v24 + v21, enum case for DynamicTypeSize.accessibility4(_:), v16), v26(v24 + 2 * v21, enum case for DynamicTypeSize.accessibility5(_:), v16), a1 = v25, LOBYTE(v21) = sub_1012CDFB0(v105, v23), swift_unknownObjectRelease(), swift_setDeallocating(), swift_arrayDestroy(), v19 = v105, swift_deallocClassInstance(), (*(v17 + 8))(v19, v16), v27 = 0x4052C00000000000, (v21 & 1) == 0))
  {
    v27 = 0x4049000000000000;
  }

  v96 = v27;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_101296AC0(v19);
    sub_1005B981C(&qword_101A287F8);
    v83 = a1;
    v28 = *(v17 + 72);
    v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v30 = 2 * v28;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10146C4D0;
    v32 = *(v17 + 104);
    v32(v31 + v29, enum case for DynamicTypeSize.accessibility3(_:), v16);
    v33 = v31 + v29 + v28;
    a1 = v83;
    v32(v33, enum case for DynamicTypeSize.accessibility4(_:), v16);
    v32(v31 + v29 + v30, enum case for DynamicTypeSize.accessibility5(_:), v16);
    v34 = v105;
    sub_1012CDFB0(v105, v31);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v17 + 8))(v34, v16);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v110[3] = *&v110[27];
  *&v110[11] = *&v110[35];
  *&v110[19] = *&v110[43];
  v108[0] = *(a1 + *(type metadata accessor for CRLSceneRowItemUI_iv(0) + 48));
  sub_1005B981C(&qword_101A313B0);
  State.wrappedValue.getter();
  if (*v106)
  {
    v35 = *v106;
    v36 = [v35 UIImage];
    Image.init(uiImage:)();
    v105 = v35;

    v38 = v87;
    v37 = v88;
    v39 = v89;
    (*(v88 + 104))(v87, enum case for Image.ResizingMode.stretch(_:), v89);
    v40 = Image.resizable(capInsets:resizingMode:)();

    (*(v37 + 8))(v38, v39);
    sub_101297400();
    sub_101297400();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v107[38] = v111;
    *&v107[22] = *&v110[59];
    *&v107[6] = *&v110[51];
    *&v106[18] = *v107;
    LOBYTE(v112) = 1;
    *v106 = v40;
    *&v106[8] = 0;
    *&v106[16] = 1;
    *&v106[34] = *&v107[16];
    *&v106[50] = *&v107[32];
    *&v106[64] = *(&v111 + 1);
    sub_1005B981C(&qword_101A315E8);
    sub_1012A6854();
    v41 = v95;
    View.accessibilityHidden(_:)();
    v108[2] = *&v106[32];
    v108[3] = *&v106[48];
    v109 = *&v106[64];
    v108[0] = *v106;
    v108[1] = *&v106[16];
    sub_10000CAAC(v108, &qword_101A315E8);
    v42 = static Color.white.getter();
    LOBYTE(v40) = static Edge.Set.all.getter();
    v43 = v41 + *(sub_1005B981C(&qword_101A315C8) + 36);
    *v43 = v42;
    *(v43 + 8) = v40;
    *(v41 + *(sub_1005B981C(&qword_101A315B8) + 36)) = 1;
    if (qword_1019F2BF0 != -1)
    {
      swift_once();
    }

    v44 = qword_101AD9640;
    v45 = (v41 + *(sub_1005B981C(&qword_101A315A8) + 36));
    v46 = v90;
    v47 = *(v90 + 20);
    v48 = enum case for RoundedCornerStyle.continuous(_:);
    v49 = type metadata accessor for RoundedCornerStyle();
    v50 = *(*(v49 - 8) + 104);
    v50(v45 + v47, v48, v49);
    *v45 = v44;
    v45[1] = v44;
    *(v45 + *(sub_1005B981C(&qword_101A10DC0) + 36)) = 256;
    v51 = v91;
    v50(v91 + *(v46 + 20), v48, v49);
    *v51 = v44;
    v51[1] = v44;
    v52 = v92;
    SeparatorShapeStyle.init()();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v53 = v41 + *(v103 + 36);
    sub_1012A48F4(v51, v53, &type metadata accessor for RoundedRectangle);
    v54 = v53 + *(sub_1005B981C(&qword_101A2DD90) + 36);
    v55 = v113;
    *v54 = v112;
    *(v54 + 16) = v55;
    *(v54 + 32) = v114;
    v56 = sub_1005B981C(&qword_101A31630);
    v58 = v93;
    v57 = v94;
    (*(v93 + 16))(v53 + *(v56 + 52), v52, v94);
    *(v53 + *(v56 + 56)) = 256;
    v59 = static Alignment.center.getter();
    v61 = v60;
    (*(v58 + 8))(v52, v57);
    sub_1012A6A94(v51, &type metadata accessor for RoundedRectangle);
    v62 = (v53 + *(sub_1005B981C(&qword_101A31638) + 36));
    *v62 = v59;
    v62[1] = v61;
    v63 = static Alignment.center.getter();
    v65 = v64;
    v66 = (v53 + *(sub_1005B981C(&qword_101A31610) + 36));
    *v66 = v63;
    v66[1] = v65;
    sub_10000BE14(v41, v100, &qword_101A31558);
    swift_storeEnumTagMultiPayload();
    sub_1012A6574();
    sub_1012A69B8(&qword_101A31618, &qword_101A31570, &unk_1014D9CB0, sub_1012A6490);
    v67 = v101;
    _ConditionalContent<>.init(storage:)();

    sub_10000CAAC(v41, &qword_101A31558);
    v68 = v67;
  }

  else
  {
    v69 = v84;
    ProgressView<>.init<>()();
    v70 = (v69 + *(v85 + 36));
    v71 = *(sub_1005B981C(&qword_101A10DF8) + 28);
    v72 = enum case for ControlSize.regular(_:);
    v73 = type metadata accessor for ControlSize();
    (*(*(v73 - 8) + 104))(v70 + v71, v72, v73);
    *v70 = swift_getKeyPath();
    sub_1012A6490();
    v74 = v86;
    View.accessibilityHidden(_:)();
    sub_10000CAAC(v69, &qword_101A31568);
    sub_10000BE14(v74, v100, &qword_101A31570);
    swift_storeEnumTagMultiPayload();
    sub_1012A6574();
    sub_1012A69B8(&qword_101A31618, &qword_101A31570, &unk_1014D9CB0, sub_1012A6490);
    v68 = v101;
    _ConditionalContent<>.init(storage:)();
    sub_10000CAAC(v74, &qword_101A31570);
  }

  v75 = v102;
  sub_10000BE14(v68, v102, &qword_101A31578);
  v76 = v99;
  *v106 = v99;
  *&v106[8] = 256;
  *&v106[10] = *v110;
  *&v106[26] = *&v110[8];
  *&v106[42] = *&v110[16];
  *&v106[56] = *&v110[23];
  v77 = *&v106[16];
  v78 = v104;
  *v104 = *v106;
  v78[1] = v77;
  v79 = *&v106[48];
  v78[2] = *&v106[32];
  v78[3] = v79;
  v80 = sub_1005B981C(&qword_101A31620);
  sub_10000BE14(v75, v78 + *(v80 + 48), &qword_101A31578);
  sub_10000BE14(v106, v108, &qword_101A31628);
  sub_10000CAAC(v68, &qword_101A31578);
  sub_10000CAAC(v75, &qword_101A31578);
  *&v108[0] = v76;
  WORD4(v108[0]) = 256;
  *(v108 + 10) = *v110;
  *(&v108[1] + 10) = *&v110[8];
  *(&v108[2] + 10) = *&v110[16];
  *(&v108[3] + 1) = *&v110[23];
  return sub_10000CAAC(v108, &qword_101A31628);
}

uint64_t sub_1012A00B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1012A0148, v7, v6);
}

uint64_t sub_1012A0148()
{
  v1 = **(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1012A01E8;

  return sub_101047340(v1, 0);
}

uint64_t sub_1012A01E8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_1012A0310, v4, v3);
}

uint64_t sub_1012A0310()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + *(type metadata accessor for CRLSceneRowItemUI_iv(0) + 48));
  *(v0 + 32) = v1;
  sub_1005B981C(&qword_101A313B0);
  State.wrappedValue.setter();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1012A03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(a1 + 16);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_1012A48F4(a1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLSceneRowItemUI_iv);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v15 = static MainActor.shared.getter();
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &protocol witness table for MainActor;
    sub_1012A495C(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CRLSceneRowItemUI_iv);
    v18 = (v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = v12;
    v18[1] = v13;
    sub_10064191C(0, 0, v10, a3, v17);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012A05DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1012A0674, v7, v6);
}

uint64_t sub_1012A0674()
{
  v1 = **(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1012A0714;

  return sub_101047340(v1, 1);
}

uint64_t sub_1012A0714(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_1012A7E74, v4, v3);
}

uint64_t sub_1012A083C(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1012A08D4, v3, v2);
}

uint64_t sub_1012A08D4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = **(v0 + 40);
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_1012A09C0;

    return sub_101047340(v2, 0);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1012A09C0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_1012A0AE8, v4, v3);
}

uint64_t sub_1012A0AE8()
{
  v1 = v0[11];
  v2 = v0[5];

  v3 = v2 + *(type metadata accessor for CRLSceneRowItemUI_iv(0) + 48);
  v5 = *v3;
  v4 = *(v3 + 8);
  v0[2] = *v3;
  v0[3] = v4;
  v0[4] = v1;
  v6 = v1;
  v7 = v5;

  sub_1005B981C(&qword_101A313B0);
  State.wrappedValue.setter();
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1012A0BD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_1005B981C(&qword_101A313C0);
  __chkstk_darwin(v3 - 8);
  v101 = &v97 - v4;
  v107 = sub_1005B981C(&qword_101A31488);
  v5 = *(v107 - 8);
  __chkstk_darwin(v107);
  v100 = &v97 - v6;
  v7 = sub_1005B981C(&qword_101A313C8);
  __chkstk_darwin(v7 - 8);
  v116 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v97 - v10;
  __chkstk_darwin(v11);
  v104 = &v97 - v12;
  v117 = type metadata accessor for Divider();
  v114 = *(v117 - 8);
  __chkstk_darwin(v117);
  v124 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v103 = (&v97 - v15);
  __chkstk_darwin(v16);
  v111 = (&v97 - v17);
  __chkstk_darwin(v18);
  v125 = &v97 - v19;
  __chkstk_darwin(v20);
  v102 = &v97 - v21;
  v22 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1005B981C(&qword_101A313D0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v123 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v122 = &v97 - v30;
  __chkstk_darwin(v31);
  v121 = &v97 - v32;
  __chkstk_darwin(v33);
  v126 = &v97 - v34;
  __chkstk_darwin(v35);
  v37 = &v97 - v36;
  v38 = sub_1005B981C(&qword_101A31490);
  __chkstk_darwin(v38 - 8);
  v113 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v119 = a1;
  v120 = &v97 - v41;
  v42 = a1[4];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v115 = v27;
  v112 = v26;
  v108 = v25;
  v110 = v24;
  v106 = v42;
  v105 = v23;
  if (v129)
  {
    v43 = 1;
    v44 = v120;
    v45 = v107;
  }

  else
  {
    v98 = v5;
    sub_1012A48F4(v119, &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLSceneRowItemUI_iv);
    v46 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v47 = swift_allocObject();
    sub_1012A495C(&v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for CRLSceneRowItemUI_iv);
    v48 = sub_1005B981C(&qword_101A313D8);
    sub_10001A2F8(&qword_101A313E0, &qword_101A313D8);
    v99 = v37;
    v97 = v48;
    Button.init(action:label:)();
    v49 = v102;
    Divider.init()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v50 = v128;
    if (v128 && (v51 = *v119, type metadata accessor for CRLSceneInfo(), v52 = v51, v53 = static NSObject.== infix(_:_:)(), v52, v50, (v53 & 1) != 0))
    {
      v54 = 1;
      v55 = v126;
      v56 = v104;
      v57 = v112;
      v58 = v115;
    }

    else
    {
      sub_1012A48F4(v119, v25, type metadata accessor for CRLSceneRowItemUI_iv);
      v59 = swift_allocObject();
      sub_1012A495C(v25, v59 + v46, type metadata accessor for CRLSceneRowItemUI_iv);
      v55 = v126;
      Button.init(action:label:)();
      v58 = v115;
      v56 = v104;
      v57 = v112;
      (*(v115 + 32))(v104, v55, v112);
      v54 = 0;
    }

    (*(v58 + 56))(v56, v54, 1, v57);
    v60 = v125;
    Divider.init()();
    v61 = *(v58 + 16);
    v61(v55, v99, v57);
    v62 = *(v114 + 16);
    v63 = v117;
    v62(v111, v49, v117);
    v64 = v118;
    sub_10000BE14(v56, v118, &qword_101A313C8);
    v62(v103, v60, v63);
    v65 = v100;
    v61(v100, v55, v57);
    v66 = sub_1005B981C(&qword_101A31498);
    v62((v65 + v66[12]), v111, v63);
    sub_10000BE14(v64, v65 + v66[16], &qword_101A313C8);
    v67 = v103;
    v62((v65 + v66[20]), v103, v63);
    v68 = *(v114 + 8);
    v68(v125, v63);
    sub_10000CAAC(v104, &qword_101A313C8);
    v68(v102, v63);
    v69 = *(v115 + 8);
    v69(v99, v57);
    v68(v67, v63);
    sub_10000CAAC(v64, &qword_101A313C8);
    v68(v111, v63);
    v69(v126, v57);
    v44 = v120;
    sub_10003DFF8(v65, v120, &qword_101A31488);
    v43 = 0;
    v45 = v107;
    v5 = v98;
  }

  (*(v5 + 56))(v44, v43, 1, v45);
  v111 = type metadata accessor for CRLSceneRowItemUI_iv;
  v70 = v119;
  v71 = v108;
  sub_1012A48F4(v119, v108, type metadata accessor for CRLSceneRowItemUI_iv);
  v72 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v73 = swift_allocObject();
  sub_1012A495C(v71, v73 + v72, type metadata accessor for CRLSceneRowItemUI_iv);
  sub_1005B981C(&qword_101A313D8);
  sub_10001A2F8(&qword_101A313E0, &qword_101A313D8);
  Button.init(action:label:)();
  sub_1012A48F4(v70, v71, v111);
  v74 = swift_allocObject();
  sub_1012A495C(v71, v74 + v72, type metadata accessor for CRLSceneRowItemUI_iv);
  Button.init(action:label:)();
  Divider.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v75 = 1;
  v76 = v112;
  if ((v127 & 1) == 0)
  {
    v77 = v101;
    static ButtonRole.destructive.getter();
    v78 = type metadata accessor for ButtonRole();
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    sub_1012A48F4(v119, v71, type metadata accessor for CRLSceneRowItemUI_iv);
    v79 = swift_allocObject();
    sub_1012A495C(v71, v79 + v72, type metadata accessor for CRLSceneRowItemUI_iv);
    v80 = v126;
    Button.init(role:action:label:)();
    (*(v115 + 32))(v116, v80, v76);
    v75 = 0;
  }

  v82 = v115;
  v81 = v116;
  (*(v115 + 56))(v116, v75, 1, v76);
  v83 = v113;
  sub_10000BE14(v120, v113, &qword_101A31490);
  v84 = v76;
  v85 = *(v82 + 16);
  v86 = v126;
  v85(v126, v121, v84);
  v85(v123, v122, v84);
  v87 = v114;
  v88 = *(v114 + 16);
  v88(v125, v124, v117);
  sub_10000BE14(v81, v118, &qword_101A313C8);
  v89 = v109;
  sub_10000BE14(v83, v109, &qword_101A31490);
  v90 = sub_1005B981C(&qword_101A314A0);
  v85((v89 + v90[12]), v86, v84);
  v85((v89 + v90[16]), v123, v84);
  v91 = v125;
  v92 = v117;
  v88((v89 + v90[20]), v125, v117);
  v93 = v118;
  sub_10000BE14(v118, v89 + v90[24], &qword_101A313C8);
  sub_10000CAAC(v116, &qword_101A313C8);
  v94 = *(v87 + 8);
  v94(v124, v92);
  v95 = *(v82 + 8);
  v95(v122, v84);
  v95(v121, v84);
  sub_10000CAAC(v120, &qword_101A31490);
  sub_10000CAAC(v93, &qword_101A313C8);
  v94(v91, v92);
  v95(v123, v84);
  v95(v126, v84);
  return sub_10000CAAC(v113, &qword_101A31490);
}

uint64_t sub_1012A1B78(void **a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10104B2F0(*a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012A1BD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1C88 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_10081EF10(v2, v4, v6);

  sub_10007441C(v2, v4, v6);
}

uint64_t sub_1012A1CE4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1005B981C(&unk_1019F4D60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101465920;
    v11 = *a1;
    *(v10 + 32) = *a1;
    v12 = *(v9 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    v13 = v11;
    [v12 endEditing];
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();

    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = &protocol witness table for MainActor;
    *(v16 + 32) = v9;
    *(v16 + 40) = 1;
    *(v16 + 48) = v10;
    sub_10064191C(0, 0, v7, a3, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012A1E9C(void **a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005B981C(&unk_1019F4D60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101465920;
    v4 = *a1;
    *(v3 + 32) = *a1;
    v5 = v4;
    sub_10104BEF0(v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012A1F44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1CB0 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_10081EF10(v2, v4, v6);

  sub_10007441C(v2, v4, v6);
}

uint64_t sub_1012A2058(void **a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *a1;
    sub_1005B981C(&unk_1019F4D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101465920;
    *(inited + 32) = v3;
    v5 = v3;
    sub_10104B498(inited);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_1012A2104@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1005B981C(qword_101A067F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = Image.init(systemName:)();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_10000CAAC(v4, qword_101A067F0);
  KeyPath = swift_getKeyPath();
  result = static Color.accentColor.getter();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = result;
  return result;
}

uint64_t sub_1012A2238(void *a1)
{
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v7 = v6 - 8;
  v33 = *(v6 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchTime();
  v35 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = a1 + *(v7 + 72);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v16) = v16[16];
  LOBYTE(aBlock) = v17;
  *(&aBlock + 1) = v18;
  LOBYTE(v42) = v16;
  LOBYTE(v46) = 1;
  sub_1005B981C(&qword_101A31518);
  FocusState.wrappedValue.setter();
  v19 = (*a1 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name);
  v21 = *v19;
  v20 = v19[1];
  v22 = a1 + *(v7 + 60);
  v23 = *v22;
  v24 = *(v22 + 2);
  aBlock = v23;
  v42 = v24;
  v46 = v21;
  v47 = v20;

  sub_1005B981C(&qword_101A0A910);
  State.wrappedValue.setter();
  sub_100006370(0, &qword_1019F2D90);
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v10 + 8);
  v34(v12, v9);
  sub_1012A48F4(a1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLSceneRowItemUI_iv);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  sub_1012A495C(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for CRLSceneRowItemUI_iv);
  v44 = sub_1012A5BC8;
  v45 = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = *"";
  v42 = sub_100007638;
  v43 = &unk_1018BAE20;
  v28 = _Block_copy(&aBlock);

  v29 = v5;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1012967DC(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v30 = v36;
  v31 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  (*(v40 + 8))(v30, v31);
  (*(v38 + 8))(v29, v39);
  return (v34)(v15, v35);
}

uint64_t sub_1012A2778()
{
  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_1005B981C(&qword_101A166A0);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_1012A27D8(void **a1)
{
  sub_10129D4F0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *a1;
    type metadata accessor for CRLSceneRowItemUI_iv(0);
    sub_1005B981C(&qword_101A0A910);
    State.wrappedValue.getter();
    sub_10104B0AC(v3, v4, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1012A2884(id *a1)
{
  if (sub_101296CC8())
  {
    goto LABEL_4;
  }

  type metadata accessor for CRLSceneRowItemUI_iv(0);
  sub_1005B981C(&qword_101A31320);
  Binding.wrappedValue.getter();
  if (v8)
  {

LABEL_4:
    type metadata accessor for CRLSceneRowItemUI_iv(0);
    sub_1005B981C(&qword_101A1CF70);
    State.wrappedValue.setter();
    v2 = *a1;
    v3 = &qword_101A31320;
    goto LABEL_5;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10104AB60(*a1);
    swift_unknownObjectRelease();
  }

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  v6 = *a1;
  *(inited + 32) = *a1;
  v7 = v6;
  sub_1005C1D24(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v3 = &unk_101A31310;
LABEL_5:
  sub_1005B981C(v3);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1012A2A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for HStack();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v27 = &v27 - v9;
  v10 = type metadata accessor for VStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for _ConditionalContent();
  v30 = *(v17 - 8);
  v31 = v17;
  __chkstk_darwin(v17);
  v29 = &v27 - v18;
  LOBYTE(v18) = *(v2 + 8);
  v33 = v3;
  v34 = v4;
  v35 = v2;
  if (v18)
  {
    HStack.init(alignment:spacing:content:)();
    swift_getWitnessTable();
    v19 = v27;
    sub_100075470(v7);
    v20 = *(v28 + 8);
    v20(v7, v5);
    sub_100075470(v19);
    swift_getWitnessTable();
    v21 = v29;
    sub_101288FD0(v7, v10, v5);
    v20(v7, v5);
    v20(v19, v5);
  }

  else
  {
    VStack.init(alignment:spacing:content:)();
    swift_getWitnessTable();
    sub_100075470(v13);
    v22 = *(v11 + 8);
    v22(v13, v10);
    sub_100075470(v16);
    swift_getWitnessTable();
    v21 = v29;
    sub_101288ED8(v13, v10);
    v22(v13, v10);
    v22(v16, v10);
  }

  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v36 = WitnessTable;
  v37 = v24;
  v25 = v31;
  swift_getWitnessTable();
  sub_100075470(v21);
  return (*(v30 + 8))(v21, v25);
}

uint64_t sub_1012A2F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - v8;
  (*(v7 + 32))(v10);
  sub_100075470(v6);
  v11 = *(v3 + 8);
  v11(v6, a2);
  sub_100075470(v9);
  return (v11)(v9, a2);
}

uint64_t sub_1012A30D0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1012A3150(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_1012A31F4()
{
  result = qword_101A30EF8;
  if (!qword_101A30EF8)
  {
    sub_1005C4E5C(&qword_101A30EF0);
    sub_10001A2F8(&qword_101A30F00, &qword_101A30F08);
    sub_1012A32AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30EF8);
  }

  return result;
}

unint64_t sub_1012A32AC()
{
  result = qword_101A30F10;
  if (!qword_101A30F10)
  {
    sub_1005C4E5C(&qword_101A30F18);
    type metadata accessor for EditButton();
    sub_1012967DC(&qword_101A30F20, &type metadata accessor for EditButton);
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&unk_101A1CFD0, &qword_101A10D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30F10);
  }

  return result;
}

uint64_t sub_1012A34C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityVoiceOverEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1012A34F4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilitySwitchControlEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1012A35C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1012A3694()
{
  result = qword_101A30FF8;
  if (!qword_101A30FF8)
  {
    sub_1005C4E5C(&qword_101A30F60);
    sub_1012A374C();
    sub_10001A2F8(&qword_101A31028, &qword_101A31030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A30FF8);
  }

  return result;
}

unint64_t sub_1012A374C()
{
  result = qword_101A31000;
  if (!qword_101A31000)
  {
    sub_1005C4E5C(&qword_101A30FF0);
    sub_1012A3804();
    sub_10001A2F8(&unk_101A1CFD0, &qword_101A10D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31000);
  }

  return result;
}

unint64_t sub_1012A3804()
{
  result = qword_101A31008;
  if (!qword_101A31008)
  {
    sub_1005C4E5C(&qword_101A30FE8);
    sub_1012A3890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31008);
  }

  return result;
}

unint64_t sub_1012A3890()
{
  result = qword_101A31010;
  if (!qword_101A31010)
  {
    sub_1005C4E5C(&qword_101A30FE0);
    sub_1005C4E5C(&qword_101A30F58);
    type metadata accessor for BorderlessButtonMenuStyle();
    sub_10001A2F8(&qword_101A30FD0, &qword_101A30F58);
    sub_1012967DC(&qword_101A30FD8, &type metadata accessor for BorderlessButtonMenuStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A31018, &qword_101A31020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31010);
  }

  return result;
}

uint64_t sub_1012A3A8C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1012A3B58()
{
  result = qword_101A31080;
  if (!qword_101A31080)
  {
    sub_1005C4E5C(&qword_101A31088);
    sub_1012A3BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31080);
  }

  return result;
}

unint64_t sub_1012A3BE4()
{
  result = qword_101A31090;
  if (!qword_101A31090)
  {
    sub_1005C4E5C(&qword_101A31098);
    sub_1005C4E5C(&qword_101A310A0);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10001A2F8(&qword_101A310A8, &qword_101A310A0);
    sub_1012967DC(&qword_101A10DF0, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A310B0, &qword_101A10DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31090);
  }

  return result;
}

unint64_t sub_1012A3D5C()
{
  result = qword_101A310C0;
  if (!qword_101A310C0)
  {
    sub_1005C4E5C(&qword_101A310B8);
    sub_1012A3E08();
    sub_1012A3ED0(&qword_101A10DB0, &qword_101A10DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A310C0);
  }

  return result;
}

unint64_t sub_1012A3E08()
{
  result = qword_101A310C8;
  if (!qword_101A310C8)
  {
    sub_1005C4E5C(&qword_101A310D0);
    sub_1005C4E5C(&qword_101A10D80);
    sub_100B052A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A310C8);
  }

  return result;
}

uint64_t sub_1012A3ED0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1012A3FC4()
{
  v1 = *(type metadata accessor for CRLCompactScenesListUI_i(0) - 8);
  v3[2] = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1012E384C(sub_1012A4058, v3);
}

void sub_1012A409C()
{
  type metadata accessor for CRLSceneInfo();
  if (v0 <= 0x3F)
  {
    sub_100B04794();
    if (v1 <= 0x3F)
    {
      sub_1012A444C(319, &qword_101A31190, &qword_101A30E90, &unk_1014D9488, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1012A43E8(319, &qword_101A0A758, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1012A43E8(319, &qword_101A31198, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1012A444C(319, &qword_101A311A0, &qword_101A286C8, &unk_1014C2210, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              sub_1012A444C(319, &qword_101A311A8, &qword_101A286D0, &unk_101495300, &type metadata accessor for Binding);
              if (v6 <= 0x3F)
              {
                sub_1012A444C(319, &qword_101A311B0, &qword_101A31110, &unk_1014D97E0, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_1012A6F04(319, &qword_101A0A760, &type metadata for String, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_1012A6F04(319, &qword_101A311B8, &type metadata for Bool, &type metadata accessor for State);
                    if (v9 <= 0x3F)
                    {
                      sub_1012A44B0(319, &unk_101A311C0, &type metadata accessor for FocusState);
                      if (v10 <= 0x3F)
                      {
                        sub_1012A44B0(319, &qword_101A16710, &type metadata accessor for AccessibilityFocusState);
                        if (v11 <= 0x3F)
                        {
                          sub_1012A6F04(319, &unk_101A25DE0, &type metadata for Bool, &type metadata accessor for Environment);
                          if (v12 <= 0x3F)
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
  }
}

void sub_1012A43E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1012A444C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1005C4E5C(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1012A44B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool, &protocol witness table for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1012A4510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1012A455C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

unint64_t sub_1012A45FC()
{
  result = qword_101A312A0;
  if (!qword_101A312A0)
  {
    sub_1005C4E5C(&qword_101A31238);
    sub_1012A46B4();
    sub_10001A2F8(&qword_1019FEAC8, &qword_1019FEAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A312A0);
  }

  return result;
}

unint64_t sub_1012A46B4()
{
  result = qword_101A312A8;
  if (!qword_101A312A8)
  {
    sub_1005C4E5C(&qword_101A31290);
    sub_10001A2F8(&qword_101A312B0, &qword_101A312B8);
    sub_10001A2F8(&qword_101A312C0, &qword_101A312C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A312A8);
  }

  return result;
}

uint64_t sub_1012A4798(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1012A4814()
{
  result = qword_101A312D8;
  if (!qword_101A312D8)
  {
    sub_1005C4E5C(&qword_101A312E0);
    sub_10001A2F8(&qword_101A312E8, &qword_101A312F0);
    sub_10001A2F8(&qword_101A312F8, &qword_101A31300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A312D8);
  }

  return result;
}

uint64_t sub_1012A48F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1012A495C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1012A49F0()
{
  result = qword_101A31308;
  if (!qword_101A31308)
  {
    sub_1005C4E5C(&qword_101A286D0);
    sub_1012967DC(&unk_101A22720, type metadata accessor for CRLSceneInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31308);
  }

  return result;
}

uint64_t sub_1012A4AA4()
{
  v1 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  swift_unknownObjectWeakDestroy();
  v6 = v0 + v3 + v1[7];
  sub_1005B981C(&qword_101A31100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1005B981C(&qword_101A30E88);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 32);
      v9 = type metadata accessor for EditMode();
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  v10 = v1[8];
  sub_1005B981C(&qword_101A0A8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[9];
  sub_1005B981C(&qword_101A31108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v5 + v1[11];

  v15 = v5 + v1[17];
  v16 = type metadata accessor for AccessibilityTechnologies();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  sub_1005B981C(&qword_101A166A0);

  sub_100FBEBD4(*(v5 + v1[18]), *(v5 + v1[18] + 8));
  sub_100FBEBD4(*(v5 + v1[19]), *(v5 + v1[19] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1012A4F78()
{
  result = qword_101A31348;
  if (!qword_101A31348)
  {
    sub_1005C4E5C(&qword_101A31278);
    sub_1005C4E5C(&qword_101A31268);
    sub_1005C4E5C(&qword_101A31260);
    sub_1005C4E5C(&qword_101A286D0);
    sub_1005C4E5C(&qword_101A31258);
    sub_1005C4E5C(&qword_101A31250);
    sub_1005C4E5C(&qword_101A31248);
    sub_1005C4E5C(&qword_101A286C8);
    sub_1005C4E5C(&qword_101A31240);
    sub_1005C4E5C(&qword_101A31238);
    sub_1005C4E5C(&qword_101A31298);
    sub_1012A45FC();
    sub_1012A4798(&qword_101A312D0, &qword_101A31298, &unk_1014D9968, sub_1012A4814);
    swift_getOpaqueTypeConformance2();
    sub_1012A49F0();
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A31318, &qword_101A286C8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1012967DC(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31348);
  }

  return result;
}

unint64_t sub_1012A52AC()
{
  result = qword_101A31350;
  if (!qword_101A31350)
  {
    sub_1005C4E5C(&qword_101A31340);
    sub_10001A2F8(&qword_101A31358, &qword_101A31360);
    sub_10001A2F8(&qword_101A31368, &qword_101A31370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31350);
  }

  return result;
}

uint64_t sub_1012A54AC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CRLSceneRowItemUI_iv(0);

  return sub_10129A684(a1);
}

unint64_t sub_1012A5558()
{
  result = qword_101A31420;
  if (!qword_101A31420)
  {
    sub_1005C4E5C(&qword_101A31418);
    sub_10001A2F8(&qword_101A31428, &qword_101A31430);
    sub_10001A2F8(&qword_101A31438, &qword_101A31440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31420);
  }

  return result;
}

unint64_t sub_1012A5644()
{
  result = qword_101A31460;
  if (!qword_101A31460)
  {
    sub_1005C4E5C(&qword_101A31450);
    sub_1012A56FC();
    sub_10001A2F8(&unk_101A1CFD0, &qword_101A10D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31460);
  }

  return result;
}

unint64_t sub_1012A56FC()
{
  result = qword_101A31468;
  if (!qword_101A31468)
  {
    sub_1005C4E5C(&qword_101A31470);
    sub_10001A2F8(&qword_101A067C8, &qword_101A067D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31468);
  }

  return result;
}

unint64_t sub_1012A589C()
{
  result = qword_101A314F8;
  if (!qword_101A314F8)
  {
    sub_1005C4E5C(&qword_101A314F0);
    sub_10001A2F8(&qword_101A10DA0, &qword_101A10DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A314F8);
  }

  return result;
}

unint64_t sub_1012A5954()
{
  result = qword_101A31500;
  if (!qword_101A31500)
  {
    sub_1005C4E5C(&qword_101A314D8);
    sub_1012A59E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31500);
  }

  return result;
}

unint64_t sub_1012A59E0()
{
  result = qword_101A31508;
  if (!qword_101A31508)
  {
    sub_1005C4E5C(&qword_101A31510);
    sub_1005C4E5C(&qword_101A314D0);
    sub_1005C4E5C(&qword_101A0A908);
    sub_10001A2F8(&qword_101A0A918, &qword_101A0A908);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31508);
  }

  return result;
}

unint64_t sub_1012A5C88()
{
  result = qword_101A31538;
  if (!qword_101A31538)
  {
    sub_1005C4E5C(&qword_101A31520);
    sub_10001A2F8(&qword_101A31540, &qword_101A31548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31538);
  }

  return result;
}

uint64_t sub_1012A5D60()
{
  v2 = *(type metadata accessor for CRLSceneRowItemUI_iv(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_1012A083C(v0 + v3);
}

uint64_t sub_1012A5E2C(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLSceneRowItemUI_iv(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1012A05DC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1012A5F5C()
{
  v1 = type metadata accessor for CRLSceneRowItemUI_iv(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  swift_unknownObjectWeakDestroy();
  v6 = v0 + v3 + v1[7];
  sub_1005B981C(&qword_101A31100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1005B981C(&qword_101A30E88);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 32);
      v9 = type metadata accessor for EditMode();
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  v10 = v1[8];
  sub_1005B981C(&qword_101A0A8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[9];
  sub_1005B981C(&qword_101A31108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v5 + v1[11];

  v15 = v5 + v1[17];
  v16 = type metadata accessor for AccessibilityTechnologies();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  sub_1005B981C(&qword_101A166A0);

  sub_100FBEBD4(*(v5 + v1[18]), *(v5 + v1[18] + 8));
  sub_100FBEBD4(*(v5 + v1[19]), *(v5 + v1[19] + 8));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1012A6360(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLSceneRowItemUI_iv(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1012A00B0(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1012A6490()
{
  result = qword_101A31580;
  if (!qword_101A31580)
  {
    sub_1005C4E5C(&qword_101A31568);
    sub_10001A2F8(&qword_101A31588, &qword_101A31590);
    sub_10001A2F8(&qword_101A310B0, &qword_101A10DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31580);
  }

  return result;
}

unint64_t sub_1012A6574()
{
  result = qword_101A31598;
  if (!qword_101A31598)
  {
    sub_1005C4E5C(&qword_101A31558);
    sub_1012A662C();
    sub_10001A2F8(&qword_101A31608, &qword_101A31610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31598);
  }

  return result;
}

unint64_t sub_1012A662C()
{
  result = qword_101A315A0;
  if (!qword_101A315A0)
  {
    sub_1005C4E5C(&qword_101A315A8);
    sub_1012A66E4();
    sub_10001A2F8(&qword_101A10DE8, &qword_101A10DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A315A0);
  }

  return result;
}

unint64_t sub_1012A66E4()
{
  result = qword_101A315B0;
  if (!qword_101A315B0)
  {
    sub_1005C4E5C(&qword_101A315B8);
    sub_1012A6770();
    sub_1012A6964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A315B0);
  }

  return result;
}

unint64_t sub_1012A6770()
{
  result = qword_101A315C0;
  if (!qword_101A315C0)
  {
    sub_1005C4E5C(&qword_101A315C8);
    sub_1012A69B8(&qword_101A315D0, &qword_101A315D8, &unk_1014D9CE0, sub_1012A6854);
    sub_10001A2F8(&qword_101A10E50, &qword_101A10E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A315C0);
  }

  return result;
}

unint64_t sub_1012A6854()
{
  result = qword_101A315E0;
  if (!qword_101A315E0)
  {
    sub_1005C4E5C(&qword_101A315E8);
    sub_1012A68E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A315E0);
  }

  return result;
}

unint64_t sub_1012A68E0()
{
  result = qword_101A315F0;
  if (!qword_101A315F0)
  {
    sub_1005C4E5C(&qword_101A315F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A315F0);
  }

  return result;
}

unint64_t sub_1012A6964()
{
  result = qword_101A31600;
  if (!qword_101A31600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31600);
  }

  return result;
}

uint64_t sub_1012A69B8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    sub_1012967DC(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1012A6A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1012A6AF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1012A6B30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1012A6B78(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1012A6BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1005B981C(&qword_101A30C98);
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 32);

    return v8(v9, a2, v7);
  }
}

void *sub_1012A6CC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v7 = sub_1005B981C(&qword_101A30C98);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1012A6D74()
{
  sub_100B04794();
  if (v0 <= 0x3F)
  {
    sub_1012A444C(319, &unk_101A30D18, &qword_101A286D0, &unk_101495300, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1012A444C(319, &qword_101A30D08, &qword_101A286C8, &unk_1014C2210, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1012A43E8(319, &qword_101A30D10, &type metadata accessor for EditMode, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_1012A6F04(319, &unk_101A31750, &type metadata for Bool, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1012A6F04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1012A7028()
{
  result = qword_101A317D8;
  if (!qword_101A317D8)
  {
    sub_1005C4E5C(&qword_101A317A8);
    sub_1012A70E0();
    sub_10001A2F8(&qword_101A30DD8, &qword_101A30DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A317D8);
  }

  return result;
}

unint64_t sub_1012A70E0()
{
  result = qword_101A317E0;
  if (!qword_101A317E0)
  {
    sub_1005C4E5C(&qword_101A317D0);
    sub_1012A7198();
    sub_10001A2F8(&qword_101A10E50, &qword_101A10E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A317E0);
  }

  return result;
}

unint64_t sub_1012A7198()
{
  result = qword_101A317E8;
  if (!qword_101A317E8)
  {
    sub_1005C4E5C(&qword_101A317F0);
    sub_10001A2F8(&qword_101A317F8, &qword_101A31800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A317E8);
  }

  return result;
}

uint64_t sub_1012A7248()
{
  v1 = (type metadata accessor for CRLScenesListUI_iv(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectWeakDestroy();

  v5 = v0 + v3 + v1[10];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1005B981C(&qword_101A30C98);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1012A73F4()
{
  result = qword_101A31808;
  if (!qword_101A31808)
  {
    sub_1005C4E5C(&qword_101A317B0);
    sub_1005C4E5C(&qword_101A317A8);
    sub_1005C4E5C(&qword_101A286C8);
    sub_1012A7028();
    sub_10001A2F8(&qword_101A31318, &qword_101A286C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31808);
  }

  return result;
}

unint64_t sub_1012A7564()
{
  result = qword_101A318A0;
  if (!qword_101A318A0)
  {
    sub_1005C4E5C(&qword_101A31898);
    sub_10001A2F8(&qword_101A318A8, &qword_101A318B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A318A0);
  }

  return result;
}

unsigned __int8 *sub_1012A7664(unsigned __int8 *a1, unsigned __int8 *a2)
{
  type metadata accessor for CRLScenesListUI_iv(0);

  return sub_10128D7C0(a1, a2);
}

unint64_t sub_1012A76F4()
{
  result = qword_101A31918;
  if (!qword_101A31918)
  {
    sub_1005C4E5C(&qword_101A31920);
    sub_1012A77AC();
    sub_10001A2F8(&unk_101A1CFD0, &qword_101A10D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31918);
  }

  return result;
}

unint64_t sub_1012A77AC()
{
  result = qword_101A31928;
  if (!qword_101A31928)
  {
    sub_1005C4E5C(&qword_101A31930);
    sub_1012A7838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31928);
  }

  return result;
}

unint64_t sub_1012A7838()
{
  result = qword_101A31938;
  if (!qword_101A31938)
  {
    sub_1005C4E5C(&qword_101A31940);
    sub_1005C4E5C(&qword_101A31948);
    type metadata accessor for BorderlessButtonMenuStyle();
    sub_10001A2F8(&qword_101A31950, &qword_101A31948);
    sub_1012967DC(&qword_101A30FD8, &type metadata accessor for BorderlessButtonMenuStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A31018, &qword_101A31020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31938);
  }

  return result;
}

unint64_t sub_1012A79B8()
{
  result = qword_101A31968;
  if (!qword_101A31968)
  {
    sub_1005C4E5C(&qword_101A31960);
    sub_10001A2F8(&qword_101A30F00, &qword_101A30F08);
    type metadata accessor for EditButton();
    sub_1012967DC(&qword_101A30F20, &type metadata accessor for EditButton);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A31968);
  }

  return result;
}

uint64_t sub_1012A7C20(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1012A7CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_1012A7D7C(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLScenesListUI_iv(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10128A398(a1, v4);
}

uint64_t sub_1012A7E7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      sub_1006364DC();
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_1012A826C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(v2);
  v7 = &v6[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v7 = v4;
  *(v7 + 1) = v5;
  v7[16] = 0;
  v9.receiver = v6;
  v9.super_class = v2;
  result = objc_msgSendSuper2(&v9, "init");
  *a2 = result;
  return result;
}

uint64_t sub_1012A8348(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRLWPTextString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1012A83BC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_100824324(a1, &v9 - v6);
  sub_100824324(v7, v4);
  IntentParameter.wrappedValue.setter();
  return sub_100796B54(v7);
}

uint64_t sub_1012A8488(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A31B78);
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  v6 = sub_1005B981C(&qword_101A31B80);
  __chkstk_darwin(v6);
  sub_101061A0C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x20747265736E49;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v28 = sub_1012BA7E8(&qword_1019FFBE0, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x20796D206E6F20;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v33 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x6472616F6220;
  v9._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v34;
  v32 = *(v35 + 8);
  v35 += 8;
  v32(v5, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001015CA870;
  v11._countAndFlagsBits = 0xD000000000000023;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v31 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v32;
  v32(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x2065687420646441;
  v15._object = 0xED00002074786574;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x206F746E6920;
  v16._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x6472616F6220;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v5, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x206574697257;
  v18._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x20796D206E6F20;
  v19._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x6472616F6220;
  v20._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v5, v34);
  sub_1005B981C(&qword_101A31B88);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10146D2A0;
  v23 = v29;
  *(v22 + 32) = v30;
  *(v22 + 40) = v23;
  *(v22 + 48) = v27;
  *(v22 + 56) = v21;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_1012A8B58(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1012A8C8C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardEntity();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1006B05D0(a1, &v9 - v6);
  sub_1006B05D0(v7, v5);
  IntentParameter.wrappedValue.setter();
  return sub_100689004(v7);
}

uint64_t sub_1012A8D4C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_101061A0C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019FFBE0, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012A8F9C(uint64_t a1)
{
  v53 = sub_1005B981C(&qword_101A31B78);
  v59 = *(v53 - 8);
  __chkstk_darwin(v53);
  v57 = &v46 - v2;
  v3 = sub_1005B981C(&qword_101A31B80);
  __chkstk_darwin(v3);
  v4 = sub_101061A0C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20747265736E49;
  v5._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v58 = sub_1012BA7E8(&qword_1019FFBE0, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x20796D206E6F20;
  v6._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v55 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x69206472616F6220;
  v7._object = 0xEE002061206F746ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v56 = sub_1012BA830();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v9 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54 = *(v59 + 8);
  v59 += 8;
  v10 = v53;
  v54(v9, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001015CA870;
  v11._countAndFlagsBits = 0xD000000000000023;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x206120736120;
  v12._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v10;
  v17 = v54;
  v54(v15, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x2065687420646441;
  v18._object = 0xED00002074786574;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x206F746E6920;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  v52 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x61206472616F6220;
  v20._object = 0xEA00000000002073;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v53;
  v17(v22, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x206574697257;
  v24._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x20796D206E6F20;
  v25._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._object = 0xEC0000002061206ELL;
  v26._countAndFlagsBits = 0x69206472616F6220;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v57;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = v4;
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54(v28, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x206574697257;
  v29._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x2061206E6920;
  v30._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 544108320;
  v31._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 0x6472616F6220;
  v32._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  v33 = v28;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35 = v53;
  v34 = v54;
  v54(v28, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0x20686361747441;
  v36._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0x2061206E6920;
  v37._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 544108320;
  v38._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 0x6472616F6220;
  v39._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v33, v35);
  sub_1005B981C(&qword_101A31B88);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_101478A90;
  v42 = v50;
  *(v41 + 32) = v51;
  *(v41 + 40) = v42;
  v43 = v48;
  *(v41 + 48) = v49;
  *(v41 + 56) = v43;
  *(v41 + 64) = v47;
  *(v41 + 72) = v40;
  v44 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v44;
}

uint64_t sub_1012A9B4C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_101061A0C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019FFBE0, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA830();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C4D0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1012A9E50(uint64_t a1)
{
  v42 = sub_1005B981C(&qword_101A31B50);
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = &v33 - v2;
  v4 = sub_1005B981C(&qword_101A31B58);
  __chkstk_darwin(v4);
  sub_100719454();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001015CA920;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v41 = sub_100796A4C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 544175136;
  v6._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v43 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v40 = *(v44 + 8);
  v44 += 8;
  v8 = v42;
  v40(v3, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000016;
  v9._object = 0x80000001015CA940;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544175136;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v39 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v8;
  v13 = v40;
  v40(v3, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001015CA960;
  v14._countAndFlagsBits = 0xD00000000000001CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v38 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 544175136;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v39;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v42;
  v13(v17, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x80000001015CA980;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 544175136;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v39;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v40;
  v40(v22, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x206574697257;
  v24._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0xD000000000000018;
  v25._object = 0x80000001015CA9A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x6472616F6220;
  v26._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23(v22, v42);
  sub_1005B981C(&qword_101A31B60);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10146CA70;
  v29 = v36;
  *(v28 + 32) = v37;
  *(v28 + 40) = v29;
  v30 = v34;
  *(v28 + 48) = v35;
  *(v28 + 56) = v30;
  *(v28 + 64) = v27;
  v31 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v31;
}

uint64_t sub_1012AA638()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100719454();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_100796A4C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012AA858(uint64_t a1)
{
  v26 = sub_1005B981C(&qword_101A31B50);
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v22 - v2;
  v4 = sub_1005B981C(&qword_101A31B58);
  __chkstk_darwin(v4);
  sub_100719454();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x80000001015CA8A0;
  v5._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v6 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  v27 = a1;
  v28 = v6;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v29 + 8);
  v29 += 8;
  v9 = v26;
  v8(v3, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  v10._object = 0x80000001015CA8C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x6472616F6220;
  v11._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v8;
  v8(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000017;
  v12._object = 0x80000001015CA8E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x6472616F6220;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v26;
  v8(v3, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = 0x80000001015CA900;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22(v3, v14);
  sub_1005B981C(&qword_101A31B60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10146D2A0;
  v19 = v24;
  *(v18 + 32) = v25;
  *(v18 + 40) = v19;
  *(v18 + 48) = v23;
  *(v18 + 56) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_1012AADCC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A31B38);
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  __chkstk_darwin(v2);
  v5 = &v39 - v4;
  v6 = sub_1005B981C(&qword_101A31B40);
  __chkstk_darwin(v6);
  v7 = sub_101061A60();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20747265736E49;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v50 = sub_100796A4C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x20796D206E6F20;
  v9._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v49 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x6472616F6220;
  v10._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v51;
  v12 = *(v52 + 8);
  v52 += 8;
  v47 = v12;
  v12(v5, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x20747265736E49;
  v13._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v48 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._object = 0x80000001015CA850;
  v14._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x6472616F6220;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v46 = v5;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = v7;
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v47;
  v47(v5, v11);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD000000000000023;
  v17._object = 0x80000001015CA870;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v46;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v20, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x2065687420646441;
  v21._object = 0xED00002074786574;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x206F746E6920;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x6472616F6220;
  v23._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = v46;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v51;
  v26 = v47;
  v47(v24, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 543450177;
  v27._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 544175136;
  v28._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6472616F6220;
  v29._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v24, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x206574697257;
  v30._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0x20796D206E6F20;
  v31._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 0x6472616F6220;
  v32._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v24, v51);
  sub_1005B981C(&qword_101A31B48);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_101478A90;
  v35 = v43;
  *(v34 + 32) = v44;
  *(v34 + 40) = v35;
  v36 = v41;
  *(v34 + 48) = v42;
  *(v34 + 56) = v36;
  *(v34 + 64) = v40;
  *(v34 + 72) = v33;
  v37 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v37;
}

uint64_t sub_1012AB700(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FC880);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100824324(a1, &v9 - v6);
  sub_100824324(v7, v5);
  IntentParameter.wrappedValue.setter();
  return sub_100796B54(v7);
}

uint64_t sub_1012AB7CC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_101061A60();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_100796A4C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012AB9EC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A31B38);
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  __chkstk_darwin(v2);
  v5 = v31 - v4;
  v6 = sub_1005B981C(&qword_101A31B40);
  __chkstk_darwin(v6);
  v7 = sub_101061A60();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000016;
  v8._object = 0x80000001015CA790;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v39 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  v37 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x6472616F6220;
  v9._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v40;
  v38 = *(v41 + 8);
  v41 += 8;
  v38(v5, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001015CA7B0;
  v11._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x6472616F6220;
  v12._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v38;
  v38(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001015CA7D0;
  v14._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x6472616F6220;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31[1] = v7;
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v5, v40);
  v16 = v13;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v17._object = 0x80000001015CA7F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x6472616F6220;
  v18._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19 = v40;
  v16(v5, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD000000000000016;
  v20._object = 0x80000001015CA810;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x6472616F6220;
  v21._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v38;
  v38(v5, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0xD000000000000019;
  v23._object = 0x80000001015CA830;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x6472616F6220;
  v24._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22(v5, v19);
  sub_1005B981C(&qword_101A31B48);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101478A90;
  v27 = v35;
  *(v26 + 32) = v36;
  *(v26 + 40) = v27;
  v28 = v33;
  *(v26 + 48) = v34;
  *(v26 + 56) = v28;
  *(v26 + 64) = v32;
  *(v26 + 72) = v25;
  v29 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v29;
}

uint64_t sub_1012AC14C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  a3(v8);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1005B981C(&qword_101A319E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146C6B0;
  *(v10 + 32) = v9;
  v11 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v11;
}

uint64_t sub_1012AC2F4(uint64_t a1)
{
  v72 = sub_1005B981C(&qword_101A31B20);
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v3 = &v58 - v2;
  v4 = sub_1005B981C(&qword_101A31B28);
  __chkstk_darwin(v4);
  v5 = sub_100B4EA20();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 543450177;
  v6._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v75 = sub_1012BA7E8(&qword_101A31B18, &type metadata accessor for URL);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x20796D206F7420;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v71 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x7361766E616320;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v70 = v5;
  v67 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73 = *(v74 + 8);
  v74 += 8;
  v9 = v72;
  v73(v3, v72);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 543450177;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x6F74206B6E696C20;
  v11._object = 0xEC00000020796D20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x7361766E616320;
  v12._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v68 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v66 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v3;
  v14 = v73;
  v73(v13, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 543450177;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._object = 0x80000001015CA750;
  v16._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x6472616F6220;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v68;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19 = v72;
  v14(v18, v72);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 543450177;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x80000001015CA770;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x6472616F6220;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v68;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73(v23, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x20747265736E49;
  v24._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  v69 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 544175136;
  v25._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x6472616F6220;
  v26._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v72;
  v73(v23, v72);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0x20747265736E49;
  v28._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x20796D206F7420;
  v29._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x6472616F6220;
  v30._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31 = v73;
  v73(v23, v27);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0x20747265736E49;
  v32._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0x20796D206F7420;
  v33._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 0x7361766E616320;
  v34._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v61 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31(v23, v72);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0x20747265736E49;
  v35._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 0x206F74206C727520;
  v36._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0x6472616F6220;
  v37._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v60 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v38 = v72;
  v73(v23, v72);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39._countAndFlagsBits = 0x20747265736E49;
  v39._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40._countAndFlagsBits = 0x6F74206B6E696C20;
  v40._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v41._countAndFlagsBits = 0x6472616F6220;
  v41._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v59 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73(v23, v38);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42._countAndFlagsBits = 544503120;
  v42._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43._countAndFlagsBits = 0x20656874206E6920;
  v43._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v44._countAndFlagsBits = 0x6472616F6220;
  v44._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v58 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45 = v73;
  v73(v23, v72);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v46._countAndFlagsBits = 0x696C206120747550;
  v46._object = 0xEE00206F74206B6ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v46);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v47._countAndFlagsBits = 0x20656874206E6920;
  v47._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v48._countAndFlagsBits = 0x6472616F6220;
  v48._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45(v23, v72);
  sub_1005B981C(&qword_101A31B30);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1014AEA40;
  v51 = v66;
  *(v50 + 32) = v67;
  *(v50 + 40) = v51;
  v52 = v64;
  *(v50 + 48) = v65;
  *(v50 + 56) = v52;
  v53 = v62;
  *(v50 + 64) = v63;
  *(v50 + 72) = v53;
  v54 = v60;
  *(v50 + 80) = v61;
  *(v50 + 88) = v54;
  v55 = v58;
  *(v50 + 96) = v59;
  *(v50 + 104) = v55;
  *(v50 + 112) = v49;
  v56 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v56;
}

uint64_t sub_1012AD288()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100B4EA20();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_101A31B18, &type metadata accessor for URL);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012AD4D8()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_1012AD5DC(uint64_t a1)
{
  v56 = a1;
  v55 = sub_1005B981C(&qword_101A31B00);
  v59 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v46 - v1;
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A31B08);
  __chkstk_darwin(v6);
  v7 = sub_1006B035C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20747265736E49;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v57 = sub_1012BA6BC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x796D206F746E6920;
  v9._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  (*(v3 + 104))(v5, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v2);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v3 + 8))(v5, v2);
  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v58 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v12 = v53;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54 = *(v59 + 8);
  v59 += 8;
  v13 = v55;
  v54(v12, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x20747265736E49;
  v14._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x796D206F746E6920;
  v15._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x6472616F6220;
  v16._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v53;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v13;
  v19 = v54;
  v54(v17, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 543450177;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x20796D206F7420;
  v21._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x6472616F6220;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = v7;
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v55;
  v19(v17, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x20747265736E49;
  v24._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._object = 0x80000001015CA6F0;
  v25._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v54;
  v54(v17, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 544503120;
  v28._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 544108320;
  v29._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x6472616F6220;
  v30._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v31 = v55;
  v27(v17, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0x206563616C50;
  v32._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0x20796D206E6F20;
  v33._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 0x6472616F6220;
  v34._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35 = v54;
  v54(v17, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0x20686361747441;
  v36._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0x20796D206E6F20;
  v37._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 0x6472616F6220;
  v38._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35(v17, v31);
  sub_1005B981C(&qword_101A31B10);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_101483930;
  v41 = v51;
  *(v40 + 32) = v52;
  *(v40 + 40) = v41;
  v42 = v49;
  *(v40 + 48) = v50;
  *(v40 + 56) = v42;
  v43 = v47;
  *(v40 + 64) = v48;
  *(v40 + 72) = v43;
  *(v40 + 80) = v39;
  v44 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v44;
}

uint64_t sub_1012AE124()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1012BA6BC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1006B035C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1005B981C(&qword_101A319E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146BDE0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1012AE344()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1005B981C(&qword_101A319D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1014AEA50;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1012AE4D8(uint64_t a1)
{
  v68 = a1;
  v1 = sub_1005B981C(&qword_101A31AE8);
  v74 = *(v1 - 8);
  v75 = v1;
  __chkstk_darwin(v1);
  v73 = &v60 - v2;
  v3 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A31AF0);
  __chkstk_darwin(v7);
  v8 = sub_100852A5C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v66 = "My trip to Paris";
  v9._object = 0x80000001015CA5B0;
  v9._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v72 = sub_1012BA6BC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x796D206F746E6920;
  v10._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  LODWORD(v65) = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v64 = *(v4 + 104);
  v62 = v3;
  v64(v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v63 = *(v4 + 8);
  v63(v6, v3);
  v11._countAndFlagsBits = 0x206472616F6220;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v70 = sub_1012BA7E8(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v73;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v67 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v74 + 8);
  v74 += 8;
  v71 = v14;
  v14(v13, v75);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = (v66 | 0x8000000000000000);
  v15._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x796D206F746E6920;
  v16._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v62;
  (v64)(v6, v65, v62);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v63(v6, v17);
  v18._countAndFlagsBits = 0x63206472616F6220;
  v18._object = 0xEE002064656C6C61;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v73;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v69 = v8;
  v66 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v71;
  v71(v20, v75);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x7020747265736E49;
  v22._object = 0xEE0020736F746F68;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x796D206F746E6920;
  v23._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x6472616F6220;
  v24._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v73;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26 = v75;
  v21(v25, v75);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0x7020796D20646441;
  v27._object = 0xEE0020736F746F68;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0x20796D206F7420;
  v28._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6472616F6220;
  v29._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  v30 = v73;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v71(v30, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x746F687020646441;
  v31._object = 0xEB0000000020736FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 544175136;
  v32._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0x6472616F6220;
  v33._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = v30;
  v35 = v75;
  v36 = v71;
  v71(v34, v75);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 543450177;
  v37._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 544175136;
  v38._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 0x6472616F6220;
  v39._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  v40 = v73;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v36(v40, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41._countAndFlagsBits = 544503120;
  v41._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v42._countAndFlagsBits = 544108320;
  v42._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43._countAndFlagsBits = 0x6472616F6220;
  v43._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  v44 = v73;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v61 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45 = v75;
  v36(v44, v75);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v46._countAndFlagsBits = 0xD000000000000022;
  v46._object = 0x80000001015CA5D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v46);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v47._countAndFlagsBits = 0x20796D206E6F20;
  v47._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v48._countAndFlagsBits = 0x6472616F6220;
  v48._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v60 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v71(v44, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._countAndFlagsBits = 0x20686361747441;
  v49._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v49);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v50._countAndFlagsBits = 0x20796D206F7420;
  v50._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v51._countAndFlagsBits = 0x6472616F6220;
  v51._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v51);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v71(v44, v75);
  sub_1005B981C(&qword_101A31AF8);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1014A04A0;
  v54 = v66;
  *(v53 + 32) = v67;
  *(v53 + 40) = v54;
  v55 = v64;
  *(v53 + 48) = v65;
  *(v53 + 56) = v55;
  v56 = v62;
  *(v53 + 64) = v63;
  *(v53 + 72) = v56;
  v57 = v60;
  *(v53 + 80) = v61;
  *(v53 + 88) = v57;
  *(v53 + 96) = v52;
  v58 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v58;
}