uint64_t sub_1005893D0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100593534, v3, v2);
}

uint64_t sub_100589514()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return _swift_task_switch(sub_1005896D8, v6, v5);
}

uint64_t sub_1005896D8()
{
  v1 = *(v0[2] + v0[21]);
  v0[28] = v1;
  v2 = v0[18];
  if (v1)
  {
    (*(v0[6] + 104))(v0[7], enum case for MapSize.small(_:), v0[5]);

    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_10058987C;
    v4 = v0[7];

    return sub_100572180(v2, &protocol witness table for MainActor, v4);
  }

  else
  {

    if (*(v0[2] + v0[21]))
    {

      sub_10003A464();
    }

    sub_1000542E8();
    sub_100053CE0(0);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10058987C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return _swift_task_switch(sub_100593550, v6, v5);
}

uint64_t sub_100589A40()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100589B84, v3, v2);
}

uint64_t sub_100589B84()
{
  v1 = *(v0[2] + v0[21]);
  v0[31] = v1;
  if (v1)
  {

    v0[32] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100589CE0, v3, v2);
  }

  else
  {

    if (*(v0[2] + v0[21]))
    {

      sub_10003A464();
    }

    sub_1000542E8();
    sub_100053CE0(0);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100589CE0()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[31];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A5A5E8);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[19];
  v7 = v0[20];

  return _swift_task_switch(sub_100589DC0, v6, v7);
}

uint64_t sub_100589DC0()
{

  if (*(v0[2] + v0[21]))
  {

    sub_10003A464();
  }

  sub_1000542E8();
  sub_100053CE0(0);

  v1 = v0[1];

  return v1();
}

char *sub_10058A324(void *a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v39 - v16;
  v18 = [a2 items];
  sub_1000F24EC(&unk_100AD4CA0);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_31;
        }

        v21 = *(v19 + 32);
        swift_unknownObjectRetain();
      }

      v22 = [a2 destinationIndexPath];
      if (v22)
      {
        v23 = v22;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = v13;
        v25 = v4;
        (*(v5 + 32))(v17, v24, v4);
        goto LABEL_10;
      }

      result = [a1 numberOfSections];
      if (!__OFSUB__(result, 1))
      {
        [a1 numberOfItemsInSection:result - 1];
        IndexPath.init(row:section:)();
        v25 = v4;
LABEL_10:
        v26 = [v21 sourceIndexPath];
        if (v26)
        {
          v27 = v26;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v5 + 32))(v10, v7, v25);
          v28 = [a2 proposal];
          v29 = [v28 operation];

          if (v29 == 3)
          {
            sub_100586EB0(v10, v17);
            v30 = [v21 dragItem];
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v32 = [a2 dropItem:v30 toItemAtIndexPath:isa];
            swift_unknownObjectRelease();

            (*(v5 + 8))(v10, v25);
LABEL_21:
            if (swift_weakLoadStrong())
            {
              sub_1003E8698();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            return (*(v5 + 8))(v17, v25);
          }

          (*(v5 + 8))(v10, v25);
        }

        v33 = [v21 dragItem];
        v34 = [v33 localObject];

        if (v34)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
        }

        v43[0] = v41;
        v43[1] = v42;
        if (*(&v42 + 1))
        {
          type metadata accessor for Asset();
          if (swift_dynamicCast())
          {
            v35 = v40;
            sub_100587C44(v40, v17);
            v36 = [v21 dragItem];
            v37 = IndexPath._bridgeToObjectiveC()().super.isa;
            v38 = [a2 dropItem:v36 toItemAtIndexPath:v37];

            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_100004F84(v43, &qword_100AD13D0);
        }

        goto LABEL_21;
      }

LABEL_31:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }
}

id sub_10058A8D8(void *a1, id a2)
{
  if (![a2 localDragSession])
  {
    goto LABEL_17;
  }

  swift_unknownObjectRelease();
  if ([a1 hasActiveDrag])
  {
    v5 = objc_allocWithZone(UICollectionViewDropProposal);
    v6 = "initWithDropOperation:intent:";
    v7 = 3;
    v8 = 1;

    return [v5 v6];
  }

  v10 = *(v2 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = *(v10 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = sub_10005AAB0(128);
  if (qword_100AD0A20 != -1)
  {
    swift_once();
  }

  v14 = qword_100B30F68;

  if ((v13 & 1) != 0 && __OFSUB__(v14--, 1))
  {
    __break(1u);
    return result;
  }

  if (v12 >= v14)
  {
LABEL_17:
    v5 = objc_allocWithZone(UICollectionViewDropProposal);
    v6 = "initWithDropOperation:";
    v7 = 1;

    return [v5 v6];
  }

  v16 = [a2 localDragSession];
  if (!v16)
  {
    v25 = 0u;
    v26 = 0u;
LABEL_28:
    sub_100004F84(&v25, &qword_100AD13D0);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:2 intent:1];
  }

  v17 = [v16 localContext];
  swift_unknownObjectRelease();
  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_28;
  }

  sub_1000F24EC(&unk_100AE9B70);
  if (!swift_dynamicCast())
  {
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:2 intent:1];
  }

  type metadata accessor for ResizableAssetViewTextAttachment();
  if (swift_dynamicCastClass())
  {
    v18 = v23;
    v19 = sub_1006B7F9C();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for DrawingAsset();
      if (swift_dynamicCastClass())
      {

        v21 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
        return v21;
      }

      v18 = v20;
    }
  }

  v22 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:3 intent:1];

  return v22;
}

BOOL sub_10058AD9C(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = [v2 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    result = 0;
    if (v6 == 5)
    {
      v7 = *&v2[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView];
      if (v7)
      {
        v8 = [v7 indexPathsForSelectedItems];
        if (v8)
        {
          v9 = v8;
          type metadata accessor for IndexPath();
          v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v11 = *(v10 + 16);

          if (v11)
          {
            return 1;
          }
        }
      }
    }
  }

  else
  {
    sub_1000082B4(a2, v23, &qword_100AD13D0);
    v13 = v24;
    if (v24)
    {
      v14 = sub_10000CA14(v23, v24);
      v15 = *(v13 - 8);
      v16 = __chkstk_darwin(v14);
      v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v15 + 8))(v18, v13);
      sub_10000BA7C(v23);
    }

    else
    {
      v19 = 0;
    }

    v20 = type metadata accessor for CanvasGridView();
    v22.receiver = v2;
    v22.super_class = v20;
    v21 = objc_msgSendSuper2(&v22, "canPerformAction:withSender:", a1, v19);
    swift_unknownObjectRelease();
    return v21;
  }

  return result;
}

void sub_10058B05C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v18 - v7;
  v9 = [v0 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 5)
  {
    v11 = *&v0[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView];
    if (v11)
    {
      v12 = [v11 indexPathsForSelectedItems];
      if (v12)
      {
        v13 = v12;
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = v14;

        sub_10058EF3C(&v19);

        if (*(v19 + 2))
        {
          (*(v2 + 16))(v4, &v19[(*(v2 + 80) + 32) & ~*(v2 + 80)], v1);

          (*(v2 + 32))(v8, v4, v1);
          v15 = &v0[OBJC_IVAR____TtC7Journal14CanvasGridView_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v16 = *(v15 + 1);
            ObjectType = swift_getObjectType();
            (*(v16 + 48))(v0, v8, ObjectType, v16);
            swift_unknownObjectRelease();
          }

          (*(v2 + 8))(v8, v1);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_10058B320(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v45 = type metadata accessor for Date();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v41 - v17;
  v19 = [v2 traitCollection];
  v20 = [v19 userInterfaceIdiom];

  if (v20 != 5)
  {
    return 0;
  }

  v21 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellPath;
  swift_beginAccess();
  sub_1000082B4(v2 + v21, v10, &unk_100ADFB90);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &unk_100ADFB90);
    return 0;
  }

  (*(v12 + 32))(v18, v10, v11);
  v22 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellTime;
  swift_beginAccess();
  sub_1000082B4(v2 + v22, v5, &unk_100AD4790);
  v23 = v6;
  v24 = *(v6 + 48);
  v25 = v45;
  if (v24(v5, 1, v45) == 1)
  {
    (*(v12 + 8))(v18, v11);
    sub_100004F84(v5, &unk_100AD4790);
    return 0;
  }

  v26 = v44;
  (*(v23 + 32))(v44, v5, v25);
  Date.timeIntervalSinceNow.getter();
  if (fabs(v27) >= 0.35 || (v28 = v43, (static IndexPath.== infix(_:_:)() & 1) == 0))
  {
    (*(v23 + 8))(v26, v25);
    (*(v12 + 8))(v18, v11);
    return 0;
  }

  if (qword_100ACFFE0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000617C(v29, qword_100AE9A60);
  (*(v12 + 16))(v14, v28, v11);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v43 = v23;
    v33 = v32;
    v42 = swift_slowAlloc();
    v46 = v42;
    *v33 = 136315138;
    sub_100034250(&unk_100ADE600, &type metadata accessor for IndexPath);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v12 + 8);
    v37(v14, v11);
    v38 = sub_100008458(v34, v36, &v46);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Double click at %s!", v33, 0xCu);
    sub_10000BA7C(v42);

    (*(v43 + 8))(v44, v45);
    v37(v18, v11);
  }

  else
  {

    v40 = *(v12 + 8);
    v40(v14, v11);
    (*(v23 + 8))(v26, v25);
    v40(v18, v11);
  }

  return 1;
}

void sub_10058B92C(void *a1, uint64_t a2)
{
  v3 = v2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [a1 cellForItemAtIndexPath:isa];

  if (v15)
  {
    type metadata accessor for MosaicCell();
    v7 = swift_dynamicCastClass();
    if (v7 && (v8 = *(v7 + OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView), v9 = v3 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate, swift_unknownObjectWeakLoadStrong()))
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 48);
      v13 = v8;
      v12(v3, a2, ObjectType, v10);
      swift_unknownObjectRelease();

      v14 = v13;
    }

    else
    {
      v14 = v15;
    }
  }
}

void sub_10058BBBC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 cellForItemAtIndexPath:isa];

  if (v13)
  {
    type metadata accessor for MosaicCell();
    v14 = swift_dynamicCastClass();

    if (v14)
    {
      v15 = [v3 traitCollection];
      v16 = [v15 userInterfaceIdiom];

      if (v16 == 5)
      {
        v17 = &v3[OBJC_IVAR____TtC7Journal14CanvasGridView_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = *(v17 + 1);
          ObjectType = swift_getObjectType();
          (*(v18 + 56))(ObjectType, v18);
          swift_unknownObjectRelease();
        }

        v20 = type metadata accessor for IndexPath();
        v21 = *(v20 - 8);
        (*(v21 + 16))(v11, a2, v20);
        (*(v21 + 56))(v11, 0, 1, v20);
        v22 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellPath;
        swift_beginAccess();
        sub_100014318(v11, &v3[v22], &unk_100ADFB90);
        swift_endAccess();
        Date.init()();
        v23 = type metadata accessor for Date();
        (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
        v24 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellTime;
        swift_beginAccess();
        sub_100014318(v8, &v3[v24], &unk_100AD4790);
        swift_endAccess();
      }
    }
  }
}

void sub_10058BFCC(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v21[-v8];
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [a1 cellForItemAtIndexPath:isa];

  if (v15)
  {
    type metadata accessor for MosaicCell();
    v16 = swift_dynamicCastClass();

    if (v16)
    {
      v17 = [v1 traitCollection];
      v18 = [v17 userInterfaceIdiom];

      if (v18 == 5)
      {
        v19 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellPath;
        swift_beginAccess();
        sub_1000082B4(v1 + v19, v9, &unk_100ADFB90);
        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          sub_100004F84(v9, &unk_100ADFB90);
        }

        else
        {
          (*(v11 + 32))(v13, v9, v10);
          v20 = static IndexPath.== infix(_:_:)();
          (*(v11 + 8))(v13, v10);
          if (v20)
          {
            (*(v11 + 56))(v6, 1, 1, v10);
            swift_beginAccess();
            sub_100014318(v6, v2 + v19, &unk_100ADFB90);
            swift_endAccess();
          }
        }
      }
    }
  }
}

uint64_t sub_10058C2C8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_10058C4C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v2 visibleCells];
  sub_1000065A8(0, &qword_100ADE560);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        swift_getObjectType();
        v9 = swift_conformsToProtocol2();
        if (v9 && v8)
        {
          v10 = v9;
          ObjectType = swift_getObjectType();
          (*(v10 + 24))(ObjectType, v10);
        }
      }
    }
  }
}

void sub_10058C648(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  if (a2 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = *(a3 + OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing) == 1 && v12 == 1;
  v52 = v9;
  v53 = a2;
  v50 = a4;
  v51 = OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing;
  v55 = a3;
  v49 = v12;
  if (!v13)
  {
    goto LABEL_15;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
    v15 = v14;
    swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    if (v16 && v15)
    {
      v48 = v16;
LABEL_16:
      v46 = sub_1000F24EC(&unk_100AD4780);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100941D70;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v18 = String._bridgeToObjectiveC()();
      v19 = objc_opt_self();
      v54 = v19;
      v20 = [v19 systemImageNamed:v18];

      v45[1] = 4 * (v15 == 0);
      v45[2] = sub_1000065A8(0, &qword_100AD4420);
      *(v17 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v47 = v17;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v21 = String._bridgeToObjectiveC()();
      v22 = [v19 systemImageNamed:v21];

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = v15;
      v24[4] = v48;
      v48 = v15;
      *(v17 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100941D60;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v25 = String._bridgeToObjectiveC()();
      v26 = [v54 systemImageNamed:v25];

      v27 = v50;
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v27;
      v30 = v27;
      v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v32 = v46;
      *(v46 + 32) = v31;
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._countAndFlagsBits = 0x206574656C6544;
      v33._object = 0xE700000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
      v56 = v49;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v34._countAndFlagsBits = 0x6D68636174744120;
      v34._object = 0xEC00000073746E65;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v35 = String._bridgeToObjectiveC()();
      v36 = [v54 systemImageNamed:v35];

      sub_1000065A8(0, &unk_100AD4D00);
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v53;

      *(v32 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v57.value.super.isa = 0;
      v57.is_nil = 0;
      v40.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v57, 1, 0xFFFFFFFFFFFFFFFFLL, v32, v43).super.super.isa;
      v41 = v47;
      v47[6].super.super.isa = v40.super.super.isa;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v58.value.super.isa = 0;
      v58.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v42, 0, v58, 0, 0xFFFFFFFFFFFFFFFFLL, v41, v44);

      return;
    }

LABEL_15:
    v15 = 0;
    v48 = 0;
    goto LABEL_16;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a2 + 32);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10058CE88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a3)
    {
      *(Strong + OBJC_IVAR____TtC7Journal14CanvasGridView_wantsContextMenuDismissalPreview) = 0;
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      type metadata accessor for MainActor();
      v12 = a3;
      v13 = v10;
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v13;
      v15[5] = v12;
      v15[6] = a4;
      sub_1003E9628(0, 0, v8, &unk_10095E410, v15);
    }
  }
}

