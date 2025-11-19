void sub_1011CBCF0()
{
  v1 = v0;
  v53 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v53);
  v52 = (v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_1005B981C(&unk_101A2C890);
  v3 = *(v50 - 8);
  __chkstk_darwin(v50);
  v5 = v42 - v4;
  v51 = _s15CapsuleDatabaseVMa();
  *&v6 = __chkstk_darwin(v51).n128_u64[0];
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 interactiveCanvasController];
  if (v9)
  {
    v46 = v9;
    v54 = [v9 commandController];
    if (v54)
    {
      v10 = &selRef_allowResizeDelegate;
      v11 = [v1 boardItems];
      v12 = type metadata accessor for CRLBoardItem(0);
      v45 = sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1011CA438(v13);
      v44 = 0;
      v15 = v14;

      if (v15 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v42[1] = v12;
        v43 = v1;
        v17 = 0;
        v48 = v15 & 0xFFFFFFFFFFFFFF8;
        v49 = v15 & 0xC000000000000001;
        v18 = (v3 + 16);
        v12 = (v3 + 8);
        v47 = i;
        while (1)
        {
          if (v49)
          {
            v19 = v15;
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *(v48 + 16))
            {
              goto LABEL_19;
            }

            v19 = v15;
            v20 = *(v15 + 8 * v17 + 32);
          }

          v15 = v20;
          v1 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            break;
          }

          type metadata accessor for CRLTableItemData();
          v21 = swift_dynamicCastClassUnconditional();
          v22 = qword_101AD9268;
          swift_beginAccess();
          v23 = v21 + v22;
          v24 = v50;
          (*v18)(v5, v23, v50);
          Capsule.root.getter();
          (*v12)(v5, v24);
          v10 = v52;
          sub_1011DABFC(&v8[*(v51 + 32)], v52, _s13StyleCRDTDataVMa);
          sub_1011DAC64(v8, _s15CapsuleDatabaseVMa);
          sub_1005B981C(&qword_101A2C810);
          CRRegister.wrappedValue.getter();
          sub_1011DAC64(v10, _s13StyleCRDTDataVMa);
          v3 = v56;

          v15 = v19;
          if ((v3 & 1) == 0)
          {
            ++v17;
            if (v1 != v47)
            {
              continue;
            }
          }

          v25 = v3 ^ 1;
          v1 = v43;
          v10 = &selRef_allowResizeDelegate;
          goto LABEL_22;
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

      v25 = 1;
LABEL_22:

      sub_10088E3FC(0);
      v27 = [v1 v10[390]];
      v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1011CA438(v28);
      v30 = v29;

      if (v30 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
        if (v31)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
LABEL_24:
          if (v31 < 1)
          {
            __break(1u);
            return;
          }

          v32 = 0;
          do
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v33 = *(v30 + 8 * v32 + 32);
            }

            v34 = v33;
            ++v32;
            v35 = objc_allocWithZone(type metadata accessor for CRLCommandTableSetHasRoundedCorners(0));
            KeyPath = swift_getKeyPath();
            *(v35 + *((swift_isaMask & *v35) + 0xE0)) = v34;
            *(v35 + *((swift_isaMask & *v35) + 0xE8)) = v25;
            *(v35 + *((swift_isaMask & *v35) + 0xF0)) = KeyPath;
            v37 = (v35 + *((swift_isaMask & *v35) + 0xF8));
            *v37 = 0xD00000000000001DLL;
            v37[1] = 0x80000001015C5230;
            v38 = v34;
            v39 = sub_1005B981C(&unk_101A2C818);
            v55.receiver = v35;
            v55.super_class = v39;
            v40 = objc_msgSendSuper2(&v55, "init");
            sub_100888700(v40, 0, 0, 4, 0);
          }

          while (v31 != v32);
        }
      }

      v41 = v54;
      sub_10088E600(0);

      return;
    }

    v26 = v46;
  }
}

uint64_t sub_1011CC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  if (qword_1019F21D8 != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.crlTables;
  v8 = static os_log_type_t.debug.getter();
  sub_100005404(v7, &_mh_execute_header, v8, a4, a5, 2, _swiftEmptyArrayStorage);
  return sub_10000CAAC(v10, &unk_1019F4D00);
}

uint64_t sub_1011CC480(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

void sub_1011CC524(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = [v2 interactiveCanvasController];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v15 = [v5 commandController];

  if (!v15)
  {
    return;
  }

  sub_10088E3FC(0);
  v7 = [v4 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v8);
  v10 = v9;

  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_5:
      if (v11 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v11; ++i)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v10 + 8 * i + 32);
        }

        v14 = v13;
        a2();
      }
    }
  }

  sub_10088E600(0);
}

uint64_t sub_1011CC710()
{
  v1 = sub_1005B981C(&qword_101A2C6F8);
  __chkstk_darwin(v1 - 8);
  v59 = &v54 - v2;
  v3 = _s6CellIDVMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLTableCellRange(0);
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  result = sub_1011D78CC();
  if (!result)
  {
    return result;
  }

  v55 = v8;
  v23 = result;
  sub_1011DABFC(result + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v11, type metadata accessor for CRLTableCellRange);

  sub_1005B981C(&qword_101A2D840);
  CRRegister.wrappedValue.getter();
  sub_1011DAC64(v11, type metadata accessor for CRLTableCellRange);
  v56 = *(v13 + 16);
  v56(v18, v5, v12);
  sub_1011DAC64(v5, _s6CellIDVMa);
  v60 = v21;
  v61 = v13;
  v24 = *(v13 + 32);
  v25 = v12;
  v24(v21, v18, v12);
  v26 = v0;
  v27 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v28);
  v30 = v29;

  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31 != 1)
  {
    return (*(v61 + 8))(v60, v25);
  }

  v32 = [v0 boardItems];
  v33 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v33);
  v35 = v34;

  if (v35 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_17:
    (*(v61 + 8))(v60, v25);
  }

  result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v36 = *(v35 + 32);
  }

  v37 = v36;

  v38 = v60;
  v56(v15, v60, v25);
  v39 = v37;
  v40 = v59;
  sub_1011C89B0(v15, v39, v59);
  if ((*(v57 + 48))(v40, 1, v58) == 1)
  {
    (*(v61 + 8))(v38, v25);

    return sub_10000CAAC(v40, &qword_101A2C6F8);
  }

  else
  {
    v41 = v55;
    sub_1011DAAB4(v40, v55, type metadata accessor for CRLTableCellRange);
    sub_1011DABFC(v41, v11, type metadata accessor for CRLTableCellRange);
    v42 = type metadata accessor for CRLTableCellSelection(0);
    v59 = v25;
    v43 = v38;
    v44 = v42;
    v45 = objc_allocWithZone(v42);
    sub_1011DABFC(v11, &v45[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], type metadata accessor for CRLTableCellRange);
    v45[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] = 1;
    v63.receiver = v45;
    v63.super_class = v44;
    v46 = objc_msgSendSuper2(&v63, "init");
    sub_1011DAC64(v11, type metadata accessor for CRLTableCellRange);
    v47 = [objc_allocWithZone(CRLSelectionModelTranslator) init];
    sub_1005B981C(&qword_101A2C800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v62 = v39;
    type metadata accessor for CRLTableItem();
    sub_1011DAA60(&qword_101A2C808, type metadata accessor for CRLTableItem);
    v49 = v39;
    AnyHashable.init<A>(_:)();
    sub_1005C0360(inited);
    swift_setDeallocating();
    sub_100064234(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v51 = [v47 selectionPathForInfos:isa];

    v52 = [v26 editorController];
    v53 = [v51 selectionPathWithAppendedSelection:v46];
    [v52 setSelectionPath:v53];

    sub_1011DAC64(v41, type metadata accessor for CRLTableCellRange);
    return (*(v61 + 8))(v43, v59);
  }
}

uint64_t sub_1011CCEC4()
{
  v1 = sub_1005B981C(&qword_101A2C6F8);
  __chkstk_darwin(v1 - 8);
  v3 = &v57 - v2;
  v4 = _s6CellIDVMa(0);
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLTableCellRange(0);
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  result = sub_1011D78CC();
  if (!result)
  {
    return result;
  }

  v61 = v3;
  v59 = v9;
  v23 = result;
  sub_1011DABFC(result + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v12, type metadata accessor for CRLTableCellRange);

  sub_1005B981C(&qword_101A2D840);
  CRRegister.wrappedValue.getter();
  v58 = v12;
  sub_1011DAC64(v12, type metadata accessor for CRLTableCellRange);
  v24 = &v6[*(v4 + 20)];
  v60 = *(v14 + 16);
  v60(v18, v24, v13);
  sub_1011DAC64(v6, _s6CellIDVMa);
  v66 = v14;
  v25 = *(v14 + 32);
  v26 = v13;
  v25(v21, v18, v13);
  v62 = v0;
  v27 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v28);
  v30 = v29;

  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v26;
  v33 = v21;
  if (v31 != 1)
  {
    return (*(v66 + 8))(v21, v26);
  }

  v34 = [v62 boardItems];
  v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v35);
  v37 = v36;

  v38 = v66;
  if (v37 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_16:
    (*(v38 + 8))(v21, v32);
  }

  result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v39 = *(v37 + 32);
  }

  v40 = v39;

  v41 = v63;
  v60(v63, v21, v32);
  v42 = v40;
  v43 = v61;
  sub_1011C8D98(v41, v42, v61);
  if ((*(v64 + 48))(v43, 1, v65) == 1)
  {
    (*(v38 + 8))(v21, v32);

    return sub_10000CAAC(v43, &qword_101A2C6F8);
  }

  else
  {
    v44 = v59;
    sub_1011DAAB4(v43, v59, type metadata accessor for CRLTableCellRange);
    v45 = v58;
    sub_1011DABFC(v44, v58, type metadata accessor for CRLTableCellRange);
    v46 = type metadata accessor for CRLTableCellSelection(0);
    v47 = objc_allocWithZone(v46);
    sub_1011DABFC(v45, &v47[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], type metadata accessor for CRLTableCellRange);
    v47[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] = 2;
    v68.receiver = v47;
    v68.super_class = v46;
    v48 = objc_msgSendSuper2(&v68, "init");
    v65 = v33;
    sub_1011DAC64(v45, type metadata accessor for CRLTableCellRange);
    v49 = [objc_allocWithZone(CRLSelectionModelTranslator) init];
    sub_1005B981C(&qword_101A2C800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v67 = v42;
    type metadata accessor for CRLTableItem();
    sub_1011DAA60(&qword_101A2C808, type metadata accessor for CRLTableItem);
    v51 = v32;
    v52 = v42;
    AnyHashable.init<A>(_:)();
    sub_1005C0360(inited);
    swift_setDeallocating();
    sub_100064234(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v54 = [v49 selectionPathForInfos:isa];

    v55 = [v62 editorController];
    v56 = [v54 selectionPathWithAppendedSelection:v48];
    [v55 setSelectionPath:v56];

    sub_1011DAC64(v44, type metadata accessor for CRLTableCellRange);
    return (*(v38 + 8))(v65, v51);
  }
}

void sub_1011CD6A4(void *a1)
{
  v2 = v1;
  v64 = type metadata accessor for UUID();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v71 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = v60 - v6;
  v7 = _s10RowElementVMa(0);
  v62 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v72 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A2C890);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v60 - v11;
  v13 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v13);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v70 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v68 = type metadata accessor for CRLTableItemData();
  v16 = swift_dynamicCastClassUnconditional();
  v17 = qword_101AD9268;
  swift_beginAccess();
  v67 = *(v10 + 16);
  v67(v12, v16 + v17, v9);
  Capsule.root.getter();
  v66 = *(v10 + 8);
  (v66)(v12, v9);
  v65 = sub_1005B981C(&unk_101A2C7D0);
  v18 = CROrderedDictionary.count.getter();
  sub_1011DAC64(v15, _s15CapsuleDatabaseVMa);
  if (v18 >= 2)
  {
    v19 = [v2 interactiveCanvasController];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 commandController];

      if (v21)
      {
        v22 = [v2 interactiveCanvasController];
        if (!v22 || (v23 = v22, v24 = [v22 layoutForInfo:v74], v23, !v24))
        {
          v24 = v21;
LABEL_24:

          return;
        }

        type metadata accessor for CRLTableLayout();
        v25 = swift_dynamicCastClass();
        if (!v25)
        {
LABEL_23:

          goto LABEL_24;
        }

        v26 = v25;
        v61 = v24;
        v69 = v21;
        v27 = (v25 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
        swift_beginAccess();
        v28 = *v27;
        if (*v27)
        {
          v29 = v27[1];
          sub_1011DAB7C(v28);

          sub_1011DABBC(v28);
          v30 = *(v29 + 16);
          if (v30)
          {
LABEL_9:
            if (v30 > 3)
            {
              v31 = v30 & 0x7FFFFFFFFFFFFFFCLL;
              v33 = (v29 + 48);
              v32 = 0.0;
              v34 = v30 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v32 = v32 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
                v33 += 4;
                v34 -= 4;
              }

              while (v34);
              if (v30 == v31)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v31 = 0;
              v32 = 0.0;
            }

            v35 = v30 - v31;
            v36 = (v29 + 8 * v31 + 32);
            do
            {
              v37 = *v36++;
              v32 = v32 + v37;
              --v35;
            }

            while (v35);
LABEL_19:

            v38 = swift_dynamicCastClassUnconditional();
            v39 = qword_101AD9268;
            swift_beginAccess();
            v67(v12, v38 + v39, v9);
            Capsule.root.getter();
            (v66)(v12, v9);
            v40 = CROrderedDictionary.count.getter();
            sub_1011DAC64(v15, _s15CapsuleDatabaseVMa);
            swift_dynamicCastClassUnconditional();

            v41 = sub_1011FAF9C();

            v42 = *(v41 + 16);
            if (v42)
            {
              v43 = v32 / v40;
              v68 = 0x800000010155DC00;
              v44 = (*(v62 + 80) + 32) & ~*(v62 + 80);
              v60[1] = v41;
              v45 = v41 + v44;
              v67 = *(v62 + 72);
              v65 = (v63 + 16);
              v66 = (v63 + 8);
              v46 = v64;
              v47 = v73;
              v48 = v71;
              do
              {
                v70 = v42;
                v49 = v72;
                sub_1011DABFC(v45, v72, _s10RowElementVMa);
                v50 = *v65;
                (*v65)(v47, v49, v46);
                sub_1011DAC64(v49, _s10RowElementVMa);
                v51 = objc_allocWithZone(type metadata accessor for CRLCommandTableRowSetHeight(0));
                v50(v48, v47, v46);
                KeyPath = swift_getKeyPath();
                v53 = v74;
                *&v51[*((swift_isaMask & *v51) + 0xD0)] = v74;
                v50(&v51[*((swift_isaMask & *v51) + 0xD8)], v48, v46);
                v54 = &v51[*((swift_isaMask & *v51) + 0xE0)];
                *v54 = v43;
                *(v54 + 4) = 0;
                *&v51[*((swift_isaMask & *v51) + 0xE8)] = KeyPath;
                v55 = &v51[*((swift_isaMask & *v51) + 0xF0)];
                *v55 = 0xD000000000000018;
                *(v55 + 1) = v68;
                v56 = v53;
                v57 = sub_1005B981C(&qword_101A2D850);
                v75.receiver = v51;
                v75.super_class = v57;
                v58 = objc_msgSendSuper2(&v75, "init");
                v59 = *v66;
                (*v66)(v48, v46);
                v59(v47, v46);
                sub_100888700(v58, 0, 0, 4, 0);

                v45 += v67;
                v42 = v70 - 1;
              }

              while (v70 != 1);
            }

            v21 = v69;
            v24 = v61;
            goto LABEL_23;
          }
        }

        else
        {
          v29 = *(v26 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8);

          v30 = *(v29 + 16);
          if (v30)
          {
            goto LABEL_9;
          }
        }

        v32 = 0.0;
        goto LABEL_19;
      }
    }
  }
}

void sub_1011CDF5C(void *a1)
{
  v2 = v1;
  v64 = type metadata accessor for UUID();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v71 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = v60 - v6;
  v7 = _s13ColumnElementVMa(0);
  v62 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v72 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A2C890);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v60 - v11;
  v13 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v13);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v70 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v68 = type metadata accessor for CRLTableItemData();
  v16 = swift_dynamicCastClassUnconditional();
  v17 = qword_101AD9268;
  swift_beginAccess();
  v67 = *(v10 + 16);
  v67(v12, v16 + v17, v9);
  Capsule.root.getter();
  v66 = *(v10 + 8);
  (v66)(v12, v9);
  v65 = sub_1005B981C(&unk_101A2D830);
  v18 = CROrderedDictionary.count.getter();
  sub_1011DAC64(v15, _s15CapsuleDatabaseVMa);
  if (v18 >= 2)
  {
    v19 = [v2 interactiveCanvasController];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 commandController];

      if (v21)
      {
        v22 = [v2 interactiveCanvasController];
        if (!v22)
        {
          goto LABEL_24;
        }

        v23 = v22;
        v24 = [v22 layoutForInfo:v74];

        if (!v24)
        {
          goto LABEL_24;
        }

        v69 = v21;
        type metadata accessor for CRLTableLayout();
        v61 = v24;
        v25 = swift_dynamicCastClass();
        if (!v25)
        {
LABEL_23:

          v21 = v61;
LABEL_24:

          return;
        }

        v26 = v25;
        v27 = (v25 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
        swift_beginAccess();
        v28 = *v27;
        if (*v27)
        {
          sub_1011DAB7C(v28);

          sub_1011DABBC(v29);
        }

        else
        {
          v28 = *(v26 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState);
        }

        v30 = *(v28 + 16);
        if (v30)
        {
          if (v30 > 3)
          {
            v31 = v30 & 0x7FFFFFFFFFFFFFFCLL;
            v33 = (v28 + 48);
            v32 = 0.0;
            v34 = v30 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v32 = v32 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
              v33 += 4;
              v34 -= 4;
            }

            while (v34);
            if (v30 == v31)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v31 = 0;
            v32 = 0.0;
          }

          v35 = v30 - v31;
          v36 = (v28 + 8 * v31 + 32);
          do
          {
            v37 = *v36++;
            v32 = v32 + v37;
            --v35;
          }

          while (v35);
        }

        else
        {
          v32 = 0.0;
        }

LABEL_19:

        v38 = swift_dynamicCastClassUnconditional();
        v39 = qword_101AD9268;
        swift_beginAccess();
        v67(v12, v38 + v39, v9);
        Capsule.root.getter();
        (v66)(v12, v9);
        v40 = CROrderedDictionary.count.getter();
        sub_1011DAC64(v15, _s15CapsuleDatabaseVMa);
        swift_dynamicCastClassUnconditional();

        v41 = sub_1011FC4B4();

        v42 = *(v41 + 16);
        if (v42)
        {
          v43 = v32 / v40;
          v68 = 0x800000010155DC20;
          v44 = (*(v62 + 80) + 32) & ~*(v62 + 80);
          v60[1] = v41;
          v45 = v41 + v44;
          v67 = *(v62 + 72);
          v65 = (v63 + 16);
          v66 = (v63 + 8);
          v46 = v64;
          v47 = v73;
          v48 = v71;
          do
          {
            v70 = v42;
            v49 = v72;
            sub_1011DABFC(v45, v72, _s13ColumnElementVMa);
            v50 = *v65;
            (*v65)(v47, v49, v46);
            sub_1011DAC64(v49, _s13ColumnElementVMa);
            v51 = objc_allocWithZone(type metadata accessor for CRLCommandTableColumnSetWidth(0));
            v50(v48, v47, v46);
            KeyPath = swift_getKeyPath();
            v53 = v74;
            *&v51[*((swift_isaMask & *v51) + 0xD0)] = v74;
            v50(&v51[*((swift_isaMask & *v51) + 0xD8)], v48, v46);
            v54 = &v51[*((swift_isaMask & *v51) + 0xE0)];
            *v54 = v43;
            *(v54 + 4) = 0;
            *&v51[*((swift_isaMask & *v51) + 0xE8)] = KeyPath;
            v55 = &v51[*((swift_isaMask & *v51) + 0xF0)];
            *v55 = 0xD00000000000001ALL;
            *(v55 + 1) = v68;
            v56 = v53;
            v57 = sub_1005B981C(&unk_101A2C7F0);
            v75.receiver = v51;
            v75.super_class = v57;
            v58 = objc_msgSendSuper2(&v75, "init");
            v59 = *v66;
            (*v66)(v48, v46);
            v59(v47, v46);
            sub_100888700(v58, 0, 0, 4, 0);

            v45 += v67;
            v42 = v70 - 1;
          }

          while (v70 != 1);
        }

        goto LABEL_23;
      }
    }
  }
}