void sub_10058D010(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v16 = *(Strong + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (!v16)
  {
LABEL_27:

    return;
  }

  v39 = v13;
  if (a3 >> 62)
  {
    v31 = v16;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v38 = v31;
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v38 = v16;
  if (!v17)
  {
LABEL_25:

LABEL_26:
    v32 = type metadata accessor for TaskPriority();
    v33 = v39;
    (*(*(v32 - 8) + 56))(v39, 1, 1, v32);
    type metadata accessor for MainActor();
    v34 = v38;

    v35 = v15;
    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v34;
    v37[5] = a3;
    v37[6] = v35;
    sub_1003E9628(0, 0, v33, &unk_10095E408, v37);

    goto LABEL_27;
  }

LABEL_5:
  v46 = v10;
  if (v17 >= 1)
  {
    v47 = a3 & 0xC000000000000001;
    v48 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource;
    v18 = (v8 + 48);
    v43 = (v8 + 32);
    v44 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView;
    v42 = (v8 + 8);
    v45 = (v8 + 56);

    v19 = 0;
    v40 = v17;
    v41 = a3;
    while (1)
    {
      if (v47)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(a3 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = *&v15[v48];
      if (v22)
      {
        v23 = v22;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        if ((*v18)(v6, 1, v7) != 1)
        {
          v24 = v46;
          (*v43)(v46, v6, v7);
          v25 = *&v15[v44];
          if (v25)
          {
            v26 = v25;
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v28 = [v26 cellForItemAtIndexPath:isa];

            if (v28)
            {
              ObjectType = swift_getObjectType();
              v30 = swift_conformsToProtocol2();
              if (v30)
              {
                (*(v30 + 24))(ObjectType, v30);
              }

              (*v42)(v46, v7);
            }

            else
            {
              (*v42)(v24, v7);
            }

            v17 = v40;
            a3 = v41;
          }

          else
          {

            (*v42)(v24, v7);
          }

          goto LABEL_9;
        }
      }

      else
      {

        (*v45)(v6, 1, 1, v7);
      }

      sub_100004F84(v6, &unk_100ADFB90);
LABEL_9:
      if (v17 == ++v19)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
}

void sub_10058D820(void *a1, void *a2, void *a3)
{
  v46 = a3;
  v6 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v48 = type metadata accessor for IndexPath();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 contextMenuInteraction];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 menuAppearance];

    if (v21 == 1)
    {
      aBlock[0] = [a2 identifier];
      sub_1000F24EC(&qword_100AE9B58);
      v22 = swift_dynamicCast();
      v23 = *(v15 + 56);
      if ((v22 & 1) == 0)
      {
        v23(v13, 1, 1, v14);
        v31 = &qword_100AD1420;
        v32 = v13;
LABEL_10:
        sub_100004F84(v32, v31);
        return;
      }

      v24 = v15;
      v23(v13, 0, 1, v14);
      (*(v15 + 32))(v18, v13, v14);
      v25 = *(v3 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource);
      if (!v25)
      {
        (*(v15 + 8))(v18, v14);
        (*(v9 + 56))(v8, 1, 1, v48);
        goto LABEL_9;
      }

      v26 = v3;
      v27 = v25;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      v28 = v9;
      v29 = *(v9 + 48);
      v30 = v48;
      if (v29(v8, 1, v48) == 1)
      {
        (*(v15 + 8))(v18, v14);
LABEL_9:
        v31 = &unk_100ADFB90;
        v32 = v8;
        goto LABEL_10;
      }

      v33 = v47;
      (*(v28 + 32))(v47, v8, v30);
      v34 = *(v26 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
      if (v34)
      {
        v35 = v34;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v37 = [v35 cellForItemAtIndexPath:isa];

        if (v37)
        {
          type metadata accessor for MosaicCell();
          v38 = swift_dynamicCastClass();
          if (v38)
          {
            v39 = v38;
            v40 = v46;
            if (v46)
            {
              v41 = swift_allocObject();
              *(v41 + 16) = v39;
              aBlock[4] = sub_1005931C8;
              aBlock[5] = v41;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100006C7C;
              aBlock[3] = &unk_100A73D70;
              v42 = _Block_copy(aBlock);
              swift_unknownObjectRetain();
              v43 = v37;

              [v40 addAnimations:v42];
              _Block_release(v42);

              swift_unknownObjectRelease();
              goto LABEL_21;
            }

            v44 = *(v38 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing);
            *(v38 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing) = 0;
            if (v44 == 1)
            {
              sub_100707BE0();
            }

            *(v39 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = 0;
            sub_100071FBC();
          }
        }
      }

LABEL_21:
      (*(v28 + 8))(v33, v30);
      (*(v24 + 8))(v18, v14);
    }
  }
}

void sub_10058DD90(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing);
  *(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing) = 0;
  if (v2)
  {
    sub_100707BE0();
  }

  *(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = 0;
  sub_100071FBC();
}

void sub_10058DE7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing);
  v5 = *(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing);
  *(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing) = v4;
  if (v4 != v5)
  {
    if (v4)
    {
      sub_1007075A0();
    }

    else
    {
      sub_100707BE0();
    }
  }

  if (IndexPath.item.getter() != 4)
  {
    goto LABEL_18;
  }

  v6 = *(a2 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (!v6)
  {
    if (*(a2 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid))
    {
LABEL_18:
      v9 = 0;
      goto LABEL_19;
    }

    v8 = 0;
    goto LABEL_14;
  }

  v7 = *(v6 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((*(a2 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid) & 1) == 0)
  {
LABEL_14:
    if (qword_100AD0A28 != -1)
    {
      swift_once();
    }

    if (qword_100B30F70 >= v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v8 <= 5)
  {
    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded) ^ 1;
LABEL_19:
  *(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = v9 & 1;
  sub_100071FBC();
}

void sub_10058E07C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v4 = &v59 - v3;
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v74 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v59 - v8;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v59 - v15;
  v81 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView;
  v17 = *&v1[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView];
  if (v17)
  {
    v18 = [v17 indexPathsForSelectedItems];
    if (v18)
    {
      v68 = v4;
      v63 = v12;
      v19 = v18;
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v80 = *(v20 + 16);
      if (v80)
      {
        v21 = 0;
        v22 = *(v10 + 80);
        v70 = OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry;
        v79 = v20 + ((v22 + 32) & ~v22);
        v65 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource;
        v78 = v10 + 16;
        v62 = (v10 + 48);
        v60 = (v10 + 32);
        v23 = (v10 + 8);
        v61 = (v10 + 56);
        v69 = xmmword_100941D50;
        v64 = (v10 + 8);
        v67 = v1;
        v66 = v10;
        v77 = v20;
        while (1)
        {
          if (v21 >= *(v20 + 16))
          {
            __break(1u);
            return;
          }

          (*(v10 + 16))(v16, v79 + *(v10 + 72) * v21, v9);
          v24 = *&v1[v81];
          if (v24)
          {
            v25 = v24;
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v27 = [v25 cellForItemAtIndexPath:isa];

            v20 = v77;
            if (v27)
            {
              type metadata accessor for MosaicCell();
              v28 = swift_dynamicCastClass();
              if (v28 && (v29 = *(v28 + OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset)) != 0)
              {
                sub_1000F24EC(&unk_100AD4780);
                v30 = swift_allocObject();
                *(v30 + 16) = v69;
                *(v30 + 32) = v29;
                if (*&v1[v70])
                {
                  v31 = *&v1[v70];
                  v32 = v29;
                  v75 = v31;

                  v72 = v30;
                  if ((v30 & 0xC000000000000001) != 0)
                  {
                    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v33 = v32;
                  }

                  v35 = v33;
                  v73 = v32;
                  v36 = *&v1[v65];
                  if (v36)
                  {
                    v37 = v36;
                    v38 = v68;
                    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

                    if ((*v62)(v38, 1, v9) == 1)
                    {

                      goto LABEL_21;
                    }

                    v52 = v63;
                    (*v60)(v63, v38, v9);
                    v53 = *&v1[v81];
                    if (v53)
                    {
                      v54 = v53;
                      v55 = IndexPath._bridgeToObjectiveC()().super.isa;
                      v56 = [v54 cellForItemAtIndexPath:v55];

                      if (v56)
                      {
                        ObjectType = swift_getObjectType();
                        v58 = swift_conformsToProtocol2();
                        if (v58)
                        {
                          (*(v58 + 24))(ObjectType, v58);
                        }

                        (*v23)(v63, v9);
                        v1 = v67;
                      }

                      else
                      {
                        (*v23)(v52, v9);

                        v1 = v67;
                      }
                    }

                    else
                    {

                      (*v23)(v52, v9);
                    }
                  }

                  else
                  {

                    v38 = v68;
                    (*v61)(v68, 1, 1, v9);
LABEL_21:
                    sub_100004F84(v38, &unk_100ADFB90);
                  }

                  v39 = type metadata accessor for TaskPriority();
                  v71 = *(v39 - 8);
                  v40 = v76;
                  (*(v71 + 56))(v76, 1, 1, v39);
                  type metadata accessor for MainActor();
                  v41 = v75;

                  v42 = v1;
                  v43 = static MainActor.shared.getter();
                  v44 = swift_allocObject();
                  v44[2] = v43;
                  v44[3] = &protocol witness table for MainActor;
                  v44[4] = v41;
                  v45 = v71;
                  v44[5] = v72;
                  v44[6] = v42;
                  v46 = v74;
                  sub_1000082B4(v40, v74, &qword_100AD5170);
                  LODWORD(v43) = (*(v45 + 48))(v46, 1, v39);

                  if (v43 == 1)
                  {
                    sub_100004F84(v46, &qword_100AD5170);
                  }

                  else
                  {
                    TaskPriority.rawValue.getter();
                    (*(v45 + 8))(v46, v39);
                  }

                  v47 = v44[2];
                  swift_unknownObjectRetain();

                  v23 = v64;
                  if (v47)
                  {
                    swift_getObjectType();
                    v48 = dispatch thunk of Actor.unownedExecutor.getter();
                    v50 = v49;
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v48 = 0;
                    v50 = 0;
                  }

                  sub_100004F84(v76, &qword_100AD5170);
                  v51 = swift_allocObject();
                  *(v51 + 16) = &unk_10095E3A0;
                  *(v51 + 24) = v44;
                  if (v50 | v48)
                  {
                    v82 = 0;
                    v83 = 0;
                    v84 = v48;
                    v85 = v50;
                  }

                  v1 = v67;
                  v10 = v66;
                  v20 = v77;
                  swift_task_create();

                  goto LABEL_6;
                }

                v34 = v29;
              }

              else
              {
              }
            }
          }

LABEL_6:
          ++v21;
          (*v23)(v16, v9);
          if (v80 == v21)
          {

            return;
          }
        }
      }
    }
  }
}

void sub_10058E904(uint64_t a1)
{
  v3 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset);
  if (v13)
  {
    sub_1000F24EC(&unk_100AD4780);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100941D50;
    *(v14 + 32) = v13;
    v15 = *&v1[OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry];
    if (v15)
    {
      v37 = v12;
      v16 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource;
      v35 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView;
      v17 = v13;

      v38 = v17;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = v17;
      }

      v20 = v18;
      v21 = *&v1[v16];
      if (v21)
      {
        v36 = v1;
        v22 = v21;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        if ((*(v7 + 48))(v5, 1, v6) != 1)
        {
          (*(v7 + 32))(v9, v5, v6);
          v1 = v36;
          v29 = *&v36[v35];
          if (v29)
          {
            v30 = v29;
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v32 = [v30 cellForItemAtIndexPath:isa];

            if (v32)
            {
              ObjectType = swift_getObjectType();
              v34 = swift_conformsToProtocol2();
              if (v34)
              {
                (*(v34 + 24))(ObjectType, v34);
              }

              (*(v7 + 8))(v9, v6);
              v1 = v36;
            }

            else
            {
              (*(v7 + 8))(v9, v6);

              v1 = v36;
            }
          }

          else
          {

            (*(v7 + 8))(v9, v6);
          }

          goto LABEL_14;
        }

        v1 = v36;
      }

      else
      {

        (*(v7 + 56))(v5, 1, 1, v6);
      }

      sub_100004F84(v5, &unk_100ADFB90);
LABEL_14:
      v23 = v38;
      v24 = type metadata accessor for TaskPriority();
      v25 = v37;
      (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
      type metadata accessor for MainActor();

      v26 = v1;
      v27 = static MainActor.shared.getter();
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = &protocol witness table for MainActor;
      v28[4] = v15;
      v28[5] = v14;
      v28[6] = v26;
      sub_1003E9628(0, 0, v25, &unk_10095E398, v28);

      return;
    }

    v19 = v13;
  }
}

uint64_t sub_10058EDC8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100206E70(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v21[0] = v2 + 32;
  v21[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          if (*(v12 + OBJC_IVAR____TtC7Journal10MosaicCell_index + 8))
          {
            break;
          }

          v15 = *v14;
          v16 = *v14 + OBJC_IVAR____TtC7Journal10MosaicCell_index;
          if (*(v16 + 8))
          {
            break;
          }

          if (*(v12 + OBJC_IVAR____TtC7Journal10MosaicCell_index) >= *v16)
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for MosaicCell();
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v19[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v19[1] = v7;
    sub_10058F4C4(v19, v20, v21, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_10058EF3C(void **a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1002050D4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10058F0D4(v5);
  *a1 = v3;
}

uint64_t sub_10058EFE4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10058F064(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

void sub_10058F0D4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10058FC48(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10058F200(0, v2, 1, a1);
  }
}

void sub_10058F200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_100034250(&unk_100AE9B60, &type metadata accessor for IndexPath);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10058F4C4(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v104 = result;
  v112 = _swiftEmptyArrayStorage;
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v7 = &OBJC_IVAR____TtC7Journal10MosaicCell_index;
    v103 = a4;
    do
    {
      v8 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v9 = *a3;
        v10 = *v7;
        v11 = *(*a3 + 8 * v8) + *v7;
        v13 = (*(v11 + 8) & 1) == 0 && (v12 = *(v9 + 8 * v5) + v10, (*(v12 + 8) & 1) == 0) && *v11 < *v12;
        v8 = v5 + 2;
        if (v5 + 2 >= v4)
        {
LABEL_16:
          if (v13)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v14 = (v9 + 8 * v5 + 16);
          do
          {
            v15 = *v14 + v10;
            if (*(v15 + 8) & 1) != 0 || (v16 = *(v14 - 1) + v10, (*(v16 + 8)))
            {
              if (v13)
              {
                goto LABEL_19;
              }
            }

            else if (((v13 ^ (*v15 >= *v16)) & 1) == 0)
            {
              goto LABEL_16;
            }

            ++v8;
            ++v14;
          }

          while (v4 != v8);
          v8 = v4;
          if (v13)
          {
LABEL_19:
            if (v8 < v5)
            {
              goto LABEL_162;
            }

            if (v5 < v8)
            {
              v17 = 8 * v8 - 8;
              v18 = 8 * v5;
              v19 = v8;
              v20 = v5;
              do
              {
                if (v20 != --v19)
                {
                  v22 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_167;
                  }

                  v21 = *(v22 + v18);
                  *(v22 + v18) = *(v22 + v17);
                  *(v22 + v17) = v21;
                }

                ++v20;
                v17 -= 8;
                v18 += 8;
              }

              while (v20 < v19);
              v4 = a3[1];
            }
          }
        }
      }

      if (v8 < v4)
      {
        if (__OFSUB__(v8, v5))
        {
          goto LABEL_161;
        }

        if (v8 - v5 < a4)
        {
          if (__OFADD__(v5, a4))
          {
            goto LABEL_163;
          }

          if (v5 + a4 < v4)
          {
            v4 = v5 + a4;
          }

          if (v4 < v5)
          {
            goto LABEL_164;
          }

          if (v8 != v4)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v8 - 8;
            v25 = v5 - v8;
            do
            {
              v26 = *(v23 + 8 * v8);
              v27 = v25;
              v28 = v24;
              do
              {
                v29 = v26 + *v7;
                if (*(v29 + 8))
                {
                  break;
                }

                v30 = *v28;
                v31 = *v28 + *v7;
                if ((*(v31 + 8) & 1) != 0 || *v29 >= *v31)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_165;
                }

                *v28 = v26;
                v28[1] = v30;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v8;
              v24 += 8;
              --v25;
            }

            while (v8 != v4);
            v8 = v4;
          }
        }
      }

      if (v8 < v5)
      {
        goto LABEL_160;
      }

      v105 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1003E4B80(0, *(v6 + 2) + 1, 1, v6);
      }

      v34 = *(v6 + 2);
      v33 = *(v6 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v6 = sub_1003E4B80((v33 > 1), v34 + 1, 1, v6);
      }

      *(v6 + 2) = v35;
      v36 = &v6[16 * v34];
      *(v36 + 4) = v5;
      *(v36 + 5) = v105;
      v112 = v6;
      result = *v104;
      if (!*v104)
      {
        goto LABEL_168;
      }

      if (v34)
      {
        v107 = *v104;
        while (1)
        {
          v37 = v35 - 1;
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v38 = *(v6 + 4);
            v39 = *(v6 + 5);
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_68:
            if (v41)
            {
              goto LABEL_151;
            }

            v54 = &v6[16 * v35];
            v56 = *v54;
            v55 = *(v54 + 1);
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_154;
            }

            v60 = &v6[16 * v37 + 32];
            v62 = *v60;
            v61 = *(v60 + 1);
            v48 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v48)
            {
              goto LABEL_157;
            }

            if (__OFADD__(v58, v63))
            {
              goto LABEL_158;
            }

            if (v58 + v63 >= v40)
            {
              if (v40 < v63)
              {
                v37 = v35 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v64 = &v6[16 * v35];
          v66 = *v64;
          v65 = *(v64 + 1);
          v48 = __OFSUB__(v65, v66);
          v58 = v65 - v66;
          v59 = v48;
LABEL_82:
          if (v59)
          {
            goto LABEL_153;
          }

          v67 = &v6[16 * v37];
          v69 = *(v67 + 4);
          v68 = *(v67 + 5);
          v48 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v48)
          {
            goto LABEL_156;
          }

          if (v70 < v58)
          {
            goto LABEL_3;
          }

LABEL_89:
          if (v37 - 1 >= v35)
          {
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
            return result;
          }

          v75 = *a3;
          if (!*a3)
          {
            goto LABEL_166;
          }

          v76 = v7;
          v111 = v37;
          v108 = v37 - 1;
          v77 = *&v6[16 * v37 + 16];
          v78 = *&v6[16 * v37 + 32];
          v109 = *&v6[16 * v37 + 40];
          v110 = v77;
          v79 = 8 * v77;
          v80 = (v75 + 8 * v77);
          v81 = 8 * v78;
          v82 = (v75 + 8 * v78);
          v83 = (v75 + 8 * v109);
          v84 = 8 * v78 - 8 * v77;
          v85 = 8 * v109 - 8 * v78;
          if (v84 >= v85)
          {
            if (v82 != result || v83 <= result)
            {
              memmove(result, (v75 + 8 * v78), 8 * v109 - 8 * v78);
              result = v107;
            }

            v86 = (result + v85);
            if (v85 < 1)
            {
              v91 = result;
              result = v82;
              v7 = v76;
              goto LABEL_134;
            }

            v7 = v76;
            if (v81 <= v79)
            {
              v91 = result;
              result = v82;
LABEL_134:
              v89 = v111;
              v88 = v6;
              v90 = v109;
              v92 = v110;
              goto LABEL_135;
            }

            v89 = v111;
            v88 = v6;
            v90 = v109;
            v92 = v110;
            do
            {
              result = (v82 - 8);
              v83 -= 8;
              v96 = v86;
              v91 = v107;
              while (1)
              {
                v98 = *(v96 - 1);
                v96 -= 8;
                v97 = v98;
                v99 = v98 + *v7;
                if ((*(v99 + 8) & 1) == 0)
                {
                  v100 = *result + *v7;
                  if ((*(v100 + 8) & 1) == 0 && *v99 < *v100)
                  {
                    break;
                  }
                }

                if (v83 + 8 != v86)
                {
                  *v83 = v97;
                }

                v83 -= 8;
                v86 = v96;
                if (v96 <= v107)
                {
                  v86 = v96;
                  result = v82;
                  goto LABEL_135;
                }
              }

              if (v83 + 8 != v82)
              {
                *v83 = *result;
              }

              if (v86 <= v107)
              {
                break;
              }

              v82 -= 8;
            }

            while (v80 < result);
          }

          else
          {
            if (v80 != result || v82 <= result)
            {
              memmove(result, (v75 + 8 * v77), 8 * v78 - 8 * v77);
              result = v107;
            }

            v86 = (result + v84);
            v87 = v84 < 1;
            v7 = v76;
            v89 = v111;
            v88 = v6;
            v90 = v109;
            if (!v87 && 8 * v109 > v81)
            {
              v91 = result;
              v92 = v110;
              while (1)
              {
                v93 = *v82;
                v94 = *v82 + *v7;
                if (*(v94 + 8) & 1) != 0 || (v95 = *v91 + *v7, (*(v95 + 8)) || *v94 >= *v95)
                {
                  if (v80 != v91)
                  {
                    v93 = *v91;
                    v91 += 8;
                    goto LABEL_105;
                  }

                  v91 += 8;
                }

                else
                {
                  if (v80 != v82)
                  {
                    v82 += 8;
LABEL_105:
                    *v80 = v93;
                    goto LABEL_107;
                  }

                  v82 += 8;
                }

LABEL_107:
                v80 += 8;
                if (v91 >= v86 || v82 >= v83)
                {
                  result = v80;
                  goto LABEL_135;
                }
              }
            }

            v91 = result;
            result = v80;
            v92 = v110;
          }

LABEL_135:
          v101 = v86 - v91 + (v86 - v91 < 0 ? 7uLL : 0);
          if (result != v91 || result >= &v91[v101 & 0xFFFFFFFFFFFFFFF8])
          {
            result = memmove(result, v91, 8 * (v101 >> 3));
          }

          if (v90 < v92)
          {
            goto LABEL_147;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100204C44(v88);
            v88 = result;
          }

          if (v89 > *(v88 + 16))
          {
            goto LABEL_148;
          }

          v102 = v88 + 16 * v108;
          *(v102 + 32) = v92;
          *(v102 + 40) = v90;
          v112 = v88;
          sub_100204BB8(v89);
          v6 = v88;
          v35 = *(v88 + 16);
          result = v107;
          if (v35 <= 1)
          {
            goto LABEL_3;
          }
        }

        v42 = &v6[16 * v35 + 32];
        v43 = *(v42 - 64);
        v44 = *(v42 - 56);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_149;
        }

        v47 = *(v42 - 48);
        v46 = *(v42 - 40);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_150;
        }

        v49 = &v6[16 * v35];
        v51 = *v49;
        v50 = *(v49 + 1);
        v48 = __OFSUB__(v50, v51);
        v52 = v50 - v51;
        if (v48)
        {
          goto LABEL_152;
        }

        v48 = __OFADD__(v40, v52);
        v53 = v40 + v52;
        if (v48)
        {
          goto LABEL_155;
        }

        if (v53 >= v45)
        {
          v71 = &v6[16 * v37 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v48 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v48)
          {
            goto LABEL_159;
          }

          if (v40 < v74)
          {
            v37 = v35 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v5 = v105;
      v4 = a3[1];
      a4 = v103;
    }

    while (v105 < v4);
  }

  if (!*v104)
  {
    goto LABEL_169;
  }

  sub_100590670(&v112, *v104, a3);
}

void sub_10058FC48(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_100204C44(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1005909D4(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100204C44(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_100204BB8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_100034250(&unk_100AE9B60, &type metadata accessor for IndexPath);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1003E4B80(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_1003E4B80((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1005909D4(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100204C44(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_100204BB8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_100034250(&unk_100AE9B60, &type metadata accessor for IndexPath);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

unint64_t sub_100590670(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_66;
  }

  while (1)
  {
    result = a2;
    *a1 = v3;
    v5 = *(v3 + 16);
    if (v5 < 2)
    {
      return 1;
    }

    v6 = &OBJC_IVAR____TtC7Journal10MosaicCell_index;
    while (1)
    {
      v7 = *a3;
      if (!*a3)
      {
        __break(1u);
        return result;
      }

      v8 = v6;
      v43 = v5;
      v44 = v3;
      v9 = *(v3 + 16 * v5);
      v42 = v5 - 1;
      v12 = (v3 + 16 * (v5 - 1) + 32);
      v10 = *v12;
      v11 = v12[1];
      v46 = v9;
      v13 = 8 * v9;
      v14 = (v7 + 8 * v9);
      v15 = 8 * *v12;
      v16 = (v7 + v15);
      v45 = v11;
      v17 = 8 * v11;
      v18 = (v7 + 8 * v11);
      v19 = v15 - 8 * v9;
      v3 = 8 * v11 - v15;
      if (v19 >= v3)
      {
        if (v16 != result || v18 <= result)
        {
          memmove(result, (v7 + 8 * v10), 8 * v11 - 8 * v10);
          result = a2;
        }

        v21 = (result + v3);
        v25 = v3 < 1 || v15 <= v13;
        v27 = v45;
        if (v25)
        {
          v22 = result;
          v6 = v8;
          v26 = v46;
        }

        else
        {
          v6 = v8;
          v26 = v46;
          do
          {
            v31 = v16 - 8;
            v18 -= 8;
            v32 = v21;
            while (1)
            {
              v34 = *(v32 - 8);
              v32 -= 8;
              v33 = v34;
              v35 = v34 + *v6;
              if ((*(v35 + 8) & 1) == 0)
              {
                v36 = *v31 + *v6;
                if ((*(v36 + 8) & 1) == 0 && *v35 < *v36)
                {
                  break;
                }
              }

              if (v18 + 8 != v21)
              {
                *v18 = v33;
              }

              v18 -= 8;
              v21 = v32;
              if (v32 <= result)
              {
                v21 = v32;
                v22 = result;
                goto LABEL_55;
              }
            }

            if (v18 + 8 != v16)
            {
              *v18 = *v31;
            }

            if (v21 <= result)
            {
              break;
            }

            v16 -= 8;
          }

          while (v14 < v31);
          v22 = result;
          v16 = v31;
        }
      }

      else
      {
        if (v14 != result || v16 <= result)
        {
          memmove(result, (v7 + 8 * v9), 8 * v10 - 8 * v9);
          result = a2;
        }

        v21 = (result + v19);
        v22 = result;
        if (v19 >= 1 && v17 > v15)
        {
          v6 = v8;
          v26 = v46;
          v27 = v45;
          while (1)
          {
            v28 = *v16;
            v29 = *v16 + *v6;
            if (*(v29 + 8) & 1) != 0 || (v30 = *v22 + *v6, (*(v30 + 8)) || *v29 >= *v30)
            {
              if (v14 != v22)
              {
                v28 = *v22;
                v22 += 8;
                goto LABEL_35;
              }

              v22 += 8;
            }

            else
            {
              if (v14 != v16)
              {
                v16 += 8;
LABEL_35:
                *v14 = v28;
                goto LABEL_37;
              }

              v16 += 8;
            }

LABEL_37:
            v14 += 8;
            if (v22 >= v21 || v16 >= v18)
            {
              v16 = v14;
              goto LABEL_55;
            }
          }
        }

        v16 = v14;
        v6 = v8;
        v26 = v46;
        v27 = v45;
      }

LABEL_55:
      v37 = v21 - v22 + (v21 - v22 < 0 ? 7uLL : 0);
      if (v16 != v22 || v16 >= &v22[v37 & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v16, v22, 8 * (v37 >> 3));
      }

      if (v27 < v26)
      {
        break;
      }

      v3 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100204C44(v44);
      }

      if ((v43 - 2) >= *(v3 + 16))
      {
        goto LABEL_65;
      }

      v38 = (v3 + 16 * v43);
      *v38 = v26;
      v38[1] = v27;
      *a1 = v3;
      sub_100204BB8(v42);
      v3 = *a1;
      v5 = *(*a1 + 16);
      result = a2;
      if (v5 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v3 = sub_100204C44(v3);
  }
}

void sub_1005909D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
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

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_100034250(&unk_100AE9B60, &type metadata accessor for IndexPath);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
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

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_100034250(&unk_100AE9B60, &type metadata accessor for IndexPath);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_100204DDC(&v54, &v53, &v52);
}

unint64_t sub_100590FC8()
{
  result = qword_100AE9B48;
  if (!qword_100AE9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9B48);
  }

  return result;
}

uint64_t sub_10059101C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10058648C(a1, v4, v5, v6, v7, v8);
}

void sub_1005910E4()
{
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_indexBeforeCutoff) = 4;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView) = 0;
  v1 = OBJC_IVAR____TtC7Journal14CanvasGridView_mosaicLayout;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MosaicLayout()) init];
  v2 = (v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_didDeletePhoto);
  *v2 = DebugData.init(name:);
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_shouldAnimateDifferences) = 0;
  __asm { FMOV            V0.2D, #12.0 }

  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_outerCornerRadius) = _Q0;
  v8 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellPath;
  v9 = type metadata accessor for IndexPath();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellTime;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_wantsContextMenuDismissalPreview) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_1005912CC()
{
  v1 = v0;
  v2 = sub_1005883D4();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = (*(v5 + 8))(ObjectType, v5);
  }

  else
  {
    v6 = [objc_allocWithZone(NSItemProvider) init];
  }

  v8 = v6;
  v9 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v6];
  [v9 setLocalObject:v3];

  v10 = v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    v12 = swift_getObjectType();
    (*(v11 + 24))(v12, v11);
    swift_unknownObjectRelease();
  }

  sub_1000F24EC(&unk_100AD4780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941D50;
  *(v7 + 32) = v9;

  return v7;
}

uint64_t sub_100591424(void *a1)
{
  v1 = [a1 localDragSession];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = [v1 items];
  swift_unknownObjectRelease();
  sub_1000065A8(0, &unk_100AD4C90);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_14:

LABEL_15:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v6 = v5;

    v7 = [v6 localObject];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      type metadata accessor for Asset();
      if (swift_dynamicCast())
      {
        v8 = v10;
LABEL_18:
        v9 = v8 != 0;

        return v9;
      }

LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

LABEL_16:
    sub_100004F84(&v12, &qword_100AD13D0);
    goto LABEL_17;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1005915D8(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForItemAtIndexPath:isa];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(UIDragPreviewParameters) init];
  [v3 bounds];
  v9 = CGRectInset(v8, 2.0, 2.0);
  v5 = [objc_opt_self() bezierPathWithRoundedRect:v9.origin.x cornerRadius:{v9.origin.y, v9.size.width, v9.size.height, 12.0}];
  [v4 setVisiblePath:v5];

  v6 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v6];

  return v4;
}

BOOL sub_100591734(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_1000F24EC(&unk_100ADFB90);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v23 - v12;
  v14 = [a1 nextFocusedView];
  if (!v14)
  {
    return 1;
  }

  v15 = v14;
  v16 = [a1 nextFocusedIndexPath];
  if (v16)
  {
    v17 = v16;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 56))(v13, 0, 1, v3);
    sub_100004F84(v13, &unk_100ADFB90);
  }

  else
  {
    (*(v4 + 56))(v13, 1, 1, v3);
    sub_100004F84(v13, &unk_100ADFB90);
    type metadata accessor for MosaicCell();
    if (swift_dynamicCastClass())
    {

      return 0;
    }
  }

  v18 = [a1 nextFocusedIndexPath];
  if (v18)
  {
    v19 = v1;
    v20 = v18;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v9, v6, v3);
    v21 = IndexPath.row.getter();

    (*(v4 + 8))(v9, v3);
    return v21 < 5 || *(v19 + OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded) == 1;
  }

  return 1;
}

id sub_1005919E0(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v50 - v18;
  v20 = [a1 nextFocusedIndexPath];
  if (v20)
  {
    v50 = v9;
    v21 = v20;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v4 + 56);
    v22(v19, 0, 1, v3);
    sub_100004F84(v19, &unk_100ADFB90);
    v23 = [a1 previouslyFocusedIndexPath];
    if (!v23)
    {
      v22(v15, 1, 1, v3);
      sub_100004F84(v15, &unk_100ADFB90);
      v32 = v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = *(v32 + 8);
        ObjectType = swift_getObjectType();
        (*(v33 + 40))(ObjectType, v33);
        swift_unknownObjectRelease();
      }

      if (qword_100ACFFE8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000617C(v35, qword_100AE9A78);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v36 = os_log_type_enabled(v28, v29);
      v9 = v50;
      if (!v36)
      {
        goto LABEL_18;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Canvas grid gained focus!";
      goto LABEL_17;
    }

    v24 = v23;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v22(v15, 0, 1, v3);
    v19 = v15;
    v9 = v50;
  }

  else
  {
    v22 = *(v4 + 56);
    v22(v19, 1, 1, v3);
  }

  sub_100004F84(v19, &unk_100ADFB90);
  v25 = [a1 nextFocusedIndexPath];
  if (v25)
  {
    v26 = v25;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v22(v12, 0, 1, v3);
    sub_100004F84(v12, &unk_100ADFB90);
    goto LABEL_19;
  }

  v22(v12, 1, 1, v3);
  sub_100004F84(v12, &unk_100ADFB90);
  if (qword_100ACFFE8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000617C(v27, qword_100AE9A78);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Canvas grid lost focus!";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);
  }

LABEL_18:

LABEL_19:
  result = [a1 nextFocusedIndexPath];
  if (result)
  {
    v38 = result;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_100ACFFE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000617C(v39, qword_100AE9A78);
    (*(v4 + 16))(v6, v9, v3);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v42 = 136315138;
      sub_100034250(&unk_100ADE600, &type metadata accessor for IndexPath);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v47 = *(v4 + 8);
      v47(v6, v3);
      v48 = sub_100008458(v44, v46, &v51);

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "Focused index path: %s", v42, 0xCu);
      sub_10000BA7C(v43);

      return (v47)(v9, v3);
    }

    else
    {

      v49 = *(v4 + 8);
      v49(v6, v3);
      return (v49)(v9, v3);
    }
  }

  return result;
}

uint64_t sub_1005920B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v48 = &v46 - v12;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v62 = type metadata accessor for IndexPath();
  v16 = *(v62 - 8);
  __chkstk_darwin(v62);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  aBlock[0] = _swiftEmptyArrayStorage;
  v19 = *(a1 + 16);
  v65 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource;
  v58 = OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry;
  v49 = v2;
  v50 = v8;
  if (!v19)
  {
    v51 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v20 = v19;
  v57 = v10;
  v21 = 0;
  v22 = 0;
  v64 = v16 + 2;
  v61 = (v8 + 48);
  v55 = (v8 + 32);
  v54 = (v8 + 8);
  v60 = (v8 + 56);
  v63 = (v16 + 1);
  v51 = _swiftEmptyArrayStorage;
  v53 = v7;
  v47 = v15;
  v52 = v2;
  v56 = v6;
  do
  {
    v15 = v21;
    v23 = v62;
    while (1)
    {
      if (v15 >= v20)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v10 = v20;
      (*(v16 + 2))(v18, v66 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 9) * v15, v23);
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_32;
      }

      v24 = *&v2[v65];
      if (v24)
      {
        break;
      }

      (*v60)(v6, 1, 1, v7);
LABEL_5:
      sub_100004F84(v6, &qword_100AD1420);
LABEL_6:
      (*v63)(v18, v23);
      ++v15;
      v20 = v10;
      if (v21 == v10)
      {
        v15 = v47;
        goto LABEL_22;
      }
    }

    v25 = v24;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v23 = v62;
    if ((*v61)(v6, 1, v7) == 1)
    {
      goto LABEL_5;
    }

    v26 = v6;
    v27 = v57;
    (*v55)(v57, v26, v7);
    v28 = *&v2[v58];
    if (!v28)
    {
      (*v54)(v27, v7);
      goto LABEL_15;
    }

    v29 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
    v30 = swift_beginAccess();
    v59 = &v46;
    v31 = *(v28 + v29);
    __chkstk_darwin(v30);
    *(&v46 - 2) = v27;

    v32 = sub_100068DDC(sub_100069618, (&v46 - 4), v31);

    v7 = v53;

    (*v54)(v27, v7);
    if (!v32)
    {
      v2 = v52;
LABEL_15:
      v6 = v56;
      v23 = v62;
      goto LABEL_6;
    }

    (*v63)(v18, v62);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v6 = v56;
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v51 = aBlock[0];
    v20 = v10;
    v15 = v47;
    v2 = v52;
  }

  while (v21 != v10);
LABEL_22:
  v10 = v49;

  v33 = objc_allocWithZone(type metadata accessor for AssetActivityItemsConfiguration());
  v16 = v51;

  result = sub_1001F3F38(v34);
  v22 = result;
  if (v16 >> 62)
  {
LABEL_33:
    result = _CocoaArrayWrapper.endIndex.getter();
    v36 = v50;
    if (!result)
    {
      goto LABEL_34;
    }

LABEL_24:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v37 = *(v16 + 4);
    }

    v38 = v37;
    v39 = v48;
    (*(v36 + 16))(v48, v37 + OBJC_IVAR____TtC7Journal5Asset_id, v7);

    (*(v36 + 32))(v15, v39, v7);
    if ((v10[OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing] & 1) == 0 && !*(*&v22[OBJC_IVAR____TtC7Journal31AssetActivityItemsConfiguration_assets] + 16))
    {
      (*(v36 + 8))(v15, v7);

      return 0;
    }

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v41 = swift_allocObject();
    v41[2] = v16;
    v41[3] = v10;
    v41[4] = v22;
    v42 = objc_opt_self();
    aBlock[4] = sub_1005931D0;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002D1F68;
    aBlock[3] = &unk_100A73DC0;
    v43 = _Block_copy(aBlock);
    v44 = v10;

    v45 = [v42 configurationWithIdentifier:isa previewProvider:0 actionProvider:v43];

    _Block_release(v43);
    (*(v36 + 8))(v15, v7);
    return v45;
  }

  else
  {
    v36 = v50;
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

LABEL_34:

    return 0;
  }
}