void sub_1011CE800()
{
  v2 = v0;
  inserted = type metadata accessor for CRLCommandTableInsertColumn.InsertPosition(0);
  __chkstk_darwin(inserted);
  v91 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = _s14ColumnCRDTDataVMa(0);
  __chkstk_darwin(v88);
  v90 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v92 = v84 - v6;
  v7 = _s6CellIDVMa(0);
  __chkstk_darwin(v7);
  v9 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v10 - 8);
  v12 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v100 = *(v13 - 8);
  v101 = v13;
  __chkstk_darwin(v13);
  v87 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = v84 - v16;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v84 - v19;
  v21 = [v0 editingCoordinator];
  v22 = *&v21[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

  v93 = v22;
  sub_10088E3FC(0);
  v23 = sub_1011D78CC();
  if (!v23)
  {
LABEL_14:
    v12 = v101;
    v48 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v49);
    v51 = v50;

    if (v51 >> 62)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v100;
      if (v52)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v100;
      if (v52)
      {
LABEL_16:
        if (v52 < 1)
        {
          __break(1u);
          goto LABEL_34;
        }

        v53 = 0;
        v97 = v51 & 0xC000000000000001;
        v95 = (v28 + 4);
        v86 = (v28 + 8);
        v85 = 0x80000001015C5210;
        v84[1] = v28 + 2;
        v98 = v52;
        v99 = v51;
        do
        {
          if (v97)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v54 = *&v51[8 * v53 + 32];
          }

          v55 = v54;
          if ((v54[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] & 1) != 0 || !*&v54[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap])
          {
            type metadata accessor for CRLTableItemData();
            swift_dynamicCastClassUnconditional();

            v57 = sub_1011FD0F0();

            swift_dynamicCastClassUnconditional();

            v58 = sub_1011FBBD8();

            v59 = sub_1011EE2D4(v57, v58);
            v56 = v60;
            v62 = v61;
            v64 = v63;

            v65 = &v55[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
            v66 = *&v55[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
            *v65 = v59;
            v65[1] = v56;
            v65[2] = v62;
            v65[3] = v64;

            v28 = v100;
            v12 = v101;
            sub_1011DAB1C(v66);
            if (!*(v56 + 16))
            {
              goto LABEL_18;
            }
          }

          else
          {
            v56 = *&v54[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap + 8];

            if (!*(v56 + 16))
            {
              goto LABEL_18;
            }
          }

          v67 = sub_1007C7EC0(0);
          if (v68)
          {
            v69 = *(v56 + 56) + *(v28 + 9) * v67;
            v94 = *(v28 + 2);
            v70 = v87;
            v94(v87, v69, v12);

            v71 = v96;
            (*(v28 + 4))(v96, v70, v12);
            v72 = sub_1011E5BDC(0);
            v104 = 0.0;
            v105 = 1;
            sub_1005B981C(&unk_101A095E0);
            sub_1005FEB28();
            v73 = v92;
            CRRegister.init(wrappedValue:)();
            v74 = *(v88 + 20);
            *(v73 + v74) = _swiftEmptyDictionarySingleton;
            v104 = v72;
            v105 = 0;
            sub_1005B981C(&unk_101A2C7E0);
            CRRegister.wrappedValue.setter();
            *(v73 + v74) = _swiftEmptyDictionarySingleton;
            v75 = v90;
            sub_1011DABFC(v73, v90, _s14ColumnCRDTDataVMa);
            v76 = v91;
            v94(v91, v71, v101);
            swift_storeEnumTagMultiPayload();
            v77 = type metadata accessor for CRLCommandTableInsertColumn(0);
            v78 = objc_allocWithZone(v77);
            v79 = v55;
            UUID.init()();
            v80 = &v78[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_actionString];
            *v80 = 0xD00000000000001FLL;
            *(v80 + 1) = v85;
            *&v78[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_tableBoardItem] = v79;
            sub_1011DABFC(v75, &v78[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnDataToInsert], _s14ColumnCRDTDataVMa);
            sub_1011DABFC(v76, &v78[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_variant], type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
            v103.receiver = v78;
            v103.super_class = v77;
            v81 = objc_msgSendSuper2(&v103, "init");
            v82 = v76;
            v12 = v101;
            sub_1011DAC64(v82, type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
            sub_1011DAC64(v75, _s14ColumnCRDTDataVMa);
            sub_100888700(v81, 0, 0, 4, 0);

            v28 = v100;
            (*(v100 + 1))(v96, v12);
            sub_1011DAC64(v73, _s14ColumnCRDTDataVMa);
            goto LABEL_19;
          }

LABEL_18:

LABEL_19:
          v53 = v53 + 1;
          v51 = v99;
        }

        while (v98 != v53);
      }
    }

LABEL_32:
    v83 = v93;
    sub_10088E600(0);

    return;
  }

  v1 = v23;
  if ((*(v23 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type) | 2) != 2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = [v2 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v25);
  v27 = v26;

  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  v28 = v7;
  if ((v27 & 0xC000000000000001) != 0)
  {
LABEL_34:
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v29 = v100;
LABEL_8:

    sub_1011DABFC(v1 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v12, type metadata accessor for CRLTableCellRange);
    sub_1005B981C(&qword_101A2D840);
    CRRegister.wrappedValue.getter();
    sub_1011DAC64(v12, type metadata accessor for CRLTableCellRange);
    v31 = *(v29 + 2);
    v32 = v101;
    v31(v20, &v9[v28[5]], v101);
    sub_1011DAC64(v9, _s6CellIDVMa);
    v33 = sub_1011DB340(v20);
    if (v34)
    {
      (*(v29 + 1))(v20, v32);
    }

    else
    {
      v35 = sub_1011E5BDC(v33);
      v104 = 0.0;
      v105 = 1;
      sub_1005B981C(&unk_101A095E0);
      sub_1005FEB28();
      v36 = v92;
      CRRegister.init(wrappedValue:)();
      v98 = v30;
      v99 = v20;
      v37 = v32;
      v38 = *(v88 + 20);
      *(v36 + v38) = _swiftEmptyDictionarySingleton;
      v104 = v35;
      v105 = 0;
      sub_1005B981C(&unk_101A2C7E0);
      CRRegister.wrappedValue.setter();
      *(v36 + v38) = _swiftEmptyDictionarySingleton;
      v100 = v1;
      v39 = v90;
      sub_1011DABFC(v36, v90, _s14ColumnCRDTDataVMa);
      v40 = v91;
      v41 = v20;
      v42 = v37;
      v31(v91, v41, v37);
      swift_storeEnumTagMultiPayload();
      v43 = type metadata accessor for CRLCommandTableInsertColumn(0);
      v44 = objc_allocWithZone(v43);
      v45 = v98;
      UUID.init()();
      v46 = &v44[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_actionString];
      *v46 = 0xD00000000000001FLL;
      *(v46 + 1) = 0x80000001015C5210;
      *&v44[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_tableBoardItem] = v45;
      sub_1011DABFC(v39, &v44[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnDataToInsert], _s14ColumnCRDTDataVMa);
      sub_1011DABFC(v40, &v44[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_variant], type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
      v102.receiver = v44;
      v102.super_class = v43;
      v47 = objc_msgSendSuper2(&v102, "init");
      sub_1011DAC64(v40, type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
      sub_1011DAC64(v39, _s14ColumnCRDTDataVMa);
      sub_100888700(v47, 0, 0, 4, 0);

      (*(v29 + 1))(v99, v42);
      sub_1011DAC64(v36, _s14ColumnCRDTDataVMa);
    }

    goto LABEL_32;
  }

  v29 = v100;
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v27 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1011CF4CC()
{
  v1 = v0;
  v123 = sub_1005B981C(&unk_101A2C890);
  v126 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v98 - v2;
  v121 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v121);
  v120 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  inserted = type metadata accessor for CRLCommandTableInsertColumn.InsertPosition(0);
  __chkstk_darwin(inserted);
  v106 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = _s14ColumnCRDTDataVMa(0);
  __chkstk_darwin(v103);
  v105 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v98 - v7;
  v8 = _s6CellIDVMa(0);
  __chkstk_darwin(v8);
  v10 = (&v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v11);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for UUID();
  v108 = *(v113 - 8);
  __chkstk_darwin(v113);
  v102 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v98 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v98 - v20;
  v22 = [v0 editingCoordinator];
  v23 = *&v22[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

  v109 = v23;
  sub_10088E3FC(0);
  v24 = sub_1011D78CC();
  if (!v24)
  {
LABEL_14:
    v13 = [v1 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v49);
    v51 = v50;

    if (v51 >> 62)
    {
      goto LABEL_37;
    }

    v25 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
    v52 = v113;
    if (!v25)
    {
LABEL_33:

LABEL_34:
      v97 = v109;
      sub_10088E600(0);

      return;
    }

    if (v25 < 1)
    {
      __break(1u);
      goto LABEL_39;
    }

    v8 = 0;
    v112 = v51 & 0xC000000000000001;
    v119 = v126 + 16;
    v118 = v126 + 8;
    v101 = v108 + 16;
    v100 = v108 + 32;
    v99 = 0x80000001015C5210;
    v98 = (v108 + 8);
    v111 = v51;
    v117 = v25;
    v110 = v17;
    while (1)
    {
      v53 = v51;
      if (v112)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *(v51 + 8 * v8 + 32);
      }

      v17 = v54;
      v126 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v51 = type metadata accessor for CRLTableItemData();
      v55 = swift_dynamicCastClassUnconditional();
      v56 = qword_101AD9268;
      swift_beginAccess();
      v57 = v55 + v56;
      v59 = v122;
      v58 = v123;
      v116 = *v119;
      v116(v122, v57, v123);
      v60 = v120;
      Capsule.root.getter();
      v115 = *v118;
      v115(v59, v58);
      v13 = *(v121 + 24);
      v114 = sub_1005B981C(&unk_101A2D830);
      v61 = CROrderedDictionary.count.getter();
      sub_1011DAC64(v60, _s15CapsuleDatabaseVMa);
      v10 = (v61 - 1);
      if (__OFSUB__(v61, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v25 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_16;
      }

      v124 = v8;
      v125 = v17;
      v62 = v17;
      if ((v17[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] & 1) != 0 || !*&v17[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap])
      {
        swift_dynamicCastClassUnconditional();

        v65 = sub_1011FD0F0();

        swift_dynamicCastClassUnconditional();

        v66 = sub_1011FBBD8();

        v67 = sub_1011EE2D4(v65, v66);
        v63 = v68;
        v70 = v69;
        v72 = v71;

        v73 = &v62[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
        v74 = *&v62[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
        *v73 = v67;
        v73[1] = v63;
        v73[2] = v70;
        v73[3] = v72;

        v75 = v74;
        v53 = v111;
        v64 = v117;
        v52 = v113;
        sub_1011DAB1C(v75);
        if (!*(v63 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v63 = *&v17[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap + 8];

        v64 = v117;
        if (!*(v63 + 16))
        {
          goto LABEL_19;
        }
      }

      v76 = sub_1007C7EC0(v10);
      if ((v77 & 1) == 0)
      {
LABEL_19:

        v51 = v53;
        goto LABEL_20;
      }

      v78 = v108;
      v10 = *(v108 + 16);
      v79 = v102;
      v10(v102, *(v63 + 56) + *(v108 + 72) * v76, v52);

      v8 = v110;
      (*(v78 + 32))(v110, v79, v52);
      v17 = v125;
      v80 = swift_dynamicCastClassUnconditional();
      v81 = qword_101AD9268;
      swift_beginAccess();
      v82 = v80 + v81;
      v84 = v122;
      v83 = v123;
      v116(v122, v82, v123);
      v85 = v120;
      Capsule.root.getter();
      v115(v84, v83);
      v13 = CROrderedDictionary.count.getter();
      sub_1011DAC64(v85, _s15CapsuleDatabaseVMa);
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }

      v86 = sub_1011E5BDC(v13 - 1);
      v129 = 0.0;
      v130 = 1;
      sub_1005B981C(&unk_101A095E0);
      sub_1005FEB28();
      v87 = v107;
      CRRegister.init(wrappedValue:)();
      v88 = *(v103 + 20);
      *(v87 + v88) = _swiftEmptyDictionarySingleton;
      v129 = v86;
      v130 = 0;
      sub_1005B981C(&unk_101A2C7E0);
      CRRegister.wrappedValue.setter();
      *(v87 + v88) = _swiftEmptyDictionarySingleton;
      v89 = v8;
      v90 = v105;
      sub_1011DABFC(v87, v105, _s14ColumnCRDTDataVMa);
      v91 = v106;
      v10(v106, v89, v52);
      swift_storeEnumTagMultiPayload();
      v92 = type metadata accessor for CRLCommandTableInsertColumn(0);
      v93 = objc_allocWithZone(v92);
      v94 = v17;
      v52 = v113;
      UUID.init()();
      v95 = &v93[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_actionString];
      *v95 = 0xD00000000000001FLL;
      *(v95 + 1) = v99;
      *&v93[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_tableBoardItem] = v94;
      sub_1011DABFC(v90, &v93[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnDataToInsert], _s14ColumnCRDTDataVMa);
      sub_1011DABFC(v91, &v93[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_variant], type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
      v128.receiver = v93;
      v128.super_class = v92;
      v96 = objc_msgSendSuper2(&v128, "init");
      v51 = v111;
      sub_1011DAC64(v91, type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
      sub_1011DAC64(v90, _s14ColumnCRDTDataVMa);
      sub_100888700(v96, 0, 0, 4, 0);

      (*v98)(v110, v52);
      sub_1011DAC64(v87, _s14ColumnCRDTDataVMa);
      v64 = v117;
LABEL_20:
      v8 = v124 + 1;
      if (v64 == v124 + 1)
      {
        goto LABEL_33;
      }
    }
  }

  v25 = v24;
  if ((*(v24 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type) | 2) != 2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v125 = v8;
  v26 = [v1 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v8);
  v28 = v27;

  if (!(v28 >> 62))
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  v8 = v21;
  if ((v28 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v29 = v108;
LABEL_8:

    sub_1011DABFC(v25 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v13, type metadata accessor for CRLTableCellRange);
    sub_1005B981C(&qword_101A2D840);
    CRRegister.wrappedValue.getter();
    sub_1011DAC64(v13, type metadata accessor for CRLTableCellRange);
    v31 = *(v29 + 16);
    v32 = v113;
    v31(v8, v10 + v125[5], v113);
    sub_1011DAC64(v10, _s6CellIDVMa);
    v33 = sub_1011DB340(v8);
    if (v34)
    {
      (*(v29 + 8))(v8, v32);
    }

    else
    {
      v35 = sub_1011E5BDC(v33);
      v131 = 0.0;
      v132 = 1;
      sub_1005B981C(&unk_101A095E0);
      v126 = v30;
      v36 = v32;
      sub_1005FEB28();
      v124 = v8;
      v37 = v107;
      CRRegister.init(wrappedValue:)();
      v38 = *(v103 + 20);
      *(v37 + v38) = _swiftEmptyDictionarySingleton;
      v131 = v35;
      v132 = 0;
      sub_1005B981C(&unk_101A2C7E0);
      CRRegister.wrappedValue.setter();
      *(v37 + v38) = _swiftEmptyDictionarySingleton;
      v39 = v105;
      sub_1011DABFC(v37, v105, _s14ColumnCRDTDataVMa);
      v40 = v106;
      v41 = v8;
      v42 = v36;
      v31(v106, v41, v36);
      swift_storeEnumTagMultiPayload();
      v43 = type metadata accessor for CRLCommandTableInsertColumn(0);
      v44 = objc_allocWithZone(v43);
      v45 = v126;
      UUID.init()();
      v46 = &v44[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_actionString];
      *v46 = 0xD00000000000001FLL;
      *(v46 + 1) = 0x80000001015C5210;
      *&v44[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_tableBoardItem] = v45;
      v47 = v45;
      sub_1011DABFC(v39, &v44[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnDataToInsert], _s14ColumnCRDTDataVMa);
      sub_1011DABFC(v40, &v44[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_variant], type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
      v127.receiver = v44;
      v127.super_class = v43;
      v48 = objc_msgSendSuper2(&v127, "init");
      sub_1011DAC64(v40, type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
      sub_1011DAC64(v39, _s14ColumnCRDTDataVMa);
      sub_100888700(v48, 0, 0, 4, 0);

      (*(v29 + 8))(v124, v42);
      sub_1011DAC64(v107, _s14ColumnCRDTDataVMa);
    }

    goto LABEL_34;
  }

  v29 = v108;
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v28 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1011D0568()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A2C6F8);
  __chkstk_darwin(v2 - 8);
  v224 = &v207 - v3;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v225 = &v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  *&v223 = &v207 - v7;
  v226 = _s6CellIDVMa(0);
  __chkstk_darwin(v226);
  v227 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLTableCellRange(0);
  v219 = *(v9 - 8);
  v220 = v9;
  __chkstk_darwin(v9);
  v221 = &v207 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v228 = &v207 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v231 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v235 = (&v207 - v17);
  __chkstk_darwin(v18);
  v218 = &v207 - v19;
  __chkstk_darwin(v20);
  v22 = &v207 - v21;
  __chkstk_darwin(v23);
  v25 = &v207 - v24;
  v234 = sub_1005B981C(&unk_101A2C890);
  v26 = *(v234 - 1);
  __chkstk_darwin(v234);
  v233 = &v207 - v27;
  v28 = _s15CapsuleDatabaseVMa();
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v229 = &v207 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [v0 interactiveCanvasController];
  v32 = [v31 editorController];

  v222 = v32;
  if (v32)
  {
    v215 = v22;
    v33 = [v1 editingCoordinator];
    v232 = *&v33[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

    v34 = sub_1011D78CC();
    v236 = v14;
    if (v34)
    {
      if ((v34[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] | 2) == 2)
      {
        v216 = v34;
        v217 = v25;
        v35 = [v1 boardItems];
        type metadata accessor for CRLBoardItem(0);
        sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
        v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1011CA438(v36);
        v38 = v37;

        if (v38 >> 62)
        {
          v182 = _CocoaArrayWrapper.endIndex.getter();
          v39 = v217;
          if (v182)
          {
LABEL_6:
            if ((v38 & 0xC000000000000001) == 0)
            {
              if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_52;
              }

              v40 = *(v38 + 32);
LABEL_9:
              v41 = v40;

              v214 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
              v213 = type metadata accessor for CRLTableItemData();
              v42 = swift_dynamicCastClassUnconditional();
              v43 = qword_101AD9268;
              swift_beginAccess();
              v44 = v42 + v43;
              v45 = v233;
              v46 = v234;
              v211 = *(v26 + 16);
              v212 = v26 + 16;
              v211(v233, v44, v234);
              v47 = v229;
              Capsule.root.getter();
              v48 = *(v26 + 8);
              v231 = (v26 + 8);
              v210 = v48;
              v48(v45, v46);
              v209 = sub_1005B981C(&unk_101A2D830);
              v49 = CROrderedDictionary.count.getter();
              sub_1011DAC64(v47, _s15CapsuleDatabaseVMa);
              v50 = &selRef_isEnumeratingForUserSearch;
              v230 = v13;
              v235 = v41;
              if (v49 > 1)
              {
                goto LABEL_12;
              }

              v207 = v28;
              v208 = objc_opt_self();
              LODWORD(v38) = [v208 _atomicIncrementAssertCount];
              v240[0] = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, v240);
              StaticString.description.getter();
              v28 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v51 = String._bridgeToObjectiveC()();

              v52 = [v51 lastPathComponent];

              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v14 = v53;

              if (qword_1019F20A0 == -1)
              {
LABEL_11:
                v54 = static OS_os_log.crlAssert;
                sub_1005B981C(&qword_1019F54E0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10146CA70;
                *(inited + 56) = &type metadata for Int32;
                *(inited + 64) = &protocol witness table for Int32;
                *(inited + 32) = v38;
                v56 = sub_100006370(0, &qword_1019F4D30);
                *(inited + 96) = v56;
                v57 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
                *(inited + 104) = v57;
                *(inited + 72) = v28;
                *(inited + 136) = &type metadata for String;
                v58 = sub_1000053B0();
                *(inited + 112) = v26;
                *(inited + 120) = v14;
                *(inited + 176) = &type metadata for UInt;
                *(inited + 144) = v58;
                *(inited + 152) = 247;
                v59 = v240[0];
                *(inited + 216) = v56;
                *(inited + 224) = v57;
                *(inited + 184) = &protocol witness table for UInt;
                *(inited + 192) = v59;
                v60 = v28;
                v61 = v59;
                v62 = static os_log_type_t.error.getter();
                sub_100005404(v54, &_mh_execute_header, v62, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670);
                swift_arrayDestroy();
                v63 = static os_log_type_t.error.getter();
                sub_100005404(v54, &_mh_execute_header, v63, "Can't delete the last column in a table.", 40, 2, _swiftEmptyArrayStorage);

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

                [v208 handleFailureInFunction:v66 file:v67 lineNumber:247 isFatal:0 format:v68 args:v65];

                v13 = v230;
                v41 = v235;
                v14 = v236;
                v39 = v217;
                v50 = &selRef_isEnumeratingForUserSearch;
LABEL_12:
                v69 = v228;
                sub_1011DABFC(&v216[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], v228, type metadata accessor for CRLTableCellRange);
                sub_1005B981C(&qword_101A2D840);
                v70 = v227;
                CRRegister.wrappedValue.getter();
                sub_1011DAC64(v69, type metadata accessor for CRLTableCellRange);
                v71 = v70 + *(v226 + 20);
                v226 = *(v14 + 2);
                (v226)(v39, v71, v13);
                sub_1011DAC64(v70, _s6CellIDVMa);
                v72 = sub_1011DB340(v39);
                if (v73)
                {
                  v234 = objc_opt_self();
                  v74 = [v234 _atomicIncrementAssertCount];
                  v240[0] = [objc_allocWithZone(NSString) init];
                  sub_100604538(_swiftEmptyArrayStorage, v240);
                  StaticString.description.getter();
                  v75 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v76 = String._bridgeToObjectiveC()();

                  v77 = [v76 lastPathComponent];

                  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v80 = v79;

                  if (qword_1019F20A0 != -1)
                  {
                    swift_once();
                  }

                  v81 = static OS_os_log.crlAssert;
                  sub_1005B981C(&qword_1019F54E0);
                  v82 = swift_initStackObject();
                  *(v82 + 16) = xmmword_10146CA70;
                  *(v82 + 56) = &type metadata for Int32;
                  *(v82 + 64) = &protocol witness table for Int32;
                  *(v82 + 32) = v74;
                  v83 = sub_100006370(0, &qword_1019F4D30);
                  *(v82 + 96) = v83;
                  v84 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
                  *(v82 + 104) = v84;
                  *(v82 + 72) = v75;
                  *(v82 + 136) = &type metadata for String;
                  v85 = sub_1000053B0();
                  *(v82 + 112) = v78;
                  *(v82 + 120) = v80;
                  *(v82 + 176) = &type metadata for UInt;
                  *(v82 + 144) = v85;
                  *(v82 + 152) = 252;
                  v86 = v240[0];
                  *(v82 + 216) = v83;
                  *(v82 + 224) = v84;
                  *(v82 + 184) = &protocol witness table for UInt;
                  *(v82 + 192) = v86;
                  v87 = v75;
                  v88 = v86;
                  v89 = static os_log_type_t.error.getter();
                  sub_100005404(v81, &_mh_execute_header, v89, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v82);
                  swift_setDeallocating();
                  sub_1005B981C(&unk_1019F5670);
                  swift_arrayDestroy();
                  v90 = static os_log_type_t.error.getter();
                  sub_100005404(v81, &_mh_execute_header, v90, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                  type metadata accessor for __VaListBuilder();
                  v91 = swift_allocObject();
                  v91[2] = 8;
                  v91[3] = 0;
                  v91[4] = 0;
                  v91[5] = 0;
                  v92 = __VaListBuilder.va_list()();
                  StaticString.description.getter();
                  v93 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v94 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v95 = String._bridgeToObjectiveC()();

                  [v234 handleFailureInFunction:v93 file:v94 lineNumber:252 isFatal:0 format:v95 args:v92];

                  (*(v236 + 1))(v217, v230);
                  return;
                }

                v118 = v72;
                v119 = swift_dynamicCastClassUnconditional();
                v120 = qword_101AD9268;
                swift_beginAccess();
                v121 = v119 + v120;
                v122 = v233;
                v123 = v234;
                v211(v233, v121, v234);
                v124 = v229;
                Capsule.root.getter();
                v210(v122, v123);
                v125 = CROrderedDictionary.count.getter();
                sub_1011DAC64(v124, _s15CapsuleDatabaseVMa);
                if (__OFSUB__(v125, 1))
                {
                  __break(1u);
                }

                else
                {
                  v126 = v217;
                  if (v118 < v125 - 1)
                  {
                    v127 = v118 + 1;
                    goto LABEL_25;
                  }

                  v127 = v118 - 1;
                  if (!__OFSUB__(v118, 1))
                  {
LABEL_25:
                    v128 = v224;
                    v129 = v225;
                    sub_1011DB58C(v127, v225);
                    v130 = v236 + 48;
                    v131 = v129;
                    v132 = *(v236 + 6);
                    if (v132(v131, 1, v13) != 1)
                    {
                      goto LABEL_28;
                    }

                    v233 = v132;
                    v234 = v130;
                    v231 = objc_opt_self();
                    LODWORD(v125) = [v231 _atomicIncrementAssertCount];
                    v239 = [objc_allocWithZone(NSString) init];
                    sub_100604538(_swiftEmptyArrayStorage, &v239);
                    StaticString.description.getter();
                    v229 = String._bridgeToObjectiveC()();

                    StaticString.description.getter();
                    v133 = String._bridgeToObjectiveC()();

                    v134 = [v133 lastPathComponent];

                    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v50 = v135;

                    if (qword_1019F20A0 == -1)
                    {
LABEL_27:
                      v136 = static OS_os_log.crlAssert;
                      sub_1005B981C(&qword_1019F54E0);
                      v137 = swift_initStackObject();
                      *(v137 + 16) = xmmword_10146CA70;
                      *(v137 + 56) = &type metadata for Int32;
                      *(v137 + 64) = &protocol witness table for Int32;
                      *(v137 + 32) = v125;
                      v138 = sub_100006370(0, &qword_1019F4D30);
                      *(v137 + 96) = v138;
                      v139 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
                      *(v137 + 104) = v139;
                      v140 = v229;
                      *(v137 + 72) = v229;
                      *(v137 + 136) = &type metadata for String;
                      v141 = sub_1000053B0();
                      *(v137 + 112) = v13;
                      *(v137 + 120) = v50;
                      *(v137 + 176) = &type metadata for UInt;
                      *(v137 + 144) = v141;
                      *(v137 + 152) = 255;
                      v142 = v239;
                      *(v137 + 216) = v138;
                      *(v137 + 224) = v139;
                      *(v137 + 184) = &protocol witness table for UInt;
                      *(v137 + 192) = v142;
                      v143 = v140;
                      v144 = v142;
                      v145 = static os_log_type_t.error.getter();
                      sub_100005404(v136, &_mh_execute_header, v145, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v137);
                      swift_setDeallocating();
                      sub_1005B981C(&unk_1019F5670);
                      swift_arrayDestroy();
                      v146 = static os_log_type_t.error.getter();
                      sub_100005404(v136, &_mh_execute_header, v146, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                      type metadata accessor for __VaListBuilder();
                      v147 = swift_allocObject();
                      v147[2] = 8;
                      v147[3] = 0;
                      v147[4] = 0;
                      v147[5] = 0;
                      v148 = __VaListBuilder.va_list()();
                      StaticString.description.getter();
                      v149 = String._bridgeToObjectiveC()();

                      StaticString.description.getter();
                      v150 = String._bridgeToObjectiveC()();

                      StaticString.description.getter();
                      v151 = String._bridgeToObjectiveC()();

                      [v231 handleFailureInFunction:v149 file:v150 lineNumber:255 isFatal:0 format:v151 args:v148];

                      v13 = v230;
                      v126 = v217;
                      v128 = v224;
                      v41 = v235;
                      v132 = v233;
LABEL_28:
                      v152 = v223;
                      sub_10063FD1C(v225, v223);
                      if (v132(v152, 1, v13) == 1)
                      {
                        (*(v236 + 1))(v126, v13);

                        sub_10000CAAC(v152, &qword_1019F6990);
                      }

                      else
                      {
                        v153 = v215;
                        (*(v236 + 4))(v215, v152, v13);
                        v154 = v218;
                        v155 = v226;
                        (v226)(v218, v153, v13);
                        v156 = v41;
                        sub_1011C8D98(v154, v156, v128);
                        if ((*(v219 + 48))(v128, 1, v220) == 1)
                        {

                          v157 = *(v236 + 1);
                          v157(v153, v13);
                          v157(v126, v13);
                          sub_10000CAAC(v128, &qword_101A2C6F8);
                        }

                        else
                        {
                          v158 = v221;
                          sub_1011DAAB4(v128, v221, type metadata accessor for CRLTableCellRange);
                          v159 = v228;
                          sub_1011DABFC(v158, v228, type metadata accessor for CRLTableCellRange);
                          v160 = type metadata accessor for CRLTableCellSelection(0);
                          v161 = objc_allocWithZone(v160);
                          sub_1011DABFC(v159, &v161[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], type metadata accessor for CRLTableCellRange);
                          v161[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] = 2;
                          v238.receiver = v161;
                          v238.super_class = v160;
                          v162 = objc_msgSendSuper2(&v238, "init");
                          v234 = v162;
                          v235 = type metadata accessor for CRLTableCellRange;
                          sub_1011DAC64(v159, type metadata accessor for CRLTableCellRange);
                          v163 = v13;
                          v164 = v222;
                          v165 = v155;
                          v166 = [v222 selectionPath];
                          v167 = [v166 selectionPathReplacingMostSpecificLocationOfSelection:v216 withSelection:v162];

                          sub_1005B981C(&qword_101A1DBB0);
                          v168 = v236;
                          v169 = (v236[80] + 32) & ~v236[80];
                          v170 = swift_allocObject();
                          *(v170 + 16) = xmmword_10146C6B0;
                          v165(v170 + v169, v217, v163);
                          v171 = type metadata accessor for CRLCommandTableRemoveColumns();
                          v172 = objc_allocWithZone(v171);
                          v173 = &v172[OBJC_IVAR____TtC8Freeform28CRLCommandTableRemoveColumns_actionString];
                          *v173 = 0xD00000000000001DLL;
                          *(v173 + 1) = 0x80000001015C51C0;
                          *&v172[OBJC_IVAR____TtC8Freeform28CRLCommandTableRemoveColumns_tableBoardItem] = v156;
                          *&v172[OBJC_IVAR____TtC8Freeform28CRLCommandTableRemoveColumns_columnsToRemove] = v170;
                          v237.receiver = v172;
                          v237.super_class = v171;
                          v174 = v156;
                          v175 = objc_msgSendSuper2(&v237, "init");
                          v176 = v167;
                          v177 = [v164 selectionPath];
                          v178 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithForwardSelectionPath:v176 reverseSelectionPath:v177];

                          v179 = v178;
                          v180 = v232;
                          sub_100888700(v175, 0, v178, 4, 0);

                          sub_1011DAC64(v221, v235);
                          v181 = *(v168 + 1);
                          v181(v215, v163);
                          v181(v217, v163);
                        }
                      }

                      return;
                    }

LABEL_55:
                    swift_once();
                    goto LABEL_27;
                  }
                }

                __break(1u);
                goto LABEL_55;
              }

LABEL_52:
              swift_once();
              goto LABEL_11;
            }

LABEL_50:
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_9;
          }
        }

        else
        {
          v39 = v217;
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_6;
          }
        }

        v34 = v216;
      }
    }

    sub_10088E3FC(0);
    v183 = [v1 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v39);
    v185 = v184;

    if (v185 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if (!v28)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v28 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_48;
      }
    }

    if (v28 < 1)
    {
      __break(1u);
      goto LABEL_50;
    }

    v230 = v13;
    v186 = 0;
    v233 = (v185 & 0xC000000000000001);
    v226 = (v14 + 32);
    v227 = v14 + 16;
    v224 = v14 + 8;
    v225 = 0x80000001015C51C0;
    v223 = xmmword_10146C6B0;
    v228 = v28;
    v229 = v185;
    v187 = v231;
    do
    {
      if (v233)
      {
        v202 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v202 = *(v185 + 8 * v186 + 32);
      }

      v203 = v202;
      type metadata accessor for CRLTableItemData();
      swift_dynamicCastClassUnconditional();

      v204 = sub_1011FD0F0();

      v205 = *(v204 + 16);
      if (v205)
      {
        v188 = (v14[80] + 32) & ~v14[80];
        v189 = v204 + v188 + *(v236 + 9) * (v205 - 1);
        v190 = *(v236 + 2);
        v191 = v230;
        v234 = v203;
        v190(v187, v189, v230);

        (*(v236 + 4))(v235, v187, v191);
        sub_1005B981C(&qword_101A1DBB0);
        v192 = swift_allocObject();
        *(v192 + 16) = v223;
        v193 = v192 + v188;
        v194 = v235;
        v14 = v236;
        v190(v193, v235, v191);
        v28 = v228;
        v195 = type metadata accessor for CRLCommandTableRemoveColumns();
        v196 = objc_allocWithZone(v195);
        v197 = &v196[OBJC_IVAR____TtC8Freeform28CRLCommandTableRemoveColumns_actionString];
        *v197 = 0xD00000000000001DLL;
        *(v197 + 1) = v225;
        v198 = v234;
        *&v196[OBJC_IVAR____TtC8Freeform28CRLCommandTableRemoveColumns_tableBoardItem] = v234;
        *&v196[OBJC_IVAR____TtC8Freeform28CRLCommandTableRemoveColumns_columnsToRemove] = v192;
        v242.receiver = v196;
        v242.super_class = v195;
        v199 = v198;
        v200 = objc_msgSendSuper2(&v242, "init");
        sub_100888700(v200, 0, 0, 4, 0);

        v201 = v191;
        v185 = v229;
        (*(v14 + 1))(v194, v201);
      }

      else
      {
      }

      ++v186;
    }

    while (v28 != v186);
LABEL_48:

    v206 = v232;
    sub_10088E600(0);

    return;
  }

  v236 = objc_opt_self();
  v96 = [v236 _atomicIncrementAssertCount];
  v241 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v241);
  StaticString.description.getter();
  v97 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v98 = String._bridgeToObjectiveC()();

  v99 = [v98 lastPathComponent];

  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v101;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v103 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v104 = swift_initStackObject();
  *(v104 + 16) = xmmword_10146CA70;
  *(v104 + 56) = &type metadata for Int32;
  *(v104 + 64) = &protocol witness table for Int32;
  *(v104 + 32) = v96;
  v105 = sub_100006370(0, &qword_1019F4D30);
  *(v104 + 96) = v105;
  v106 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
  *(v104 + 104) = v106;
  *(v104 + 72) = v97;
  *(v104 + 136) = &type metadata for String;
  v107 = sub_1000053B0();
  *(v104 + 112) = v100;
  *(v104 + 120) = v102;
  *(v104 + 176) = &type metadata for UInt;
  *(v104 + 184) = &protocol witness table for UInt;
  *(v104 + 144) = v107;
  *(v104 + 152) = 238;
  v108 = v241;
  *(v104 + 216) = v105;
  *(v104 + 224) = v106;
  *(v104 + 192) = v108;
  v109 = v97;
  v110 = v108;
  v111 = static os_log_type_t.error.getter();
  sub_100005404(v103, &_mh_execute_header, v111, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v104);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v112 = static os_log_type_t.error.getter();
  sub_100005404(v103, &_mh_execute_header, v112, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v113 = swift_allocObject();
  v113[2] = 8;
  v113[3] = 0;
  v113[4] = 0;
  v113[5] = 0;
  v114 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v115 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v116 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v117 = String._bridgeToObjectiveC()();

  [v236 handleFailureInFunction:v115 file:v116 lineNumber:238 isFatal:0 format:v117 args:v114];
}

void sub_1011D2388()
{
  v2 = v0;
  inserted = type metadata accessor for CRLCommandTableInsertRow.InsertPosition(0);
  __chkstk_darwin(inserted);
  v91 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = _s11RowCRDTDataVMa(0);
  __chkstk_darwin(v88);
  v90 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v92 = v84 - v6;
  v7 = _s6CellIDVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v10 - 8);
  v12 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v100 = *(v13 - 8);
  v101 = v13;
  __chkstk_darwin(v13);
  v87 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = v84 - v16;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v84 - v19;
  v21 = [v0 editingCoordinator];
  v22 = *&v21[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

  v93 = v22;
  sub_10088E3FC(0);
  v23 = sub_1011D78CC();
  if (!v23)
  {
LABEL_14:
    v12 = v101;
    v47 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v48 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v48);
    v50 = v49;

    if (v50 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      v52 = v100;
      if (v51)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v52 = v100;
      if (v51)
      {
LABEL_16:
        if (v51 < 1)
        {
          __break(1u);
          goto LABEL_34;
        }

        v53 = 0;
        v97 = v50 & 0xC000000000000001;
        v95 = v52 + 2;
        v86 = v52 + 4;
        v85 = 0x80000001015C5180;
        v84[1] = v52 + 1;
        v98 = v51;
        v99 = v50;
        do
        {
          if (v97)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v54 = *&v50[8 * v53 + 32];
          }

          v55 = v54;
          if ((v54[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] & 1) != 0 || !*&v54[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap])
          {
            type metadata accessor for CRLTableItemData();
            swift_dynamicCastClassUnconditional();

            v57 = sub_1011FD0F0();

            swift_dynamicCastClassUnconditional();

            v58 = sub_1011FBBD8();

            v59 = sub_1011EE2D4(v57, v58);
            v61 = v60;
            v63 = v62;
            v56 = v64;

            v65 = &v55[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
            v66 = *&v55[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
            *v65 = v59;
            v65[1] = v61;
            v65[2] = v63;
            v65[3] = v56;

            v52 = v100;
            v12 = v101;
            sub_1011DAB1C(v66);
            if (!*(v56 + 16))
            {
              goto LABEL_18;
            }
          }

          else
          {
            v56 = *&v54[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap + 24];

            if (!*(v56 + 16))
            {
              goto LABEL_18;
            }
          }

          v67 = sub_1007C7EC0(0);
          if (v68)
          {
            v69 = *(v56 + 56) + v52[9] * v67;
            v94 = v52[2];
            v70 = v87;
            v94(v87, v69, v12);

            v71 = v96;
            (v52[4])(v96, v70, v12);
            v72 = sub_1011E3F2C(0);
            v104 = 0.0;
            v105 = 1;
            sub_1005B981C(&unk_101A095E0);
            sub_1005FEB28();
            v73 = v92;
            CRRegister.init(wrappedValue:)();
            v74 = *(v88 + 20);
            *(v73 + v74) = _swiftEmptyDictionarySingleton;
            v104 = v72;
            v105 = 0;
            sub_1005B981C(&unk_101A2C7E0);
            CRRegister.wrappedValue.setter();
            *(v73 + v74) = _swiftEmptyDictionarySingleton;
            v75 = v90;
            sub_1011DABFC(v73, v90, _s11RowCRDTDataVMa);
            v76 = v91;
            v94(v91, v71, v101);
            swift_storeEnumTagMultiPayload();
            v77 = type metadata accessor for CRLCommandTableInsertRow(0);
            v78 = objc_allocWithZone(v77);
            v79 = v55;
            UUID.init()();
            v80 = &v78[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_actionString];
            *v80 = 0xD00000000000001CLL;
            *(v80 + 1) = v85;
            *&v78[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_tableBoardItem] = v79;
            sub_1011DABFC(v75, &v78[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowDataToInsert], _s11RowCRDTDataVMa);
            sub_1011DABFC(v76, &v78[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_variant], type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
            v103.receiver = v78;
            v103.super_class = v77;
            v81 = objc_msgSendSuper2(&v103, "init");
            v82 = v76;
            v12 = v101;
            sub_1011DAC64(v82, type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
            sub_1011DAC64(v75, _s11RowCRDTDataVMa);
            sub_100888700(v81, 0, 0, 4, 0);

            v52 = v100;
            (v100)[1](v96, v12);
            sub_1011DAC64(v73, _s11RowCRDTDataVMa);
            goto LABEL_19;
          }

LABEL_18:

LABEL_19:
          v53 = v53 + 1;
          v50 = v99;
        }

        while (v98 != v53);
      }
    }

LABEL_32:
    v83 = v93;
    sub_10088E600(0);

    return;
  }

  v1 = v23;
  if (*(v23 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type) > 1u)
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = [v2 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v25);
  v27 = v26;

  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  if ((v27 & 0xC000000000000001) != 0)
  {
LABEL_34:
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v28 = v100;
LABEL_8:

    sub_1011DABFC(v1 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v12, type metadata accessor for CRLTableCellRange);
    sub_1005B981C(&qword_101A2D840);
    CRRegister.wrappedValue.getter();
    sub_1011DAC64(v12, type metadata accessor for CRLTableCellRange);
    v30 = v28[2];
    v31 = v101;
    v30(v20, v9, v101);
    sub_1011DAC64(v9, _s6CellIDVMa);
    v32 = sub_1011DB2A8(v20);
    if (v33)
    {
      (v28)[1](v20, v31);
    }

    else
    {
      v34 = sub_1011E3F2C(v32);
      v104 = 0.0;
      v105 = 1;
      sub_1005B981C(&unk_101A095E0);
      sub_1005FEB28();
      v35 = v92;
      CRRegister.init(wrappedValue:)();
      v98 = v29;
      v99 = v20;
      v36 = v31;
      v37 = *(v88 + 20);
      *(v35 + v37) = _swiftEmptyDictionarySingleton;
      v104 = v34;
      v105 = 0;
      sub_1005B981C(&unk_101A2C7E0);
      CRRegister.wrappedValue.setter();
      *(v35 + v37) = _swiftEmptyDictionarySingleton;
      v100 = v1;
      v38 = v90;
      sub_1011DABFC(v35, v90, _s11RowCRDTDataVMa);
      v39 = v91;
      v40 = v20;
      v41 = v36;
      v30(v91, v40, v36);
      swift_storeEnumTagMultiPayload();
      v42 = type metadata accessor for CRLCommandTableInsertRow(0);
      v43 = objc_allocWithZone(v42);
      v44 = v98;
      UUID.init()();
      v45 = &v43[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_actionString];
      *v45 = 0xD00000000000001CLL;
      *(v45 + 1) = 0x80000001015C5180;
      *&v43[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_tableBoardItem] = v44;
      sub_1011DABFC(v38, &v43[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowDataToInsert], _s11RowCRDTDataVMa);
      sub_1011DABFC(v39, &v43[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_variant], type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
      v102.receiver = v43;
      v102.super_class = v42;
      v46 = objc_msgSendSuper2(&v102, "init");
      sub_1011DAC64(v39, type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
      sub_1011DAC64(v38, _s11RowCRDTDataVMa);
      sub_100888700(v46, 0, 0, 4, 0);

      (v28)[1](v99, v41);
      sub_1011DAC64(v35, _s11RowCRDTDataVMa);
    }

    goto LABEL_32;
  }

  v28 = v100;
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v27 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1011D3040()
{
  v1 = v0;
  v125 = sub_1005B981C(&unk_101A2C890);
  v128 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v100 - v2;
  v123 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v123);
  v122 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  inserted = type metadata accessor for CRLCommandTableInsertRow.InsertPosition(0);
  __chkstk_darwin(inserted);
  v108 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = _s11RowCRDTDataVMa(0);
  __chkstk_darwin(v105);
  v107 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = &v100 - v7;
  v8 = _s6CellIDVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v11);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for UUID();
  v110 = *(v115 - 8);
  __chkstk_darwin(v115);
  v104 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v100 - v20;
  v22 = [v0 editingCoordinator];
  v23 = *&v22[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

  v111 = v23;
  sub_10088E3FC(0);
  v24 = sub_1011D78CC();
  if (!v24)
  {
LABEL_14:
    v13 = [v1 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v51);
    v53 = v52;

    if (v53 >> 62)
    {
      goto LABEL_37;
    }

    v25 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
    v54 = v115;
    if (!v25)
    {
LABEL_33:

LABEL_34:
      v99 = v111;
      sub_10088E600(0);

      return;
    }

    if (v25 < 1)
    {
      __break(1u);
      goto LABEL_39;
    }

    v21 = 0;
    v114 = v53 & 0xC000000000000001;
    v121 = v128 + 16;
    v120 = v128 + 8;
    v103 = v110 + 16;
    v102 = v110 + 32;
    v101 = 0x80000001015C5180;
    v100 = (v110 + 8);
    v113 = v53;
    v119 = v25;
    v112 = v17;
    while (1)
    {
      v55 = v53;
      if (v114)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v56 = *(v53 + 8 * v21 + 32);
      }

      v17 = v56;
      v128 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v53 = type metadata accessor for CRLTableItemData();
      v57 = swift_dynamicCastClassUnconditional();
      v58 = qword_101AD9268;
      swift_beginAccess();
      v59 = v57 + v58;
      v61 = v124;
      v60 = v125;
      v118 = *v121;
      v118(v124, v59, v125);
      v62 = v122;
      Capsule.root.getter();
      v117 = *v120;
      v117(v61, v60);
      v13 = *(v123 + 20);
      v116 = sub_1005B981C(&unk_101A2C7D0);
      v63 = CROrderedDictionary.count.getter();
      sub_1011DAC64(v62, _s15CapsuleDatabaseVMa);
      v10 = (v63 - 1);
      if (__OFSUB__(v63, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v25 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_16;
      }

      v126 = v21;
      v127 = v17;
      v64 = v17;
      if ((v17[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] & 1) != 0 || !*&v17[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap])
      {
        swift_dynamicCastClassUnconditional();

        v67 = sub_1011FD0F0();

        swift_dynamicCastClassUnconditional();

        v68 = sub_1011FBBD8();

        v69 = sub_1011EE2D4(v67, v68);
        v71 = v70;
        v73 = v72;
        v65 = v74;

        v75 = &v64[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
        v76 = *&v64[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
        *v75 = v69;
        v75[1] = v71;
        v75[2] = v73;
        v75[3] = v65;

        v77 = v76;
        v55 = v113;
        v66 = v119;
        v54 = v115;
        sub_1011DAB1C(v77);
        if (!*(v65 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v65 = *&v17[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap + 24];

        v66 = v119;
        if (!*(v65 + 16))
        {
          goto LABEL_19;
        }
      }

      v78 = sub_1007C7EC0(v10);
      if ((v79 & 1) == 0)
      {
LABEL_19:

        v53 = v55;
        goto LABEL_20;
      }

      v80 = v110;
      v10 = *(v110 + 16);
      v81 = v104;
      v10(v104, *(v65 + 56) + *(v110 + 72) * v78, v54);

      v21 = v112;
      (*(v80 + 32))(v112, v81, v54);
      v17 = v127;
      v82 = swift_dynamicCastClassUnconditional();
      v83 = qword_101AD9268;
      swift_beginAccess();
      v84 = v82 + v83;
      v86 = v124;
      v85 = v125;
      v118(v124, v84, v125);
      v87 = v122;
      Capsule.root.getter();
      v117(v86, v85);
      v13 = CROrderedDictionary.count.getter();
      sub_1011DAC64(v87, _s15CapsuleDatabaseVMa);
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }

      v88 = sub_1011E3F2C(v13 - 1);
      v131 = 0.0;
      v132 = 1;
      sub_1005B981C(&unk_101A095E0);
      sub_1005FEB28();
      v89 = v109;
      CRRegister.init(wrappedValue:)();
      v90 = *(v105 + 20);
      *(v89 + v90) = _swiftEmptyDictionarySingleton;
      v131 = v88;
      v132 = 0;
      sub_1005B981C(&unk_101A2C7E0);
      CRRegister.wrappedValue.setter();
      *(v89 + v90) = _swiftEmptyDictionarySingleton;
      v91 = v21;
      v92 = v107;
      sub_1011DABFC(v89, v107, _s11RowCRDTDataVMa);
      v93 = v108;
      v10(v108, v91, v54);
      swift_storeEnumTagMultiPayload();
      v94 = type metadata accessor for CRLCommandTableInsertRow(0);
      v95 = objc_allocWithZone(v94);
      v96 = v17;
      v54 = v115;
      UUID.init()();
      v97 = &v95[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_actionString];
      *v97 = 0xD00000000000001CLL;
      *(v97 + 1) = v101;
      *&v95[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_tableBoardItem] = v96;
      sub_1011DABFC(v92, &v95[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowDataToInsert], _s11RowCRDTDataVMa);
      sub_1011DABFC(v93, &v95[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_variant], type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
      v130.receiver = v95;
      v130.super_class = v94;
      v98 = objc_msgSendSuper2(&v130, "init");
      v53 = v113;
      sub_1011DAC64(v93, type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
      sub_1011DAC64(v92, _s11RowCRDTDataVMa);
      sub_100888700(v98, 0, 0, 4, 0);

      (*v100)(v112, v54);
      sub_1011DAC64(v89, _s11RowCRDTDataVMa);
      v66 = v119;
LABEL_20:
      v21 = v126 + 1;
      if (v66 == v126 + 1)
      {
        goto LABEL_33;
      }
    }
  }

  v25 = v24;
  if (*(v24 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type) > 1u)
  {
LABEL_13:

    goto LABEL_14;
  }

  v127 = v21;
  v26 = [v1 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v27);
  v29 = v28;

  if (!(v29 >> 62))
  {
    v21 = v127;
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v50 = _CocoaArrayWrapper.endIndex.getter();
  v21 = v127;
  if (!v50)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  if ((v29 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v30 = v110;
LABEL_8:

    sub_1011DABFC(v25 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v13, type metadata accessor for CRLTableCellRange);
    sub_1005B981C(&qword_101A2D840);
    CRRegister.wrappedValue.getter();
    sub_1011DAC64(v13, type metadata accessor for CRLTableCellRange);
    v32 = *(v30 + 16);
    v33 = v115;
    v32(v21, v10, v115);
    sub_1011DAC64(v10, _s6CellIDVMa);
    v34 = sub_1011DB2A8(v21);
    if (v35)
    {
      (*(v30 + 8))(v21, v33);
    }

    else
    {
      v36 = sub_1011E3F2C(v34);
      v133 = 0.0;
      v134 = 1;
      sub_1005B981C(&unk_101A095E0);
      v128 = v31;
      v37 = v33;
      sub_1005FEB28();
      v38 = v109;
      CRRegister.init(wrappedValue:)();
      v39 = *(v105 + 20);
      *(v38 + v39) = _swiftEmptyDictionarySingleton;
      v133 = v36;
      v134 = 0;
      sub_1005B981C(&unk_101A2C7E0);
      CRRegister.wrappedValue.setter();
      *(v38 + v39) = _swiftEmptyDictionarySingleton;
      v40 = v107;
      sub_1011DABFC(v38, v107, _s11RowCRDTDataVMa);
      v41 = v108;
      v42 = v21;
      v43 = v37;
      v32(v108, v42, v37);
      swift_storeEnumTagMultiPayload();
      v44 = type metadata accessor for CRLCommandTableInsertRow(0);
      v45 = objc_allocWithZone(v44);
      v46 = v128;
      UUID.init()();
      v47 = &v45[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_actionString];
      *v47 = 0xD00000000000001CLL;
      *(v47 + 1) = 0x80000001015C5180;
      *&v45[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_tableBoardItem] = v46;
      v48 = v46;
      sub_1011DABFC(v40, &v45[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowDataToInsert], _s11RowCRDTDataVMa);
      sub_1011DABFC(v41, &v45[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_variant], type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
      v129.receiver = v45;
      v129.super_class = v44;
      v49 = objc_msgSendSuper2(&v129, "init");
      sub_1011DAC64(v41, type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
      sub_1011DAC64(v40, _s11RowCRDTDataVMa);
      sub_100888700(v49, 0, 0, 4, 0);

      (*(v30 + 8))(v127, v43);
      sub_1011DAC64(v109, _s11RowCRDTDataVMa);
    }

    goto LABEL_34;
  }

  v30 = v110;
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v29 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1011D40C4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A2C6F8);
  __chkstk_darwin(v2 - 8);
  v226 = &v208 - v3;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v227 = &v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  *&v224 = &v208 - v7;
  v8 = _s6CellIDVMa(0);
  __chkstk_darwin(v8 - 8);
  v228 = (&v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CRLTableCellRange(0);
  v221 = *(v10 - 8);
  v222 = v10;
  __chkstk_darwin(v10);
  v12 = &v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v229 = &v208 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v232 = &v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v236 = (&v208 - v19);
  __chkstk_darwin(v20);
  v220 = &v208 - v21;
  __chkstk_darwin(v22);
  v225 = &v208 - v23;
  __chkstk_darwin(v24);
  v26 = &v208 - v25;
  v235 = sub_1005B981C(&unk_101A2C890);
  v27 = *(v235 - 1);
  __chkstk_darwin(v235);
  v234 = &v208 - v28;
  v230 = _s15CapsuleDatabaseVMa();
  *&v29 = __chkstk_darwin(v230).n128_u64[0];
  v31 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v0 interactiveCanvasController];
  v33 = [v32 editorController];

  v223 = v33;
  if (v33)
  {
    v219 = v12;
    v34 = [v1 editingCoordinator];
    v233 = *&v34[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

    v35 = sub_1011D78CC();
    v237 = v16;
    if (v35)
    {
      if (v35[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] <= 1u)
      {
        v217 = v35;
        v218 = v26;
        v36 = [v1 boardItems];
        type metadata accessor for CRLBoardItem(0);
        sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
        v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1011CA438(v37);
        v39 = v38;

        if (v39 >> 62)
        {
          v182 = _CocoaArrayWrapper.endIndex.getter();
          v40 = v218;
          if (v182)
          {
LABEL_6:
            if ((v39 & 0xC000000000000001) == 0)
            {
              if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_52;
              }

              v41 = *(v39 + 32);
LABEL_9:
              v42 = v41;

              v216 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
              v215 = type metadata accessor for CRLTableItemData();
              v43 = swift_dynamicCastClassUnconditional();
              v44 = qword_101AD9268;
              swift_beginAccess();
              v45 = v43 + v44;
              v46 = v234;
              v47 = v235;
              v213 = *(v27 + 16);
              v214 = v27 + 16;
              v213(v234, v45, v235);
              Capsule.root.getter();
              v48 = *(v27 + 8);
              v232 = (v27 + 8);
              v212 = v48;
              v48(v46, v47);
              v211 = sub_1005B981C(&unk_101A2C7D0);
              v49 = CROrderedDictionary.count.getter();
              sub_1011DAC64(v31, _s15CapsuleDatabaseVMa);
              v50 = v15;
              v231 = v15;
              v236 = v42;
              if (v49 > 1)
              {
                goto LABEL_12;
              }

              v210 = objc_opt_self();
              LODWORD(v39) = [v210 _atomicIncrementAssertCount];
              v241[0] = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, v241);
              StaticString.description.getter();
              v209 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v51 = String._bridgeToObjectiveC()();

              v52 = [v51 lastPathComponent];

              v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v53;

              if (qword_1019F20A0 == -1)
              {
LABEL_11:
                v54 = static OS_os_log.crlAssert;
                sub_1005B981C(&qword_1019F54E0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10146CA70;
                *(inited + 56) = &type metadata for Int32;
                *(inited + 64) = &protocol witness table for Int32;
                *(inited + 32) = v39;
                v56 = sub_100006370(0, &qword_1019F4D30);
                *(inited + 96) = v56;
                v57 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
                *(inited + 104) = v57;
                v58 = v209;
                *(inited + 72) = v209;
                *(inited + 136) = &type metadata for String;
                v59 = sub_1000053B0();
                *(inited + 112) = v208;
                *(inited + 120) = v27;
                *(inited + 176) = &type metadata for UInt;
                *(inited + 144) = v59;
                *(inited + 152) = 339;
                v60 = v241[0];
                *(inited + 216) = v56;
                *(inited + 224) = v57;
                *(inited + 184) = &protocol witness table for UInt;
                *(inited + 192) = v60;
                v61 = v58;
                v62 = v60;
                v63 = static os_log_type_t.error.getter();
                sub_100005404(v54, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670);
                swift_arrayDestroy();
                v64 = static os_log_type_t.error.getter();
                sub_100005404(v54, &_mh_execute_header, v64, "Can't delete the last row in a table.", 37, 2, _swiftEmptyArrayStorage);

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

                [v210 handleFailureInFunction:v67 file:v68 lineNumber:339 isFatal:0 format:v69 args:v66];

                v50 = v231;
                v42 = v236;
                v16 = v237;
                v40 = v218;
LABEL_12:
                v70 = v229;
                sub_1011DABFC(&v217[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], v229, type metadata accessor for CRLTableCellRange);
                sub_1005B981C(&qword_101A2D840);
                v71 = v228;
                CRRegister.wrappedValue.getter();
                sub_1011DAC64(v70, type metadata accessor for CRLTableCellRange);
                v72 = *(v16 + 2);
                v72(v40, v71, v50);
                sub_1011DAC64(v71, _s6CellIDVMa);
                v73 = sub_1011DB2A8(v40);
                if (v74)
                {
                  v235 = objc_opt_self();
                  v75 = [v235 _atomicIncrementAssertCount];
                  v241[0] = [objc_allocWithZone(NSString) init];
                  sub_100604538(_swiftEmptyArrayStorage, v241);
                  StaticString.description.getter();
                  v76 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v77 = String._bridgeToObjectiveC()();

                  v78 = [v77 lastPathComponent];

                  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v81 = v80;

                  if (qword_1019F20A0 != -1)
                  {
                    swift_once();
                  }

                  v82 = static OS_os_log.crlAssert;
                  sub_1005B981C(&qword_1019F54E0);
                  v83 = swift_initStackObject();
                  *(v83 + 16) = xmmword_10146CA70;
                  *(v83 + 56) = &type metadata for Int32;
                  *(v83 + 64) = &protocol witness table for Int32;
                  *(v83 + 32) = v75;
                  v84 = sub_100006370(0, &qword_1019F4D30);
                  *(v83 + 96) = v84;
                  v85 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
                  *(v83 + 104) = v85;
                  *(v83 + 72) = v76;
                  *(v83 + 136) = &type metadata for String;
                  v86 = sub_1000053B0();
                  *(v83 + 112) = v79;
                  *(v83 + 120) = v81;
                  *(v83 + 176) = &type metadata for UInt;
                  *(v83 + 144) = v86;
                  *(v83 + 152) = 344;
                  v87 = v241[0];
                  *(v83 + 216) = v84;
                  *(v83 + 224) = v85;
                  *(v83 + 184) = &protocol witness table for UInt;
                  *(v83 + 192) = v87;
                  v88 = v76;
                  v89 = v87;
                  v90 = static os_log_type_t.error.getter();
                  sub_100005404(v82, &_mh_execute_header, v90, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v83);
                  swift_setDeallocating();
                  sub_1005B981C(&unk_1019F5670);
                  swift_arrayDestroy();
                  v91 = static os_log_type_t.error.getter();
                  sub_100005404(v82, &_mh_execute_header, v91, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                  type metadata accessor for __VaListBuilder();
                  v92 = swift_allocObject();
                  v92[2] = 8;
                  v92[3] = 0;
                  v92[4] = 0;
                  v92[5] = 0;
                  v93 = __VaListBuilder.va_list()();
                  StaticString.description.getter();
                  v94 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v95 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v96 = String._bridgeToObjectiveC()();

                  [v235 handleFailureInFunction:v94 file:v95 lineNumber:344 isFatal:0 format:v96 args:v93];

                  (*(v237 + 1))(v218, v231);
                  return;
                }

                v119 = v73;
                v228 = v72;
                v120 = swift_dynamicCastClassUnconditional();
                v121 = qword_101AD9268;
                swift_beginAccess();
                v122 = v120 + v121;
                v123 = v234;
                v124 = v235;
                v213(v234, v122, v235);
                Capsule.root.getter();
                v212(v123, v124);
                v125 = CROrderedDictionary.count.getter();
                sub_1011DAC64(v31, _s15CapsuleDatabaseVMa);
                if (__OFSUB__(v125, 1))
                {
                  __break(1u);
                }

                else
                {
                  v126 = 1;
                  if (v119 >= v125 - 1)
                  {
                    v126 = -1;
                  }

                  v127 = v119 + v126;
                  v128 = v226;
                  if (!__OFADD__(v119, v126))
                  {
                    v129 = v227;
                    sub_1011DB3D8(v127, v227);
                    v130 = v237 + 48;
                    v131 = *(v237 + 6);
                    if (v131(v129, 1, v50) != 1)
                    {
                      goto LABEL_28;
                    }

                    v234 = v131;
                    v235 = v130;
                    v232 = objc_opt_self();
                    LODWORD(v125) = [v232 _atomicIncrementAssertCount];
                    v240 = [objc_allocWithZone(NSString) init];
                    sub_100604538(_swiftEmptyArrayStorage, &v240);
                    StaticString.description.getter();
                    v230 = String._bridgeToObjectiveC()();

                    StaticString.description.getter();
                    v132 = String._bridgeToObjectiveC()();

                    v133 = [v132 lastPathComponent];

                    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v42 = v134;

                    if (qword_1019F20A0 == -1)
                    {
LABEL_27:
                      v135 = static OS_os_log.crlAssert;
                      sub_1005B981C(&qword_1019F54E0);
                      v136 = swift_initStackObject();
                      *(v136 + 16) = xmmword_10146CA70;
                      *(v136 + 56) = &type metadata for Int32;
                      *(v136 + 64) = &protocol witness table for Int32;
                      *(v136 + 32) = v125;
                      v137 = sub_100006370(0, &qword_1019F4D30);
                      *(v136 + 96) = v137;
                      v138 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
                      *(v136 + 104) = v138;
                      v139 = v230;
                      *(v136 + 72) = v230;
                      *(v136 + 136) = &type metadata for String;
                      v140 = sub_1000053B0();
                      *(v136 + 112) = v31;
                      *(v136 + 120) = v42;
                      *(v136 + 176) = &type metadata for UInt;
                      *(v136 + 144) = v140;
                      *(v136 + 152) = 347;
                      v141 = v240;
                      *(v136 + 216) = v137;
                      *(v136 + 224) = v138;
                      *(v136 + 184) = &protocol witness table for UInt;
                      *(v136 + 192) = v141;
                      v142 = v139;
                      v143 = v141;
                      v144 = static os_log_type_t.error.getter();
                      sub_100005404(v135, &_mh_execute_header, v144, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v136);
                      swift_setDeallocating();
                      sub_1005B981C(&unk_1019F5670);
                      swift_arrayDestroy();
                      v145 = static os_log_type_t.error.getter();
                      sub_100005404(v135, &_mh_execute_header, v145, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                      type metadata accessor for __VaListBuilder();
                      v146 = swift_allocObject();
                      v146[2] = 8;
                      v146[3] = 0;
                      v146[4] = 0;
                      v146[5] = 0;
                      v147 = __VaListBuilder.va_list()();
                      StaticString.description.getter();
                      v148 = String._bridgeToObjectiveC()();

                      StaticString.description.getter();
                      v149 = String._bridgeToObjectiveC()();

                      StaticString.description.getter();
                      v150 = String._bridgeToObjectiveC()();

                      [v232 handleFailureInFunction:v148 file:v149 lineNumber:347 isFatal:0 format:v150 args:v147];

                      v50 = v231;
                      v128 = v226;
                      v42 = v236;
                      v131 = v234;
LABEL_28:
                      v151 = v224;
                      sub_10063FD1C(v227, v224);
                      v152 = v131(v151, 1, v50);
                      v153 = v218;
                      v154 = v225;
                      if (v152 == 1)
                      {
                        (*(v237 + 1))(v218, v50);

                        sub_10000CAAC(v151, &qword_1019F6990);
                      }

                      else
                      {
                        (*(v237 + 4))(v225, v151, v50);
                        v155 = v220;
                        v156 = v228;
                        v228(v220, v154, v50);
                        v157 = v42;
                        sub_1011C89B0(v155, v157, v128);
                        if ((*(v221 + 48))(v128, 1, v222) == 1)
                        {

                          v158 = *(v237 + 1);
                          v158(v154, v50);
                          v158(v153, v50);
                          sub_10000CAAC(v128, &qword_101A2C6F8);
                        }

                        else
                        {
                          v159 = v128;
                          v160 = v219;
                          sub_1011DAAB4(v159, v219, type metadata accessor for CRLTableCellRange);
                          v161 = v229;
                          sub_1011DABFC(v160, v229, type metadata accessor for CRLTableCellRange);
                          v162 = type metadata accessor for CRLTableCellSelection(0);
                          v163 = objc_allocWithZone(v162);
                          sub_1011DABFC(v161, &v163[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], type metadata accessor for CRLTableCellRange);
                          v163[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] = 1;
                          v239.receiver = v163;
                          v239.super_class = v162;
                          v164 = objc_msgSendSuper2(&v239, "init");
                          v235 = v164;
                          v236 = type metadata accessor for CRLTableCellRange;
                          sub_1011DAC64(v161, type metadata accessor for CRLTableCellRange);
                          v165 = [v223 selectionPath];
                          v166 = [v165 selectionPathReplacingMostSpecificLocationOfSelection:v217 withSelection:v164];

                          sub_1005B981C(&qword_101A1DBB0);
                          v167 = v237;
                          v168 = (v237[80] + 32) & ~v237[80];
                          v169 = swift_allocObject();
                          *(v169 + 16) = xmmword_10146C6B0;
                          v156(v169 + v168, v218, v50);
                          v170 = type metadata accessor for CRLCommandTableRemoveRows();
                          v171 = objc_allocWithZone(v170);
                          v172 = &v171[OBJC_IVAR____TtC8Freeform25CRLCommandTableRemoveRows_actionString];
                          *v172 = 0xD00000000000001ALL;
                          *(v172 + 1) = 0x80000001015C5130;
                          *&v171[OBJC_IVAR____TtC8Freeform25CRLCommandTableRemoveRows_tableBoardItem] = v157;
                          *&v171[OBJC_IVAR____TtC8Freeform25CRLCommandTableRemoveRows_rowsToRemove] = v169;
                          v238.receiver = v171;
                          v238.super_class = v170;
                          v173 = v157;
                          v174 = objc_msgSendSuper2(&v238, "init");
                          v175 = v166;
                          v176 = v223;
                          v177 = [v223 selectionPath];
                          v178 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithForwardSelectionPath:v175 reverseSelectionPath:v177];

                          v179 = v178;
                          v180 = v233;
                          sub_100888700(v174, 0, v178, 4, 0);

                          sub_1011DAC64(v219, v236);
                          v181 = *(v167 + 1);
                          v181(v225, v50);
                          v181(v218, v50);
                        }
                      }

                      return;
                    }

LABEL_55:
                    swift_once();
                    goto LABEL_27;
                  }
                }

                __break(1u);
                goto LABEL_55;
              }

LABEL_52:
              swift_once();
              goto LABEL_11;
            }

LABEL_50:
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_9;
          }
        }

        else
        {
          v40 = v218;
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_6;
          }
        }

        v35 = v217;
      }
    }

    sub_10088E3FC(0);
    v183 = [v1 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v40);
    v185 = v184;

    if (v185 >> 62)
    {
      v186 = _CocoaArrayWrapper.endIndex.getter();
      if (!v186)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v186 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v186)
      {
        goto LABEL_48;
      }
    }

    if (v186 < 1)
    {
      __break(1u);
      goto LABEL_50;
    }

    v231 = v15;
    v187 = 0;
    v234 = (v185 & 0xC000000000000001);
    v227 = v16 + 32;
    v228 = (v16 + 16);
    v225 = v16 + 8;
    v226 = 0x80000001015C5130;
    v224 = xmmword_10146C6B0;
    v229 = v186;
    v230 = v185;
    do
    {
      if (v234)
      {
        v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v203 = *(v185 + 8 * v187 + 32);
      }

      v204 = v203;
      type metadata accessor for CRLTableItemData();
      swift_dynamicCastClassUnconditional();

      v205 = sub_1011FBBD8();

      v206 = *(v205 + 16);
      if (v206)
      {
        v188 = (v16[80] + 32) & ~v16[80];
        v189 = v205 + v188 + *(v237 + 9) * (v206 - 1);
        v190 = *(v237 + 2);
        v191 = v231;
        v192 = v232;
        v235 = v204;
        v190(v232, v189, v231);

        (*(v237 + 4))(v236, v192, v191);
        sub_1005B981C(&qword_101A1DBB0);
        v186 = v229;
        v193 = swift_allocObject();
        *(v193 + 16) = v224;
        v194 = v193 + v188;
        v195 = v236;
        v16 = v237;
        v190(v194, v236, v191);
        v196 = type metadata accessor for CRLCommandTableRemoveRows();
        v197 = objc_allocWithZone(v196);
        v198 = &v197[OBJC_IVAR____TtC8Freeform25CRLCommandTableRemoveRows_actionString];
        *v198 = 0xD00000000000001ALL;
        *(v198 + 1) = v226;
        v199 = v235;
        *&v197[OBJC_IVAR____TtC8Freeform25CRLCommandTableRemoveRows_tableBoardItem] = v235;
        *&v197[OBJC_IVAR____TtC8Freeform25CRLCommandTableRemoveRows_rowsToRemove] = v193;
        v243.receiver = v197;
        v243.super_class = v196;
        v200 = v199;
        v201 = objc_msgSendSuper2(&v243, "init");
        sub_100888700(v201, 0, 0, 4, 0);

        v202 = v191;
        v185 = v230;
        (*(v16 + 1))(v195, v202);
      }

      else
      {
      }

      ++v187;
    }

    while (v186 != v187);
LABEL_48:

    v207 = v233;
    sub_10088E600(0);

    return;
  }

  v237 = objc_opt_self();
  v97 = [v237 _atomicIncrementAssertCount];
  v242 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v242);
  StaticString.description.getter();
  v98 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v99 = String._bridgeToObjectiveC()();

  v100 = [v99 lastPathComponent];

  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v104 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v105 = swift_initStackObject();
  *(v105 + 16) = xmmword_10146CA70;
  *(v105 + 56) = &type metadata for Int32;
  *(v105 + 64) = &protocol witness table for Int32;
  *(v105 + 32) = v97;
  v106 = sub_100006370(0, &qword_1019F4D30);
  *(v105 + 96) = v106;
  v107 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
  *(v105 + 104) = v107;
  *(v105 + 72) = v98;
  *(v105 + 136) = &type metadata for String;
  v108 = sub_1000053B0();
  *(v105 + 112) = v101;
  *(v105 + 120) = v103;
  *(v105 + 176) = &type metadata for UInt;
  *(v105 + 184) = &protocol witness table for UInt;
  *(v105 + 144) = v108;
  *(v105 + 152) = 330;
  v109 = v242;
  *(v105 + 216) = v106;
  *(v105 + 224) = v107;
  *(v105 + 192) = v109;
  v110 = v98;
  v111 = v109;
  v112 = static os_log_type_t.error.getter();
  sub_100005404(v104, &_mh_execute_header, v112, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v105);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v113 = static os_log_type_t.error.getter();
  sub_100005404(v104, &_mh_execute_header, v113, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v114 = swift_allocObject();
  v114[2] = 8;
  v114[3] = 0;
  v114[4] = 0;
  v114[5] = 0;
  v115 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v116 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v117 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v118 = String._bridgeToObjectiveC()();

  [v237 handleFailureInFunction:v116 file:v117 lineNumber:330 isFatal:0 format:v118 args:v115];
}

void sub_1011D5EB0(uint64_t a1)
{
  v3 = sub_1011D78CC();
  if (v3)
  {
    v4 = v3[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type];
    if (v4 == 1)
    {
      v14 = v3;
      sub_1011D40C4();
    }

    else
    {
      if (v4 != 2)
      {
LABEL_9:

        return;
      }

      v14 = v3;
      sub_1011D0568();
    }

    v3 = v14;
    goto LABEL_9;
  }

  sub_10000BE14(a1, v16, &unk_1019F4D00);
  v5 = v17;
  if (v17)
  {
    v6 = sub_100020E58(v16, v17);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100005070(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for CRLTableEditor();
  v15.receiver = v1;
  v15.super_class = v12;
  objc_msgSendSuper2(&v15, "delete:", v11);
  swift_unknownObjectRelease();
}

void sub_1011D60F0()
{
  v1 = v0;
  v2 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  if (v4 != 1)
  {
    v43 = v1;
    v42 = objc_opt_self();
    v5 = [v42 _atomicIncrementAssertCount];
    __src[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, __src);
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
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10146CA70;
    *(v13 + 56) = &type metadata for Int32;
    *(v13 + 64) = &protocol witness table for Int32;
    *(v13 + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(v13 + 96) = v14;
    v15 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v13 + 104) = v15;
    *(v13 + 72) = v6;
    *(v13 + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(v13 + 112) = v9;
    *(v13 + 120) = v11;
    *(v13 + 176) = &type metadata for UInt;
    *(v13 + 184) = &protocol witness table for UInt;
    *(v13 + 144) = v16;
    *(v13 + 152) = 384;
    v17 = __src[0];
    *(v13 + 216) = v14;
    *(v13 + 224) = v15;
    *(v13 + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v13);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Only should save default style with a single object selected", 60, 2, _swiftEmptyArrayStorage);

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

    [v42 handleFailureInFunction:v24 file:v25 lineNumber:384 isFatal:0 format:v26 args:v23];

    v1 = v43;
  }

  v27 = [v1 boardItems];
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = sub_100BC17C8(v28);

  if (v44)
  {
    type metadata accessor for CRLTableItem();
    v29 = swift_dynamicCastClass();
    if (v29 && (v30 = v29, (v31 = [v1 interactiveCanvasController]) != 0) && (v32 = v31, v33 = objc_msgSend(v31, "commandController"), v32, v33))
    {
      v34 = type metadata accessor for CRLCommandSetDefaultTableInsertionPreset();
      v35 = objc_allocWithZone(v34);
      v36 = v44;
      sub_101211FF0(v30, __src);
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__src, v37);
      v38 = objc_allocWithZone(v34);
      v39 = &v38[OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset_actionString];
      if (qword_1019F1298 != -1)
      {
        swift_once();
      }

      v40 = unk_1019F4A10;
      *v39 = qword_1019F4A08;
      *(v39 + 1) = v40;
      memcpy(&v38[OBJC_IVAR____TtC8Freeform40CRLCommandSetDefaultTableInsertionPreset_tableStyle], __src, 0x178uLL);
      v45.receiver = v38;
      v45.super_class = v34;

      v41 = objc_msgSendSuper2(&v45, "init");

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      sub_100888700(v41, 0, 0, 4, 0);
    }

    else
    {
    }
  }
}

id sub_1011D6770()
{
  v1 = OBJC_IVAR____TtC8Freeform14CRLTableEditor____lazy_storage___tableAxisEditMenuInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableEditor____lazy_storage___tableAxisEditMenuInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLTableEditor____lazy_storage___tableAxisEditMenuInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(UIEditMenuInteraction) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1011D67E8(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for CRLTableEditor();
  objc_msgSendSuper2(&v15, "addContextualMenuElementsToArray:atPoint:", a1, a2, a3);
  aBlock[4] = sub_1011CA978;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1012E44CC;
  aBlock[3] = &unk_1018B7740;
  v7 = _Block_copy(aBlock);

  v8 = [a1 indexOfObjectPassingTest:v7];
  _Block_release(v7);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1011D78CC();
    if (v9)
    {
      v10 = v9;
      if (v8 != NSNotFound.getter())
      {
        v11 = [a1 objectAtIndexedSubscript:v8];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &qword_1019F6C00);
        if (swift_dynamicCast())
        {
          [v13 setPreferredElementSize:1];
          v12 = v13;
          [a1 replaceObjectAtIndex:v8 withObject:v12];
        }
      }
    }
  }
}

void sub_1011D6A48()
{
  v1 = [v0 interactiveCanvasController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layerHost];

    if (v3)
    {
      v4 = [v3 canvasView];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = v0;
        v6 = sub_1011D6770();
        [v4 addInteraction:v6];

        sub_100006370(0, &unk_101A2C7C0);
        AnyHashable.init<A>(_:)();
        v7 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
        [*&v5[OBJC_IVAR____TtC8Freeform14CRLTableEditor____lazy_storage___tableAxisEditMenuInteraction] presentEditMenuWithConfiguration:v7];
      }
    }
  }
}

void sub_1011D6B9C()
{
  v1 = [v0 editorController];
  v2 = [v1 selectionPath];

  v3 = [v2 mostSpecificSelectionOfClass:0];
  if (v3)
  {
    type metadata accessor for CRLBoardItemSelection();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
      if ((v5 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for CRLBoardItem(0);
        sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
        Set.Iterator.init(_cocoa:)();
        v7 = v21;
        v6 = v22;
        v8 = v23;
        v9 = v24;
        v10 = v25;
      }

      else
      {
        v11 = -1 << *(v5 + 32);
        v6 = v5 + 56;
        v8 = ~v11;
        v12 = -v11;
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        else
        {
          v13 = -1;
        }

        v10 = v13 & *(v5 + 56);
        swift_bridgeObjectRetain_n();
        v9 = 0;
        v7 = v5;
      }

      v14 = (v8 + 64) >> 6;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      if (__CocoaSet.Iterator.next()() && (type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), v15 = v20, v16 = v9, v17 = v10, v20))
      {
        while (1)
        {
          type metadata accessor for CRLTableItem();
          if (!swift_dynamicCastClass())
          {

            v3 = v15;
            goto LABEL_23;
          }

          v9 = v16;
          v10 = v17;
          if (v7 < 0)
          {
            goto LABEL_12;
          }

LABEL_15:
          v18 = v9;
          v19 = v10;
          v16 = v9;
          if (!v10)
          {
            break;
          }

LABEL_19:
          v17 = (v19 - 1) & v19;
          v15 = *(*(v7 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v19)))));
          if (!v15)
          {
            goto LABEL_23;
          }
        }

        while (1)
        {
          v16 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_23;
          }

          v19 = *(v6 + 8 * v16);
          ++v18;
          if (v19)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_23:

        sub_100035F90();
      }
    }

    else
    {
    }
  }
}

void sub_1011D6EBC(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  v3 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v3 - 8);
  v60 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1005B981C(&unk_101A2C890);
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = &v48 - v6;
  v58 = _s15CapsuleDatabaseVMa();
  *&v8 = __chkstk_darwin(v58).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 interactiveCanvasController];
  if (v11)
  {
    v49 = v11;
    v12 = [v11 commandController];
    if (v12)
    {
      v13 = v12;
      sub_10088E3FC(0);
      v14 = [v2 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1011CA438(v15);
      v17 = v16;

      if (v17 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (v18)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
LABEL_5:
          v57 = v13;
          v56 = objc_opt_self();
          if (v18 < 1)
          {
            __break(1u);
            return;
          }

          v19 = 0;
          v52 = v17 & 0xC000000000000001;
          v53 = 0x80000001015C50E0;
          v50 = (v5 + 8);
          v51 = (v5 + 16);
          v54 = v18;
          v55 = v17;
          do
          {
            if (v52)
            {
              v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            ++v19;
            type metadata accessor for CRLTableItemData();
            v22 = swift_dynamicCastClassUnconditional();
            v23 = qword_101AD9268;
            swift_beginAccess();
            v24 = v22 + v23;
            v25 = v59;
            (*v51)(v7, v24, v59);
            Capsule.root.getter();
            (*v50)(v7, v25);
            v26 = v60;
            sub_1011DABFC(&v10[*(v58 + 32)], v60, _s13StyleCRDTDataVMa);
            sub_1011DAC64(v10, _s15CapsuleDatabaseVMa);
            sub_1005B981C(&qword_101A2C7B0);
            CRRegister.wrappedValue.getter();
            sub_1011DAC64(v26, _s13StyleCRDTDataVMa);
            v66[12] = v62[13];
            v66[13] = v62[14];
            v67 = v63;
            v66[8] = v62[9];
            v66[9] = v62[10];
            v66[10] = v62[11];
            v66[11] = v62[12];
            v66[4] = v62[5];
            v66[5] = v62[6];
            v66[6] = v62[7];
            v66[7] = v62[8];
            v66[0] = v62[1];
            v66[1] = v62[2];
            v66[2] = v62[3];
            v66[3] = v62[4];
            v27 = sub_100B946C8(v66, 0);
            sub_100B98B80(v66);
            [v27 width];
            v29 = v28;
            v30 = [v27 pattern];
            v31 = [v56 strokeWithColor:v61 width:v30 pattern:v29];

            v32 = objc_allocWithZone(type metadata accessor for CRLCommandTableSetBorderStroke(0));
            v33 = v21;
            v34 = v31;
            sub_100B965E4(v34, v64);
            KeyPath = swift_getKeyPath();
            *(v32 + *((swift_isaMask & *v32) + 0xE0)) = v33;
            v36 = v32 + *((swift_isaMask & *v32) + 0xE8);
            v37 = v64[13];
            *(v36 + 12) = v64[12];
            *(v36 + 13) = v37;
            *(v36 + 28) = v65;
            v38 = v64[9];
            *(v36 + 8) = v64[8];
            *(v36 + 9) = v38;
            v39 = v64[11];
            *(v36 + 10) = v64[10];
            *(v36 + 11) = v39;
            v40 = v64[5];
            *(v36 + 4) = v64[4];
            *(v36 + 5) = v40;
            v41 = v64[7];
            *(v36 + 6) = v64[6];
            *(v36 + 7) = v41;
            v42 = v64[1];
            *v36 = v64[0];
            *(v36 + 1) = v42;
            v43 = v64[3];
            *(v36 + 2) = v64[2];
            *(v36 + 3) = v43;
            *(v32 + *((swift_isaMask & *v32) + 0xF0)) = KeyPath;
            v44 = (v32 + *((swift_isaMask & *v32) + 0xF8));
            *v44 = 0xD00000000000001BLL;
            v44[1] = v53;
            v45 = sub_1005B981C(&qword_101A2C7B8);
            v62[0].receiver = v32;
            v62[0].super_class = v45;
            v46 = [(objc_super *)v62 init];
            sub_100888700(v46, 0, 0, 4, 0);

            v17 = v55;
          }

          while (v54 != v19);

          v13 = v57;
          goto LABEL_17;
        }
      }

LABEL_17:
      sub_10088E600(0);

      return;
    }

    v47 = v49;
  }
}

void sub_1011D753C(void *a1)
{
  v2 = v1;
  v4 = [v1 interactiveCanvasController];
  if (v4)
  {
    v27 = v4;
    v5 = [v4 commandController];
    if (v5)
    {
      v6 = v5;
      sub_10088E3FC(0);
      v7 = [v2 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1011CA438(v8);
      v10 = v9;

      if (v10 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
LABEL_5:
          if (v11 < 1)
          {
            __break(1u);
            return;
          }

          v12 = 0;
          v28 = v11;
          v29 = a1;
          do
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v22 = *(v10 + 8 * v12 + 32);
            }

            v23 = v22;
            v24 = objc_allocWithZone(type metadata accessor for CRLCommandTableSetColorFill(0));
            v25 = v23;
            if (a1)
            {
              v26 = a1;
              sub_1008B2170([v26 color], v35);

              v32 = v35[1];
              v33 = v35[0];
              v30 = v35[3];
              v31 = v35[2];
              v14 = v36;
              v15 = v37;
              v16 = v38;
              v13 = _swiftEmptyDictionarySingleton;
              LOBYTE(a1) = 0;
            }

            else
            {
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
            }

            ++v12;
            KeyPath = swift_getKeyPath();
            *(v24 + *((swift_isaMask & *v24) + 0xE0)) = v23;
            v18 = v24 + *((swift_isaMask & *v24) + 0xE8);
            *v18 = 0;
            v18[8] = a1;
            v18[15] = 0;
            *(v18 + 13) = 0;
            *(v18 + 9) = 0;
            *(v18 + 1) = v33;
            *(v18 + 2) = v32;
            *(v18 + 3) = v31;
            *(v18 + 4) = v30;
            *(v18 + 10) = v14;
            *(v18 + 11) = v15;
            *(v18 + 12) = v16;
            *(v18 + 13) = v13;
            *(v24 + *((swift_isaMask & *v24) + 0xF0)) = KeyPath;
            v19 = (v24 + *((swift_isaMask & *v24) + 0xF8));
            *v19 = 0xD000000000000018;
            v19[1] = 0x80000001015C50C0;
            v20 = sub_1005B981C(&unk_101A2C7A0);
            v34.receiver = v24;
            v34.super_class = v20;
            v21 = objc_msgSendSuper2(&v34, "init");
            sub_100888700(v21, 0, 0, 4, 0);

            a1 = v29;
          }

          while (v28 != v12);
        }
      }

      sub_10088E600(0);

      return;
    }
  }
}

uint64_t sub_1011D78CC()
{
  v1 = [v0 editorController];
  v2 = [v1 selectionPath];

  type metadata accessor for CRLTableCellSelection(0);
  v3 = [v2 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_1011D7978(void *a1, uint64_t a2, uint64_t a3)
{
  result = [v3 interactiveCanvasController];
  if (result)
  {
    v7 = result;
    type metadata accessor for CRLTableCellSelection(0);
    if (swift_dynamicCastClass())
    {
      v8 = [v3 editingCoordinator];
      v9 = [v3 editorController];
      v10 = type metadata accessor for CRLTableCellEditor();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController] = v9;
      *&v11[OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editingCoordinator] = v8;
      *&v11[OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_interactiveCanvasController] = v7;
      v70.receiver = v11;
      v70.super_class = v10;
      return objc_msgSendSuper2(&v70, "init");
    }

    type metadata accessor for CRLBoardItemSelection();
    if (!swift_dynamicCastClass())
    {
      sub_1005B981C(&qword_101A09750);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v72.receiver = v3;
      v72.super_class = type metadata accessor for CRLTableEditor();
      v65 = objc_msgSendSuper2(&v72, "nextEditorForSelection:withNewEditorStack:selectionPath:", a1, isa, a3);

      return v65;
    }

    v12 = a1;
    v13 = [v7 canvasEditor];
    if (v13)
    {
      v14 = [v13 canvasEditorHelper];
      swift_unknownObjectRelease();
      type metadata accessor for CRLBoardItem(0);
      sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);

      v15 = Set._bridgeToObjectiveC()().super.isa;

      v16 = [v14 editorClassForInfos:v15];

      if (v16)
      {
        swift_getObjCClassMetadata();
        sub_100006370(0, &qword_101A0E8B0);
        if (swift_dynamicCastMetatype())
        {
          v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInteractiveCanvasController:v7];
          v18 = v17;

          v19 = Set._bridgeToObjectiveC()().super.isa;

          [v18 setBoardItems:v19];

          return v17;
        }
      }
    }

    v68 = v7;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = sub_100006370(0, &qword_1019F6CB0);
    v21 = sub_10000FE24(&qword_101A2C828, &qword_1019F6CB0);
    *(inited + 32) = v12;
    v22 = inited + 32;
    *(inited + 64) = v21;
    v66 = objc_opt_self();
    v67 = v12;
    LODWORD(v23) = [v66 _atomicIncrementAssertCount];
    v71 = [objc_allocWithZone(NSString) init];
    v69 = inited;
    sub_100604538(inited, &v71);
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 lastPathComponent];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_42;
    }

LABEL_11:
    v30 = static OS_os_log.crlAssert;
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_10146CA70;
    *(v31 + 56) = &type metadata for Int32;
    *(v31 + 64) = &protocol witness table for Int32;
    *(v31 + 32) = v23;
    v32 = sub_100006370(0, &qword_1019F4D30);
    *(v31 + 96) = v32;
    v33 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v31 + 104) = v33;
    *(v31 + 72) = v24;
    *(v31 + 136) = &type metadata for String;
    v34 = sub_1000053B0();
    *(v31 + 112) = v27;
    *(v31 + 120) = v29;
    *(v31 + 176) = &type metadata for UInt;
    *(v31 + 184) = &protocol witness table for UInt;
    *(v31 + 144) = v34;
    *(v31 + 152) = 910;
    v35 = v24;
    v36 = v71;
    *(v31 + 216) = v32;
    *(v31 + 224) = v33;
    *(v31 + 192) = v36;
    v37 = v35;
    v38 = v36;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v31);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v40 = static os_log_type_t.error.getter();
    v24 = v69;
    sub_100005404(v30, &_mh_execute_header, v40, "Unknown editor class for selection %@", 37, 2, v69);

    type metadata accessor for __VaListBuilder();
    v41 = swift_allocObject();
    v41[2] = 8;
    v41[3] = 0;
    v29 = v41 + 3;
    v41[4] = 0;
    v41[5] = 0;
    v23 = *(v69 + 16);
    if (!v23)
    {
LABEL_36:
      v60 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v61 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v62 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v63 = String._bridgeToObjectiveC()();

      [v66 handleFailureInFunction:v61 file:v62 lineNumber:910 isFatal:0 format:v63 args:v60];

      swift_setDeallocating();
      swift_arrayDestroy();

      return 0;
    }

    v42 = 0;
    while (1)
    {
      v43 = (v22 + 40 * v42);
      v27 = v43[4];
      sub_100020E58(v43, v43[3]);
      v44 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v45 = *v29;
      v46 = *(v44 + 16);
      v47 = __OFADD__(*v29, v46);
      v48 = *v29 + v46;
      if (v47)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
        goto LABEL_11;
      }

      v49 = v41[4];
      if (v49 >= v48)
      {
        goto LABEL_28;
      }

      if (v49 + 0x4000000000000000 < 0)
      {
        goto LABEL_40;
      }

      v27 = v41[5];
      if (2 * v49 > v48)
      {
        v48 = 2 * v49;
      }

      v41[4] = v48;
      if ((v48 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_41;
      }

      v50 = v22;
      v51 = v24;
      v52 = v44;
      v53 = swift_slowAlloc();
      v54 = v53;
      v41[5] = v53;
      if (v27)
      {
        break;
      }

      v44 = v52;
      v24 = v51;
      v22 = v50;
      if (!v54)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_29:
      v56 = *(v44 + 16);
      if (v56)
      {
        v57 = (v44 + 32);
        v58 = *v29;
        while (1)
        {
          v59 = *v57++;
          *&v54[8 * v58] = v59;
          v58 = *v29 + 1;
          if (__OFADD__(*v29, 1))
          {
            break;
          }

          *v29 = v58;
          if (!--v56)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_13:

      if (++v42 == v23)
      {
        goto LABEL_36;
      }
    }

    if (v53 != v27 || v53 >= &v27[8 * v45])
    {
      memmove(v53, v27, 8 * v45);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v44 = v52;
    v24 = v51;
    v22 = v50;
LABEL_28:
    v54 = v41[5];
    if (!v54)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1011D82F0()
{
  v1 = v0;
  v2 = [v0 editorController];
  if (sub_100006370(0, &qword_101A0E8B0))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v4 = [v2 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    swift_unknownObjectRetain();
    v6 = v0;
    v7 = static NSObject.== infix(_:_:)();
    swift_unknownObjectRelease();

    if (v7)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v8 = [v1 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v9);
  v11 = v10;

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 != 1)
  {

    return 0;
  }

  v13 = [v1 boardItems];
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1011CA438(v14);
  v16 = v15;

  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v16 + 32);
LABEL_14:
    v19 = v18;

    v20 = objc_allocWithZone(type metadata accessor for CRLMultiselectResizeInfo());
    v21 = sub_100931358(v19);

    return v21;
  }

  __break(1u);
  return result;
}

void sub_1011D8568()
{
  v1 = v0;
  v2 = [v0 interactiveCanvasController];
  if (!v2)
  {
    return;
  }

  v98 = v2;
  v3 = [v2 editingCoordinator];
  if (!v3)
  {
    goto LABEL_60;
  }

  v97 = v3;
  v4 = *(*(*&v3[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard] + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v4)
  {

    v5 = v4;
    v6 = [v5 currentUserParticipant];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 permission];
    }

    else
    {
      v8 = [v5 publicPermission];
    }

    if (v8 != 3)
    {
      goto LABEL_30;
    }
  }

  v9 = [v98 editorController];
  if (!v9)
  {
LABEL_30:

    v33 = v97;
LABEL_61:

    return;
  }

  v96 = v9;
  v10 = [v98 canvasEditor];
  if (!v10)
  {

    v33 = v96;
    goto LABEL_61;
  }

  v11 = v10;
  v12 = [v98 selectionModelTranslator];
  if (v12)
  {
    v13 = v12;
    v14 = [v1 boardItems];
    v15 = type metadata accessor for CRLBoardItem(0);
    sub_1011DAA60(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
    sub_1011CA438(v16);
    v19 = v18;

    if (v19 >> 62)
    {
LABEL_48:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_13:
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_55;
          }

          v20 = *(v19 + 32);
        }

        v21 = v20;

        v22 = [v96 selectionPath];
        v23 = [v13 boardItemsForSelectionPath:v22];

        static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = [objc_opt_self() pasteboardWithUniqueName];
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v11 copyBoardItems:isa toPasteboard:v24 asPDF:0 nativeOnly:1];

        v26 = [v11 pasteboardController];
        v27 = [v26 providersForBoardItemsFromPasteboard:v24];
        if (!v27)
        {

          swift_unknownObjectRelease();
LABEL_59:

LABEL_60:
          v33 = v98;
          goto LABEL_61;
        }

        v28 = v27;
        v88 = v26;
        v94 = v13;
        sub_1005B981C(&qword_101A0B1B8);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v99 = _swiftEmptyArrayStorage;
        v93 = v11;
        v89 = v21;
        v90 = v24;
        v87 = v17;
        v19 = v15 & 0xFFFFFFFFFFFFFF8;
        if (!(v15 >> 62))
        {
          v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
          v30 = 0;
          v31 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory;
          v13 = (v15 & 0xC000000000000001);
          v91 = _swiftEmptyArrayStorage;
          while (v29 != v30)
          {
            if (v13)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v30 >= *(v19 + 16))
              {
                goto LABEL_47;
              }

              v32 = *(v15 + 8 * v30 + 32);
              swift_unknownObjectRetain();
            }

            v11 = (v30 + 1);
            if (__OFADD__(v30, 1))
            {
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            v17 = [v32 newBoardItemWithFactory:*&v97[v31] bakedSize:0];
            swift_unknownObjectRelease();
            ++v30;
            if (v17)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v91 = v99;
              v30 = v11;
            }
          }

          if (v91 >> 62)
          {
            v34 = v93;
            v36 = v89;
            v35 = v90;
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_57;
            }
          }

          else
          {
            v34 = v93;
            v36 = v89;
            v35 = v90;
            if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }
          }

          v37 = [v98 commandController];
          if (v37)
          {
            v38 = v37;
            v39 = [v34 canvasEditorHelper];
            v40 = Array._bridgeToObjectiveC()().super.isa;
            [v39 prepareGeometryForPastingBoardItems:v40 fromPasteboard:v35 intoContainer:v36 useOriginalPositions:0];

            sub_10088E3FC(0);
            v41 = [objc_opt_self() mainBundle];
            v42 = String._bridgeToObjectiveC()();
            v43 = String._bridgeToObjectiveC()();
            v44 = String._bridgeToObjectiveC()();
            v45 = [v41 localizedStringForKey:v42 value:v43 table:v44];

            v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;

            sub_10088DE20(v46, v48);
            v49 = NSNotFound.getter();
            sub_1011D9264(v91, v36, v49);
            v50 = [v96 selectionPath];
            v51 = type metadata accessor for CRLBoardItemSelection();
            v52 = [v50 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];

            v53 = [v96 selectionPath];
            if (v52)
            {
              v54 = v52;
              v55 = sub_100E93C20(v91);

              v56 = objc_allocWithZone(v51);
              v57 = sub_100616DB8(v55);
              v58 = [v53 selectionPathReplacingMostSpecificLocationOfSelection:v54 withSelection:v57];

              v53 = v58;
            }

            else
            {
            }

            v59 = v53;
            v60 = [v96 selectionPath];
            v61 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithForwardSelectionPath:v59 reverseSelectionPath:v60];

            v62 = [v98 commandController];
            if (v62)
            {
              v63 = v62;
              v64 = v61;
              sub_10088E600(v61);

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            goto LABEL_58;
          }

LABEL_57:

          swift_unknownObjectRelease();
LABEL_58:

          goto LABEL_59;
        }

LABEL_55:
        v29 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_19;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v95 = v13;

    v92 = objc_opt_self();
    v65 = [v92 _atomicIncrementAssertCount];
    v99 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v99);
    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v67 = String._bridgeToObjectiveC()();

    v68 = [v67 lastPathComponent];

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v72 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v65;
    v74 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v74;
    v75 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v75;
    *(inited + 72) = v66;
    *(inited + 136) = &type metadata for String;
    v76 = sub_1000053B0();
    *(inited + 112) = v69;
    *(inited + 120) = v71;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v76;
    *(inited + 152) = 940;
    v77 = v99;
    *(inited + 216) = v74;
    *(inited + 224) = v75;
    *(inited + 192) = v77;
    v78 = v66;
    v79 = v77;
    v80 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v80, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v72, &_mh_execute_header, v81, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v82 = swift_allocObject();
    v82[2] = 8;
    v82[3] = 0;
    v82[4] = 0;
    v82[5] = 0;
    v83 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v86 = String._bridgeToObjectiveC()();

    [v92 handleFailureInFunction:v84 file:v85 lineNumber:940 isFatal:0 format:v86 args:v83];

    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

void sub_1011D9264(unint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if (NSNotFound.getter() == a3)
  {
    goto LABEL_14;
  }

  v8 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v9 = *&a2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  if (!v9)
  {
    sub_10096C7D4();
    v9 = *&a2[v8];
  }

  v10 = (v9 ? v9 : _swiftEmptyArrayStorage);

  if (v10 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    v11 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v11 = v10;
  }

  v36 = v11;
  v12 = sub_1011E328C();
  if (v12 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    v13 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v13 = v12;
  }

  sub_10079AD4C(v13);
  v14 = v36 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v14 < v5)
  {
LABEL_14:
    v15 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v16 = *&a2[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    if (!v16)
    {
      sub_10096C7D4();
      v16 = *&a2[v15];
    }

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

    if (v17 >> 62)
    {
      sub_1005B981C(&qword_1019F5720);
      v18 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v18 = v17;
    }

    v36 = v18;
    v19 = sub_1011E328C();
    if (v19 >> 62)
    {
      sub_1005B981C(&qword_1019F5720);
      v20 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v20 = v19;
    }

    sub_10079AD4C(v20);
    if (v36 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v21 = objc_allocWithZone(type metadata accessor for CRLCommandInsertBoardItems());
  swift_getObjectType();
  sub_1005B981C(&unk_101A09DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = v5;
  v23 = inited + 32;
  *(inited + 40) = a1;
  v24 = sub_100BD4E94(inited);
  swift_setDeallocating();
  v25 = a2;

  sub_10000CAAC(v23, &qword_101A039D0);
  v26 = sub_100BDF940(v25, v24);
  swift_deallocPartialClassInstance();
  v27 = [v4 interactiveCanvasController];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 commandController];

    if (v29)
    {
      sub_100888700(v26, 0, 0, 4, 0);
    }
  }

  v35 = v26;
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v31 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v32 = *(a1 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v36 = v32;
      sub_1011D9710(&v36, v25, v4);

      ++v31;
      if (v34 == i)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:
}

void sub_1011D9710(void **a1, uint64_t a2, void *a3)
{
  v108 = a3;
  v6 = type metadata accessor for UUID();
  v103 = *(v6 - 8);
  v104 = v6;
  __chkstk_darwin(v6);
  v100 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s6CellIDVMa(0);
  __chkstk_darwin(v8);
  v99 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v10 - 8);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v95 - v13;
  __chkstk_darwin(v14);
  v16 = &v95 - v15;
  v17 = type metadata accessor for CRLTableAnchorHint();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v106 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v95 - v22;
  v24 = *a1;
  v25 = *((swift_isaMask & *v24) + 0x128);
  v105 = v24;
  v25(v21);
  v98 = v18;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000CAAC(v16, &unk_101A09DD0);
    return;
  }

  v107 = v3;
  sub_1011DAAB4(v16, v23, type metadata accessor for CRLTableAnchorHint);
  sub_1011DB114();

  v26 = sub_1011DB2A8(v23);
  if (v27 & 1) != 0 || (v28 = v26, v29 = sub_1011DB340(&v23[*(v8 + 20)]), (v30))
  {
    v31 = v23;
LABEL_6:
    sub_1011DAC64(v31, type metadata accessor for CRLTableAnchorHint);
    return;
  }

  v97 = v23;
  v32 = v29;
  v33 = [v108 interactiveCanvasController];
  if (!v33)
  {
    goto LABEL_15;
  }

  v34 = v33;
  v35 = [v33 layoutForInfo:a2];

  if (!v35)
  {
    goto LABEL_15;
  }

  type metadata accessor for CRLTableLayout();
  if (!swift_dynamicCastClass())
  {

LABEL_15:
    sub_1011DAC64(v97, type metadata accessor for CRLTableAnchorHint);
    return;
  }

  v36 = sub_10120C854(v28, v32);
  v38 = v37;
  v40 = v39;
  v41 = v105;
  v42 = *((swift_isaMask & *v105) + 0xE0);
  v43 = (v42)(v36);
  [v43 position];
  v45 = v44;

  v46 = v42();
  [v46 position];
  v48 = v47;

  v49 = v42();
  [v49 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030);
  v50 = swift_dynamicCast();
  v96 = v35;
  if (v50)
  {
    v51 = v111;
    [v111 setPosition:{v45 - v38, v48 - v40}];
    v52 = v99;
    sub_1011DABFC(v97, v99, _s6CellIDVMa);
    v53 = v106;
    *&v106[*(v17 + 24)] = _swiftEmptyDictionarySingleton;
    sub_1011DABFC(v52, v53, _s6CellIDVMa);
    v54 = v51;
    sub_101271CCC(v54, v110);
    v95 = v54;

    sub_1011DAC64(v52, _s6CellIDVMa);
    v55 = &v53[*(v17 + 20)];
    v56 = v110[1];
    *v55 = v110[0];
    *(v55 + 1) = v56;
    v57 = v102;
    sub_1011DABFC(v53, v102, type metadata accessor for CRLTableAnchorHint);
    (*(v98 + 56))(v57, 0, 1, v17);
    v58 = objc_allocWithZone(sub_1005B981C(&unk_101A2D9D0));
    v59 = v101;
    v60 = sub_10000BE14(v57, v101, &unk_101A09DD0);
    __chkstk_darwin(v60);
    *(&v95 - 2) = type metadata accessor for CRLBoardItem(0);
    KeyPath = swift_getKeyPath();
    v62 = &v58[*((swift_isaMask & *v58) + 0xF0)];
    *v62 = 0;
    *(v62 + 1) = 0xE000000000000000;
    v63 = v100;
    (*((swift_isaMask & *v41) + 0x88))();
    (*(v103 + 32))(&v58[*((swift_isaMask & *v58) + 0xD8)], v63, v104);
    sub_10000BE14(v59, &v58[*((swift_isaMask & *v58) + 0xE0)], &unk_101A09DD0);
    *&v58[*((swift_isaMask & *v58) + 0xE8)] = KeyPath;
    v64 = sub_1005B981C(&unk_101A2C790);
    v109.receiver = v58;
    v109.super_class = v64;
    v65 = objc_msgSendSuper2(&v109, "init");
    sub_10000CAAC(v59, &unk_101A09DD0);
    v66 = v65;
    sub_10000CAAC(v57, &unk_101A09DD0);
    v67 = (v66 + *((swift_isaMask & *v66) + 0xF0));
    *v67 = 0;
    v67[1] = 0xE000000000000000;

    v68 = [v108 interactiveCanvasController];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 commandController];

      v71 = v96;
      if (v70)
      {
        sub_100888700(v66, 0, 0, 4, 0);

        v72 = v66;
        v66 = v70;
      }

      else
      {
        v72 = v95;
      }
    }

    else
    {
      v72 = v95;
      v71 = v96;
    }

    sub_1011DAC64(v106, type metadata accessor for CRLTableAnchorHint);
    v31 = v97;
    goto LABEL_6;
  }

  v106 = objc_opt_self();
  v73 = [v106 _atomicIncrementAssertCount];
  v111 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v111);
  StaticString.description.getter();
  v108 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v74 = String._bridgeToObjectiveC()();

  v75 = [v74 lastPathComponent];

  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v79 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v73;
  v81 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v81;
  v82 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v82;
  v83 = v108;
  *(inited + 72) = v108;
  *(inited + 136) = &type metadata for String;
  v84 = sub_1000053B0();
  *(inited + 112) = v76;
  *(inited + 120) = v78;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v84;
  *(inited + 152) = 996;
  v85 = v111;
  *(inited + 216) = v81;
  *(inited + 224) = v82;
  *(inited + 192) = v85;
  v86 = v83;
  v87 = v85;
  v88 = static os_log_type_t.error.getter();
  sub_100005404(v79, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v89 = static os_log_type_t.error.getter();
  sub_100005404(v79, &_mh_execute_header, v89, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v90 = swift_allocObject();
  v90[2] = 8;
  v90[3] = 0;
  v90[4] = 0;
  v90[5] = 0;
  v91 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v92 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v93 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v94 = String._bridgeToObjectiveC()();

  [v106 handleFailureInFunction:v92 file:v93 lineNumber:996 isFatal:0 format:v94 args:v91];

  sub_1011DAC64(v97, type metadata accessor for CRLTableAnchorHint);
}

id sub_1011DA3E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1011DA4F8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void))
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  a6();

  swift_unknownObjectRelease();
}

uint64_t sub_1011DA5E8(uint64_t a1)
{
  sub_100064288(a1, v10);
  sub_100006370(0, &qword_1019F6C00);
  if (swift_dynamicCast())
  {
    v1 = [v9 identifier];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1011DA6F8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_1019F1738 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD68C0;
  v4 = [v0 editingCoordinator];
  v5 = *&v4[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

  [v2 addObserver:v0 selector:"hideTableAxisEditMenu" name:v3 object:v5];
  v6 = [v1 defaultCenter];
  if (qword_1019F1748 != -1)
  {
    swift_once();
  }

  v7 = qword_101AD68D0;
  v8 = [v0 editingCoordinator];
  v9 = *&v8[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

  [v6 addObserver:v0 selector:"hideTableAxisEditMenu" name:v7 object:v9];
}

void sub_1011DA8B4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_1019F1738 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD68C0;
  v4 = [v0 editingCoordinator];
  v5 = *&v4[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

  [v2 removeObserver:v0 name:v3 object:v5];
  v6 = [v1 defaultCenter];
  if (qword_1019F1748 != -1)
  {
    swift_once();
  }

  v7 = qword_101AD68D0;
  v8 = [v0 editingCoordinator];
  v9 = *&v8[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

  [v6 removeObserver:v0 name:v7 object:v9];
}

uint64_t sub_1011DAA60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1011DAAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011DAB1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1011DAB7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1011DABBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1011DABFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011DAC64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1011DACC4(uint64_t (*a1)(char *), uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v3 = sub_1005B981C(&qword_101A2C9E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v30 = sub_1005B981C(&unk_101A2C9D0);
  v24 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_1005B981C(&qword_101A2C9F0);
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  sub_1005B981C(&qword_1019FA370);
  sub_10001A2F8(&qword_101A2C9F8, &qword_1019FA370);
  dispatch thunk of Sequence.makeIterator()();
  v13 = sub_10001A2F8(&unk_101A2CA00, &qword_101A2C9F0);
  v29 = v12;
  v25 = v13;
  dispatch thunk of IteratorProtocol.next()();
  v14 = *(v24 + 48);
  v15 = _swiftEmptyArrayStorage;
  if (v14(v5, 1, v30) == 1)
  {
LABEL_2:
    (*(v21 + 8))(v29, v10);
    sub_10000CAAC(v5, &qword_101A2C9E8);
  }

  else
  {
    v22 = v14;
    v23 = v10;
    while (1)
    {
      sub_10003DFF8(v5, v9, &unk_101A2C9D0);
      v16 = v27(v9);
      if (v2)
      {
        break;
      }

      if (v16)
      {
        sub_10003DFF8(v9, v26, &unk_101A2C9D0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776A04(0, v15[2] + 1, 1);
          v15 = v31;
        }

        v19 = v15[2];
        v18 = v15[3];
        if (v19 >= v18 >> 1)
        {
          sub_100776A04(v18 > 1, v19 + 1, 1);
          v15 = v31;
        }

        v15[2] = v19 + 1;
        sub_10003DFF8(v26, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19, &unk_101A2C9D0);
        v14 = v22;
        v10 = v23;
      }

      else
      {
        sub_10000CAAC(v9, &unk_101A2C9D0);
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v14(v5, 1, v30) == 1)
      {
        goto LABEL_2;
      }
    }

    sub_10000CAAC(v9, &unk_101A2C9D0);
    (*(v21 + 8))(v29, v10);
  }

  return v15;
}

uint64_t sub_1011DB114()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid) & 1) != 0 || (v1 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap)) == 0)
  {
    type metadata accessor for CRLTableItemData();
    swift_dynamicCastClassUnconditional();

    v2 = v0;
    v3 = sub_1011FD0F0();

    swift_dynamicCastClassUnconditional();

    v4 = sub_1011FBBD8();

    v1 = sub_1011EE2D4(v3, v4);
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = (v2 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
    v12 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
    *v11 = v1;
    v11[1] = v6;
    v11[2] = v8;
    v11[3] = v10;

    sub_1011DAB1C(v12);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1011DB2A8(uint64_t a1)
{
  sub_1011DB114();
  v3 = v2;
  if (*(v2 + 16) && (v4 = sub_10003E994(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1011DB340(uint64_t a1)
{
  v2 = sub_1011DB114();
  if (*(v2 + 16) && (v3 = sub_10003E994(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1011DB3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1011DB114();
  v5 = v4;
  if (*(v4 + 16) && (v6 = sub_1007C7EC0(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for UUID();
    v17 = *(v10 - 8);
    (*(v17 + 16))(a2, v9 + *(v17 + 72) * v8, v10);

    v11 = *(v17 + 56);
    v12 = a2;
    v13 = 0;
    v14 = v10;
  }

  else
  {

    v15 = type metadata accessor for UUID();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_1011DB58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1011DB114();
  v5 = v4;
  if (*(v4 + 16) && (v6 = sub_1007C7EC0(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for UUID();
    v17 = *(v10 - 8);
    (*(v17 + 16))(a2, v9 + *(v17 + 72) * v8, v10);

    v11 = *(v17 + 56);
    v12 = a2;
    v13 = 0;
    v14 = v10;
  }

  else
  {

    v15 = type metadata accessor for UUID();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

Class sub_1011DB740(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = a1;
  a4(a3);

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v9, v11);
    v14 = isa;
  }

  return v14;
}

uint64_t sub_1011DB87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v24 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_1011DB114();

  sub_1011DB3D8(a1, v9);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    v6 = v9;
LABEL_5:
    sub_10000CAAC(v6, &qword_1019F6990);
    v18 = _s6CellIDVMa(0);
    return (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
  }

  v17 = *(v11 + 32);
  v17(v15, v9, v10);
  sub_1011DB58C(v25, v6);
  if (v16(v6, 1, v10) == 1)
  {
    (*(v11 + 8))(v15, v10);
    goto LABEL_5;
  }

  v20 = v24;
  v17(v24, v6, v10);
  v21 = v26;
  v17(v26, v15, v10);
  v22 = _s6CellIDVMa(0);
  v17(&v21[*(v22 + 20)], v20, v10);
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_1011DBBE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v81 = a1;
  v4 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v4 - 8);
  v80 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  __chkstk_darwin(v10);
  v93 = &v80 - v11;
  __chkstk_darwin(v12);
  v83 = &v80 - v13;
  v100 = sub_1005B981C(&unk_101A2C890);
  v107 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v98 = &v80 - v16;
  v94 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v94);
  v90 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v101 = &v80 - v19;
  __chkstk_darwin(v20);
  v102 = &v80 - v21;
  v22 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v22);
  v89 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v88 = &v80 - v25;
  __chkstk_darwin(v26);
  v28 = &v80 - v27;
  v99 = &v80 - v27;
  __chkstk_darwin(v29);
  v97 = &v80 - v30;
  type metadata accessor for CRLTableItemData();
  v31 = swift_dynamicCastClassUnconditional();
  v32 = *(*v31 + 736);
  swift_beginAccess();
  sub_10000BE14(v31 + v32, v28, &unk_101A226A0);
  sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
  v86 = v22;
  CRType.copy(renamingReferences:)();
  sub_10000CAAC(v28, &unk_101A226A0);
  v33 = swift_dynamicCastClassUnconditional();
  v34 = qword_101AD8098;
  swift_beginAccess();
  v95 = type metadata accessor for CRLContainerItemCRDTData;
  v35 = v33 + v34;
  v36 = v101;
  sub_1011F0BE0(v35, v101, type metadata accessor for CRLContainerItemCRDTData);
  sub_100068574(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData);
  CRType.copy(renamingReferences:)();
  v87 = type metadata accessor for CRLContainerItemCRDTData;
  sub_1011F0B80(v36, type metadata accessor for CRLContainerItemCRDTData);
  v85 = v3;
  v37 = swift_dynamicCastClassUnconditional();
  v38 = qword_101AD9268;
  swift_beginAccess();
  v39 = v107;
  v40 = *(v107 + 16);
  v41 = v96;
  v42 = v100;
  v40(v96, v37 + v38, v100);
  v43 = v98;
  Capsule.copy()();
  v44 = *(v39 + 8);
  v107 = v39 + 8;
  v94 = v44;
  v44(v41, v42);
  v45 = v99;
  sub_10000BE14(v97, v99, &unk_101A226A0);
  v46 = v101;
  sub_1011F0BE0(v102, v101, v95);
  v40(v41, v43, v42);
  v105[0] = 0x4000000000000;
  v105[1] = 0x2000400000000;
  v105[2] = 0x4000000000000;
  v105[3] = 0;
  v106 = 1;
  v47 = swift_allocObject();
  v40((v47 + qword_101AD9268), v41, v42);
  v48 = v88;
  sub_10000BE14(v45, v88, &unk_101A226A0);
  v49 = v90;
  v50 = v95;
  sub_1011F0BE0(v46, v90, v95);
  sub_1011F0BE0(v49, v47 + qword_101AD8098, v50);
  v51 = v89;
  sub_10000BE14(v48, v89, &unk_101A226A0);
  sub_10000BE14(v51, v47 + *(*v47 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v51, &unk_101A226A0);
  v52 = v87;
  sub_1011F0B80(v49, v87);
  sub_10000CAAC(v48, &unk_101A226A0);
  v53 = v94;
  v94(v96, v42);
  sub_1011F0B80(v101, v52);
  sub_10000CAAC(v99, &unk_101A226A0);
  v54 = v91;
  v55 = sub_100747AF0(v105, 12);
  v56 = v55;
  if (*(v54 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    __chkstk_darwin(v55);
    *(&v80 - 2) = v54;
    __chkstk_darwin(v57);
    *(&v80 - 2) = sub_1011F09F8;
    *(&v80 - 1) = v58;
    swift_beginAccess();
    v59 = v92;
    Capsule.mutate<A>(_:)();
    if (v59)
    {
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    swift_endAccess();
    v60 = v93;
    v61 = 0;
  }

  else
  {
    v60 = v93;
    v61 = v92;
  }

  sub_100D5EFEC(v54);
  if (v61)
  {
    v62 = v61;

    v53(v98, v100);
    sub_1011F0B80(v102, type metadata accessor for CRLContainerItemCRDTData);
    sub_10000CAAC(v97, &unk_101A226A0);
  }

  else
  {
    v101 = 0;
    sub_10000BE14(v81, v60, &qword_1019F6990);
    v63 = type metadata accessor for UUID();
    v64 = *(v63 - 8);
    v65 = *(v64 + 48);
    if (v65(v60, 1, v63) == 1)
    {
      v66 = *(*v56 + 736);
      swift_beginAccess();
      v67 = v99;
      sub_10000BE14(v56 + v66, v99, &unk_101A226A0);

      sub_1005B981C(&qword_101A01F08);
      v68 = v80;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v67, &unk_101A226A0);
      v69 = v83;
      sub_10000BE14(v68, v83, &qword_1019F6990);
      sub_1011F0B80(v68, type metadata accessor for CRLBoardItemParentAffinity);
      if (v65(v60, 1, v63) != 1)
      {
        sub_10000CAAC(v60, &qword_1019F6990);
      }
    }

    else
    {
      v69 = v83;
      (*(v64 + 32))(v83, v60, v63);
      (*(v64 + 56))(v69, 0, 1, v63);
    }

    v70 = v84;
    sub_10000BE14(v69, v84, &qword_1019F6990);
    swift_beginAccess();
    v71 = v82;
    sub_10000BE14(v70, v82, &qword_1019F6990);
    sub_1005B981C(&qword_101A01F08);
    v72 = CRRegister.wrappedValue.modify();
    sub_10002C638(v71, v73, &qword_1019F6990);
    v72(v104, 0);
    sub_10000CAAC(v70, &qword_1019F6990);
    swift_endAccess();

    sub_10000CAAC(v69, &qword_1019F6990);
    v74 = *(v85 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v75 = objc_allocWithZone(type metadata accessor for CRLTableItem());
    v76 = &v75[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
    *v76 = 0u;
    v76[1] = 0u;
    v75[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] = 1;
    *&v75[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
    *&v75[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
    *&v75[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
    *&v75[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
    *&v75[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
    *&v75[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v74;
    *&v75[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v56;
    v77 = type metadata accessor for CRLBoardItemBase(0);
    v103.receiver = v75;
    v103.super_class = v77;
    v78 = v74;
    v62 = objc_msgSendSuper2(&v103, "init");

    v94(v98, v100);
    sub_1011F0B80(v102, type metadata accessor for CRLContainerItemCRDTData);
    sub_10000CAAC(v97, &unk_101A226A0);
  }

  return v62;
}

void *sub_1011DCD58()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v2)
  {
    sub_10096C7D4();
    v2 = *(v0 + v1);
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v4)
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
          goto LABEL_20;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (sub_1009AFD54(v6))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_22:

  return _swiftEmptyArrayStorage;
}

id sub_1011DCEE0()
{
  v0 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v0 - 8);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&unk_101A2C890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  v7 = _s15CapsuleDatabaseVMa();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v11 + v12, v3);
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1011F0BE0(&v10[*(v8 + 40)], v2, _s13StyleCRDTDataVMa);
  sub_1011F0B80(v10, _s15CapsuleDatabaseVMa);
  sub_1005B981C(&qword_101A2C7B0);
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v2, _s13StyleCRDTDataVMa);
  v17[12] = v15[12];
  v17[13] = v15[13];
  v18 = v16;
  v17[8] = v15[8];
  v17[9] = v15[9];
  v17[10] = v15[10];
  v17[11] = v15[11];
  v17[4] = v15[4];
  v17[5] = v15[5];
  v17[6] = v15[6];
  v17[7] = v15[7];
  v17[0] = v15[0];
  v17[1] = v15[1];
  v17[2] = v15[2];
  v17[3] = v15[3];
  v13 = sub_100B946C8(v17, 0);
  sub_100B98B80(v17);
  return v13;
}

uint64_t sub_1011DD1DC()
{
  v0 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v0);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1005B981C(&unk_101A2C890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  v7 = _s15CapsuleDatabaseVMa();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLTableItemData();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v11 + v12, v3);
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1011F0BE0(&v10[*(v8 + 40)], v2, _s13StyleCRDTDataVMa);
  sub_1011F0B80(v10, _s15CapsuleDatabaseVMa);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v2, _s13StyleCRDTDataVMa);
  return v14[7];
}

uint64_t sub_1011DD484()
{
  v0 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v0);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1005B981C(&unk_101A2C890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  v7 = _s15CapsuleDatabaseVMa();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLTableItemData();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v11 + v12, v3);
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1011F0BE0(&v10[*(v8 + 40)], v2, _s13StyleCRDTDataVMa);
  sub_1011F0B80(v10, _s15CapsuleDatabaseVMa);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v2, _s13StyleCRDTDataVMa);
  return v14[7];
}

uint64_t sub_1011DD72C()
{
  v0 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v0);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1005B981C(&unk_101A2C890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  v7 = _s15CapsuleDatabaseVMa();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLTableItemData();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v11 + v12, v3);
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1011F0BE0(&v10[*(v8 + 40)], v2, _s13StyleCRDTDataVMa);
  sub_1011F0B80(v10, _s15CapsuleDatabaseVMa);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v2, _s13StyleCRDTDataVMa);
  return v14[7];
}

id sub_1011DD9E4()
{
  v0 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v0);
  v2 = &v18[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1005B981C(&unk_101A2C890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-v5];
  v7 = _s15CapsuleDatabaseVMa();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLTableItemData();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v11 + v12, v3);
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1011F0BE0(&v10[*(v8 + 40)], v2, _s13StyleCRDTDataVMa);
  sub_1011F0B80(v10, _s15CapsuleDatabaseVMa);
  sub_1005B981C(&unk_101A10690);
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v2, _s13StyleCRDTDataVMa);
  v21 = v28;
  v22 = v29[0];
  v26 = v29[4];
  v27 = v30;
  v24 = v29[2];
  v25 = v29[3];
  v23 = v29[1];
  if (!v30)
  {
    return 0;
  }

  sub_100006370(0, &qword_101A00EB0);
  v19[2] = v24;
  v19[3] = v25;
  v19[4] = v26;
  v20 = v27;
  v19[0] = v22;
  v19[1] = v23;
  sub_10074A990(v29, v18);
  v13 = sub_1008B0490(v19);
  if (BYTE8(v28) == 1)
  {
    if (qword_1019F2268 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.persistence;
    v15 = static os_log_type_t.info.getter();
    sub_100005404(v14, &_mh_execute_header, v15, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
  }

  v16 = [objc_allocWithZone(CRLColorFill) initWithColor:v13];

  sub_10000CAAC(&v21, &qword_1019FFF80);
  return v16;
}

char *sub_1011DDDA8()
{
  v88 = _s12CellCRDTDataVMa(0);
  __chkstk_darwin(v88);
  v87 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_101A2C9E0);
  __chkstk_darwin(v2 - 8);
  v109 = &v83 - v3;
  v4 = sub_1005B981C(&qword_1019FA378);
  v119 = *(v4 - 8);
  __chkstk_darwin(v4);
  v90 = &v83 - v5;
  v6 = _s6CellIDVMa(0);
  __chkstk_darwin(v6 - 8);
  v124 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A2CA30);
  __chkstk_darwin(v8 - 8);
  v108 = &v83 - v9;
  v10 = sub_1005B981C(&qword_101A11C08);
  v89 = *(v10 - 8);
  __chkstk_darwin(v10);
  v107 = &v83 - v11;
  v12 = sub_1005B981C(&unk_101A2C9D0);
  v118 = *(v12 - 8);
  __chkstk_darwin(v12);
  v106 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v123 = &v83 - v15;
  v16 = sub_1005B981C(&qword_101A2C9E8);
  __chkstk_darwin(v16 - 8);
  v112 = &v83 - v17;
  v117 = sub_1005B981C(&qword_101A2C9F0);
  v83 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v83 - v18;
  v115 = sub_1005B981C(&qword_1019FA370);
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v105 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v127 = &v83 - v21;
  __chkstk_darwin(v22);
  v84 = &v83 - v23;
  v111 = sub_1005B981C(&unk_101A2C890);
  v24 = *(v111 - 8);
  __chkstk_darwin(v111);
  v86 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v83 - v27;
  v29 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v29);
  v102 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v83 - v32;
  v125 = v0;
  v126 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v110 = type metadata accessor for CRLTableItemData();
  v34 = swift_dynamicCastClassUnconditional();
  v35 = qword_101AD9268;
  swift_beginAccess();
  v36 = v34 + v35;
  v37 = v111;
  v100 = *(v24 + 16);
  v101 = v24 + 16;
  v100(v28, v36, v111);
  Capsule.root.getter();
  v39 = *(v24 + 8);
  v38 = v24 + 8;
  v104 = v28;
  v122 = v39;
  v39(v28, v37);
  v103 = v29;
  v40 = v113 + 16;
  v41 = *(v113 + 16);
  v42 = &v33[*(v29 + 28)];
  v43 = v84;
  v44 = v115;
  v41(v84, v42, v115);
  sub_1011F0B80(v33, _s15CapsuleDatabaseVMa);
  v98 = v41;
  v99 = v40;
  v41(v127, v43, v44);
  sub_10001A2F8(&qword_101A2C9F8, &qword_1019FA370);
  dispatch thunk of Sequence.makeIterator()();
  v45 = sub_10001A2F8(&unk_101A2CA00, &qword_101A2C9F0);
  v46 = v112;
  v97 = v45;
  dispatch thunk of IteratorProtocol.next()();
  v47 = *(v118 + 48);
  v118 += 48;
  v96 = v47;
  if (v47(v46, 1, v12) != 1)
  {
    v120 = (v119 + 8);
    v121 = v38;
    v93 = (v119 + 48);
    v94 = (v113 + 8);
    v85 = (v119 + 32);
    v91 = (v89 + 48);
    v92 = (v89 + 56);
    v127 = _swiftEmptyArrayStorage;
    v95 = v12;
    v114 = v10;
    while (1)
    {
      v50 = v123;
      sub_10003DFF8(v46, v123, &unk_101A2C9D0);
      v51 = v106;
      sub_10000BE14(v50, v106, &unk_101A2C9D0);
      v52 = *(v12 + 48);
      v53 = v124;
      sub_1011F0B18(v51, v124, _s6CellIDVMa);
      v119 = *v120;
      (v119)(v51 + v52, v4);
      v54 = swift_dynamicCastClassUnconditional();
      v55 = qword_101AD9268;
      swift_beginAccess();
      v56 = v54 + v55;
      v57 = v104;
      v58 = v111;
      v59 = v100;
      v100(v104, v56, v111);
      v60 = v102;
      Capsule.root.getter();
      v122(v57, v58);
      v61 = v105;
      v62 = v115;
      v98(v105, v60 + *(v103 + 28), v115);
      sub_1011F0B80(v60, _s15CapsuleDatabaseVMa);
      v63 = v109;
      CRDictionary.subscript.getter();
      (*v94)(v61, v62);
      if ((*v93)(v63, 1, v4) == 1)
      {
        break;
      }

      v64 = v90;
      v65 = v4;
      (*v85)(v90, v63, v4);
      v66 = swift_dynamicCastClassUnconditional();
      v67 = qword_101AD9268;
      swift_beginAccess();
      v68 = v66 + v67;
      v69 = v86;
      v59(v86, v68, v58);
      sub_100068574(&unk_101A2CA20, _s12CellCRDTDataVMa);
      v70 = v87;
      Capsule.subscript.getter();
      v122(v69, v58);
      sub_1005B981C(&unk_101A10690);
      CRRegister.wrappedValue.getter();
      sub_1011F0B80(v70, _s12CellCRDTDataVMa);
      v135[0] = v128;
      v135[1] = v129;
      v135[4] = v132;
      v135[5] = v133;
      v135[2] = v130;
      v135[3] = v131;
      v137 = v129;
      v138 = v130;
      v135[6] = v134;
      v136 = v128;
      v141 = v133;
      v142 = v134;
      v139 = v131;
      v140 = v132;
      if (!v134)
      {
        (v119)(v64, v65);
        sub_1011F0B80(v124, _s6CellIDVMa);
        sub_10000CAAC(v123, &unk_101A2C9D0);
        v4 = v65;
        v48 = v113;
        goto LABEL_15;
      }

      v4 = v65;
      v71 = v114;
      v72 = *(v114 + 48);
      v73 = v124;
      v74 = v108;
      sub_1011F0BE0(v124, v108, _s6CellIDVMa);
      sub_100006370(0, &qword_101A00EB0);
      v143[2] = v139;
      v143[3] = v140;
      v143[4] = v141;
      v144 = v142;
      v143[0] = v137;
      v143[1] = v138;
      sub_10074A990(&v137, &v128);
      v75 = sub_1008B0490(v143);
      v48 = v113;
      if (BYTE8(v136))
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v76 = static OS_os_log.persistence;
        v77 = static os_log_type_t.info.getter();
        sub_100005404(v76, &_mh_execute_header, v77, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
        v78 = [objc_allocWithZone(CRLColorFill) initWithColor:v75];

        sub_10000CAAC(v135, &qword_1019FFF80);
        (v119)(v90, v4);
        sub_1011F0B80(v73, _s6CellIDVMa);
        sub_10000CAAC(v123, &unk_101A2C9D0);
        *(v74 + v72) = v78;
        v71 = v114;
        (*v92)(v74, 0, 1, v114);
        v12 = v95;
        goto LABEL_17;
      }

      v82 = [objc_allocWithZone(CRLColorFill) initWithColor:v75];

      sub_10000CAAC(v135, &qword_1019FFF80);
      (v119)(v90, v4);
      sub_1011F0B80(v73, _s6CellIDVMa);
      sub_10000CAAC(v123, &unk_101A2C9D0);
      *(v74 + v72) = v82;
      (*v92)(v74, 0, 1, v71);
LABEL_16:
      v12 = v95;
LABEL_17:
      if ((*v91)(v74, 1, v71) == 1)
      {
        sub_10000CAAC(v74, &qword_101A2CA30);
        v46 = v112;
      }

      else
      {
        sub_10003DFF8(v74, v107, &qword_101A11C08);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_100B399D4(0, *(v127 + 2) + 1, 1, v127);
        }

        v46 = v112;
        v80 = *(v127 + 2);
        v79 = *(v127 + 3);
        if (v80 >= v79 >> 1)
        {
          v127 = sub_100B399D4(v79 > 1, v80 + 1, 1, v127);
        }

        v81 = v127;
        *(v127 + 2) = v80 + 1;
        sub_10003DFF8(v107, &v81[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v80], &qword_101A11C08);
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v96(v46, 1, v12) == 1)
      {
        goto LABEL_3;
      }
    }

    sub_1011F0B80(v53, _s6CellIDVMa);
    sub_10000CAAC(v50, &unk_101A2C9D0);
    sub_10000CAAC(v63, &qword_101A2C9E0);
    v48 = v113;
LABEL_15:
    v74 = v108;
    v71 = v114;
    (*v92)(v108, 1, 1, v114);
    goto LABEL_16;
  }

  v127 = _swiftEmptyArrayStorage;
  v48 = v113;
LABEL_3:
  (*(v83 + 8))(v116, v117);
  (*(v48 + 8))(v84, v115);
  return v127;
}

void sub_1011DEDEC(uint64_t *a1)
{
  v2 = v1;
  v426 = type metadata accessor for UUID();
  v416 = *(v426 - 8);
  v4 = __chkstk_darwin(v426);
  v402 = &v391 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v401 = &v391 - v7;
  v8 = __chkstk_darwin(v6);
  v407 = &v391 - v9;
  v10 = __chkstk_darwin(v8);
  v410 = &v391 - v11;
  v12 = __chkstk_darwin(v10);
  v404 = &v391 - v13;
  v14 = __chkstk_darwin(v12);
  v403 = &v391 - v15;
  v16 = __chkstk_darwin(v14);
  v408 = &v391 - v17;
  v18 = __chkstk_darwin(v16);
  v411 = (&v391 - v19);
  v20 = __chkstk_darwin(v18);
  v406 = (&v391 - v21);
  v22 = __chkstk_darwin(v20);
  v405 = (&v391 - v23);
  v24 = __chkstk_darwin(v22);
  v409 = (&v391 - v25);
  __chkstk_darwin(v24);
  v412 = (&v391 - v26);
  v27 = sub_1005B981C(&qword_101A10760);
  v28 = __chkstk_darwin(v27 - 8);
  v427 = &v391 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v415 = &v391 - v31;
  v32 = __chkstk_darwin(v30);
  v428 = &v391 - v33;
  v34 = __chkstk_darwin(v32);
  v419 = (&v391 - v35);
  v36 = __chkstk_darwin(v34);
  v429 = (&v391 - v37);
  __chkstk_darwin(v36);
  v422 = (&v391 - v38);
  v39 = sub_1005B981C(&unk_101A2C890);
  v40 = *(v39 - 8);
  v399 = v39;
  v400 = v40;
  __chkstk_darwin(v39);
  v398 = &v391 - v41;
  v397 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v397);
  v396 = &v391 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _s6CellIDVMa(0);
  v423 = *(v43 - 8);
  v44 = __chkstk_darwin(v43);
  v414 = &v391 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v413 = &v391 - v47;
  v48 = __chkstk_darwin(v46);
  v418 = (&v391 - v49);
  v50 = __chkstk_darwin(v48);
  *&v417 = &v391 - v51;
  v52 = __chkstk_darwin(v50);
  v421 = (&v391 - v53);
  v54 = __chkstk_darwin(v52);
  *&v420 = &v391 - v55;
  v56 = __chkstk_darwin(v54);
  v435 = &v391 - v57;
  __chkstk_darwin(v56);
  v59 = &v391 - v58;
  v434 = type metadata accessor for CRLTableCellRange(0);
  v60 = __chkstk_darwin(v434);
  v62 = &v391 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v64 = &v391 - v63;
  v65 = OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range;
  v436 = a1;
  sub_1011F0BE0(a1 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, &v391 - v63, type metadata accessor for CRLTableCellRange);
  sub_1005B981C(&qword_101A2D840);
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v64, type metadata accessor for CRLTableCellRange);
  sub_1011DB114();

  v424 = sub_1011DB2A8(v59);
  if (v66)
  {
    sub_1011F0B80(v59, _s6CellIDVMa);
    goto LABEL_4;
  }

  v433 = v43;
  v394 = sub_1011DB340(&v59[*(v43 + 20)]);
  v68 = v67;
  sub_1011F0B80(v59, _s6CellIDVMa);
  if (v68)
  {
LABEL_4:
    v69 = objc_opt_self();
    LODWORD(v70) = [v69 _atomicIncrementAssertCount];
    v439[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v439);
    StaticString.description.getter();
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    v73 = [v72 lastPathComponent];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_141;
    }

    goto LABEL_5;
  }

  sub_1011F0BE0(v436 + v65, v62, type metadata accessor for CRLTableCellRange);
  v91 = v435;
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v62, type metadata accessor for CRLTableCellRange);
  sub_1011DB114();
  v92 = v2;

  v395 = sub_1011DB2A8(v91);
  if (v93)
  {
    sub_1011F0B80(v91, _s6CellIDVMa);
    goto LABEL_11;
  }

  v94 = v433;
  v425 = sub_1011DB340(v91 + *(v433 + 20));
  v96 = v95;
  sub_1011F0B80(v91, _s6CellIDVMa);
  if (v96)
  {
LABEL_11:
    v69 = objc_opt_self();
    LODWORD(v70) = [v69 _atomicIncrementAssertCount];
    v439[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v439);
    StaticString.description.getter();
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v97 = String._bridgeToObjectiveC()();

    v98 = [v97 lastPathComponent];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v99;

    if (qword_1019F20A0 == -1)
    {
LABEL_12:
      v100 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v70;
      v102 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v102;
      v103 = sub_1005CF04C();
      *(inited + 104) = v103;
      *(inited + 72) = v71;
      *(inited + 136) = &type metadata for String;
      v104 = sub_1000053B0();
      *(inited + 112) = v62;
      *(inited + 120) = v75;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v104;
      *(inited + 152) = 237;
      v105 = v439[0];
      *(inited + 216) = v102;
      *(inited + 224) = v103;
      *(inited + 192) = v105;
      v106 = v71;
      v107 = v105;
      v108 = static os_log_type_t.error.getter();
      sub_100005404(v100, &_mh_execute_header, v108, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v109 = static os_log_type_t.error.getter();
      sub_100005404(v100, &_mh_execute_header, v109, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v110 = swift_allocObject();
      v110[2] = 8;
      v110[3] = 0;
      v110[4] = 0;
      v110[5] = 0;
      v111 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v88 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v89 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v90 = String._bridgeToObjectiveC()();

      [v69 handleFailureInFunction:v88 file:v89 lineNumber:237 isFatal:0 format:v90 args:v111];
      goto LABEL_6;
    }

LABEL_144:
    swift_once();
    goto LABEL_12;
  }

  v432 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v431 = type metadata accessor for CRLTableItemData();
  v112 = swift_dynamicCastClassUnconditional();
  v113 = qword_101AD9268;
  swift_beginAccess();
  v114 = v400;
  v115 = v112 + v113;
  v116 = v398;
  v117 = v399;
  v392 = v400[2];
  v393 = (v400 + 2);
  v392(v398, v115, v399);
  v118 = v396;
  Capsule.root.getter();
  v120 = v114[1];
  v119 = v114 + 1;
  v400 = v119;
  v391 = v120;
  v120(v116, v117);
  v434 = sub_1005B981C(&unk_101A2C7D0);
  v121 = CROrderedDictionary.count.getter();
  sub_1011F0B80(v118, _s15CapsuleDatabaseVMa);
  if (v121 < 0)
  {
    __break(1u);
LABEL_146:
    swift_once();
    goto LABEL_26;
  }

  v435 = v92;
  if ((v424 & 0x8000000000000000) == 0 && v424 < v121)
  {
    v122 = swift_dynamicCastClassUnconditional();
    v123 = qword_101AD9268;
    swift_beginAccess();
    v124 = v122 + v123;
    v125 = v398;
    v126 = v399;
    v392(v398, v124, v399);
    v127 = v396;
    Capsule.root.getter();
    v391(v125, v126);
    v128 = CROrderedDictionary.count.getter();
    sub_1011F0B80(v127, _s15CapsuleDatabaseVMa);
    if (v128 < 0)
    {
      __break(1u);
      goto LABEL_148;
    }

    if ((v395 & 0x8000000000000000) == 0 && v395 < v128)
    {
      v129 = swift_dynamicCastClassUnconditional();
      v130 = qword_101AD9268;
      swift_beginAccess();
      v131 = v129 + v130;
      v132 = v398;
      v133 = v399;
      v392(v398, v131, v399);
      v134 = v396;
      Capsule.root.getter();
      v391(v132, v133);
      sub_1005B981C(&unk_101A2D830);
      v135 = CROrderedDictionary.count.getter();
      sub_1011F0B80(v134, _s15CapsuleDatabaseVMa);
      if (v135 < 0)
      {
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if ((v394 & 0x8000000000000000) == 0 && v394 < v135)
      {
        v136 = swift_dynamicCastClassUnconditional();
        v137 = qword_101AD9268;
        swift_beginAccess();
        v138 = v136 + v137;
        v139 = v398;
        v140 = v399;
        v392(v398, v138, v399);
        v141 = v396;
        Capsule.root.getter();
        v391(v139, v140);
        v142 = CROrderedDictionary.count.getter();
        sub_1011F0B80(v141, _s15CapsuleDatabaseVMa);
        if (v142 < 0)
        {
LABEL_153:
          __break(1u);
          return;
        }

        if ((v425 & 0x8000000000000000) == 0 && v425 < v142)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v62 = objc_opt_self();
  LODWORD(v121) = [v62 _atomicIncrementAssertCount];
  v438[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v438);
  StaticString.description.getter();
  v119 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v143 = String._bridgeToObjectiveC()();

  v144 = [v143 lastPathComponent];

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v145;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_146;
  }

LABEL_26:
  v146 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v147 = swift_initStackObject();
  *(v147 + 16) = xmmword_10146CA70;
  *(v147 + 56) = &type metadata for Int32;
  *(v147 + 64) = &protocol witness table for Int32;
  *(v147 + 32) = v121;
  v148 = sub_100006370(0, &qword_1019F4D30);
  *(v147 + 96) = v148;
  v149 = sub_1005CF04C();
  *(v147 + 104) = v149;
  *(v147 + 72) = v119;
  *(v147 + 136) = &type metadata for String;
  v150 = sub_1000053B0();
  *(v147 + 112) = v65;
  *(v147 + 120) = v94;
  *(v147 + 176) = &type metadata for UInt;
  *(v147 + 144) = v150;
  *(v147 + 152) = 241;
  v151 = v438[0];
  *(v147 + 216) = v148;
  *(v147 + 224) = v149;
  *(v147 + 184) = &protocol witness table for UInt;
  *(v147 + 192) = v151;
  v152 = v119;
  v153 = v151;
  v154 = static os_log_type_t.error.getter();
  sub_100005404(v146, &_mh_execute_header, v154, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v147);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v155 = static os_log_type_t.error.getter();
  sub_100005404(v146, &_mh_execute_header, v155, "Cell selection is out of bounds", 31, 2, _swiftEmptyArrayStorage);

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

  [v62 handleFailureInFunction:v158 file:v159 lineNumber:241 isFatal:0 format:v160 args:v157];

  v92 = v435;
  v94 = v433;
LABEL_27:
  if (*(v436 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type))
  {
    if (*(v436 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type) != 1)
    {
      v308 = swift_dynamicCastClassUnconditional();
      v309 = qword_101AD9268;
      swift_beginAccess();
      v310 = v308 + v309;
      v311 = v398;
      v312 = v399;
      v392(v398, v310, v399);
      v313 = v396;
      Capsule.root.getter();
      v391(v311, v312);
      v314 = CROrderedDictionary.count.getter();
      sub_1011F0B80(v313, _s15CapsuleDatabaseVMa);
      if ((v314 & 0x8000000000000000) == 0)
      {
        if (!v314)
        {
          return;
        }

        v409 = v314;
        if (v425 >= v394)
        {
          v315 = 0;
          v62 = (v92 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
          v429 = OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid;
          v418 = (v416 + 32);
          v419 = (v416 + 16);
          v412 = (v416 + 8);
          v421 = (v423 + 48);
          v422 = (v423 + 56);
          v71 = _swiftEmptyArrayStorage;
          v420 = xmmword_10146CA70;
          v436 = (v92 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
          while (1)
          {
            v424 = v315;
            v411 = (v315 + 1);
            v316 = v394;
            while (1)
            {
              v430 = v316;
              v434 = v71;
              if ((*(v429 + v92) & 1) != 0 || !*v62) && ((swift_dynamicCastClassUnconditional(), , v317 = sub_1011FD0F0(), , swift_dynamicCastClassUnconditional(), , v318 = sub_1011FBBD8(), , v319 = sub_1011EE2D4(v317, v318), v321 = v320, v323 = v322, v325 = v324, , v326 = *v62, *v436 = v319, v436[1] = v321, v436[2] = v323, v436[3] = v325, , , , , v62 = v436, sub_1011DAB1C(v326), , v327 = v435, , , , (*(v429 + v327)) || !*v62))
              {
                swift_dynamicCastClassUnconditional();

                v329 = sub_1011FD0F0();

                swift_dynamicCastClassUnconditional();

                v330 = v62;
                v331 = sub_1011FBBD8();

                v332 = sub_1011EE2D4(v329, v331);
                v334 = v333;
                v336 = v335;
                v328 = v337;

                v338 = *v330;
                *v330 = v332;
                v330[1] = v334;
                v330[2] = v336;
                v330[3] = v328;

                sub_1011DAB1C(v338);
              }

              else
              {
                v328 = *(v62 + 3);
              }

              v339 = v433;
              if (*(v328 + 16))
              {
                v340 = sub_1007C7EC0(v424);
                if (v341)
                {
                  v342 = *(v328 + 56);
                  v343 = v416;
                  *&v417 = *(v416 + 72);
                  v344 = v407;
                  v345 = v426;
                  v428 = *(v416 + 16);
                  (v428)(v407, v342 + v417 * v340, v426);

                  v346 = *(v343 + 32);
                  v346(v410, v344, v345);
                  if ((*(v429 + v435) & 1) != 0 || !*v436)
                  {
                    swift_dynamicCastClassUnconditional();

                    v348 = sub_1011FD0F0();

                    swift_dynamicCastClassUnconditional();

                    v349 = sub_1011FBBD8();

                    v350 = sub_1011EE2D4(v348, v349);
                    v347 = v351;
                    v353 = v352;
                    v355 = v354;

                    v356 = v436;
                    v357 = *v436;
                    *v436 = v350;
                    v356[1] = v347;
                    v356[2] = v353;
                    v356[3] = v355;

                    v339 = v433;
                    sub_1011DAB1C(v357);
                    if (!*(v347 + 16))
                    {
LABEL_124:

                      (*v412)(v410, v426);
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v347 = v436[1];

                    if (!*(v347 + 16))
                    {
                      goto LABEL_124;
                    }
                  }

                  v358 = sub_1007C7EC0(v430);
                  if (v359)
                  {
                    v75 = v402;
                    v360 = v426;
                    (v428)(v402, *(v347 + 56) + v358 * v417, v426);

                    v361 = v401;
                    v346(v401, v75, v360);
                    v362 = v427;
                    v346(v427, v410, v360);
                    v346(&v362[*(v339 + 20)], v361, v360);
                    (*v422)(v362, 0, 1, v339);
                    goto LABEL_128;
                  }

                  goto LABEL_124;
                }
              }

LABEL_125:
              (*v422)(v427, 1, 1, v339);
              v428 = objc_opt_self();
              v363 = [v428 _atomicIncrementAssertCount];
              v437 = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, &v437);
              StaticString.description.getter();
              v364 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v365 = String._bridgeToObjectiveC()();

              v366 = [v365 lastPathComponent];

              v367 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v369 = v368;

              if (qword_1019F20A0 != -1)
              {
                swift_once();
              }

              v370 = static OS_os_log.crlAssert;
              sub_1005B981C(&qword_1019F54E0);
              v75 = swift_initStackObject();
              *(v75 + 16) = v420;
              *(v75 + 56) = &type metadata for Int32;
              *(v75 + 64) = &protocol witness table for Int32;
              *(v75 + 32) = v363;
              v371 = sub_100006370(0, &qword_1019F4D30);
              *(v75 + 96) = v371;
              v372 = sub_1005CF04C();
              *(v75 + 104) = v372;
              *(v75 + 72) = v364;
              *(v75 + 136) = &type metadata for String;
              v373 = sub_1000053B0();
              *(v75 + 112) = v367;
              *(v75 + 120) = v369;
              *(v75 + 176) = &type metadata for UInt;
              *(v75 + 144) = v373;
              *(v75 + 152) = 265;
              v374 = v437;
              *(v75 + 216) = v371;
              *(v75 + 224) = v372;
              *(v75 + 184) = &protocol witness table for UInt;
              *(v75 + 192) = v374;
              v375 = v364;
              v376 = v374;
              v377 = static os_log_type_t.error.getter();
              sub_100005404(v370, &_mh_execute_header, v377, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v75);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v378 = static os_log_type_t.error.getter();
              sub_100005404(v370, &_mh_execute_header, v378, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

              type metadata accessor for __VaListBuilder();
              v379 = swift_allocObject();
              v379[2] = 8;
              v379[3] = 0;
              v379[4] = 0;
              v379[5] = 0;
              v380 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v381 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v382 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v383 = String._bridgeToObjectiveC()();

              [v428 handleFailureInFunction:v381 file:v382 lineNumber:265 isFatal:0 format:v383 args:v380];

              v339 = v433;
LABEL_128:
              v70 = v415;
              v69 = &qword_101A10760;
              sub_10003DFF8(v427, v415, &qword_101A10760);
              v384 = (*v421)(v70, 1, v339);
              v71 = v434;
              v92 = v435;
              if (v384 == 1)
              {
                sub_10000CAAC(v70, &qword_101A10760);
                v62 = v436;
                v385 = v430;
              }

              else
              {
                v386 = v70;
                v387 = v413;
                sub_1011F0B18(v386, v413, _s6CellIDVMa);
                sub_1011F0BE0(v387, v414, _s6CellIDVMa);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v62 = v436;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v71 = sub_100B36030(0, v71[2] + 1, 1, v71);
                }

                v385 = v430;
                v69 = v71[2];
                v389 = v71[3];
                v70 = v69 + 1;
                if (v69 >= v389 >> 1)
                {
                  v71 = sub_100B36030(v389 > 1, v69 + 1, 1, v71);
                }

                sub_1011F0B80(v413, _s6CellIDVMa);
                v71[2] = v70;
                sub_1011F0B18(v414, v71 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v69, _s6CellIDVMa);
              }

              if (v425 == v385)
              {
                break;
              }

              v390 = __OFADD__(v385, 1);
              v316 = v385 + 1;
              if (v390)
              {
                goto LABEL_140;
              }
            }

            v315 = v411;
            if (v411 == v409)
            {
              return;
            }
          }
        }

        goto LABEL_152;
      }

      goto LABEL_149;
    }

    if (v395 >= v424)
    {
      v75 = v92 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap;
      v429 = OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid;
      v414 = v416 + 32;
      v415 = v416 + 16;
      v412 = (v416 + 8);
      v421 = (v423 + 48);
      v422 = (v423 + 56);
      v71 = _swiftEmptyArrayStorage;
      v420 = xmmword_10146CA70;
      v436 = (v92 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
      while (1)
      {
        v161 = swift_dynamicCastClassUnconditional();
        v162 = qword_101AD9268;
        swift_beginAccess();
        v163 = v161 + v162;
        v164 = v398;
        v69 = v399;
        v392(v398, v163, v399);
        v165 = v396;
        Capsule.root.getter();
        v391(v164, v69);
        sub_1005B981C(&unk_101A2D830);
        v70 = CROrderedDictionary.count.getter();
        sub_1011F0B80(v165, _s15CapsuleDatabaseVMa);
        if (v70 < 0)
        {
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v70)
        {
          break;
        }

LABEL_63:
        v237 = v424;
        if (v424 == v395)
        {
          return;
        }

        ++v424;
        if (__OFADD__(v237, 1))
        {
          __break(1u);
          goto LABEL_67;
        }
      }

      v430 = 0;
      v425 = v70;
      while (1)
      {
        if ((v434 = v71, (*(v429 + v92)) || !*v75) && ((swift_dynamicCastClassUnconditional(), , v166 = sub_1011FD0F0(), , swift_dynamicCastClassUnconditional(), , v167 = sub_1011FBBD8(), , v168 = sub_1011EE2D4(v166, v167), v170 = v169, v172 = v171, v174 = v173, , v175 = *v75, *v436 = v168, v436[1] = v170, v436[2] = v172, v436[3] = v174, , , , , v75 = v436, sub_1011DAB1C(v175), v176 = v435, , , , , (*(v429 + v176)) || !*v75))
        {
          swift_dynamicCastClassUnconditional();

          v178 = sub_1011FD0F0();

          swift_dynamicCastClassUnconditional();

          v179 = sub_1011FBBD8();

          v180 = sub_1011EE2D4(v178, v179);
          v182 = v181;
          v184 = v183;
          v177 = v185;

          v186 = *v75;
          *v436 = v180;
          v436[1] = v182;
          v436[2] = v184;
          v436[3] = v177;

          v75 = v436;
          sub_1011DAB1C(v186);
          if (!*(v177 + 16))
          {
            break;
          }
        }

        else
        {
          v177 = *(v75 + 24);

          if (!*(v177 + 16))
          {
            break;
          }
        }

        v187 = sub_1007C7EC0(v424);
        if ((v188 & 1) == 0)
        {
          break;
        }

        v189 = *(v177 + 56);
        v190 = v416;
        v413 = *(v416 + 72);
        v62 = v408;
        v191 = v426;
        v427 = *(v416 + 16);
        (v427)(v408, v189 + v413 * v187, v426);

        v192 = *(v190 + 32);
        v192(v411, v62, v191);
        if ((*(v429 + v435) & 1) != 0 || !*v75)
        {
          swift_dynamicCastClassUnconditional();

          v194 = sub_1011FD0F0();

          swift_dynamicCastClassUnconditional();

          v195 = sub_1011FBBD8();

          v196 = sub_1011EE2D4(v194, v195);
          v193 = v197;
          v199 = v198;
          v201 = v200;

          v202 = *v75;
          v62 = *(v75 + 16);
          *v75 = v196;
          *(v75 + 8) = v193;
          *(v75 + 16) = v199;
          *(v75 + 24) = v201;

          sub_1011DAB1C(v202);
        }

        else
        {
          v193 = *(v75 + 8);
        }

        if (!*(v193 + 16) || (v203 = sub_1007C7EC0(v430), (v204 & 1) == 0))
        {

          (*v412)(v411, v426);
          v94 = v433;
          goto LABEL_54;
        }

        v205 = v404;
        v206 = v426;
        (v427)(v404, *(v193 + 56) + v203 * v413, v426);

        v207 = v403;
        v192(v403, v205, v206);
        v208 = v428;
        v192(v428, v411, v206);
        v209 = v433;
        v192(&v208[*(v433 + 20)], v207, v206);
        v94 = v209;
        (*v422)(v208, 0, 1, v209);
LABEL_57:
        v231 = v419;
        sub_10003DFF8(v428, v419, &qword_101A10760);
        v232 = (*v421)(v231, 1, v94);
        v71 = v434;
        v92 = v435;
        v75 = v436;
        if (v232 == 1)
        {
          sub_10000CAAC(v231, &qword_101A10760);
        }

        else
        {
          v233 = v231;
          v234 = v417;
          sub_1011F0B18(v233, v417, _s6CellIDVMa);
          sub_1011F0BE0(v234, v418, _s6CellIDVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_100B36030(0, v71[2] + 1, 1, v71);
          }

          v236 = v71[2];
          v235 = v71[3];
          if (v236 >= v235 >> 1)
          {
            v71 = sub_100B36030(v235 > 1, v236 + 1, 1, v71);
          }

          sub_1011F0B80(v417, _s6CellIDVMa);
          v71[2] = v236 + 1;
          sub_1011F0B18(v418, v71 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v236, _s6CellIDVMa);
        }

        if (v425 == ++v430)
        {
          goto LABEL_63;
        }
      }

LABEL_54:
      (*v422)(v428, 1, 1, v94);
      v427 = objc_opt_self();
      v210 = [v427 _atomicIncrementAssertCount];
      v437 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v437);
      StaticString.description.getter();
      v211 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v212 = String._bridgeToObjectiveC()();

      v213 = [v212 lastPathComponent];

      v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v216 = v215;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v217 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v218 = swift_allocObject();
      *(v218 + 16) = v420;
      *(v218 + 56) = &type metadata for Int32;
      *(v218 + 64) = &protocol witness table for Int32;
      *(v218 + 32) = v210;
      v219 = sub_100006370(0, &qword_1019F4D30);
      *(v218 + 96) = v219;
      v220 = sub_1005CF04C();
      *(v218 + 104) = v220;
      *(v218 + 72) = v211;
      *(v218 + 136) = &type metadata for String;
      v221 = sub_1000053B0();
      *(v218 + 112) = v214;
      *(v218 + 120) = v216;
      *(v218 + 176) = &type metadata for UInt;
      *(v218 + 144) = v221;
      *(v218 + 152) = 257;
      v222 = v437;
      *(v218 + 216) = v219;
      *(v218 + 224) = v220;
      *(v218 + 184) = &protocol witness table for UInt;
      *(v218 + 192) = v222;
      v223 = v211;
      v224 = v222;
      v225 = static os_log_type_t.error.getter();
      sub_100005404(v217, &_mh_execute_header, v225, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v218);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v226 = static os_log_type_t.error.getter();
      sub_100005404(v217, &_mh_execute_header, v226, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v227 = swift_allocObject();
      v227[2] = 8;
      v227[3] = 0;
      v227[4] = 0;
      v227[5] = 0;
      v228 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v229 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v230 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v62 = String._bridgeToObjectiveC()();

      [v427 handleFailureInFunction:v229 file:v230 lineNumber:257 isFatal:0 format:v62 args:v228];

      v94 = v433;
      goto LABEL_57;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

LABEL_67:
  if (v395 < v424 || v425 < v394)
  {
    goto LABEL_150;
  }

  v75 = v92 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap;
  v428 = OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid;
  v414 = v416 + 32;
  v415 = v416 + 16;
  v411 = (v416 + 8);
  v418 = (v423 + 48);
  v419 = (v423 + 56);
  v71 = _swiftEmptyArrayStorage;
  v417 = xmmword_10146CA70;
  v436 = (v92 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
  v238 = v394;
  do
  {
    while (1)
    {
      if ((v430 = v238, v434 = v71, (v428[v92]) || !*v75) && ((swift_dynamicCastClassUnconditional(), , v239 = sub_1011FD0F0(), , swift_dynamicCastClassUnconditional(), , v240 = sub_1011FBBD8(), , v241 = sub_1011EE2D4(v239, v240), v243 = v242, v245 = v244, v247 = v246, , v248 = *v75, v62 = *(v75 + 8), *v436 = v241, v436[1] = v243, v436[2] = v245, v436[3] = v247, , , , , v75 = v436, sub_1011DAB1C(v248), , v249 = v435, , , , (v428[v249]) || !*v75))
      {
        swift_dynamicCastClassUnconditional();

        v251 = sub_1011FD0F0();

        swift_dynamicCastClassUnconditional();

        v252 = sub_1011FBBD8();

        v253 = sub_1011EE2D4(v251, v252);
        v255 = v254;
        v257 = v256;
        v250 = v258;

        v259 = *v75;
        v62 = *(v75 + 16);
        *v436 = v253;
        v436[1] = v255;
        v436[2] = v257;
        v436[3] = v250;

        v75 = v436;
        sub_1011DAB1C(v259);
        if (!*(v250 + 16))
        {
          goto LABEL_85;
        }
      }

      else
      {
        v250 = *(v75 + 24);

        if (!*(v250 + 16))
        {
          goto LABEL_85;
        }
      }

      v260 = sub_1007C7EC0(v424);
      if (v261)
      {
        v262 = *(v250 + 56);
        v263 = v416;
        v413 = *(v416 + 72);
        v264 = v409;
        v265 = v426;
        v427 = *(v416 + 16);
        (v427)(v409, v262 + v413 * v260, v426);

        v266 = *(v263 + 32);
        v266(v412, v264, v265);
        if ((v428[v435] & 1) != 0 || !*v75)
        {
          swift_dynamicCastClassUnconditional();

          v268 = sub_1011FD0F0();

          swift_dynamicCastClassUnconditional();

          v269 = sub_1011FBBD8();

          v270 = sub_1011EE2D4(v268, v269);
          v267 = v271;
          v273 = v272;
          v275 = v274;

          v276 = *v75;
          v62 = *(v75 + 16);
          *v75 = v270;
          *(v75 + 8) = v267;
          *(v75 + 16) = v273;
          *(v75 + 24) = v275;

          sub_1011DAB1C(v276);
          if (!*(v267 + 16))
          {
LABEL_89:

            (*v411)(v412, v426);
            goto LABEL_90;
          }
        }

        else
        {
          v267 = *(v75 + 8);

          if (!*(v267 + 16))
          {
            goto LABEL_89;
          }
        }

        v277 = sub_1007C7EC0(v430);
        if (v278)
        {
          v279 = v406;
          v280 = v426;
          (v427)(v406, *(v267 + 56) + v277 * v413, v426);

          v281 = v405;
          v266(v405, v279, v280);
          v282 = v429;
          v266(v429, v412, v280);
          v70 = v433;
          v266((v282 + *(v433 + 20)), v281, v280);
          (*v419)(v282, 0, 1, v70);
          goto LABEL_93;
        }

        goto LABEL_89;
      }

LABEL_85:

LABEL_90:
      (*v419)(v429, 1, 1, v433);
      v427 = objc_opt_self();
      v283 = [v427 _atomicIncrementAssertCount];
      v438[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v438);
      StaticString.description.getter();
      v284 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v285 = String._bridgeToObjectiveC()();

      v286 = [v285 lastPathComponent];

      v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v289 = v288;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v290 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v291 = swift_allocObject();
      *(v291 + 16) = v417;
      *(v291 + 56) = &type metadata for Int32;
      *(v291 + 64) = &protocol witness table for Int32;
      *(v291 + 32) = v283;
      v292 = sub_100006370(0, &qword_1019F4D30);
      *(v291 + 96) = v292;
      v293 = sub_1005CF04C();
      *(v291 + 104) = v293;
      *(v291 + 72) = v284;
      *(v291 + 136) = &type metadata for String;
      v294 = sub_1000053B0();
      *(v291 + 112) = v287;
      *(v291 + 120) = v289;
      *(v291 + 176) = &type metadata for UInt;
      *(v291 + 144) = v294;
      *(v291 + 152) = 249;
      v295 = v438[0];
      *(v291 + 216) = v292;
      *(v291 + 224) = v293;
      *(v291 + 184) = &protocol witness table for UInt;
      *(v291 + 192) = v295;
      v296 = v284;
      v297 = v295;
      v298 = static os_log_type_t.error.getter();
      sub_100005404(v290, &_mh_execute_header, v298, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v291);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v299 = static os_log_type_t.error.getter();
      sub_100005404(v290, &_mh_execute_header, v299, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v300 = swift_allocObject();
      v300[2] = 8;
      v300[3] = 0;
      v300[4] = 0;
      v300[5] = 0;
      v301 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v302 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v303 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v62 = String._bridgeToObjectiveC()();

      [v427 handleFailureInFunction:v302 file:v303 lineNumber:249 isFatal:0 format:v62 args:v301];

      v70 = v433;
LABEL_93:
      v69 = v422;
      sub_10003DFF8(v429, v422, &qword_101A10760);
      v304 = (*v418)(v69, 1, v70);
      v71 = v434;
      v92 = v435;
      v75 = v436;
      if (v304 == 1)
      {
        sub_10000CAAC(v69, &qword_101A10760);
      }

      else
      {
        v305 = v420;
        sub_1011F0B18(v69, v420, _s6CellIDVMa);
        sub_1011F0BE0(v305, v421, _s6CellIDVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_100B36030(0, v71[2] + 1, 1, v71);
        }

        v69 = v71[2];
        v306 = v71[3];
        v70 = v69 + 1;
        if (v69 >= v306 >> 1)
        {
          v71 = sub_100B36030(v306 > 1, v69 + 1, 1, v71);
        }

        sub_1011F0B80(v420, _s6CellIDVMa);
        v71[2] = v70;
        sub_1011F0B18(v421, v71 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v69, _s6CellIDVMa);
      }

      if (v425 != v430)
      {
        break;
      }

      v307 = v424;
      if (v424 == v395)
      {
        return;
      }

      ++v424;
      if (__OFADD__(v307, 1))
      {
        goto LABEL_143;
      }

      v238 = v394;
    }

    v238 = v430 + 1;
  }

  while (!__OFADD__(v430, 1));
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  swift_once();
LABEL_5:
  v76 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v77 = swift_initStackObject();
  *(v77 + 16) = xmmword_10146CA70;
  *(v77 + 56) = &type metadata for Int32;
  *(v77 + 64) = &protocol witness table for Int32;
  *(v77 + 32) = v70;
  v78 = sub_100006370(0, &qword_1019F4D30);
  *(v77 + 96) = v78;
  v79 = sub_1005CF04C();
  *(v77 + 104) = v79;
  *(v77 + 72) = v71;
  *(v77 + 136) = &type metadata for String;
  v80 = sub_1000053B0();
  *(v77 + 112) = v62;
  *(v77 + 120) = v75;
  *(v77 + 176) = &type metadata for UInt;
  *(v77 + 184) = &protocol witness table for UInt;
  *(v77 + 144) = v80;
  *(v77 + 152) = 236;
  v81 = v439[0];
  *(v77 + 216) = v78;
  *(v77 + 224) = v79;
  *(v77 + 192) = v81;
  v82 = v71;
  v83 = v81;
  v84 = static os_log_type_t.error.getter();
  sub_100005404(v76, &_mh_execute_header, v84, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v77);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v85 = static os_log_type_t.error.getter();
  sub_100005404(v76, &_mh_execute_header, v85, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v86 = swift_allocObject();
  v86[2] = 8;
  v86[3] = 0;
  v86[4] = 0;
  v86[5] = 0;
  v87 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v88 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v89 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v90 = String._bridgeToObjectiveC()();

  [v69 handleFailureInFunction:v88 file:v89 lineNumber:236 isFatal:0 format:v90 args:v87];
LABEL_6:
}

uint64_t sub_1011E2704@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = a1;
  v61 = a2;
  v53 = _s12CellCRDTDataVMa(0);
  __chkstk_darwin(v53);
  v54 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A2C9E0);
  __chkstk_darwin(v4 - 8);
  v59 = &v44 - v5;
  v6 = sub_1005B981C(&qword_1019FA370);
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = &v44 - v7;
  v8 = sub_1005B981C(&unk_101A2C890);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v12 = _s15CapsuleDatabaseVMa();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1005B981C(&qword_1019FA378);
  v16 = *(v55 - 8);
  __chkstk_darwin(v55);
  v49 = &v44 - v17;
  v52 = v2;
  v47 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v46 = type metadata accessor for CRLTableItemData();
  v18 = swift_dynamicCastClassUnconditional();
  v19 = qword_101AD9268;
  swift_beginAccess();
  v45 = *(v9 + 16);
  v45(v11, v18 + v19, v8);
  Capsule.root.getter();
  v20 = *(v9 + 8);
  v50 = v11;
  v51 = v9 + 8;
  v48 = v20;
  v20(v11, v8);
  v22 = v56;
  v21 = v57;
  v23 = v58;
  (*(v57 + 16))(v56, &v15[*(v13 + 36)], v58);
  sub_1011F0B80(v15, _s15CapsuleDatabaseVMa);
  v24 = v59;
  v25 = v23;
  CRDictionary.subscript.getter();
  v26 = v24;
  v27 = v22;
  v28 = v55;
  (*(v21 + 8))(v27, v25);
  v29 = v16;
  if ((*(v16 + 48))(v26, 1, v28) == 1)
  {
    sub_10000CAAC(v26, &qword_101A2C9E0);
    v30 = _s12CellContentsVMa(0);
    return (*(*(v30 - 8) + 56))(v61, 1, 1, v30);
  }

  else
  {
    v32 = v49;
    (*(v16 + 32))(v49, v26, v28);
    v33 = swift_dynamicCastClassUnconditional();
    v34 = qword_101AD9268;
    swift_beginAccess();
    v35 = v33 + v34;
    v36 = v50;
    v45(v50, v35, v8);
    sub_100068574(&unk_101A2CA20, _s12CellCRDTDataVMa);
    v37 = v54;
    Capsule.subscript.getter();
    v48(v36, v8);
    sub_1005B981C(&unk_101A10690);
    CRRegister.wrappedValue.getter();
    v71[4] = v68;
    v71[5] = v69;
    v70 = v63;
    v71[0] = v64;
    v71[2] = v66;
    v71[3] = v67;
    v71[1] = v65;
    if (v69)
    {
      sub_100006370(0, &qword_101A00EB0);
      v72[2] = v66;
      v72[3] = v67;
      v72[4] = v68;
      v73 = v69;
      v72[0] = v64;
      v72[1] = v65;
      sub_10074A990(v71, &v62);
      v38 = sub_1008B0490(v72);
      v39 = v61;
      if (BYTE8(v70) == 1)
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v40 = static OS_os_log.persistence;
        v41 = static os_log_type_t.info.getter();
        sub_100005404(v40, &_mh_execute_header, v41, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
      }

      v42 = [objc_allocWithZone(CRLColorFill) initWithColor:v38];

      sub_10000CAAC(&v63, &qword_1019FFF80);
    }

    else
    {
      v42 = 0;
      v39 = v61;
    }

    (*(v29 + 8))(v32, v28);
    v43 = _s12CellContentsVMa(0);
    sub_1011F0BE0(v37, v39 + *(v43 + 20), type metadata accessor for CRLWPStorageCRDTData);
    sub_1011F0B80(v37, _s12CellCRDTDataVMa);
    *v39 = v42;
    return (*(*(v43 - 8) + 56))(v39, 0, 1, v43);
  }
}

uint64_t sub_1011E2E68(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = sub_1005B981C(&unk_101A2C590);
  __chkstk_darwin(v3 - 8);
  v5 = (&v20 - v4);
  v6 = _s12CellContentsVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1005B981C(&qword_101A10760);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = _s6CellIDVMa(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1011DB87C(a2, v21, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000CAAC(v12, &qword_101A10760);
  }

  else
  {
    sub_1011F0B18(v12, v16, _s6CellIDVMa);
    sub_1011E2704(v16, v5);
    sub_1011F0B80(v16, _s6CellIDVMa);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10000CAAC(v5, &unk_101A2C590);
    }

    else
    {
      sub_1011F0B18(v5, v9, _s12CellContentsVMa);
      v17 = *v9;
      v18 = *v9;
      sub_1011F0B80(v9, _s12CellContentsVMa);
      if (v17)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

Class sub_1011E3210(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v6 = a1;
  a3();

  a4(0);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

uint64_t sub_1011E328C()
{
  v1 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s12CellCRDTDataVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A2CA10);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  v49 = v0;
  v47 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  type metadata accessor for CRLTableItemData();
  swift_dynamicCastClassUnconditional();

  v15 = sub_1011FD9CC();

  v17 = 0;
  v18 = *(v15 + 16);
  v44 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store;
  v45 = v18;
  v48 = v10;
  v46 = v15;
  v43 = v13;
  if (v18)
  {
    goto LABEL_3;
  }

LABEL_2:
  v19 = sub_1005B981C(&unk_1019F6CC0);
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v52 = v18;
  while (1)
  {
    sub_10003DFF8(v10, v13, &unk_101A2CA10);
    v25 = sub_1005B981C(&unk_1019F6CC0);
    if ((*(*(v25 - 8) + 48))(v13, 1, v25) == 1)
    {

      return v14;
    }

    sub_1011F0B18(&v13[*(v25 + 64)], v7, _s12CellCRDTDataVMa);
    v26 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:0.0 size:{0.0, 1.0, 1.0}];
    [v26 size];
    v29 = [objc_opt_self() pathSourceForShapeType:3 naturalSize:{v27, v28}];
    v30 = v50;
    v31 = *(v49 + v44);
    (*(**(v49 + v47) + 264))();
    v32 = v7;
    v33 = v7;
    v34 = v51;
    sub_1011F0BE0(v32, v51, type metadata accessor for CRLWPStorageCRDTData);
    v35 = v31;
    v36 = v26;
    v37 = v29;
    v38 = sub_100A481DC(v35, v30, v34, v36, v37);

    v39 = swift_unknownObjectRetain();
    sub_100A29E08(v39);

    v40 = v38;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v41 = *(v25 + 48);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    sub_1011F0B80(v33, _s12CellCRDTDataVMa);
    v14 = v53;
    result = sub_1011F0B80(&v13[v41], _s6CellIDVMa);
    v7 = v33;
    v10 = v48;
    v18 = v45;
    v15 = v46;
    v17 = v52;
    if (v52 == v45)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v15 + 16))
    {
      goto LABEL_13;
    }

    v20 = v7;
    v21 = v14;
    v22 = v17;
    v23 = sub_1005B981C(&unk_1019F6CC0);
    v24 = *(v23 - 8);
    sub_10000BE14(v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, v10, &unk_1019F6CC0);
    v52 = v22 + 1;
    v14 = v21;
    v7 = v20;
    v13 = v43;
    (*(v24 + 56))(v10, 0, 1, v23);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1011E3A8C()
{
  v0 = sub_1005B981C(&unk_101A2C890);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = qword_101AD9268;
  swift_beginAccess();
  (*(v1 + 16))(v3, v7 + v8, v0);
  Capsule.root.getter();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&unk_101A2C7D0);
  v9 = CROrderedDictionary.count.getter();
  sub_1011F0B80(v6, _s15CapsuleDatabaseVMa);
  result = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1011E3CA8()
{
  v0 = sub_1005B981C(&unk_101A2C890);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - v2;
  v4 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = qword_101AD9268;
  swift_beginAccess();
  (*(v1 + 16))(v3, v7 + v8, v0);
  Capsule.root.getter();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&unk_101A2C7D0);
  v9 = CROrderedDictionary.count.getter();
  result = sub_1011F0B80(v6, _s15CapsuleDatabaseVMa);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
    if (v9)
    {
      v17 = _swiftEmptyArrayStorage;
      sub_100776504(0, v9, 0);
      v12 = 0;
      v11 = v17;
      do
      {
        v13 = sub_1011E3F2C(v12);
        v17 = v11;
        v15 = v11[2];
        v14 = v11[3];
        if (v15 >= v14 >> 1)
        {
          v16 = v13;
          sub_100776504((v14 > 1), v15 + 1, 1);
          v13 = v16;
          v11 = v17;
        }

        ++v12;
        v11[2] = v15 + 1;
        *&v11[v15 + 4] = v13;
      }

      while (v9 != v12);
    }

    return v11;
  }

  return result;
}

double sub_1011E3F2C(uint64_t a1)
{
  v79 = a1;
  v75 = _s11RowCRDTDataVMa(0);
  __chkstk_darwin(v75);
  v76 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1005B981C(&unk_101A2C7D0);
  v71 = *(v81 - 8);
  __chkstk_darwin(v81);
  v70 = &v61 - v3;
  v4 = sub_1005B981C(&qword_1019FA3A8);
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v72 = &v61 - v5;
  v6 = sub_1005B981C(&unk_101A2C890);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v13);
  v65 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v80 = v1;
  v82 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v69 = type metadata accessor for CRLTableItemData();
  v18 = swift_dynamicCastClassUnconditional();
  v19 = &qword_101AD9268;
  v20 = qword_101AD9268;
  swift_beginAccess();
  v67 = *(v7 + 16);
  v68 = v7 + 16;
  v67(v12, v18 + v20, v6);
  Capsule.root.getter();
  v23 = *(v7 + 8);
  v22 = (v7 + 8);
  v21 = v23;
  v66 = v12;
  v24 = v12;
  v25 = v6;
  v78 = v22;
  v23(v24, v6);
  v64 = v13;
  v26 = CROrderedDictionary.count.getter();
  sub_1011F0B80(v17, _s15CapsuleDatabaseVMa);
  if (v26 < 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v63 = v9;
  v77 = v21;
  if ((v79 & 0x8000000000000000) == 0 && v26 > v79)
  {
    goto LABEL_6;
  }

  v62 = objc_opt_self();
  LODWORD(v26) = [v62 _atomicIncrementAssertCount];
  v85 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v85);
  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [v27 lastPathComponent];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v29;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v30 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v26;
  v32 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v32;
  v33 = sub_1005CF04C();
  *(inited + 104) = v33;
  *(inited + 72) = v22;
  *(inited + 136) = &type metadata for String;
  v34 = sub_1000053B0();
  *(inited + 112) = v19;
  *(inited + 120) = v17;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v34;
  *(inited + 152) = 398;
  v35 = v85;
  *(inited + 216) = v32;
  *(inited + 224) = v33;
  *(inited + 192) = v35;
  v36 = v22;
  v37 = v35;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v39, "Tried to get the height for a row that does not exist.", 54, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v62 handleFailureInFunction:v42 file:v43 lineNumber:398 isFatal:0 format:v44 args:v41];

  v21 = v77;
LABEL_6:
  v45 = swift_dynamicCastClassUnconditional();
  v46 = qword_101AD9268;
  swift_beginAccess();
  v47 = v45 + v46;
  v48 = v66;
  v49 = v67;
  v67(v66, v47, v25);
  v50 = v65;
  Capsule.root.getter();
  v21(v48, v25);
  v51 = v70;
  v52 = v71;
  v53 = v81;
  (*(v71 + 16))(v70, v50 + *(v64 + 20), v81);
  sub_1011F0B80(v50, _s15CapsuleDatabaseVMa);
  v54 = v72;
  CROrderedDictionary.subscript.getter();
  (*(v52 + 8))(v51, v53);
  v55 = swift_dynamicCastClassUnconditional();
  v56 = qword_101AD9268;
  swift_beginAccess();
  v57 = v55 + v56;
  v58 = v63;
  v49(v63, v57, v25);
  sub_100068574(&unk_101A2C8F0, _s11RowCRDTDataVMa);
  v59 = v76;
  Capsule.subscript.getter();
  v77(v58, v25);
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v59, _s11RowCRDTDataVMa);
  (*(v73 + 8))(v54, v74);
  result = v83;
  if (v84)
  {
    return 240.0;
  }

  return result;
}

uint64_t sub_1011E4970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FA368);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v21 = _s11RowCRDTDataVMa(0);
  __chkstk_darwin(v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1005B981C(&qword_1019FA3A8);
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v19 - v14;
  sub_1011F0BE0(v20, v12, _s11RowCRDTDataVMa);
  (*(v5 + 16))(v7, a3, v4);

  CRKeyPath.init(_:)();
  v16 = type metadata accessor for CRKeyPath();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  sub_100068574(&unk_101A2C8F0, _s11RowCRDTDataVMa);
  Ref.init<A>(_:_:identity:)();
  swift_getKeyPath();
  v17 = Capsule.Ref.subscript.modify();
  sub_1005B981C(&unk_101A2C7D0);
  CROrderedDictionary.append(value:forKey:)();
  v17(v23, 0);

  return (*(v13 + 8))(v15, v22);
}

void sub_1011E4CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&unk_101A2C890);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  if (sub_1011255D0(v17))
  {
    v29 = a1;
    v30 = a3;
    v32 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v33 = v3;
    v31 = type metadata accessor for CRLTableItemData();
    v18 = swift_dynamicCastClassUnconditional();
    v19 = qword_101AD9268;
    swift_beginAccess();
    v28 = *(v8 + 16);
    v28(v10, v18 + v19, v7);
    Capsule.root.getter();
    v27 = *(v8 + 8);
    v27(v10, v7);
    sub_1005B981C(&unk_101A2C7D0);
    v20 = CROrderedDictionary.count.getter();
    sub_1011F0B80(v16, _s15CapsuleDatabaseVMa);
    if (v20 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a2 & 0x8000000000000000) == 0 && v20 > a2)
      {
        goto LABEL_7;
      }

      v21 = swift_dynamicCastClassUnconditional();
      v22 = qword_101AD9268;
      swift_beginAccess();
      v28(v10, v21 + v22, v7);
      Capsule.root.getter();
      v27(v10, v7);
      v23 = CROrderedDictionary.count.getter();
      sub_1011F0B80(v13, _s15CapsuleDatabaseVMa);
      if (!__OFSUB__(v23, 1))
      {
        a2 = v23;
LABEL_7:
        v24 = swift_dynamicCastClassUnconditional();
        __chkstk_darwin(v24);
        v25 = v30;
        *(&v26 - 4) = v29;
        *(&v26 - 3) = v25;
        *(&v26 - 2) = a2;
        swift_beginAccess();

        Capsule.mutate<A>(_:)();
        swift_endAccess();

        sub_1011E7AE8();
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1011E5094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v20 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FA368);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v21 = _s11RowCRDTDataVMa(0);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1005B981C(&qword_1019FA3A8);
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v16 = &v20 - v15;
  sub_1011F0BE0(v20, v13, _s11RowCRDTDataVMa);
  (*(v6 + 16))(v8, a3, v5);

  CRKeyPath.init(_:)();
  v17 = type metadata accessor for CRKeyPath();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  sub_100068574(&unk_101A2C8F0, _s11RowCRDTDataVMa);
  Ref.init<A>(_:_:identity:)();
  swift_getKeyPath();
  v18 = Capsule.Ref.subscript.modify();
  sub_1005B981C(&unk_101A2C7D0);
  CROrderedDictionary.insert(value:forKey:at:)();
  v18(v24, 0);

  return (*(v14 + 8))(v16, v22);
}

uint64_t sub_1011E560C()
{
  v0 = sub_1005B981C(&unk_101A2C890);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  v4 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = qword_101AD9268;
  swift_beginAccess();
  (*(v1 + 16))(v3, v7 + v8, v0);
  Capsule.root.getter();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&unk_101A2D830);
  v9 = CROrderedDictionary.count.getter();
  sub_1011F0B80(v6, _s15CapsuleDatabaseVMa);
  result = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  return result;
}

Class sub_1011E5810(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for CRLTableItemData();
  swift_dynamicCastClassUnconditional();
  v5 = a1;

  a3(v6);

  type metadata accessor for UUID();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

Class sub_1011E58F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_1011E5958()
{
  v0 = sub_1005B981C(&unk_101A2C890);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - v2;
  v4 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = qword_101AD9268;
  swift_beginAccess();
  (*(v1 + 16))(v3, v7 + v8, v0);
  Capsule.root.getter();
  (*(v1 + 8))(v3, v0);
  sub_1005B981C(&unk_101A2D830);
  v9 = CROrderedDictionary.count.getter();
  result = sub_1011F0B80(v6, _s15CapsuleDatabaseVMa);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
    if (v9)
    {
      v17 = _swiftEmptyArrayStorage;
      sub_100776504(0, v9, 0);
      v12 = 0;
      v11 = v17;
      do
      {
        v13 = sub_1011E5BDC(v12);
        v17 = v11;
        v15 = v11[2];
        v14 = v11[3];
        if (v15 >= v14 >> 1)
        {
          v16 = v13;
          sub_100776504((v14 > 1), v15 + 1, 1);
          v13 = v16;
          v11 = v17;
        }

        ++v12;
        v11[2] = v15 + 1;
        *&v11[v15 + 4] = v13;
      }

      while (v9 != v12);
    }

    return v11;
  }

  return result;
}

double sub_1011E5BDC(uint64_t a1)
{
  v79 = a1;
  v75 = _s14ColumnCRDTDataVMa(0);
  __chkstk_darwin(v75);
  v76 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1005B981C(&unk_101A2D830);
  v71 = *(v81 - 8);
  __chkstk_darwin(v81);
  v70 = &v61 - v3;
  v4 = sub_1005B981C(&qword_101A2C8B0);
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v72 = &v61 - v5;
  v6 = sub_1005B981C(&unk_101A2C890);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v13);
  v65 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v80 = v1;
  v82 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v69 = type metadata accessor for CRLTableItemData();
  v18 = swift_dynamicCastClassUnconditional();
  v19 = &qword_101AD9268;
  v20 = qword_101AD9268;
  swift_beginAccess();
  v67 = *(v7 + 16);
  v68 = v7 + 16;
  v67(v12, v18 + v20, v6);
  Capsule.root.getter();
  v23 = *(v7 + 8);
  v22 = (v7 + 8);
  v21 = v23;
  v66 = v12;
  v24 = v12;
  v25 = v6;
  v78 = v22;
  v23(v24, v6);
  v64 = v13;
  v26 = CROrderedDictionary.count.getter();
  sub_1011F0B80(v17, _s15CapsuleDatabaseVMa);
  if (v26 < 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v63 = v9;
  v77 = v21;
  if ((v79 & 0x8000000000000000) == 0 && v26 > v79)
  {
    goto LABEL_6;
  }

  v62 = objc_opt_self();
  LODWORD(v26) = [v62 _atomicIncrementAssertCount];
  v85 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v85);
  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [v27 lastPathComponent];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v29;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v30 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v26;
  v32 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v32;
  v33 = sub_1005CF04C();
  *(inited + 104) = v33;
  *(inited + 72) = v22;
  *(inited + 136) = &type metadata for String;
  v34 = sub_1000053B0();
  *(inited + 112) = v19;
  *(inited + 120) = v17;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v34;
  *(inited + 152) = 639;
  v35 = v85;
  *(inited + 216) = v32;
  *(inited + 224) = v33;
  *(inited + 192) = v35;
  v36 = v22;
  v37 = v35;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v39, "Tried to get the width for a column index that does not exist.", 62, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v62 handleFailureInFunction:v42 file:v43 lineNumber:639 isFatal:0 format:v44 args:v41];

  v21 = v77;
LABEL_6:
  v45 = swift_dynamicCastClassUnconditional();
  v46 = qword_101AD9268;
  swift_beginAccess();
  v47 = v45 + v46;
  v48 = v66;
  v49 = v67;
  v67(v66, v47, v25);
  v50 = v65;
  Capsule.root.getter();
  v21(v48, v25);
  v51 = v70;
  v52 = v71;
  v53 = v81;
  (*(v71 + 16))(v70, v50 + *(v64 + 24), v81);
  sub_1011F0B80(v50, _s15CapsuleDatabaseVMa);
  v54 = v72;
  CROrderedDictionary.subscript.getter();
  (*(v52 + 8))(v51, v53);
  v55 = swift_dynamicCastClassUnconditional();
  v56 = qword_101AD9268;
  swift_beginAccess();
  v57 = v55 + v56;
  v58 = v63;
  v49(v63, v57, v25);
  sub_100068574(&unk_101A2C900, _s14ColumnCRDTDataVMa);
  v59 = v76;
  Capsule.subscript.getter();
  v77(v58, v25);
  sub_1005B981C(&unk_101A2C7E0);
  CRRegister.wrappedValue.getter();
  sub_1011F0B80(v59, _s14ColumnCRDTDataVMa);
  (*(v73 + 8))(v54, v74);
  result = v83;
  if (v84)
  {
    return 320.0;
  }

  return result;
}

uint64_t sub_1011E65A4()
{
  v2 = v0;
  result = sub_1012E0400(v0, &off_10188FE10);
  if (!v1)
  {
    if (sub_1011255D0(result))
    {
      type metadata accessor for CRLTableItemData();
      v4 = swift_dynamicCastClassUnconditional();
      v5[5] = v5;
      __chkstk_darwin(v4);
      swift_beginAccess();

      sub_1005B981C(&unk_101A2C890);
      Capsule.mutate<A>(_:)();
      swift_endAccess();

      sub_1011E7AE8();
    }

    return sub_1012CF6CC(v2, &off_10188FE10, 2);
  }

  return result;
}

uint64_t sub_1011E6760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v10 = sub_1005B981C(a4);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = *(v11 + 56);
  v16 = sub_1005B981C(a6);
  (*(*(v16 - 8) + 16))(&v13[v15], a2, v16);
  v17 = static UUID.== infix(_:_:)();
  sub_10000CAAC(v13, a4);
  return v17 & 1;
}

uint64_t sub_1011E68F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = v4;
  v61 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1012E0400(v8, &off_10188FE10);
  if (!v5)
  {
    v63 = 0;
    v51 = a2;
    v15 = *(v61 + 16);
    if (v15)
    {
      v16 = v13;
      v56 = *(v11 + 16);
      v17 = v61 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v55 = OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext;
      v54 = *(v11 + 72);
      v57 = v11 + 16;
      v58 = v10;
      v52 = OBJC_IVAR____TtC8Freeform12CRLBoardItem__parentItem;
      v53 = (v11 + 8);
      v18 = v16;
      v59 = a3;
      v60 = a4;
      while (1)
      {
        v61 = v15;
        v56(v18, v17, v10);
        if (!*(v8 + v55))
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v23 = Strong;
            v24 = (*((swift_isaMask & *Strong) + 0x388))(Strong, v22);

            if (v24)
            {
              break;
            }
          }
        }

        type metadata accessor for CRLTableItemData();
        v19 = swift_dynamicCastClassUnconditional();
        __chkstk_darwin(v19);
        swift_beginAccess();

        sub_1005B981C(&unk_101A2C890);
        v20 = v63;
        Capsule.mutate<A>(_:)();
        v63 = v20;
        swift_endAccess();

        v60(v18);
        sub_1011E7AE8();
        v10 = v58;
        (*v53)(v18, v58);
        v17 += v54;
        v15 = v61 - 1;
        if (v61 == 1)
        {
          return sub_1012CF6CC(v8, &off_10188FE10, 2);
        }
      }

      v25 = objc_opt_self();
      v26 = [v25 _atomicIncrementAssertCount];
      v62 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v62);
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
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v26;
      v35 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v35;
      v36 = sub_1005CF04C();
      *(inited + 104) = v36;
      *(inited + 72) = v27;
      *(inited + 136) = &type metadata for String;
      v37 = sub_1000053B0();
      *(inited + 112) = v30;
      *(inited + 120) = v32;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v37;
      *(inited + 152) = 79;
      v38 = v62;
      *(inited + 216) = v35;
      *(inited + 224) = v36;
      *(inited + 192) = v38;
      v39 = v27;
      v40 = v38;
      v41 = static os_log_type_t.error.getter();
      sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v42 = static os_log_type_t.error.getter();
      sub_100005404(v33, &_mh_execute_header, v42, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set", 75, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Attempting to mutate a CRLTransactable without a CRLTransactableContext set");
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
      v8 = v47;
      v48 = String._bridgeToObjectiveC()();

      [v25 handleFailureInFunction:v45 file:v46 lineNumber:79 isFatal:1 format:v48 args:v44];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v49, v50);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return sub_1012CF6CC(v8, &off_10188FE10, 2);
  }

  return result;
}

uint64_t sub_1011E6F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FA368);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v21 = _s14ColumnCRDTDataVMa(0);
  __chkstk_darwin(v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1005B981C(&qword_101A2C8B0);
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v19 - v14;
  sub_1011F0BE0(v20, v12, _s14ColumnCRDTDataVMa);
  (*(v5 + 16))(v7, a3, v4);

  CRKeyPath.init(_:)();
  v16 = type metadata accessor for CRKeyPath();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  sub_100068574(&unk_101A2C900, _s14ColumnCRDTDataVMa);
  Ref.init<A>(_:_:identity:)();
  swift_getKeyPath();
  v17 = Capsule.Ref.subscript.modify();
  sub_1005B981C(&unk_101A2D830);
  CROrderedDictionary.append(value:forKey:)();
  v17(v23, 0);

  return (*(v13 + 8))(v15, v22);
}

void sub_1011E72DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&unk_101A2C890);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  if (sub_1011255D0(v17))
  {
    v31 = a1;
    v32 = a3;
    v34 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v35 = v3;
    v33 = type metadata accessor for CRLTableItemData();
    v18 = swift_dynamicCastClassUnconditional();
    v19 = qword_101AD9268;
    swift_beginAccess();
    v30 = *(v8 + 16);
    v30(v10, v18 + v19, v7);
    Capsule.root.getter();
    v29 = *(v8 + 8);
    v29(v10, v7);
    sub_1005B981C(&unk_101A2D830);
    v20 = CROrderedDictionary.count.getter();
    sub_1011F0B80(v16, _s15CapsuleDatabaseVMa);
    if (v20 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a2 & 0x8000000000000000) == 0 && v20 > a2)
      {
        goto LABEL_7;
      }

      v21 = swift_dynamicCastClassUnconditional();
      v22 = qword_101AD9268;
      swift_beginAccess();
      v30(v10, v21 + v22, v7);
      Capsule.root.getter();
      v29(v10, v7);
      v23 = CROrderedDictionary.count.getter();
      sub_1011F0B80(v13, _s15CapsuleDatabaseVMa);
      if (!__OFSUB__(v23, 1))
      {
        a2 = v23;
LABEL_7:
        v24 = swift_dynamicCastClassUnconditional();
        __chkstk_darwin(v24);
        v25 = v32;
        *(&v28 - 4) = v31;
        *(&v28 - 3) = v25;
        *(&v28 - 2) = a2;
        __chkstk_darwin(v26);
        *(&v28 - 2) = sub_1011F0A70;
        *(&v28 - 1) = v27;
        swift_beginAccess();

        Capsule.mutate<A>(_:)();
        swift_endAccess();

        sub_1011E7AE8();
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1011E76EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v20 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FA368);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v21 = _s14ColumnCRDTDataVMa(0);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1005B981C(&qword_101A2C8B0);
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v16 = &v20 - v15;
  sub_1011F0BE0(v20, v13, _s14ColumnCRDTDataVMa);
  (*(v6 + 16))(v8, a3, v5);

  CRKeyPath.init(_:)();
  v17 = type metadata accessor for CRKeyPath();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  sub_100068574(&unk_101A2C900, _s14ColumnCRDTDataVMa);
  Ref.init<A>(_:_:identity:)();
  swift_getKeyPath();
  v18 = Capsule.Ref.subscript.modify();
  sub_1005B981C(&unk_101A2D830);
  CROrderedDictionary.insert(value:forKey:at:)();
  v18(v24, 0);

  return (*(v14 + 8))(v16, v22);
}

uint64_t sub_1011E7A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  v5 = Capsule.Ref.subscript.modify();
  sub_1005B981C(a4);
  CROrderedDictionary.removeValue(forKey:)();
  v5(&v7, 0);
}

void sub_1011E7AE8()
{
  v1 = v0;
  v2 = sub_1011E3CA8();
  v3 = *(v2 + 16);
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    if (v3 <= 3)
    {
      v6 = 0;
LABEL_7:
      v9 = v3 - v6;
      v10 = (v2 + 8 * v6 + 32);
      do
      {
        v11 = *v10++;
        v5 = v5 + v11;
        --v9;
      }

      while (v9);
      goto LABEL_9;
    }

    v6 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    v7 = (v2 + 48);
    v8 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v5 = v5 + *(v7 - 2) + *(v7 - 1) + *v7 + v7[1];
      v7 += 4;
      v8 -= 4;
    }

    while (v8);
    if (v3 != v6)
    {
      goto LABEL_7;
    }
  }

LABEL_9:

  v12 = sub_1011E5958();
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_17;
  }

  if (v13 <= 3)
  {
    v14 = 0;
    v4 = 0.0;
LABEL_15:
    v17 = v13 - v14;
    v18 = (v12 + 8 * v14 + 32);
    do
    {
      v19 = *v18++;
      v4 = v4 + v19;
      --v17;
    }

    while (v17);
    goto LABEL_17;
  }

  v14 = v13 & 0x7FFFFFFFFFFFFFFCLL;
  v15 = (v12 + 48);
  v4 = 0.0;
  v16 = v13 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v4 = v4 + *(v15 - 2) + *(v15 - 1) + *v15 + v15[1];
    v15 += 4;
    v16 -= 4;
  }

  while (v16);
  if (v13 != v14)
  {
    goto LABEL_15;
  }