id sub_100592894(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 cellForItemAtIndexPath:isa];

  if (v5)
  {
    v6 = [v2 window];
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      [v8 bounds];
      MidX = CGRectGetMidX(v18);
      [v8 bounds];
      [v8 convertPoint:v7 toCoordinateSpace:{MidX, CGRectGetMidY(v19)}];
      v12 = [objc_allocWithZone(UIPreviewTarget) initWithContainer:v7 center:{v10, v11}];
      v13 = [objc_allocWithZone(UIDragPreviewParameters) init];
      [v8 bounds];
      v21 = CGRectInset(v20, 2.0, 2.0);
      v14 = [objc_opt_self() bezierPathWithRoundedRect:v21.origin.x cornerRadius:{v21.origin.y, v21.size.width, v21.size.height, 12.0}];
      [v13 setVisiblePath:v14];

      v15 = [objc_opt_self() clearColor];
      [v13 setBackgroundColor:v15];

      v16 = [objc_allocWithZone(UITargetedPreview) initWithView:v8 parameters:v13 target:v12];
      return v16;
    }
  }

  return 0;
}

uint64_t sub_100592AC0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v56 - v14;
  v15 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v15 - 8);
  v17 = &v56 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = [a1 identifier];
  sub_1000F24EC(&qword_100AE9B58);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if (v23)
  {
    v24(v17, 0, 1, v18);
    (*(v19 + 32))(v22, v17, v18);
    v25 = *&v3[OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource];
    v26 = v3;
    if (!v25)
    {
      (*(v19 + 8))(v22, v18);
      (*(v63 + 56))(v8, 1, 1, v62);
LABEL_8:
      result = sub_100004F84(v8, &unk_100ADFB90);
      if (a2)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

    v27 = v25;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    v28 = v62;
    v29 = v63;
    if ((*(v63 + 48))(v8, 1, v62) == 1)
    {
      (*(v19 + 8))(v22, v18);
      goto LABEL_8;
    }

    v34 = v29 + 32;
    v35 = *(v29 + 32);
    v36 = v61;
    v58 = v35;
    v59 = v34;
    v35(v61, v8, v28);
    v37 = *&v26[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView];
    if (v37)
    {
      v38 = v37;
      v60 = v26;
      v39 = v38;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v41 = [v39 cellForItemAtIndexPath:isa];

      v26 = v60;
      if (v41)
      {
        type metadata accessor for MosaicCell();
        v42 = swift_dynamicCastClass();
        if (v42)
        {
          if (a2)
          {
            v43 = v62;
            v45 = v63 + 16;
            v44 = *(v63 + 16);
            v57 = v42;
            v44(v12, v61, v62);
            v46 = (*(v45 + 64) + 32) & ~*(v45 + 64);
            v47 = v43;
            v48 = swift_allocObject();
            v49 = v58;
            v50 = v60;
            *(v48 + 16) = v57;
            *(v48 + 24) = v50;
            v49(v48 + v46, v12, v43);
            v68 = sub_100593164;
            v69 = v48;
            aBlock = _NSConcreteStackBlock;
            v65 = 1107296256;
            v66 = sub_100006C7C;
            v67 = &unk_100A73D20;
            v51 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();
            v52 = v41;
            v53 = v60;

            [a2 addAnimations:v51];
            v54 = v51;
            v26 = v60;
            v55 = v61;
            _Block_release(v54);

            swift_unknownObjectRelease();
          }

          else
          {
            v55 = v61;
            sub_10058DE7C(v42, v26);

            v47 = v62;
          }

          (*(v63 + 8))(v55, v47);
LABEL_19:
          result = (*(v19 + 8))(v22, v18);
          if (a2)
          {
            goto LABEL_9;
          }

          goto LABEL_20;
        }

        v36 = v61;
      }
    }

    (*(v63 + 8))(v36, v62);
    goto LABEL_19;
  }

  v24(v17, 1, 1, v18);
  result = sub_100004F84(v17, &qword_100AD1420);
  v26 = v3;
  if (a2)
  {
LABEL_9:
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    v68 = sub_10059314C;
    v69 = v31;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100006C7C;
    v67 = &unk_100A73CD0;
    v32 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v33 = v26;

    [a2 addCompletion:v32];
    _Block_release(v32);
    return swift_unknownObjectRelease();
  }

LABEL_20:
  v26[OBJC_IVAR____TtC7Journal14CanvasGridView_wantsContextMenuDismissalPreview] = 1;
  return result;
}

void sub_100593164()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_10058DE7C(v1, v2);
}

uint64_t sub_1005931F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100588674(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005932B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IndexSet() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_1005878A0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100593418(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032EC8;

  return sub_100587F28(a1, v6, v7, v8, v9, v1 + v5);
}

char *sub_100593554()
{
  v1 = sub_1000F24EC(&qword_100AE9C10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - v3;
  v5 = sub_1000F24EC(&unk_100AE9C18);
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  *&v0[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByMapPlace] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByRoutePlace] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByPhotoPlace] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entryMapPipelineDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByMapPlaceSubscription] = 0;
  *&v0[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByPhotoPlaceSubscription] = 0;
  *&v0[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByRoutePlaceSubscription] = 0;
  v8 = [objc_allocWithZone(PXPlacesStore) init];
  *&v0[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_store] = v8;
  v9 = type metadata accessor for EntryMapPinsStore();
  v26.receiver = v0;
  v26.super_class = v9;
  v10 = objc_msgSendSuper2(&v26, "init");
  v11 = qword_100ACF9C8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = sub_1000F24EC(&qword_100AD5B60);
  Published.projectedValue.getter();
  swift_endAccess();
  v25 = sub_10000B58C(&qword_100AE9C28, &qword_100AE9C10);
  v24 = sub_100593F10();
  Publisher<>.removeDuplicates()();
  v13 = *(v2 + 8);
  v22 = v2 + 8;
  v23 = v13;
  v13(v4, v1);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000B58C(&qword_100AE9C48, &unk_100AE9C18);
  v14 = Publisher<>.sink(receiveValue:)();

  v20 = *(v20 + 8);
  (v20)(v7, v5);
  *&v12[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByMapPlaceSubscription] = v14;

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  Publisher<>.removeDuplicates()();
  v23(v4, v1);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = Publisher<>.sink(receiveValue:)();

  v16 = v20;
  (v20)(v7, v5);
  *&v12[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByRoutePlaceSubscription] = v15;

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  Publisher<>.removeDuplicates()();
  v23(v4, v1);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = Publisher<>.sink(receiveValue:)();

  v16(v7, v5);
  *&v12[OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entriesByPhotoPlaceSubscription] = v17;

  return v12;
}

uint64_t sub_100593AD0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *a3;

    v9 = sub_100185544(v8, v4);
    v11 = v10;

    *&v6[v7] = v4;

    sub_100593BB8(v9, v11);
  }

  return result;
}

uint64_t sub_100593BB8(unint64_t a1, unint64_t a2)
{

  v5 = sub_100891918(a2);

  v6 = v2 + OBJC_IVAR____TtC7Journal17EntryMapPinsStore_entryMapPipelineDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  v9 = *(v2 + OBJC_IVAR____TtC7Journal17EntryMapPinsStore_store);
  [v9 beginUpdates];
  if (!(a1 >> 62))
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    goto LABEL_6;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {

    sub_1000F24EC(&qword_100AE9C08);
    _bridgeCocoaArray<A>(_:)();

LABEL_6:
    sub_1000F24EC(&qword_100AE9C08);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 addItemsFromArray:isa];
  }

LABEL_7:
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_9:
      sub_1002C82B8(v5);

      v11 = Set._bridgeToObjectiveC()().super.isa;

      [v9 removeItems:v11];

      goto LABEL_12;
    }
  }

  else if (*(v5 + 16))
  {
    goto LABEL_9;
  }

LABEL_12:
  [v9 endUpdates];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v6 + 8);
    v14 = swift_getObjectType();
    (*(v13 + 8))(v14, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100593E0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryMapPinsStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100593F10()
{
  result = qword_100AE9C30;
  if (!qword_100AE9C30)
  {
    sub_1000F2A18(&qword_100AD58C0);
    sub_100593F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9C30);
  }

  return result;
}

unint64_t sub_100593F94()
{
  result = qword_100AE9C40;
  if (!qword_100AE9C40)
  {
    type metadata accessor for DataAggregator.EntryPlace(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9C40);
  }

  return result;
}

char *sub_100594058(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15)
{
  v124 = a8;
  v123 = a7;
  v96 = a6;
  v95 = a5;
  v122 = a4;
  v121 = a3;
  v101 = a2;
  v125 = a1;
  v99 = a15;
  v108 = a14;
  v100 = a13;
  v98 = a12;
  v120 = a11;
  v107 = v130;
  v119 = a10;
  v118 = a9;
  v91 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v91);
  v92 = (&v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_1000F24EC(&qword_100ADA870);
  __chkstk_darwin(v94);
  v97 = &v91 - v16;
  v17 = sub_1000F24EC(&qword_100AD6030);
  __chkstk_darwin(v17 - 8);
  v93 = &v91 - v18;
  v19 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v19 - 8);
  v112 = &v91 - v20;
  v21 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v21 - 8);
  v111 = &v91 - v22;
  v117 = type metadata accessor for MediaViewType();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v110 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for UUID();
  v127 = *(v109 - 8);
  v25 = v127;
  __chkstk_darwin(v109);
  v106 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v126 = &v91 - v28;
  v29 = type metadata accessor for AssetSource();
  v128 = *(v29 - 8);
  v30 = v128;
  __chkstk_darwin(v29);
  v105 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v91 - v33;
  *&v104 = &v91 - v33;
  v35 = type metadata accessor for AssetType();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v42 = &v91 - v41;
  v43 = *(v36 + 104);
  *&v103 = v35;
  v43(&v91 - v41, enum case for AssetType.thirdPartyMedia(_:), v35, v40);
  v102 = *(v30 + 16);
  v102(v34, v125, v29);
  v44 = v126;
  UUID.init()();
  v45 = objc_allocWithZone(type metadata accessor for ThirdPartyMediaAsset());
  *&v45[OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata] = 0;
  v46 = *(v25 + 16);
  v47 = v106;
  v48 = v109;
  v46(v106, v44, v109);
  (*(v36 + 16))(v38, v42, v35);
  v49 = v105;
  v50 = v104;
  v102(v105, v104, v29);
  v51 = sub_100285908(v47, v38, v49);
  v52 = *(v127 + 8);
  v127 += 8;
  v105 = v52;
  (v52)(v126, v48);
  v53 = *(v128 + 8);
  v106 = v29;
  v128 += 8;
  v53(v50, v29);
  v55 = *(v36 + 8);
  v54 = v36 + 8;
  v55(v42, v103);
  v129 = v121;
  v130[0] = v122;
  v130[1] = v123;
  v130[2] = v124;
  v130[3] = v119;
  v130[4] = v120;

  v56 = v51;

  v57 = 0;
  v58 = _swiftEmptyArrayStorage;
  do
  {
    if (v57 <= 3)
    {
      v59 = 3;
    }

    else
    {
      v59 = v57;
    }

    v60 = -v59;
    v61 = (v107 + 16 * v57++);
    while (1)
    {
      if (v60 + v57 == 1)
      {
        __break(1u);
        goto LABEL_25;
      }

      v62 = *v61;
      if (*v61)
      {
        v54 = *(v61 - 1);
        v63 = HIBYTE(v62) & 0xF;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v63 = v54 & 0xFFFFFFFFFFFFLL;
        }

        if (v63)
        {
          break;
        }
      }

      ++v57;
      v61 += 2;
      if (v57 == 4)
      {
        goto LABEL_17;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_10009BCC8(0, *(v58 + 2) + 1, 1, v58);
    }

    v42 = *(v58 + 2);
    v64 = *(v58 + 3);
    if (v42 >= v64 >> 1)
    {
      v58 = sub_10009BCC8((v64 > 1), v42 + 1, 1, v58);
    }

    *(v58 + 2) = v42 + 1;
    v65 = &v58[16 * v42];
    *(v65 + 4) = v54;
    *(v65 + 5) = v62;
  }

  while (v57 != 3);
LABEL_17:
  v107 = v53;
  sub_1000F24EC(&unk_100AE4870);
  swift_arrayDestroy();
  *&v131 = v58;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10009BDD4();
  BidirectionalCollection<>.joined(separator:)();

  v66 = objc_allocWithZone(NSAttributedString);
  v67 = String._bridgeToObjectiveC()();

  v68 = [v66 initWithString:{v67, v91}];

  v69 = *&v56[OBJC_IVAR____TtC7Journal5Asset_title];
  *&v56[OBJC_IVAR____TtC7Journal5Asset_title] = v68;

  v58 = v101;
  (*(v116 + 16))(v110, v101, v117);
  sub_1000082B4(v118, v111, &unk_100AD6DD0);
  v38 = v100;
  sub_1000082B4(v100, v112, &unk_100AD4790);
  v70 = v108;
  if (v108)
  {
    v71 = v108;
    *&v72 = sub_100417798();
    v104 = v72;
    v103 = v73;

    v74 = v103;
    v75 = v104;
  }

  else
  {
    v75 = 0uLL;
    v74 = 0uLL;
  }

  v54 = v125;
  v42 = v99;
  v76 = v97;
  v131 = v75;
  v132 = v74;
  v133 = v70 == 0;
  sub_1000082B4(v99, v93, &qword_100AD6030);
  v77 = v113;
  ThirdPartyMediaAssetMetadata.init(mediaType:song:albumName:artistName:mediaURL:appName:startTime:appBackgroundColor:colorVariant:)();
  (*(v114 + 16))(v76, v77, v115);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0E70);
  v78 = swift_allocObject();
  v79 = *(*v78 + 104);
  v80 = sub_1000F24EC(&qword_100AD50C0);
  (*(*(v80 - 8) + 56))(v78 + v79, 1, 1, v80);
  *(v78 + *(*v78 + 112)) = xmmword_100941EE0;
  sub_100594E54(v76, v78 + *(*v78 + 120));
  *&v56[OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata] = v78;

  v81 = v98;
  if (v98)
  {
    v82 = v92;
    *v92 = v98;
    swift_storeEnumTagMultiPayload();
    v57 = v81;
    v83 = v126;
    UUID.init()();
    v84 = UUID.uuidString.getter();
    v86 = v85;
    (v105)(v83, v109);
    type metadata accessor for AssetAttachment(0);
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    sub_1001700CC(v82, v87 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
    v88 = (v87 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v88 = v84;
    v88[1] = v86;
    v89 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v56[v89] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v56[v89] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_22:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v70 = v108;
      goto LABEL_23;
    }

LABEL_25:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_22;
  }

LABEL_23:

  sub_100004F84(v42, &qword_100AD6030);
  sub_100004F84(v38, &unk_100AD4790);
  sub_100004F84(v118, &unk_100AD6DD0);
  (*(v116 + 8))(v58, v117);
  v107(v54, v106);
  (*(v114 + 8))(v113, v115);
  return v56;
}

uint64_t sub_100594E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100594EC4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE9C50);
  sub_10000617C(v0, qword_100AE9C50);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100594F38(uint64_t a1)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v28 - v12;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && v1)
  {
    v15 = result;
    v28[1] = a1;
    v29 = v13;
    v30 = v8;
    v31 = v7;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    v18 = v1;
    v17(&v32, ObjectType, v15);
    if (v33)
    {
      sub_10029D1D4(&v32, &v34);
      sub_10069763C(v11);
      v19 = v18;
      *&v32 = UUID.uuidString.getter();
      *(&v32 + 1) = v20;
      v21._countAndFlagsBits = 0x6E6F736A2ELL;
      v21._object = 0xE500000000000000;
      String.append(_:)(v21);
      (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
      sub_1000777B4();
      v22 = v29;
      URL.appending<A>(path:directoryHint:)();
      (*(v4 + 8))(v6, v3);

      v23 = v31;
      v24 = *(v30 + 8);
      v24(v11, v31);
      sub_10000CA14(&v34, v35);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v27 = v26;

      Data.write(to:options:)();
      v24(v22, v23);
      sub_1000340DC(v25, v27);

      return sub_10000BA7C(&v34);
    }

    else
    {

      return sub_100004F84(&v32, &qword_100AE9C68);
    }
  }

  return result;
}

uint64_t sub_100595458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(sub_1005954EC, v5, v7);
}

uint64_t sub_1005954EC()
{
  v1 = *(v0 + 40);
  static Date.timeIntervalSinceReferenceDate.getter();
  v3 = v2;
  *(v0 + 64) = v2;
  sub_1000F24EC(&qword_100ADAD48);
  v4 = type metadata accessor for AssetType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100941FE0;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, enum case for AssetType.reflection(_:), v4);
  v10(v9 + v6, enum case for AssetType.streakEvent(_:), v4);
  v10(v9 + 2 * v6, enum case for AssetType.placeholder(_:), v4);
  v10(v9 + 3 * v6, enum case for AssetType.unknown(_:), v4);
  v11 = sub_100890950(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v4) = sub_1006276B4(v1 + OBJC_IVAR____TtC7Journal5Asset_type, v11);

  if (v4)
  {
    sub_100596044(*(v0 + 40), v3);
    v12 = *(v0 + 8);

    return v12(0, 0xE000000000000000);
  }

  if (*(*(v0 + 32) + OBJC_IVAR____TtC7Journal13ExportOptions_format) <= 1u && !*(*(v0 + 32) + OBJC_IVAR____TtC7Journal13ExportOptions_format))
  {

LABEL_9:
    sub_100594F38(*(v0 + 32));
    goto LABEL_10;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  v15 = *(v0 + 40);
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 8);
    v20 = v15;
    v29 = (v19 + *v19);
    v21 = swift_task_alloc();
    *(v0 + 72) = v21;
    *v21 = v0;
    v21[1] = sub_1005959A8;
    v22 = *(v0 + 32);
    v24 = *(v0 + 16);
    v23 = *(v0 + 24);

    return v29(v24, v23, v22, ObjectType, v17);
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 104) = v25;
    *v25 = v0;
    v25[1] = sub_100595B54;
    v26 = *(v0 + 32);
    v28 = *(v0 + 16);
    v27 = *(v0 + 24);

    return sub_100847498(v28, v27, v26, 0, 0, 0, 0, 0);
  }
}

uint64_t sub_1005959A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100595CF4;
  }

  else
  {
    v6[11] = a2;
    v6[12] = a1;
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100595ADC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100595ADC()
{
  v1 = v0[8];
  v2 = *(v0 + 5);

  sub_100596044(v2, v1);
  v4 = *(v0 + 11);
  v3 = *(v0 + 12);
  v5 = *(v0 + 1);

  return v5(v3, v4);
}

uint64_t sub_100595B54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100595FDC;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100595C88;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100595C88()
{
  sub_100596044(*(v0 + 40), *(v0 + 64));
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_100595CF4()
{
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100595DAC;
  v2 = v0[4];
  v4 = v0[2];
  v3 = v0[3];

  return sub_100847498(v4, v3, v2, 0, 0, 0, 0, 0);
}

uint64_t sub_100595DAC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 144) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100595F60;
  }

  else
  {
    v6[19] = a2;
    v6[20] = a1;
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100595EE0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100595EE0()
{
  v1 = v0[8];
  v2 = *(v0 + 5);

  sub_100596044(v2, v1);
  v4 = *(v0 + 19);
  v3 = *(v0 + 20);
  v5 = *(v0 + 1);

  return v5(v3, v4);
}

uint64_t sub_100595F60()
{
  v1 = v0[8];
  v2 = *(v0 + 5);

  sub_100596044(v2, v1);
  v3 = *(v0 + 1);

  return v3();
}

uint64_t sub_100595FDC()
{
  sub_100596044(*(v0 + 40), *(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

void sub_100596044(void *a1, double a2)
{
  if (qword_100ACFFF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AE9C50);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2080;
    sub_1000F24EC(&unk_100AD5B10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100940080;
    v11 = v5;
    Current = CFAbsoluteTimeGetCurrent();
    *(v10 + 56) = &type metadata for Double;
    *(v10 + 64) = &protocol witness table for Double;
    *(v10 + 32) = Current - a2;
    v13 = String.init(format:_:)();
    v15 = sub_100008458(v13, v14, &v17);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, oslog, v6, "%@.exportHTML executed in %ss", v7, 0x16u);
    sub_100004F84(v8, &unk_100AD4BB0);

    sub_10000BA7C(v9);
  }
}

uint64_t sub_100596258()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE9C70);
  v1 = sub_10000617C(v0, qword_100AE9C70);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100596320(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AE9D28);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC7Journal24TranscriptViewController_activeSegment;
  swift_beginAccess();
  sub_10059A00C(a1, v1 + v6);
  swift_endAccess();
  result = [v1 view];
  if (result)
  {
    v8 = result;
    type metadata accessor for TranscriptView();
    v9 = swift_dynamicCastClassUnconditional();
    v10 = sub_100596C68();
    v11 = v9 + OBJC_IVAR____TtC7Journal14TranscriptView_activeSegmentRange;
    *v11 = v10;
    *(v11 + 8) = v12;
    *(v11 + 16) = v13 & 1;
    sub_1003001C4();

    sub_1000082B4(v1 + v6, v5, &qword_100AE9D28);
    v14 = type metadata accessor for TranscriptViewModelSegment();
    if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
    {
      sub_100004F84(a1, &qword_100AE9D28);
      a1 = v5;
    }

    else
    {
      sub_100004F84(v5, &qword_100AE9D28);
      sub_100597598();
    }

    return sub_100004F84(a1, &qword_100AE9D28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100596528()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for TranscriptView());

  v4 = sub_1002FFF7C(v3);
  [v4 setDelegate:v0];
  [v0 setView:v4];
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"handleTap:"];
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 addGestureRecognizer:v8];

      __chkstk_darwin(v11);
      __chkstk_darwin(v12);
      __chkstk_darwin(v13);
      v14 = withObservationTracking<A>(_:onChange:)();
      __chkstk_darwin(v14);
      __chkstk_darwin(v15);
      __chkstk_darwin(v16);
      v17 = withObservationTracking<A>(_:onChange:)();
      __chkstk_darwin(v17);
      __chkstk_darwin(v18);
      __chkstk_darwin(v19);
      v20 = withObservationTracking<A>(_:onChange:)();
      __chkstk_darwin(v20);
      __chkstk_darwin(v21);
      __chkstk_darwin(v22);
      withObservationTracking<A>(_:onChange:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1005969E0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_representableAdapter + 8);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_representableAdapter);

    [v3 contentOffset];
    [v3 contentSize];
    [v3 frame];
    v5 = *(v1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_model);
    swift_getKeyPath();
    sub_1001937E4();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v5 + 16))
    {
      v6 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100885D80(ObjectType, v6);
      swift_unknownObjectRelease();
    }

    sub_1000F24EC(&qword_100AE9D40);
    Binding.wrappedValue.setter();

    Binding.wrappedValue.setter();
    sub_100599C6C(v4, v2);
  }

  return result;
}

id sub_100596C68()
{
  v1 = sub_1000F24EC(&qword_100AE9D28);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for TranscriptViewModelSegment();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC7Journal24TranscriptViewController_activeSegment;
  swift_beginAccess();
  sub_1000082B4(v0 + v11, v3, &qword_100AE9D28);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100004F84(v3, &qword_100AE9D28);
    if (qword_100ACFFF8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100AE9C70);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Asked for rangeForActiveSegment, but activeSegment was nil.", v15, 2u);
    }

    return 0;
  }

  v17 = *(v5 + 32);
  v17(v10, v3, v4);
  result = [v0 view];
  if (result)
  {
    v19 = result;
    type metadata accessor for TranscriptView();
    v20 = [swift_dynamicCastClassUnconditional() textStorage];

    v30[0] = 0;
    v30[1] = 0;
    v31 = 1;
    if (qword_100ACFB50 != -1)
    {
      swift_once();
    }

    v28 = qword_100B2F600;
    v27 = [v20 length];
    (*(v5 + 16))(v7, v10, v4);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v17((v23 + v21), v7, v4);
    *(v23 + v22) = v30;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_100599F48;
    *(v24 + 24) = v23;
    aBlock[4] = sub_10007E150;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007E0A4;
    aBlock[3] = &unk_100A740C8;
    v25 = _Block_copy(aBlock);

    [v20 enumerateAttribute:v28 inRange:0 options:v27 usingBlock:{0, v25}];
    _Block_release(v25);

    (*(v5 + 8))(v10, v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v16 = v30[0];

      return v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100597150(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v22[-v16];
  sub_1000082B4(a1, v22, &qword_100AD13D0);
  if (!v23)
  {
    return sub_100004F84(v22, &qword_100AD13D0);
  }

  type metadata accessor for TranscriptMetadata(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = a4;
    TranscriptViewModelSegment.id.getter();
    TranscriptViewModelSegment.id.getter();
    v19 = static UUID.== infix(_:_:)();
    v20 = *(v12 + 8);
    v20(v14, v11);
    v20(v17, v11);
    if (v19)
    {
      *a6 = a2;
      *(a6 + 8) = a3;
      *(a6 + 16) = 0;
      *v21 = 1;
    }
  }

  return result;
}

void sub_100597338()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  type metadata accessor for TranscriptView();
  swift_dynamicCastClassUnconditional();
  v4 = *&v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_model];

  v5 = sub_100240FD8();

  sub_100300404(v5, 0, 0, 1);

  swift_getKeyPath();
  sub_1001937E4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v4 + 16))
  {
    v6 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v6) = sub_100885D80(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = [v0 view];
      if (!v8)
      {
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v9 = v8;
      v10 = [swift_dynamicCastClassUnconditional() textStorage];

      v11 = [v10 length];
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (!v12)
      {
        v14 = [v1 view];
        if (v14)
        {
          v15 = v14;
          [swift_dynamicCastClassUnconditional() scrollRangeToVisible:{v13, 1}];

          if (*&v1[OBJC_IVAR____TtC7Journal24TranscriptViewController_representableAdapter + 8])
          {
            sub_1000F24EC(&qword_100AE9D40);
            Binding.wrappedValue.setter();
          }

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }
}

id sub_100597598()
{
  result = sub_100596C68();
  v4 = v3;
  if (v3)
  {
    goto LABEL_9;
  }

  result = sub_10059801C(result, v2);
  if ((v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_previousParagraphRange + 16] & 1) == 0 && *&v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_previousParagraphRange] == result && *&v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_previousParagraphRange + 8] == v2)
  {
    goto LABEL_9;
  }

  v6 = v2;
  v7 = result;
  result = [v0 view];
  if (result)
  {
    v8 = result;
    type metadata accessor for TranscriptView();
    [swift_dynamicCastClassUnconditional() scrollRangeToVisible:{v7, v6}];

    v9 = *&v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_selectionFeedbackGenerator];
    [v9 prepare];
    [v9 impactOccurredWithIntensity:0.5];
    v2 = v6;
    result = v7;
LABEL_9:
    v10 = &v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_previousParagraphRange];
    *v10 = result;
    *(v10 + 1) = v2;
    v10[16] = v4 & 1;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1005976A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = [v3 view];
  if (result)
  {
    v7 = result;
    type metadata accessor for TranscriptView();
    v8 = [swift_dynamicCastClassUnconditional() textStorage];

    if ([v8 length] <= a1 || a1 < 0)
    {
    }

    else
    {
      if (qword_100ACFB50 != -1)
      {
        swift_once();
      }

      if ([v8 attribute:qword_100B2F600 atIndex:a1 effectiveRange:0])
      {
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
      }

      else
      {

        v14 = 0u;
        v15 = 0u;
      }

      v16[0] = v14;
      v16[1] = v15;
      if (*(&v15 + 1))
      {
        type metadata accessor for TranscriptMetadata(0);
        if (swift_dynamicCast())
        {
          v10 = OBJC_IVAR____TtC7Journal18TranscriptMetadata_segment;
          v11 = type metadata accessor for TranscriptViewModelSegment();
          v12 = *(v11 - 8);
          (*(v12 + 16))(a2, v13 + v10, v11);

          return (*(v12 + 56))(a2, 0, 1, v11);
        }
      }

      else
      {
        sub_100004F84(v16, &qword_100AD13D0);
      }
    }

    v9 = type metadata accessor for TranscriptViewModelSegment();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_100597914()
{
  v1 = sub_1000F24EC(&qword_100AE9D28);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TranscriptViewModelSegment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_100240FD8();

  sub_100597B50(v11, v6, *(v0 + OBJC_IVAR____TtC7Journal24TranscriptViewController_playbackTime));

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100004F84(v6, &qword_100AE9D28);
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 16))(v3, v10, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  sub_100596320(v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100597B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1000F24EC(&qword_100AE9D28);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for TranscriptViewModelSegment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = *(a1 + 16);
  v18 = *(v10 + 56);
  result = v18(a2, 1, 1, v9, v14);
  if (v17)
  {
    v50 = v18;
    v51 = v10 + 56;
    v48 = v8;
    v49 = v12;
    v52 = a2;
    v53 = v17;
    v20 = v17 - 1;
    v54 = v10;
    v22 = v10 + 16;
    v21 = *(v10 + 16);
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = *(v22 + 56);
    v25 = (v22 - 8);
    v47 = a1 + v23;
    v21(v16);
    if (v20)
    {
      v26 = 0;
      v27 = a1 + v24 + v23;
      v28 = 0.0;
      v29 = v54;
      while (1)
      {
        result = TranscriptViewModelSegment.timestamp.getter();
        v31 = v30;
        if (v30 < 0.0)
        {
          break;
        }

        if (v28 <= a3 && v30 >= a3)
        {
          break;
        }

        ++v26;
        (*v25)(v16, v9);
        (v21)(v16, v27, v9);
        v27 += v24;
        v28 = v31;
        if (v20 == v26)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v31 = 0.0;
      v29 = v54;
LABEL_13:
      result = TranscriptViewModelSegment.timestamp.getter();
      if (v31 + v33 <= a3)
      {
        if (qword_100ACFFF8 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      v31 = -1.0;
      v26 = v20;
    }

    if (vabdd_f64(a3, v31) >= 0.01)
    {
      v37 = v52;
      sub_100004F84(v52, &qword_100AE9D28);
      (*(v29 + 32))(v37, v16, v9);
      return (v50)(v37, 0, 1, v9);
    }

    v34 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      if (v34 >= v53)
      {
        return (*v25)(v16, v9);
      }

      if (v34 < 0)
      {
        __break(1u);
      }

      else
      {
        v35 = v48;
        (v21)(v48, v47 + v24 * v34, v9);
        (*v25)(v16, v9);
        v36 = v52;
        sub_100004F84(v52, &qword_100AE9D28);
        (v50)(v35, 0, 1, v9);
        return sub_100599ED8(v35, v36);
      }

      return result;
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_22:
    v38 = type metadata accessor for Logger();
    sub_10000617C(v38, qword_100AE9C70);
    v39 = v49;
    (v21)(v49, v16, v9);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134218240;
      *(v42 + 4) = a3;
      *(v42 + 12) = 2048;
      TranscriptViewModelSegment.timestamp.getter();
      v44 = v43;
      v45 = *v25;
      (*v25)(v39, v9);
      *(v42 + 14) = v31 + v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "currentPlaybackTime %f is greater than the total time in the transcript %f. Cannot provide the active segment.", v42, 0x16u);

      return v45(v16, v9);
    }

    else
    {

      v46 = *v25;
      (*v25)(v39, v9);
      return v46(v16, v9);
    }
  }

  return result;
}

uint64_t sub_10059801C(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = a1 + a2;
  v5 = [v2 view];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  type metadata accessor for TranscriptView();
  v7 = [swift_dynamicCastClassUnconditional() textStorage];

  v8 = [v7 mutableString];
  [v8 getParagraphStart:&v11 end:0 contentsEnd:&v10 forRange:{a1, a2}];

  result = v11;
  if (v10 < v11)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(v10, v11))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100598154(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_audioController + 8);
  ObjectType = swift_getObjectType();
  (*(v4 + 88))(v18, ObjectType, v4);
  v6 = v19;
  if (v19)
  {
    v7 = v20;
    sub_10000CA14(v18, v19);
    v8 = (*(v7 + 8))(v6, v7);
    v6 = v9;
    sub_10000BA7C(v18);
  }

  else
  {
    sub_100004F84(v18, &unk_100AE9D30);
    v8 = 0;
  }

  sub_1005EFDF8(v18);
  v10 = v19;
  if (!v19)
  {
    sub_100004F84(v18, &unk_100AE9D30);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  v11 = v20;
  sub_10000CA14(v18, v19);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  sub_10000BA7C(v18);
  if (!v6)
  {
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!v14)
  {
  }

  if (v8 == v12 && v6 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

LABEL_18:
  result = (*(v4 + 24))(ObjectType, v4);
  if (result)
  {
    *(v2 + OBJC_IVAR____TtC7Journal24TranscriptViewController_playbackTime) = a1 + 0.5;
    return sub_100597914();
  }

  return result;
}

void sub_100598378(char a1)
{
  v3 = sub_1000F24EC(&qword_100AE9D28);
  __chkstk_darwin(v3 - 8);
  v5 = &v24[-1] - v4;
  v6 = *(v1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_audioController + 8);
  ObjectType = swift_getObjectType();
  (*(v6 + 88))(v24, ObjectType, v6);
  v8 = v25;
  if (v25)
  {
    v9 = v26;
    sub_10000CA14(v24, v25);
    v10 = (*(v9 + 8))(v8, v9);
    v8 = v11;
    sub_10000BA7C(v24);
  }

  else
  {
    sub_100004F84(v24, &unk_100AE9D30);
    v10 = 0;
  }

  sub_1005EFDF8(v24);
  v12 = v25;
  if (!v25)
  {
    sub_100004F84(v24, &unk_100AE9D30);
    if (!v8)
    {
      goto LABEL_15;
    }

LABEL_13:

    return;
  }

  v13 = v26;
  sub_10000CA14(v24, v25);
  v14 = (*(v13 + 8))(v12, v13);
  v16 = v15;
  sub_10000BA7C(v24);
  if (!v8)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v16)
  {
    goto LABEL_13;
  }

  if (v10 == v14 && v8 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

LABEL_15:
  if (qword_100ACFFF8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000617C(v18, qword_100AE9C70);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Transcript State Machine: Received audio playback change", v21, 2u);
  }

  if ((a1 & 1) == 0)
  {
    v22 = type metadata accessor for TranscriptViewModelSegment();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    sub_100596320(v5);
  }
}

void sub_100598698(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AE9D28);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for TranscriptViewModelSegment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v37 - v13;
  v15 = [v2 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v15;
  type metadata accessor for TranscriptView();
  [a1 locationInView:swift_dynamicCastClassUnconditional()];
  v18 = v17;
  v20 = v19;

  v21 = [v2 view];
  if (!v21)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v22 = v21;
  swift_dynamicCastClassUnconditional();
  v23 = sub_1000F5610(v18, v20, 1.0, 1.0);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
    sub_1005976A8(v23, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100004F84(v6, &qword_100AE9D28);
    }

    else
    {
      (*(v8 + 32))(v14, v6, v7);
      if (qword_100ACFFF8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000617C(v26, qword_100AE9C70);
      (*(v8 + 16))(v10, v14, v7);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        TranscriptViewModelSegment.timestamp.getter();
        v31 = v30;
        v32 = *(v8 + 8);
        v32(v10, v7);
        *(v29 + 4) = v31;
        v33 = v28;
        v34 = v32;
        _os_log_impl(&_mh_execute_header, v27, v33, "Seeking audiocontroller to timestamp (from tapping): %f", v29, 0xCu);
      }

      else
      {

        v34 = *(v8 + 8);
        v34(v10, v7);
      }

      v35 = *&v2[OBJC_IVAR____TtC7Journal24TranscriptViewController_audioController + 8];
      ObjectType = swift_getObjectType();
      TranscriptViewModelSegment.timestamp.getter();
      (*(v35 + 160))(ObjectType, v35);
      v34(v14, v7);
    }
  }
}

void sub_100598AF4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_model];
  swift_getKeyPath();
  v17[0] = v2;
  sub_1001937E4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 16) && (v3 = *(v2 + 24), ObjectType = swift_getObjectType(), swift_unknownObjectRetain(), LOBYTE(v3) = sub_100885D80(ObjectType, v3), swift_unknownObjectRelease(), (v3 & 1) != 0))
  {
    v5 = OBJC_IVAR____TtC7Journal24TranscriptViewController_transcriptTimer;
    if (*&v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_transcriptTimer])
    {
      return;
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17[4] = sub_100599ED0;
    v17[5] = v7;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10016B4D8;
    v17[3] = &unk_100A74050;
    v8 = _Block_copy(v17);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:1.0];
    _Block_release(v8);
    v10 = *&v1[v5];
    *&v1[v5] = v9;
  }

  else
  {
    v11 = [v0 view];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    type metadata accessor for TranscriptView();
    v13 = swift_dynamicCastClassUnconditional();
    v14 = *(v13 + OBJC_IVAR____TtC7Journal14TranscriptView_shouldShowWaitingUI);
    *(v13 + OBJC_IVAR____TtC7Journal14TranscriptView_shouldShowWaitingUI) = 0;
    if (v14 == 1)
    {
      v15 = v13;
      sub_100300404(0, 0, 0, 1);
      if (v15[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange + 16] != 1)
      {
        [v15 scrollRangeToVisible:{*&v15[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange], *&v15[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange + 8]}];
      }
    }

    v16 = OBJC_IVAR____TtC7Journal24TranscriptViewController_transcriptTimer;
    [*&v1[OBJC_IVAR____TtC7Journal24TranscriptViewController_transcriptTimer] invalidate];
    v10 = *&v1[v16];
    *&v1[v16] = 0;
  }
}