LABEL_17:

  v20 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v21 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v23 = v21(v22);

  [v23 position];
  v25 = v24;
  v27 = v26;

  v33 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v25 size:{v27, v4, v5}];
  if ((sub_1011255D4(v33) & 1) != 0 && (v28 = *(**(v0 + v20) + 296), v29 = , v30 = v28(v29), , sub_100006370(0, &unk_1019F5730), v31 = static NSObject.== infix(_:_:)(), v30, (v31 & 1) == 0))
  {
    v32 = *(**(v1 + v20) + 304);

    v32(v33);
  }

  else
  {
  }
}

uint64_t sub_1011E7E00(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A2C9D0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  sub_10000BE14(a1, &v14 - v8, &unk_101A2C9D0);
  v10 = *(v7 + 56);
  (*(v3 + 16))(v5, v9, v2);
  sub_1011F0B80(v9, _s6CellIDVMa);
  v11 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  v12 = sub_1005B981C(&qword_1019FA378);
  (*(*(v12 - 8) + 8))(&v9[v10], v12);
  return v11 & 1;
}

uint64_t sub_1011E8010(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v40 = a2;
  v5 = v3;
  v43 = sub_1005B981C(&unk_101A2C9D0);
  v35 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = v34 - v10;
  v11 = _s6CellIDVMa(0);
  v41 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v36 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_1019FA370);
  __chkstk_darwin(v13 - 8);
  v14 = sub_1005B981C(&unk_101A2C890);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v34 - v16;
  v38 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v37 = type metadata accessor for CRLTableItemData();
  v18 = swift_dynamicCastClassUnconditional();
  v19 = qword_101AD9268;
  swift_beginAccess();
  (*(v15 + 16))(v17, v18 + v19, v14);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v20 = *(v15 + 8);
  v39 = v14;
  v20(v17, v14);
  v45 = a1;
  v21 = sub_1011DACC4(v40, v44);
  v22 = v21[2];
  if (v22)
  {
    v34[2] = 0;
    v34[3] = v5;
    v34[4] = a3;
    v46 = _swiftEmptyArrayStorage;
    sub_1007764C4(0, v22, 0);
    v23 = v46;
    v24 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v34[1] = v21;
    v25 = v21 + v24;
    v40 = *(v35 + 72);
    v26 = v36;
    do
    {
      v27 = v42;
      sub_10000BE14(v25, v42, &unk_101A2C9D0);
      sub_10003DFF8(v27, v8, &unk_101A2C9D0);
      v28 = *(v43 + 48);
      sub_1011F0B18(v8, v26, _s6CellIDVMa);
      v29 = sub_1005B981C(&qword_1019FA378);
      (*(*(v29 - 8) + 8))(&v8[v28], v29);
      v46 = v23;
      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        sub_1007764C4(v30 > 1, v31 + 1, 1);
        v23 = v46;
      }

      v23[2] = v31 + 1;
      sub_1011F0B18(v26, v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v31, _s6CellIDVMa);
      v25 += v40;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
  }

  v32 = swift_dynamicCastClassUnconditional();
  __chkstk_darwin(v32);
  v34[-2] = v23;
  swift_beginAccess();

  Capsule.mutate<A>(_:)();
  swift_endAccess();
}