void sub_100598D60(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100598DCC();
  }

  else
  {
    [a1 invalidate];
  }
}

id sub_100598DCC()
{
  v1 = v0;
  v2 = type metadata accessor for TranscriptViewModelSegment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = *&v0[OBJC_IVAR____TtC7Journal24TranscriptViewController_model];
  swift_getKeyPath();
  v29[1] = v9;
  sub_1001937E4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v9 + 16))
  {
    v11 = *(v9 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v11) = sub_100885D80(ObjectType, v11);
    result = swift_unknownObjectRelease();
    if (v11)
    {
      v13 = sub_1005F06DC();
      v14 = *(v13 + 2);
      if (v14)
      {
        (*(v3 + 16))(v5, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * (v14 - 1), v2);

        (*(v3 + 32))(v8, v5, v2);
        TranscriptViewModelSegment.duration.getter();
        v16 = v15;
        TranscriptViewModelSegment.timestamp.getter();
        v18 = v17;
        v19 = TranscriptViewModelSegment.text.getter();
        v21 = v20;

        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {
          sub_1005F02FC();
          v24 = v16 + v18 + 2.0 <= v23;
        }

        else
        {
          v24 = 0;
        }

        result = [v1 view];
        if (result)
        {
          v25 = result;
          type metadata accessor for TranscriptView();
          v26 = swift_dynamicCastClassUnconditional();
          v27 = *(v26 + OBJC_IVAR____TtC7Journal14TranscriptView_shouldShowWaitingUI);
          *(v26 + OBJC_IVAR____TtC7Journal14TranscriptView_shouldShowWaitingUI) = v24;
          if (v24 != v27)
          {
            v28 = v26;
            sub_100300404(0, 0, 0, 1);
            if (v28[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange + 16] != 1)
            {
              [v28 scrollRangeToVisible:{*&v28[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange], *&v28[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange + 8]}];
            }
          }

          return (*(v3 + 8))(v8, v2);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }

  return result;
}

id sub_100599104()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TranscriptViewController()
{
  result = qword_100AE9CF8;
  if (!qword_100AE9CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100599230()
{
  sub_100599314();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100599314()
{
  if (!qword_100AE9D08)
  {
    type metadata accessor for TranscriptViewModelSegment();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE9D08);
    }
  }
}

uint64_t sub_10059936C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005993B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100599410(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_model);
  swift_getKeyPath();
  sub_1001937E4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 40);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return sub_100598154(v5);
}

void sub_100599538(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_model);
  swift_getKeyPath();
  sub_1001937E4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  LOBYTE(v2) = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  sub_100598378(v2 & 1);
}

void (*sub_100599758(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;

  return sub_10059A0E0;
}

void sub_1005997F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = v9;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = v11;
    sub_1003E9628(0, 0, v7, &unk_10095E720, v13);
  }
}

uint64_t sub_100599960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10043C8A8, v8, v7);
}

id sub_1005999FC()
{
  v0 = objc_allocWithZone(type metadata accessor for TranscriptViewController());

  v2 = sub_100599CDC(v1);

  return v2;
}

uint64_t sub_100599A48(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 40);
  v8 = v1[6];
  v9 = (a1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_representableAdapter);
  v10 = *(a1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_representableAdapter);
  v11 = *(a1 + OBJC_IVAR____TtC7Journal24TranscriptViewController_representableAdapter + 8);
  *v9 = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;

  return sub_100599C6C(v10, v11);
}

uint64_t sub_100599B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100599E7C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100599B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100599E7C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100599BEC()
{
  sub_100599E7C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100599C18()
{
  result = qword_100AE9D10;
  if (!qword_100AE9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9D10);
  }

  return result;
}

uint64_t sub_100599C6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_100599CDC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Journal24TranscriptViewController_selectionFeedbackGenerator;
  *&v2[v4] = [objc_allocWithZone(UIImpactFeedbackGenerator) init];
  *&v2[OBJC_IVAR____TtC7Journal24TranscriptViewController_playbackTime] = 0;
  *&v2[OBJC_IVAR____TtC7Journal24TranscriptViewController_hapticImpactIntensityForSelectionChange] = 0x3FE0000000000000;
  v5 = &v2[OBJC_IVAR____TtC7Journal24TranscriptViewController_representableAdapter];
  *(v5 + 6) = 0;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *v5 = 0u;
  *&v2[OBJC_IVAR____TtC7Journal24TranscriptViewController_transcriptTimer] = 0;
  v6 = OBJC_IVAR____TtC7Journal24TranscriptViewController_activeSegment;
  v7 = type metadata accessor for TranscriptViewModelSegment();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = &v2[OBJC_IVAR____TtC7Journal24TranscriptViewController_previousParagraphRange];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v2[OBJC_IVAR____TtC7Journal24TranscriptViewController_model] = a1;
  swift_getKeyPath();
  v11 = a1;
  sub_1001937E4();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *&v2[OBJC_IVAR____TtC7Journal24TranscriptViewController_audioController] = *(a1 + 56);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TranscriptViewController();
  swift_unknownObjectRetain();
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

unint64_t sub_100599E7C()
{
  result = qword_100AE9D20;
  if (!qword_100AE9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9D20);
  }

  return result;
}

uint64_t sub_100599ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE9D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100599F48(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = *(type metadata accessor for TranscriptViewModelSegment() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100597150(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t sub_10059A00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE9D28);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059A0EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100599960(a1, v4, v5, v6, v7, v8);
}

void sub_10059A1B4()
{
  v1 = OBJC_IVAR____TtC7Journal24TranscriptViewController_selectionFeedbackGenerator;
  *(v0 + v1) = [objc_allocWithZone(UIImpactFeedbackGenerator) init];
  *(v0 + OBJC_IVAR____TtC7Journal24TranscriptViewController_playbackTime) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal24TranscriptViewController_hapticImpactIntensityForSelectionChange) = 0x3FE0000000000000;
  v2 = v0 + OBJC_IVAR____TtC7Journal24TranscriptViewController_representableAdapter;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v0 + OBJC_IVAR____TtC7Journal24TranscriptViewController_transcriptTimer) = 0;
  v3 = OBJC_IVAR____TtC7Journal24TranscriptViewController_activeSegment;
  v4 = type metadata accessor for TranscriptViewModelSegment();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtC7Journal24TranscriptViewController_previousParagraphRange;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10059A304()
{
  v1 = sub_1000F24EC(&qword_100AD2A70);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2];
  v4 = type metadata accessor for PodcastAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata))
  {

    sub_10025C244(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_1000F24EC(&qword_100AD38F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940050;
      *(inited + 32) = PodcastAssetMetadata.title.getter();
      *(inited + 40) = v9;
      *(inited + 48) = PodcastAssetMetadata.author.getter();
      *(inited + 56) = v10;
      sub_10009BB20(8236, 0xE200000000000000, inited);
      v12 = v11;
      swift_setDeallocating();
      sub_1000F24EC(&unk_100AE4870);
      swift_arrayDestroy();
      (*(v5 + 8))(v7, v4);
      return v12;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_100004F84(v3, &qword_100AD2A70);
  return 0;
}

id sub_10059A574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10059A610()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v54[1] = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v55 = v54 - v5;
  v6 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v6 - 8);
  v8 = v54 - v7;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AD2A70);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = type metadata accessor for PodcastAssetMetadata();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = v0;
  sub_1006AC594(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100004F84(v15, &qword_100AD2A70);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    static UTType.audiovisualContent.getter();
    v21 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v20 = [v21 initWithContentType:isa];

    (*(v10 + 8))(v12, v9);
    PodcastAssetMetadata.title.getter();
    if (v23)
    {
      v24 = String._bridgeToObjectiveC()();
    }

    else
    {
      v24 = 0;
    }

    [v20 setDisplayName:v24];

    PodcastAssetMetadata.mediaURL.getter();
    v25 = type metadata accessor for URL();
    v26 = *(v25 - 8);
    v28 = 0;
    if ((*(v26 + 48))(v8, 1, v25) != 1)
    {
      URL._bridgeToObjectiveC()(v27);
      v28 = v29;
      (*(v26 + 8))(v8, v25);
    }

    [v20 setThumbnailURL:v28];

    PodcastAssetMetadata.author.getter();
    if (v30)
    {
      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    v32 = v55;
    [v20 setContentDescription:v31];

    v33 = PodcastAssetMetadata.author.getter();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      sub_1000F24EC(&unk_100AD9A60);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100940080;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v38 = Array._bridgeToObjectiveC()().super.isa;

      [v20 setAuthorNames:v38];
    }

    v39 = *(v54[0] + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v39 && (v40 = [v39 entry]) != 0)
    {
      v41 = v40;
      JournalEntryMO.displayDate.getter();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = type metadata accessor for Date();
    (*(*(v43 - 8) + 56))(v32, v42, 1, v43);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    v45 = v32;
    v47 = v46;
    sub_1000F24EC(&unk_100AD9A60);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100940080;
    v49 = sub_10012C00C(v44, v47, v45);
    v51 = v50;

    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    v52 = Array._bridgeToObjectiveC()().super.isa;

    [v20 setAlternateNames:v52];

    sub_100004F84(v45, &unk_100AD4790);
    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

uint64_t sub_10059AD54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIImage *sub_10059AD98(double a1)
{
  [v1 size];
  v4 = v3;
  [v17 scale];
  v6 = v4 * v5;
  [v17 size];
  v8 = v7;
  [v17 scale];
  v10 = v8 * v9;
  if (v6 * v10 > a1)
  {
    v11 = sqrt(a1 / (v6 * v10));
    v12 = v6 * v11;
    v13 = v10 * v11;
    v14 = objc_autoreleasePoolPush();
    v19.width = v12;
    v19.height = v13;
    UIGraphicsBeginImageContextWithOptions(v19, 0, 1.0);
    [v17 drawInRect:{0.0, 0.0, v12, v13}];
    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    objc_autoreleasePoolPop(v14);
    if (v15)
    {
      return v15;
    }
  }

  return v17;
}

uint64_t sub_10059AEC4(uint64_t a1, double a2)
{
  *(v3 + 160) = v2;
  *(v3 + 152) = a2;
  v5 = type metadata accessor for OSSignpostID();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 - 8);
  *(v3 + 216) = swift_task_alloc();
  v7 = type metadata accessor for OSSignposter();
  *(v3 + 224) = v7;
  *(v3 + 232) = *(v7 - 8);
  *(v3 + 240) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v3 + 248) = v8;
  *(v3 + 256) = v10;

  return _swift_task_switch(sub_10059B088, v8, v10);
}

uint64_t sub_10059B088()
{
  if (qword_100AD0000 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = sub_10000617C(v3, qword_100AE9DC0);
  (*(v2 + 16))(v1, v4, v3);
  OSSignposter.init(logger:)();
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "createThumbnail", "", v7, 2u);
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 160);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 264) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  [v13 size];
  v14 = *(v0 + 152);
  v17 = v16 < v15;
  v18 = v16 / v15 * v14;
  v19 = v15 / v16 * v14;
  if (v17)
  {
    v20 = *(v0 + 152);
  }

  else
  {
    v20 = v18;
  }

  if (v17)
  {
    v21 = v19;
  }

  else
  {
    v21 = *(v0 + 152);
  }

  v22 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10059B350;
  v23 = swift_continuation_init();
  *(v0 + 136) = sub_1000F24EC(&qword_100AE9DD8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1004A75BC;
  *(v0 + 104) = &unk_100A74150;
  *(v0 + 112) = v23;
  [v22 prepareThumbnailOfSize:v0 + 80 completionHandler:{v21, v20}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10059B350()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_10059B458, v2, v1);
}

uint64_t sub_10059B458()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[18];
  sub_10059B824(v1, "createThumbnail", 15, 2);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10059B53C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE9DC0);
  v1 = sub_10000617C(v0, qword_100AE9DC0);
  if (qword_100AD01C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

UIImage *sub_10059B604(void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (![a1 imageOrientation] || (objc_msgSend(a1, "size"), UIGraphicsBeginImageContext(v5), objc_msgSend(a1, "drawAtPoint:", 0.0, 0.0), v3 = UIGraphicsGetImageFromCurrentImageContext(), UIGraphicsEndImageContext(), !v3))
  {
    v3 = a1;
  }

  sub_10059B6AC(Current);
  return v3;
}

void sub_10059B6AC(double a1)
{
  if (qword_100AD0000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE9DC0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008458(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    *(v4 + 14) = CFAbsoluteTimeGetCurrent() - a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s.fixImageOrientationIfNeeded took %f seconds", v4, 0x16u);
    sub_10000BA7C(v5);
  }
}

uint64_t sub_10059B824(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10059BAC0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v45 = v3;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  TTRInfo.alertTitle.getter();
  TTRInfo.alertMessage.getter();
  v43 = TTRInfo.radarTitle.getter();
  v11 = v10;
  v42 = TTRInfo.errorDescription.getter();
  v13 = v12;
  TTRInfo.classification.getter();
  if (static Runtime.isInternalBuild.getter())
  {
    if (byte_100AE9DE0)
    {

      if (v47)
      {
        v47(v14);
      }
    }

    else
    {
      type metadata accessor for JurassicAlertController();
      v15 = String._bridgeToObjectiveC()();

      v16 = String._bridgeToObjectiveC()();

      v40 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

      v41 = v9;
      v18 = v48;
      v17 = v49;
      (*(v48 + 16))(v6, v41, v49);
      v19 = (*(v18 + 80) + 48) & ~*(v18 + 80);
      v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v22 = v42;
      *(v21 + 2) = v43;
      *(v21 + 3) = v11;
      *(v21 + 4) = v22;
      *(v21 + 5) = v13;
      (*(v18 + 32))(&v21[v19], v6, v17);
      v23 = &v21[v20];
      v24 = v46;
      v25 = v47;
      *v23 = v47;
      *(v23 + 1) = v24;
      v26 = ObjectType;
      *&v21[(v20 + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
      sub_100021E80(v25);
      v27 = String._bridgeToObjectiveC()();
      v54 = sub_100420C54;
      v55 = v21;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10016B4D8;
      v53 = &unk_100A741F0;
      v28 = _Block_copy(&aBlock);

      v29 = objc_opt_self();
      v30 = [v29 actionWithTitle:v27 style:0 handler:v28];
      _Block_release(v28);

      v31 = [objc_opt_self() mainBundle];
      v56._object = 0x80000001008E0EF0;
      v32._countAndFlagsBits = 0x6C65636E6143;
      v32._object = 0xE600000000000000;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v56._countAndFlagsBits = 0xD00000000000001BLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v56);

      v34 = swift_allocObject();
      *(v34 + 2) = v25;
      *(v34 + 3) = v24;
      *(v34 + 4) = v26;
      sub_100021E80(v25);
      v35 = String._bridgeToObjectiveC()();

      v54 = sub_10059C9CC;
      v55 = v34;
      v9 = v41;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10016B4D8;
      v53 = &unk_100A74240;
      v36 = _Block_copy(&aBlock);

      v37 = [v29 actionWithTitle:v35 style:1 handler:v36];
      _Block_release(v36);

      v38 = v40;
      [v40 addAction:v37];
      [v38 addAction:v30];
      byte_100AE9DE0 = 1;
      [v45 presentViewController:v38 animated:1 completion:0];
    }
  }

  else
  {
  }

  return (*(v48 + 8))(v9, v49);
}

uint64_t sub_10059C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8)
{
  v37 = a7;
  v38 = a8;
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for TapToRadarUtilities.RadarComponent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v36 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v34 - v22;
  type metadata accessor for TapToRadarUtilities();
  static TapToRadarUtilities.RadarComponent.journaliOS.getter();
  static TapToRadarUtilities.generateTapToRadarURL(for:title:description:classification:attachments:)();
  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    result = sub_1001616C0(v17);
  }

  else
  {
    v43 = *(v19 + 32);
    v25 = v23;
    v35 = v23;
    v43(v23, v17, v18);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = v36;
    (*(v19 + 16))(v36, v25, v18);
    type metadata accessor for MainActor();
    v42 = v10;
    v28 = v37;
    v29 = v38;
    sub_100021E80(v37);
    v30 = static MainActor.shared.getter();
    v31 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = &protocol witness table for MainActor;
    v43((v32 + v31), v27, v18);
    v33 = (v32 + ((v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v28;
    v33[1] = v29;
    sub_1003E9628(0, 0, v42, &unk_10095E7C0, v32);

    result = (*(v19 + 8))(v35, v18);
  }

  byte_100AE9DE0 = 0;
  return result;
}

uint64_t sub_10059C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  type metadata accessor for MainActor();
  v6[22] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[23] = v8;
  v6[24] = v7;

  return _swift_task_switch(sub_10059C498, v8, v7);
}

uint64_t sub_10059C498()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[25] = v1;
  if (v1)
  {
    v3 = v1;
    URL._bridgeToObjectiveC()(v2);
    v5 = v4;
    v0[26] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10059C5FC;
    v6 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&qword_100AE9DE8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1008B4E00;
    v0[13] = &unk_100A741A0;
    v0[14] = v6;
    [v3 openURL:v5 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10059C5FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_10059C7C0;
  }

  else
  {
    v5 = sub_10059C72C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10059C72C()
{
  v2 = v0[25];
  v1 = v0[26];

  v4 = v0[20];
  if (v4)
  {
    v4(v3);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10059C7C0()
{
  v1 = v0[26];
  v2 = v0[25];

  swift_willThrow();

  v3 = v0[20];
  if (v3)
  {
    v3();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10059C864(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    result = a2();
  }

  byte_100AE9DE0 = 0;
  return result;
}

uint64_t sub_10059C89C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032ECC;

  return sub_10059C3FC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10059C9CC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    result = v1();
  }

  byte_100AE9DE0 = 0;
  return result;
}

id sub_10059CA0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  if (a4)
  {
LABEL_3:
    v9 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  type metadata accessor for JurassicAlertController();
  v11 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v10 message:v9 preferredStyle:1];

  v12 = qword_100AD0428;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;

  v15 = String._bridgeToObjectiveC()();
  v19[4] = sub_100028ECC;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10016B4D8;
  v19[3] = &unk_100A74290;
  v16 = _Block_copy(v19);

  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v13 addAction:v17];
  [v6 presentViewController:v13 animated:1 completion:0];

  return v13;
}

uint64_t sub_10059CC18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_10059CC94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003D9780(v1, v2);
}

id sub_10059CCD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;
  v5 = *(v3 + 40);
  *(a2 + 8) = v5;
  return sub_1003DC800(v4, v5);
}

uint64_t sub_10059CD58()
{
  swift_getKeyPath();
  sub_1005A54CC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10059CDFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_10059CE90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_10059CF24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_10059CF6C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE9DF0);
  v1 = sub_10000617C(v0, qword_100AE9DF0);
  if (qword_100AD0280 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30220);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10059D070(unint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 == 1)
    {
      Hasher._combine(_:)(5uLL);
      String.hash(into:)();
    }

    else
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = (a1 | a2) != 0;
      }

      Hasher._combine(_:)(v6);
    }
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    sub_1003D92B0(a1);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_10059D17C()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = *(v0 + 8);
    if (*(v0 + 16) == 1)
    {
      Hasher._combine(_:)(5uLL);

      String.hash(into:)();
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v3 = 4;
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = (v1 | v2) != 0;
      }

      Hasher._combine(_:)(v3);
    }
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    sub_1003D92B0(v1);
    String.hash(into:)();
  }
}

Swift::Int sub_10059D28C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 == 1)
    {
      Hasher._combine(_:)(5uLL);
      String.hash(into:)();
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      Hasher._combine(_:)(v4);
    }
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    sub_1003D92B0(v1);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_10059D4C4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v46 - v6;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v51 = sub_1005A5C10;
  v52 = v10;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100029CCC;
  v50 = &unk_100A74640;
  v12 = _Block_copy(&aBlock);

  v13 = [v11 initWithSectionProvider:v12];
  _Block_release(v12);

  v14 = [objc_allocWithZone(UICollectionView) initWithFrame:v13 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [v0 setCollectionView:v14];
  v15 = [v0 collectionView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  [v15 setDelegate:v0];

  v17 = [v0 collectionView];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 setAllowsMultipleSelection:1];

  v19 = [v0 collectionView];
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  v21 = [objc_opt_self() systemBackgroundColor];
  [v20 setBackgroundColor:v21];

  v22 = [v0 collectionView];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [v0 collectionView];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v46[0] = v4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v26 = String._bridgeToObjectiveC()();

  [v25 setAccessibilityLabel:v26];

  v27 = [v0 collectionView];
  if (!v27)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  [v27 setKeyboardDismissMode:1];

  sub_10059E610();
  v29 = *&v1[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel];
  swift_getKeyPath();
  aBlock = v29;
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v29 + 40))
  {
LABEL_12:
    swift_getKeyPath();
    aBlock = v29;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = *(v29 + 56);
    if (!v37)
    {
LABEL_17:
      sub_10059E12C();
      return;
    }

    v38 = *(v29 + 48);

    v39 = [v1 collectionView];
    if (v39)
    {
      v40 = v39;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v41 = aBlock;
      aBlock = v38;
      v48 = v37;
      LOBYTE(v49) = 1;
      v42 = v46[0];
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      v43 = type metadata accessor for IndexPath();
      v44 = *(v43 - 8);
      isa = 0;
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v44 + 8))(v42, v43);
      }

      [v40 selectItemAtIndexPath:isa animated:1 scrollPosition:0];

      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v30 = *(v29 + 32);
  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v33 = aBlock;
    aBlock = v30;
    v48 = 0;
    LOBYTE(v49) = 0;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    v34 = type metadata accessor for IndexPath();
    v35 = *(v34 - 8);
    v36 = 0;
    if ((*(v35 + 48))(v7, 1, v34) != 1)
    {
      v36 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v35 + 8))(v7, v34);
    }

    [v32 selectItemAtIndexPath:v36 animated:1 scrollPosition:0];

    goto LABEL_12;
  }

LABEL_25:
  __break(1u);
}

void sub_10059DD24(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustomizeJournalViewController();
  v21.receiver = v2;
  v21.super_class = v11;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v12 = v19;
  v19 = xmmword_1009520F0;
  v20 = 2;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &unk_100ADFB90);
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = [v2 collectionView];
  if (v13)
  {
    v14 = v13;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [v14 cellForItemAtIndexPath:isa];

    if (v16)
    {
      v17 = [v16 contentView];
      type metadata accessor for TextFieldContentView();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        [*(v18 + OBJC_IVAR____TtC7Journal20TextFieldContentView_textField) becomeFirstResponder];

        (*(v8 + 8))(v10, v7);
        return;
      }
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_10059E12C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    sub_10035FF58(v0, "didTapCancel");
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    static UIViewController.ViewLoading.subscript.setter();
    v4 = sub_10036032C(v3, "didTapDone");
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v4;
    v5 = v3;
    static UIViewController.ViewLoading.subscript.setter();
    sub_1000F24EC(&unk_100AD4780);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100941830;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 flexibleSpaceItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v6 + 40) = v19;
    v8 = _UISolariumEnabled();
    v9 = 5.0;
    if (v8)
    {
      v9 = 0.0;
    }

    v10 = [v7 fixedSpaceItemOfWidth:v9];
    [v10 _setPrefersNoPlatter:1];
    *(v6 + 48) = v10;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v6 + 56) = v19;
    sub_1000065A8(0, &qword_100AD43B0);
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setToolbarItems:v11.super.isa];
  }

  else
  {
    v12 = objc_allocWithZone(UIBarButtonItem);
    v13 = v0;
    [v12 initWithBarButtonSystemItem:1 target:v13 action:"didTapCancel"];
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    static UIViewController.ViewLoading.subscript.setter();
    v15 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v14 action:"didTapDone"];

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v15;
    v16 = v14;
    static UIViewController.ViewLoading.subscript.setter();
    v17 = [v16 navigationItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v17 setLeftBarButtonItem:v19];

    v18 = [v16 navigationItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v11.super.isa = v19;
    [v18 setRightBarButtonItem:v19];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v19 setEnabled:0];
}

id sub_10059E610()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE9F28);
  v3 = *(v2 - 8);
  v83 = v2;
  v84 = v3;
  __chkstk_darwin(v2);
  v77 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v4;
  __chkstk_darwin(v5);
  v86 = &v62 - v6;
  v69 = sub_1000F24EC(&qword_100AE9F30);
  v85 = *(v69 - 8);
  __chkstk_darwin(v69);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v7;
  __chkstk_darwin(v8);
  v87 = &v62 - v9;
  v10 = sub_1000F24EC(&qword_100AE9F38);
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v74 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v11;
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = sub_1000F24EC(&unk_100AE9F40);
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = v78[8];
  __chkstk_darwin(v15);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v72 = &v62 - v18;
  __chkstk_darwin(v19);
  v71 = &v62 - v20;
  __chkstk_darwin(v21);
  v23 = &v62 - v22;
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  __chkstk_darwin(v27);
  v29 = &v62 - v28;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100ADE560);
  v76 = v29;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AD4D40);
  v80 = v14;
  UICollectionView.CellRegistration.init(handler:)();
  v30 = *&v1[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel];
  swift_retain_n();
  UICollectionView.CellRegistration.init(handler:)();

  v70 = v26;
  UICollectionView.CellRegistration.init(handler:)();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v1;
  v32 = v1;
  v33 = v23;
  UICollectionView.CellRegistration.init(handler:)();
  v34 = v86;
  UICollectionView.CellRegistration.init(handler:)();
  v65 = v32;
  result = [v32 collectionView];
  v64 = result;
  if (result)
  {
    v36 = v79;
    v37 = v78;
    v38 = v78[2];
    v38(v71, v76, v79);
    v39 = v81;
    (*(v81 + 16))(v74, v80, v82);
    v40 = v85;
    v41 = v69;
    (*(v85 + 16))(v75, v87, v69);
    v38(v72, v70, v36);
    v63 = v33;
    v38(v73, v33, v36);
    v42 = v84;
    (*(v84 + 16))(v77, v34, v83);
    v43 = *(v37 + 80);
    v44 = (v43 + 16) & ~v43;
    v45 = (v16 + *(v39 + 80) + v44) & ~*(v39 + 80);
    v46 = v16;
    v47 = (v66 + *(v40 + 80) + v45) & ~*(v40 + 80);
    v48 = (v67 + v43 + v47) & ~v43;
    v66 = (v46 + v43 + v48) & ~v43;
    v67 = (v46 + *(v42 + 80) + v66) & ~*(v42 + 80);
    v49 = swift_allocObject();
    v50 = v41;
    v51 = v37[4];
    v52 = v49 + v44;
    v53 = v79;
    v51(v52, v71, v79);
    v54 = v82;
    (*(v39 + 32))(v49 + v45, v74, v82);
    v55 = v85;
    (*(v85 + 32))(v49 + v47, v75, v50);
    v51(v49 + v48, v72, v53);
    v51(v49 + v66, v73, v53);
    v56 = v83;
    v57 = v84;
    (*(v84 + 32))(v49 + v67, v77, v83);
    v58 = objc_allocWithZone(sub_1000F24EC(&unk_100AD4D10));
    v59 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v88 = v59;
    v60 = v65;
    static UIViewController.ViewLoading.subscript.setter();
    sub_1005A20D4();
    (*(v57 + 8))(v86, v56);
    v61 = v78[1];
    v61(v63, v53);
    v61(v70, v53);
    (*(v55 + 8))(v87, v50);
    (*(v81 + 8))(v80, v54);
    return (v61)(v76, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10059EEFC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UICollectionViewCell.configurationUpdateHandler.setter();

    [a1 setIsAccessibilityElement:1];
    [a1 setAccessibilityContainerType:0];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_1005A5AC0;
    v13 = v4;
    aBlock = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_10059F4F8;
    v11 = &unk_100A745A0;
    v5 = _Block_copy(&aBlock);

    [a1 setAccessibilityLabelBlock:v5];
    _Block_release(v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_1005A5AE4;
    v13 = v6;
    aBlock = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_10059F4F8;
    v11 = &unk_100A745C8;
    v7 = _Block_copy(&aBlock);

    [a1 setAccessibilityValueBlock:v7];
    _Block_release(v7);
  }
}

void sub_10059F128()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel);
    v2 = Strong;

    swift_getKeyPath();
    sub_1005A54CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    sub_1003DC800(v3, v4);

    v5 = sub_1003D8C30(v3, v4);
    sub_1003DC814(v3, v4);
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel);
    v8 = v6;

    swift_getKeyPath();
    sub_1005A54CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v7 + 48);
    v10 = *(v7 + 56);

    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {

    v11 = 0;
    v10 = 0;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel);
    v14 = v12;

    swift_getKeyPath();
    sub_1005A54CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v13 + 64);
    v16 = *(v13 + 72);
  }

  else
  {

    v15 = 0;
    v16 = 0;
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = *(v17 + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel);
  v19 = v17;

  swift_getKeyPath();
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v18 + 32);
  v21 = *(v18 + 40);
  sub_1003DC800(v20, *(v18 + 40));

  if (!v21)
  {
    v23 = sub_1003D8ED4();
    v25 = v26;

    goto LABEL_18;
  }

  if (v21 != 1)
  {
LABEL_17:

    v23 = 0;
    v25 = 0;
    goto LABEL_18;
  }

  v22 = [v20 accessibilityName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  sub_1003DC814(v20, 1);

LABEL_18:
  sub_1005A5B08();
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = v11;
  v28[4] = v10;
  v28[5] = v15;
  v28[6] = v16;
  v28[7] = v23;
  v28[8] = v25;

  v27 = v5;

  UICollectionViewCell.contentConfiguration.setter();
}

id sub_10059F4F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *sub_10059F57C(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result contentView];

    v6 = [v5 *a2];
    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10059F638()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v7[0] = 1;
    v7[144] = 1;
    v7[136] = 1;
    v7[128] = 1;
    *&v9 = 0;
    v8 = 0uLL;
    BYTE8(v9) = 1;
    v10 = 0u;
    v11 = 0u;
    *&v12 = 0;
    BYTE8(v12) = 1;
    *&v13 = 0;
    BYTE8(v13) = 1;
    memset(v14, 0, 24);
    v14[24] = 1;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    v4 = v13;
    *(v3 + 80) = v12;
    *(v3 + 96) = v4;
    *(v3 + 112) = *v14;
    *(v3 + 121) = *&v14[9];
    v5 = v9;
    *(v3 + 16) = v8;
    *(v3 + 32) = v5;
    v6 = v11;
    *(v3 + 48) = v10;
    *(v3 + 64) = v6;
    *(v3 + 144) = v2;
    sub_1005A59AC(&v8, v7);

    UICollectionViewCell.configurationUpdateHandler.setter();

    sub_1005A5A08(&v8);
  }
}

uint64_t sub_10059F78C(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = a1;
  v4 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v4 - 8);
  v52 = &v43 - v5;
  v53 = type metadata accessor for UIBackgroundConfiguration();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v93 = *a3;
  v88[0] = *(a3 + 25);
  *(v88 + 3) = *(a3 + 28);
  v86[0] = *(a3 + 73);
  *(v86 + 3) = *(a3 + 76);
  v84[0] = *(a3 + 89);
  *(v84 + 3) = *(a3 + 92);
  v83 = *(a3 + 120);
  sub_1005A59AC(a3, v66);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v49 = String.init(localized:table:bundle:locale:comment:)();
  v55 = v9;
  sub_100004F84(&v93, &unk_100AE4870);
  v89 = 0;
  v87 = 0;
  v10 = UICellConfigurationState.traitCollection.getter();
  v11 = [v10 userInterfaceIdiom];

  v92 = *(a3 + 96);
  v85 = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = [Strong traitCollection], v13, v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15 == 5))
  {
    v16 = UIContentSizeCategoryLarge;
    v17 = UIContentSizeCategoryLarge;
  }

  else
  {
    v16 = 0;
  }

  sub_100004F84(&v92, &qword_100AE9F68);
  v91 = *(a3 + 32);
  v90 = *(a3 + 104);
  v18 = sub_100047788(UIFontTextStyleTitle3, &off_100A5A790, 0);
  sub_100047D60(&unk_100A5A7B0);
  sub_100004F84(&v90, &qword_100AE9F70);
  v83 = 0;
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel);
    v21 = v19;

    swift_getKeyPath();
    v66[0] = v20;
    sub_1005A54CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v20 + 16);
    v23 = *(v20 + 24);

    sub_100004F84(&v91, &unk_100AE4870);
  }

  else
  {
    sub_100004F84(&v91, &unk_100AE4870);
    v22 = 0;
    v23 = 0;
  }

  if (v11 == 5)
  {
    v24 = 0x4045000000000000;
  }

  else
  {
    v24 = 0x404B800000000000;
  }

  v47 = v24;
  v25 = *(a3 + 48);
  v26 = swift_allocObject();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  v46 = v26;
  swift_unknownObjectWeakInit();

  sub_100004DF8(v25);
  v28 = v49;
  *&v59 = v49;
  *(&v59 + 1) = v55;
  *&v60 = 1;
  BYTE8(v60) = v89;
  *(&v60 + 9) = v88[0];
  HIDWORD(v60) = *(v88 + 3);
  *&v61 = v22;
  *(&v61 + 1) = v23;
  v48 = v23;
  v44 = v18;
  v45 = sub_1005A5A5C;
  *&v62 = sub_1005A5A5C;
  *(&v62 + 1) = v26;
  *&v63 = 1;
  BYTE8(v63) = v87;
  HIDWORD(v63) = *(v86 + 3);
  *(&v63 + 9) = v86[0];
  *&v64 = v24;
  BYTE8(v64) = v85;
  *(&v64 + 9) = v84[0];
  HIDWORD(v64) = *(v84 + 3);
  *&v65[0] = v16;
  *(&v65[0] + 1) = v18;
  *&v65[1] = 128;
  BYTE8(v65[1]) = v83;
  v57 = &type metadata for TextFieldContentConfiguration;
  v58 = sub_1005A5A64();
  v29 = swift_allocObject();
  v56 = v29;
  v30 = v64;
  v29[5] = v63;
  v29[6] = v30;
  v29[7] = v65[0];
  *(v29 + 121) = *(v65 + 9);
  v31 = v60;
  v29[1] = v59;
  v29[2] = v31;
  v32 = v62;
  v29[3] = v61;
  v29[4] = v32;
  sub_1005A59AC(&v59, v66);
  v33 = v22;
  v34 = v28;
  v35 = v54;
  UICollectionViewCell.contentConfiguration.setter();
  v36 = v50;
  static UIBackgroundConfiguration.listCell()();
  v37 = [objc_opt_self() secondarySystemBackgroundColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v38 = v16;
  v40 = v51;
  v39 = v52;
  v41 = v53;
  (*(v51 + 16))(v52, v36, v53);
  (*(v40 + 56))(v39, 0, 1, v41);
  UICollectionViewCell.backgroundConfiguration.setter();
  [v35 setIsAccessibilityElement:0];
  [v35 setAccessibilityContainerType:0];
  (*(v40 + 8))(v36, v41);
  v66[0] = v34;
  v66[1] = v55;
  v66[2] = 1;
  v67 = v89;
  *v68 = v88[0];
  *&v68[3] = *(v88 + 3);
  v69 = v33;
  v70 = v48;
  v71 = v45;
  v72 = v46;
  v73 = 1;
  v74 = v87;
  *v75 = v86[0];
  *&v75[3] = *(v86 + 3);
  v76 = v47;
  v77 = v85;
  *&v78[3] = *(v84 + 3);
  *v78 = v84[0];
  v79 = v38;
  v80 = v44;
  v81 = 128;
  v82 = v83;
  return sub_1005A5A08(v66);
}

uint64_t sub_10059FEEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;

    if (a2)
    {
      v6 = a2;
    }

    else
    {
      a1 = 0;
      v6 = 0xE000000000000000;
    }

    sub_1003D9780(a1, v6);
  }

  return result;
}

uint64_t sub_10059FF90(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a4;

  return UICollectionViewCell.configurationUpdateHandler.setter();
}

uint64_t sub_1005A0004(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v44 = a4;
  v6 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_1000F24EC(&qword_100AE2A30);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v45 = type metadata accessor for UIBackgroundConfiguration();
  v12 = *(v45 - 8);
  __chkstk_darwin(v45);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  v46 = a3;
  sub_1003D92B0(a3);
  AssetCatalogColor.init(rawValue:)();
  v15 = type metadata accessor for AssetCatalogColor();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    sub_100004F84(v11, &qword_100AE2A30);
    v17 = 0;
  }

  else
  {
    AssetCatalogColor.rawValue.getter();
    v18 = String._bridgeToObjectiveC()();

    v17 = [objc_opt_self() colorNamed:v18];

    (*(v16 + 8))(v11, v15);
  }

  v19 = v17;
  UIBackgroundConfiguration.backgroundColor.setter();
  v20 = UICellConfigurationState.traitCollection.getter();
  [v20 userInterfaceIdiom];

  UIBackgroundConfiguration.cornerRadius.setter();
  if (UICellConfigurationState.isSelected.getter())
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  v24 = v44;
  v47 = v44;
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v24 + 40))
  {
    v39 = sub_1003D92B0(*(v44 + 32));
    v41 = v40;
    if (v39 == sub_1003D92B0(v46) && v41 == v42)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_5:
    v21 = UICellConfigurationState.traitCollection.getter();
    v22 = [v21 userInterfaceStyle];

    if (v22 == 2)
    {
      if (qword_100AD0018 != -1)
      {
        swift_once();
      }

      v23 = &qword_100B2FC00;
    }

    else
    {
      if (qword_100AD0010 != -1)
      {
        swift_once();
      }

      v23 = &qword_100B2FBF8;
    }

    v29 = *v23;
    UIBackgroundConfiguration.strokeColor.setter();
    UIBackgroundConfiguration.strokeWidth.setter();
    UIBackgroundConfiguration.strokeOutset.setter();
    v30 = UIAccessibilityTraitSelected;
    v31 = [a1 accessibilityTraits];
    if ((v30 & ~v31) != 0)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    v28 = v32 | v31;
    goto LABEL_20;
  }

LABEL_10:
  v25 = UIAccessibilityTraitSelected;
  v26 = [a1 accessibilityTraits];
  v27 = -1;
  if ((v26 & v25) != 0)
  {
    v27 = ~v25;
  }

  v28 = v27 & v26;
LABEL_20:
  [a1 setAccessibilityTraits:{v28, v44}];
  v33 = v45;
  (*(v12 + 16))(v8, v14, v45);
  (*(v12 + 56))(v8, 0, 1, v33);
  UICollectionViewCell.backgroundConfiguration.setter();
  [a1 setIsAccessibilityElement:1];
  [a1 setAccessibilityContainerType:0];
  sub_1003D8ED4();
  v34 = String._bridgeToObjectiveC()();

  [a1 setAccessibilityLabel:v34];

  v35 = UIAccessibilityTraitButton;
  v36 = [a1 accessibilityTraits];
  if ((v35 & ~v36) != 0)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  [a1 setAccessibilityTraits:v37 | v36];

  return (*(v12 + 8))(v14, v33);
}

uint64_t sub_1005A0594(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v38 = type metadata accessor for UIBackgroundConfiguration();
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v36) = UICellConfigurationState.isSelected.getter();
  static UIBackgroundConfiguration.clear()();
  v14 = UICellConfigurationState.traitCollection.getter();
  [v14 userInterfaceIdiom];

  UIBackgroundConfiguration.cornerRadius.setter();
  swift_getKeyPath();
  v39 = a3;
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a3 + 40) == 1)
  {
    v15 = *(a3 + 32);
    sub_1003DC800(v15, 1);
    sub_1003DC800(v15, 1);
    v16 = v15;
    UIBackgroundConfiguration.backgroundColor.setter();
    v17 = UICellConfigurationState.traitCollection.getter();
    v18 = [v17 userInterfaceStyle];

    if (v18 == 2)
    {
      if (qword_100AD0018 != -1)
      {
        swift_once();
      }

      v19 = &qword_100B2FC00;
    }

    else
    {
      if (qword_100AD0010 != -1)
      {
        swift_once();
      }

      v19 = &qword_100B2FBF8;
    }

    v23 = *v19;
    UIBackgroundConfiguration.strokeColor.setter();
    UIBackgroundConfiguration.strokeWidth.setter();
    UIBackgroundConfiguration.strokeOutset.setter();
    v24 = UIAccessibilityTraitSelected;
    v25 = [a1 accessibilityTraits];
    if ((v24 & ~v25) != 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    [a1 setAccessibilityTraits:v26 | v25];
    v27 = [v16 accessibilityName];
    sub_1003DC814(v15, 1);
    if (!v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();
    }

    [a1 setAccessibilityValue:v27];
  }

  else
  {
    v20 = UIAccessibilityTraitSelected;
    v21 = [a1 accessibilityTraits];
    v22 = -1;
    if ((v21 & v20) != 0)
    {
      v22 = ~v20;
    }

    [a1 setAccessibilityTraits:v22 & v21];
    [a1 setAccessibilityValue:0];
    v15 = 0;
  }

  v41 = &type metadata for CustomJournalColorPickerContentConfiguration;
  v42 = sub_1004FA1F8();
  v39 = v15;
  v40 = v36 & 1;
  v36 = v15;
  UICollectionViewCell.contentConfiguration.setter();
  v28 = v38;
  (*(v11 + 16))(v10, v13, v38);
  (*(v11 + 56))(v10, 0, 1, v28);
  UICollectionViewCell.backgroundConfiguration.setter();
  [a1 setIsAccessibilityElement:1];
  [a1 setAccessibilityContainerType:0];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v29 = String._bridgeToObjectiveC()();

  [a1 setAccessibilityLabel:v29];

  v30 = UIAccessibilityTraitButton;
  v31 = [a1 accessibilityTraits];
  if ((v30 & ~v31) != 0)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  [a1 setAccessibilityTraits:v32 | v31];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v33 = String._bridgeToObjectiveC()();

  [a1 setAccessibilityHint:v33];

  return (*(v11 + 8))(v13, v28);
}

void sub_1005A0BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a3 + 16) == 2)
  {
    if (*(a3 + 8))
    {
      v5 = 0;
    }

    else
    {
      v5 = *a3 == 3;
    }

    if (v5)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a4;
      *(v8 + 24) = a5;

      v9 = a5;
      UICollectionViewCell.configurationUpdateHandler.setter();
    }
  }
}

uint64_t sub_1005A0C3C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v59 = a4;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v12 - 8);
  v60 = &v56 - v13;
  v14 = type metadata accessor for UIBackgroundConfiguration();
  v66 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = a2;
  v68 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = UICellConfigurationState.isSelected.getter();
  v62 = v9;
  v63 = v14;
  v57 = a1;
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    swift_getKeyPath();
    v69 = a3;
    sub_1005A54CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(a3 + 72) != 0;
  }

  v18 = objc_opt_self();
  v19 = [v18 secondaryLabelColor];
  swift_getKeyPath();
  v69 = a3;
  v20 = sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(a3 + 72);
  v64 = *(a3 + 64);
  swift_bridgeObjectRetain_n();
  v22 = UICellConfigurationState.isSelected.getter();
  LODWORD(v65) = v17;
  v56 = v20;
  if (v17)
  {
    swift_getKeyPath();
    v69 = a3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(a3 + 32);
    v24 = *(a3 + 40);
    sub_1003DC800(v23, v24);
    v25 = sub_1003D8C30(v23, v24);

    sub_1003DC814(v23, v24);
  }

  else
  {
    v25 = [v18 secondaryLabelColor];
  }

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = &type metadata for CustomJournalEmojiIconContentConfiguration;
  v71 = sub_1005A5938();
  v28 = swift_allocObject();
  v69 = v28;
  *(v28 + 16) = v64;
  *(v28 + 24) = v21;
  *(v28 + 32) = v22 & 1;
  *(v28 + 40) = v25;
  *(v28 + 48) = sub_1005A5928;
  *(v28 + 56) = v26;
  *(v28 + 64) = sub_1005A5930;
  *(v28 + 72) = v27;

  v59 = v25;

  v58 = v27;

  v29 = v57;
  UICollectionViewCell.contentConfiguration.setter();
  static UIBackgroundConfiguration.clear()();
  if (v65)
  {
    swift_getKeyPath();
    v69 = a3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(a3 + 32);
    v31 = *(a3 + 40);
    sub_1003DC800(v30, v31);
    v32 = sub_1003D8C30(v30, v31);
    sub_1003DC814(v30, v31);
    [v32 colorWithAlphaComponent:0.2];

    v33 = v63;
  }

  else
  {
    if (qword_100AD0020 != -1)
    {
      swift_once();
    }

    v34 = qword_100B2FC08;
    v33 = v63;
  }

  UIBackgroundConfiguration.backgroundColor.setter();
  v35 = UICellConfigurationState.traitCollection.getter();
  [v35 userInterfaceIdiom];

  UIBackgroundConfiguration.cornerRadius.setter();
  if (v65)
  {
    v65 = v26;
    if (qword_100AD0028 != -1)
    {
      swift_once();
    }

    v36 = qword_100B2FC10;
    v37 = v68;
    UIBackgroundConfiguration.strokeColor.setter();
    v38 = UICellConfigurationState.traitCollection.getter();
    [v38 userInterfaceIdiom];

    UIBackgroundConfiguration.strokeWidth.setter();
    v39 = UICellConfigurationState.traitCollection.getter();
    [v39 userInterfaceIdiom];

    UIBackgroundConfiguration.strokeOutset.setter();
    v40 = UIAccessibilityTraitSelected;
    v41 = [v29 accessibilityTraits];
    if ((v40 & ~v41) != 0)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42 | v41;
  }

  else
  {
    v44 = UIAccessibilityTraitSelected;
    v45 = [v29 accessibilityTraits];
    v46 = -1;
    if ((v45 & v44) != 0)
    {
      v46 = ~v44;
    }

    v43 = v46 & v45;
    v37 = v68;
  }

  [v29 setAccessibilityTraits:{v43, v56}];
  v47 = v66;
  v48 = v60;
  (*(v66 + 16))(v60, v37, v33);
  (*(v47 + 56))(v48, 0, 1, v33);
  UICollectionViewCell.backgroundConfiguration.setter();
  [v29 setIsAccessibilityElement:1];
  [v29 setAccessibilityContainerType:0];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v49 = String._bridgeToObjectiveC()();

  [v29 setAccessibilityLabel:v49];

  if (v21)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  [v29 setAccessibilityValue:v50];

  v51 = UIAccessibilityTraitButton;
  v52 = [v29 accessibilityTraits];
  if ((v51 & ~v52) != 0)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0;
  }

  [v29 setAccessibilityTraits:v53 | v52];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v54 = String._bridgeToObjectiveC()();

  [v29 setAccessibilityHint:v54];

  return (*(v66 + 8))(v68, v33);
}

uint64_t sub_1005A14D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;

    sub_1003D9CB8(a1, a2);
    sub_1003D9A9C(0, 0);
  }

  return result;
}

void sub_1005A1574()
{
  v0 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_10;
  }

  v8 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = v17;
  v17 = xmmword_10095E7D0;
  v18 = 2;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_10:
    sub_100004F84(v2, &unk_100ADFB90);
    return;
  }

  (*(v4 + 32))(v6, v2, v3);
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionView];

    if (!v12)
    {
      __break(1u);
      return;
    }

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v12 deselectItemAtIndexPath:isa animated:1];
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1005A2968();
  }

  (*(v4 + 8))(v6, v3);
}

void sub_1005A1848(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = [objc_opt_self() secondaryLabelColor];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = a4;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = v7;
  *(v8 + 64) = 0;

  v9 = v7;
  UICollectionViewCell.configurationUpdateHandler.setter();
}

uint64_t sub_1005A191C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v8 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v8 - 8);
  v47 = &v46 - v9;
  v48 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v48 - 8);
  __chkstk_darwin(v48);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UICellConfigurationState.isSelected.getter())
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  v51 = a5;
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a5 + 56);
  if (v13)
  {
    if (*(a5 + 48) == a3 && v13 == v50)
    {
LABEL_5:
      v14 = UICellConfigurationState.isSelected.getter();
LABEL_6:
      swift_getKeyPath();
      v51 = a5;
      sub_1005A54CC();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(a5 + 32);
      v16 = a3;
      v17 = *(a5 + 40);
      sub_1003DC800(v15, v17);
      v18 = sub_1003D8C30(v15, v17);
      v19 = v17;
      a3 = v16;
      sub_1003DC814(v15, v19);
      v20 = 1;
      goto LABEL_10;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = UICellConfigurationState.isSelected.getter();
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = UICellConfigurationState.isSelected.getter();
  }

  v18 = [objc_opt_self() secondaryLabelColor];
  v20 = 0;
LABEL_10:
  v52 = &type metadata for CustomJournalSymbolIconContentConfiguration;
  v53 = sub_10053839C();
  v22 = swift_allocObject();
  v51 = v22;
  v49 = a3;
  *(v22 + 16) = a3;
  *(v22 + 24) = v50;
  *(v22 + 32) = v18;
  *(v22 + 40) = v14 & 1;
  v23 = v18;

  UICollectionViewCell.contentConfiguration.setter();
  static UIBackgroundConfiguration.clear()();
  if (v20)
  {
    swift_getKeyPath();
    v51 = a5;
    sub_1005A54CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(a5 + 32);
    v25 = *(a5 + 40);
    sub_1003DC800(v24, v25);
    v26 = sub_1003D8C30(v24, v25);
    sub_1003DC814(v24, v25);
    [v26 colorWithAlphaComponent:0.2];
  }

  else
  {
    if (qword_100AD0020 != -1)
    {
      swift_once();
    }

    v27 = qword_100B2FC08;
  }

  UIBackgroundConfiguration.backgroundColor.setter();
  v28 = UICellConfigurationState.traitCollection.getter();
  [v28 userInterfaceIdiom];

  UIBackgroundConfiguration.cornerRadius.setter();
  if (v20)
  {
    if (qword_100AD0028 != -1)
    {
      swift_once();
    }

    v29 = qword_100B2FC10;
    UIBackgroundConfiguration.strokeColor.setter();
    v30 = UICellConfigurationState.traitCollection.getter();
    [v30 userInterfaceIdiom];

    UIBackgroundConfiguration.strokeWidth.setter();
    v31 = UICellConfigurationState.traitCollection.getter();
    [v31 userInterfaceIdiom];

    UIBackgroundConfiguration.strokeOutset.setter();
    v32 = UIAccessibilityTraitSelected;
    v33 = [a1 accessibilityTraits];
    if ((v32 & ~v33) != 0)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34 | v33;
  }

  else
  {
    v36 = UIAccessibilityTraitSelected;
    v37 = [a1 accessibilityTraits];
    v38 = -1;
    if ((v37 & v36) != 0)
    {
      v38 = ~v36;
    }

    v35 = v38 & v37;
  }

  [a1 setAccessibilityTraits:v35];
  v39 = v47;
  v40 = v48;
  (*(v10 + 16))(v47, v12, v48);
  (*(v10 + 56))(v39, 0, 1, v40);
  UICollectionViewCell.backgroundConfiguration.setter();
  [a1 setIsAccessibilityElement:1];
  [a1 setAccessibilityContainerType:0];
  v41 = UIAccessibilityTraitButton;
  v42 = [a1 accessibilityTraits];
  if ((v41 & ~v42) != 0)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  [a1 setAccessibilityTraits:v43 | v42];
  v44 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityLabel:v44];

  return (*(v10 + 8))(v12, v40);
}