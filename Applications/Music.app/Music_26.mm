void sub_100302EB8(uint64_t a1)
{
  v2 = _s23QueueSnapshotIdentifierOMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1003090DC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s23QueueSnapshotIdentifierOMa);
    v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    sub_100309144(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, _s23QueueSnapshotIdentifierOMa);
    v10 = &v6[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction];
    v11 = *&v6[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction];
    *v10 = sub_100309928;
    v10[1] = v9;

    sub_100020438(v11);
  }
}

uint64_t sub_100303058(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0);
  v3 = static ActionBuilder.buildExpression<A, B>(_:)(a1, v2, &type metadata for () + 8, &off_1010A60D0);
  sub_10010FC20(&unk_101183940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v3;
  v5 = inited + 32;
  v6 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v5, &unk_10118AB80);
  return v6;
}

void sub_100303224(void *a1, void *a2)
{
  v4 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = _s23QueueSnapshotIdentifierOMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v32 = &v31 - v12;
  v13 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [a2 identifier];
  sub_10010FC20(&unk_1011846A0);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v15, 1, 1, v16);
    sub_1000095E8(v15, &unk_10118BCE0);
    return;
  }

  v22(v15, 0, 1, v16);
  (*(v17 + 32))(v20, v15, v16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v24 = [a1 cellForItemAtIndexPath:isa];

  if (!v24)
  {
    (*(v17 + 8))(v20, v16);
    return;
  }

  v25 = *(v33 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v25)
  {
    v26 = v25;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      (*(v17 + 8))(v20, v16);

      sub_1000095E8(v6, &unk_10118AAF0);
      return;
    }

    v27 = v32;
    sub_100309144(v6, v32, _s23QueueSnapshotIdentifierOMa);
    sub_1003090DC(v27, v10, _s23QueueSnapshotIdentifierOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_1000095E8(v10, &qword_10118AB00);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {

      (*(v17 + 8))(v10, v16);
LABEL_12:
      v29 = [objc_allocWithZone(UIPreviewParameters) init];
      v30 = [objc_opt_self() clearColor];
      [v29 setBackgroundColor:v30];

      [objc_allocWithZone(UITargetedPreview) initWithView:v24 parameters:v29];
      sub_10030AD48(v27, _s23QueueSnapshotIdentifierOMa);
      (*(v17 + 8))(v20, v16);
      return;
    }

    sub_10030AD48(v27, _s23QueueSnapshotIdentifierOMa);
    (*(v17 + 8))(v20, v16);
    sub_10030AD48(v10, _s23QueueSnapshotIdentifierOMa);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100303950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003039EC, v9, v8);
}

uint64_t sub_1003039EC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v26 = *(v0 + 48);

  v3 = sub_1002DCC7C();
  v4 = swift_allocObject();
  *(v4 + 16) = v26;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(v0 + 64);
  if (v3[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] == 1)
  {
    v6 = *(v0 + 40);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_10030623C;
    *(v7 + 24) = v4;
    v8 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
    swift_beginAccess();
    v9 = *&v3[v8];
    v10 = v5;
    v11 = v6;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_10006429C(0, v9[2] + 1, 1, v9);
      *&v3[v8] = v9;
    }

    v14 = v9[2];
    v13 = v9[3];
    if (v14 >= v13 >> 1)
    {
      v9 = sub_10006429C((v13 > 1), v14 + 1, 1, v9);
    }

    v9[2] = v14 + 1;
    v15 = &v9[2 * v14];
    v15[4] = sub_100029B94;
    v15[5] = v7;
    *&v3[v8] = v9;
    swift_endAccess();
  }

  else
  {
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = v5;
    v19 = v16;

    v17(v20);
    v21 = [v18 response];
    if (v21)
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 modelResponse];
        swift_unknownObjectRelease();
        v21 = v23;
      }

      else
      {
        swift_unknownObjectRelease();
        v21 = 0;
      }
    }

    sub_1002DD538(v21);
  }

  v24 = *(v0 + 8);

  return v24();
}

void sub_100303C60(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4)
{
  a1();
  v5 = [a4 response];
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 modelResponse];
      swift_unknownObjectRelease();
      v5 = v7;
    }

    else
    {
      swift_unknownObjectRelease();
      v5 = 0;
    }
  }

  sub_1002DD538(v5);
}

uint64_t sub_100303F10(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction);
  v2 = *(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction);
  if (v2)
  {

    v2(v3);
    sub_100020438(v2);
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  *v1 = 0;
  v1[1] = 0;

  return sub_100020438(v4);
}

BOOL sub_10030408C()
{
  v1 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = _s23QueueSnapshotIdentifierOMa(0);
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0);
  sub_1003090DC(v0 + *(v17 + 20), v16, _s23QueueSnapshotIdentifierOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10030AD48(v16, _s23QueueSnapshotIdentifierOMa);
    return 0;
  }

  v39 = v13;
  v36 = v3;
  v18 = *&v16[*(sub_10010FC20(&qword_10118AB08) + 48)];
  v38 = *(v8 + 8);
  v38(v16, v7);
  v37 = v0;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1000095E8(v6, &unk_10118BCE0);
    return 0;
  }

  v35 = v18;
  v19 = v39;
  (*(v8 + 32))(v39, v6, v7);
  v20 = sub_1004357B8(2u);
  if (v21 & 1) != 0 && (v20 = sub_1004357B8(3u), (v22) || IndexPath.section.getter() != v20 || (v23 = sub_100432DFC()) == 0)
  {
    v38(v19, v7);

    return 0;
  }

  v24 = v23;
  IndexPath.init(item:section:)();
  v25 = v36;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  v26 = v38;
  v38(v10, v7);
  if ((*(v40 + 48))(v25, 1, v14) == 1)
  {
    v26(v19, v7);

    sub_1000095E8(v25, &unk_10118AAF0);
    return 0;
  }

  v28 = sub_100432DFC();
  sub_10030AD48(v25, _s23QueueSnapshotIdentifierOMa);
  v29 = v35;
  if (!v28)
  {
    v26(v19, v7);

    return 0;
  }

  v30 = [v35 tracklist];
  v31 = [v30 reorderCommand];

  if (v31 && (v32 = [v31 moveItem:v24 beforeItem:v28], swift_unknownObjectRelease(), v32))
  {

    v33 = IndexPath.item.getter();
    v34 = v33 != 0;
  }

  else
  {

    v34 = 0;
  }

  v26(v19, v7);
  return v34;
}

uint64_t sub_1003045BC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100304710()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0);
  (*(v1 + *(v2 + 24)))(v1 + *(v2 + 20));
  v3 = *(v0 + 8);

  return v3();
}

int *sub_100304790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1003090DC(a1, a2, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  sub_1003090DC(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100309144(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  sub_1003090DC(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v9 = swift_allocObject();
  sub_100309144(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v7, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  result = sub_10010FC20(&qword_10118AB30);
  *(a2 + result[9]) = 21;
  *(a2 + result[11]) = 0x4014000000000000;
  v11 = (a2 + result[10]);
  *v11 = sub_10030B0D8;
  v11[1] = v8;
  v12 = (a2 + result[12]);
  *v12 = &unk_100EC6698;
  v12[1] = v9;
  v13 = (a2 + result[13]);
  *v13 = &unk_100EC64C0;
  v13[1] = 0;
  return result;
}

void sub_10030497C()
{
  v0 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v12 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v13 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    sub_1000095E8(v2, &unk_10118BCE0);
    return;
  }

  (*(v4 + 32))(v9, v2, v3);
  if (IndexPath.item.getter() < 1)
  {
    (*(v4 + 8))(v9, v3);

    return;
  }

  v15 = *&v11[v12];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_1002DCC7C();
  IndexPath.section.getter();
  IndexPath.init(item:section:)();
  v18 = *&v16[qword_10118F960];
  if (v18)
  {
    v19 = v17[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement];
    v17 = v17;
    sub_100030444(v18);
    v18(v16, v9, v6, (v19 & 1) == 0);
    sub_100020438(v18);

    v11 = v16;
    v16 = v17;
  }

  v20 = *(v4 + 8);
  v20(v6, v3);
  v20(v9, v3);
}

BOOL static Player.ToggleTransitionsCommand.isAvailable(in:)(void *a1)
{
  v1 = [a1 tracklist];
  v2 = [v1 toggleTransitionsCommand];

  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return v2 != 0;
}

id Player.ToggleTransitionsCommand.request(from:)(void *a1)
{
  v1 = [a1 tracklist];
  v2 = [v1 toggleTransitionsCommand];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 toggleTransitions];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_100304D8C()
{
  result = _s13UpdateContextVMa(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100304ECC(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_100304EE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100304EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100304F44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100304F8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100305028(void *a1)
{
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();
  v2 = sub_1005C3564(v6) & 1;
  v3 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  result = sub_1005C3564(v5);
  if (v2 != (result & 1))
  {
    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    sub_10058BB38(7, 3);
  }

  return result;
}

void sub_100305140(void *a1)
{
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012190C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[NowPlayingQueueViewController] -- Got new player response", v5, 2u);
  }

  if (!a1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[NowPlayingQueueViewController] -- Response is nil", v16, 2u);
    }

    goto LABEL_54;
  }

  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349312;
    v10 = [v6 tracklist];
    v11 = [v10 shuffleType];

    *(v9 + 4) = v11;
    *(v9 + 12) = 2050;
    v12 = [v6 tracklist];
    v13 = [v12 repeatType];

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[NowPlayingQueueViewController] ---- Shuffle type: %{public}ld, repeat type: %{public}ld", v9, 0x16u);
  }

  else
  {

    v7 = v6;
  }

  v17 = v6;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67240448;
    *(v20 + 4) = MPCPlayerResponse.canPerform(anyOf:)(&type metadata for Player.ShuffleCommand) & 1;
    *(v20 + 8) = 1026;
    *(v20 + 10) = MPCPlayerResponse.canPerform(anyOf:)(&type metadata for Player.RepeatCommand) & 1;

    _os_log_impl(&_mh_execute_header, v18, v19, "[NowPlayingQueueViewController] ---- Can shuffle? %{BOOL,public}d, can repeat? %{BOOL,public}d", v20, 0xEu);
  }

  else
  {

    v18 = v17;
  }

  v110 = &type metadata for Player.QueueEndCommand;
  v111 = &protocol witness table for Player.QueueEndCommand;
  LOBYTE(aBlock[0]) = 2;
  v21 = MPCPlayerResponse.canPerform(_:)(aBlock);
  sub_10000959C(aBlock);
  if (!v21)
  {
    v23 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v28))
    {
      goto LABEL_22;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v23, v28, "[NowPlayingQueueViewController] ---- AutoPlay supported? NO", v29, 2u);
    goto LABEL_20;
  }

  v22 = v17;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67240192;
    v26 = [v22 tracklist];
    v27 = [v26 actionAtQueueEnd];

    *(v25 + 4) = v27 == 3;
    _os_log_impl(&_mh_execute_header, v23, v24, "[NowPlayingQueueViewController] ---- AutoPlay supported? YES, AutoPlay on? %{BOOL,public}d", v25, 8u);
LABEL_20:

    goto LABEL_22;
  }

  v23 = v22;
LABEL_22:

  v110 = &type metadata for Player.ToggleTransitionsCommand;
  v111 = &protocol witness table for Player.ToggleTransitionsCommand;
  v30 = MPCPlayerResponse.canPerform(_:)(aBlock);
  sub_10000959C(aBlock);
  if (!v30)
  {
    v32 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v32, v37))
    {
      goto LABEL_29;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v32, v37, "[NowPlayingQueueViewController] ---- Song Transitions supported? NO", v38, 2u);
    goto LABEL_27;
  }

  v31 = v17;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67240192;
    v35 = [v31 tracklist];
    v36 = [v35 transitionsActive];

    *(v34 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v32, v33, "[NowPlayingQueueViewController] ---- Song Transitions supported? YES, Active? %{BOOL,public}d", v34, 8u);
LABEL_27:

    goto LABEL_29;
  }

  v32 = v31;
LABEL_29:

  v39 = v17;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136446210;
    v44 = [v39 tracklist];
    v45 = [v44 items];

    [v45 totalItemCount];
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = sub_1000105AC(v46, v47, aBlock);

    *(v42 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "[NowPlayingQueueViewController] ---- Total item count: %{public}s", v42, 0xCu);
    sub_10000959C(v43);
  }

  v49 = v39;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136446210;
    v54 = [v49 tracklist];
    [v54 globalItemCount];

    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = sub_1000105AC(v55, v56, aBlock);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v50, v51, "[NowPlayingQueueViewController] ---- Global item count: %{public}s", v52, 0xCu);
    sub_10000959C(v53);
  }

  v58 = v49;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  v103 = v58;
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136446210;
    v63 = [v103 tracklist];
    [v63 playingItemGlobalIndex];

    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = sub_1000105AC(v64, v65, aBlock);

    *(v61 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v59, v60, "[NowPlayingQueueViewController] ---- Playing item global index: %{public}s", v61, 0xCu);
    sub_10000959C(v62);
    v58 = v103;
  }

  v67 = [v58 tracklist];
  v68 = [v67 displayItems];

  v69 = [v68 allSections];
  sub_100009F78(0, &qword_10118D430);
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v71 = v70;
  if (v70 >> 62)
  {
    v72 = _CocoaArrayWrapper.endIndex.getter();
    if (v72)
    {
      goto LABEL_37;
    }

LABEL_52:

    goto LABEL_53;
  }

  v72 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v72)
  {
    goto LABEL_52;
  }

LABEL_37:
  v107 = objc_opt_self();
  if (v72 < 1)
  {
    __break(1u);
    return;
  }

  v73 = 0;
  v74 = v71;
  v106 = v71 & 0xC000000000000001;
  v104 = v72;
  v105 = v71;
  while (1)
  {
    v75 = v106 ? sub_1007E9374(v73, v74) : *(v74 + 8 * v73 + 32);
    v76 = v75;
    v77 = v58;
    v78 = v76;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    v108 = v78;
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v81 = 136446466;
      v82 = v78;
      v83 = [v82 description];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v58 = v103;
      v87 = sub_1000105AC(v84, v86, aBlock);

      *(v81 + 4) = v87;
      *(v81 + 12) = 2082;
      v88 = v77;
      v89 = [v77 tracklist];
      v90 = [v89 displayItems];

      [v90 numberOfItemsInSection:v73];
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = sub_1000105AC(v91, v92, aBlock);

      *(v81 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v79, v80, "[NowPlayingQueueViewController] ------ Section %{public}s Number of Items: %{public}s", v81, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v88 = v77;
    }

    v94 = [v107 standardUserDefaults];
    v95 = String._bridgeToObjectiveC()();
    v96 = [v94 BOOLForKey:v95];

    if (v96)
    {
      break;
    }

LABEL_40:
    ++v73;
    v74 = v105;
    if (v104 == v73)
    {
      goto LABEL_50;
    }
  }

  v97 = [v88 tracklist];
  v98 = [v97 displayItems];

  v111 = sub_1002F4334;
  v112 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002F4338;
  v110 = &unk_1010A5F98;
  v99 = _Block_copy(aBlock);

  [v98 enumerateItemsInSectionAtIndex:v73 usingBlock:v99];

  _Block_release(v99);
  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    goto LABEL_40;
  }

  __break(1u);
LABEL_50:

LABEL_53:

LABEL_54:
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&_mh_execute_header, v100, v101, "[NowPlayingQueueViewController] ----------------------------------------", v102, 2u);
  }
}

void sub_100305FB0()
{
  sub_100009F78(0, &unk_10118A270);
  v0 = static MPModelPlaylist.defaultMusicKind.getter();
  sub_100009F78(0, &qword_101183F80);
  v1 = static MPMediaLibrary.device.getter();
  v2 = [v1 playbackHistoryPlaylist];

  if (v2)
  {
    sub_100009F78(0, &qword_101192200);
    v3 = [v2 persistentID];

    v4 = MPIdentifierSet.init(kind:deviceLibraryPID:)(v0, v3);
    v5 = objc_allocWithZone(MPModelPlaylist);
    v7[4] = UIScreen.Dimensions.size.getter;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10006BD7C;
    v7[3] = &unk_1010A5138;
    v6 = _Block_copy(v7);
    [v5 initWithIdentifiers:v4 block:v6];

    _Block_release(v6);

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100306168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100303950(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100306248()
{
  v1 = v0;
  sub_100432704(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext);
  v2 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_delegate + 8) = 0;
  v3 = swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_playerResponseSubscription) = 0;
  v4 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse;
  if (qword_10117F5F8 != -1)
  {
    v3 = swift_once();
  }

  *(v1 + v4) = (*(*qword_101218AC8 + 432))(v3);
  v5 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController;
  *(v1 + v5) = [objc_allocWithZone(MPRequestResponseController) init];
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bindings) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_useListeningHistoryObserver) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_applicationCapabilitiesSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext) = 0;
  v6 = (v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_feedbackGenerator;
  *(v1 + v7) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:3];
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = 3;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState) = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel) = 0;
  v8 = v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__hasSeenSharedListeningQueueItemRemoveAlert;
  v16 = 2;
  v15[0] = 0xD00000000000002ALL;
  v15[1] = 0x8000000100E45B00;
  v9 = [objc_opt_self() standardUserDefaults];
  sub_100009838();
  UserDefault.init(wrappedValue:defaults:key:)(&v16, v9, v15, &type metadata for String, &v17);
  v10 = v18;
  v11 = v19;
  *v8 = v17;
  *(v8 + 16) = v10;
  *(v8 + 24) = v11;
  v12 = (v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_lastSeenBounds);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback) = 0;
  v14 = (v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_canPresentTooltip) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003065A8(uint64_t a1)
{
  v2 = sub_1002DEF54();
  v3 = sub_1002DEB20();
  isa = sub_1002DE42C(v3).super.isa;
  [v2 setAttributedText:isa];

  v5 = *(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel);
  sub_1002DEB20();
  v9 = sub_1002DE968();
  v10 = v6;
  v8 = sub_100009838();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v7 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityLabel:{v7, &type metadata for String, v8, v8, v8, 0, 0xE000000000000000, 0x6C6F626D79737B7BLL, 0xEA00000000007D7DLL, v9, v10}];

  if (*(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState) == 1)
  {
    sub_1002E555C(1);
  }

  sub_1002E7DC8();
}

void sub_100306708(char *a1)
{
  v33 = type metadata accessor for IndexPath();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v4 = sub_1002DCC7C();
  v5 = [v4 visibleSupplementaryViewsOfKind:_UICollectionViewListLayoutElementKindSectionFooter];

  sub_100009F78(0, &qword_10118AC60);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_34:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v8 = &off_10118A000;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_35:

LABEL_36:
    v28 = [*(v8[290] + v35) collectionViewLayout];
    [v28 invalidateLayout];

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = &off_10118A000;
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v9 = 0;
    v34 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
    v10 = v6 & 0xC000000000000001;
    v32 = (v2 + 8);
    v11 = v31;
    v30 = v6;
    while (1)
    {
      if (v10)
      {
        v12 = sub_1007E97B4(v9, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = [*&v35[v34] indexPathForSupplementaryView:v12];
      if (!v14)
      {

        goto LABEL_6;
      }

      v15 = v14;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      _s25NowPlayingQueueFooterViewCMa();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {

        (*v32)(v11, v33);
        goto LABEL_6;
      }

      v2 = v16;
      v17 = v13;
      v18 = IndexPath.section.getter();
      v19 = [*&v35[v34] numberOfSections];
      if (__OFSUB__(v19, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v18 == v19 - 1)
      {
        v20 = 1;
        goto LABEL_26;
      }

      v21 = [v35 traitCollection];
      sub_1001D1C24();
      sub_1001D1C78();
      UITraitCollection.subscript.getter();
      v22 = v37;
      if (v37)
      {
        if (v37 == 1)
        {
          break;
        }
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_21;
      }

      if (v22 > 1)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
LABEL_21:

LABEL_24:
        v20 = 0;
        goto LABEL_25;
      }

      v25 = [v21 accessibilityContrast];

      v20 = v25 != 1;
LABEL_25:
      v6 = v30;
LABEL_26:
      [*(v2 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator) setHidden:v20];
      v26 = [v35 traitCollection];
      sub_1001D1C24();
      sub_1001D1C78();
      UITraitCollection.subscript.getter();

      if (v36 && v36 != 1)
      {

        v11 = v31;
LABEL_31:
        [v17 directionalLayoutMargins];
        [v17 setDirectionalLayoutMargins:?];

        (*v32)(v11, v33);
        goto LABEL_6;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v31;
      if (v27)
      {
        goto LABEL_31;
      }

      (*v32)(v31, v33);

LABEL_6:
      if (v7 == ++v9)
      {

        v8 = &off_10118A000;
        goto LABEL_36;
      }
    }

    goto LABEL_24;
  }

  __break(1u);
}

void sub_100306C98(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118ABE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1002DCC7C();
  _s22AutoPlayBackgroundViewCMa();
  static UICollectionReusableView.reuseIdentifier.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 _visibleDecorationViewsOfKind:v6];

  if (v7)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v8 + 16))
    {
      sub_10000DD18(v8 + 32, v14);

      if (swift_dynamicCast())
      {
        v9 = v13;
        sub_1002EB3C8(v13);
      }
    }

    else
    {
    }

    v10 = [*(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) collectionViewLayout];
    [v10 invalidateLayout];

    v11 = sub_10010FC20(&qword_10118AB38);
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_1002E802C(v4);
    sub_1000095E8(v4, &qword_10118ABE0);
  }

  else
  {
    __break(1u);
  }
}

void sub_100306E94(void *a1)
{
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012190C8);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = 7104878;
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136446466;
    v7 = [v3 contentItemIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_1000105AC(v8, v10, &v20);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v12 = [v3 metadataObject];
    if (v12 && (v13 = v12, v14 = [v12 song], v13, v14) && (v15 = objc_msgSend(v14, "title"), v14, v15))
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_1000105AC(v5, v17, &v20);

    *(v6 + 14) = v18;
    _os_log_impl(&_mh_execute_header, oslog, v4, "[NowPlayingQueueViewController] -------- Content item identifier: %{public}s / song title: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1003070E4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MPModelLibraryPlaylistEditChangeRequest) init];
  [v2 setShouldCreatePlaylist:0];
  sub_100305FB0();
  v4 = v3;
  [v2 setPlaylist:v3];

  [v2 setPlaylistEntries:a1];
  v13 = UIScreen.Dimensions.size.getter;
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1002F982C;
  v12 = &unk_1010A5688;
  v5 = _Block_copy(&v9);
  v13 = UIScreen.Dimensions.size.getter;
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1002F982C;
  v12 = &unk_1010A56B0;
  v6 = _Block_copy(&v9);
  v7 = [v2 newOperationWithLocalPersistenceResponseHandler:v5 completeResponseHandler:v6];
  _Block_release(v6);
  _Block_release(v5);
  v8 = [objc_opt_self() preferredQueue];
  [v8 addOperation:v7];
}

id sub_1003072A0(char *a1, void *a2)
{
  v4 = sub_10010FC20(&qword_101180C90);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v20 - v6;
  v8 = [a2 title];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &a1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title];
  *v13 = v10;
  v13[1] = v12;

  sub_100553944();
  MPModelSong.preferredBylineAttribution(with:from:)(&off_10109A350, 0, v7);
  v14 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
  swift_beginAccess();
  sub_100309BE4(v7, &a1[v14]);
  swift_endAccess();
  v15 = [a1 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  LOBYTE(v15) = UIContentSizeCategory.isAccessibilityCategory.getter();
  sub_100555BBC(v15 & 1);
  sub_1000095E8(v7, &qword_101180C90);
  v17 = [a2 isExplicitSong];
  v18 = a1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit];
  a1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit] = v17;
  return sub_100553ECC(v18);
}

uint64_t sub_10030746C(char *a1, void *a2)
{
  v4 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = [a2 title];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = &a1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title];
  *v12 = v9;
  v12[1] = v11;

  sub_100553944();
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
  swift_beginAccess();
  sub_100309BE4(v6, &a1[v14]);
  swift_endAccess();
  v15 = [a1 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  LOBYTE(v15) = UIContentSizeCategory.isAccessibilityCategory.getter();
  sub_100555BBC(v15 & 1);
  return sub_1000095E8(v6, &qword_101180C90);
}

void sub_10030762C(void *a1, unint64_t a2)
{
  v82 = a2;
  v4 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v4 - 8);
  v80 = (&v72 - v5);
  v6 = type metadata accessor for UICellAccessory.ReorderOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for UICellAccessory.DisplayedState();
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - v12;
  v14 = _s23QueueSnapshotIdentifierOMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlayingQueueCell();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v75 = v7;
    v76 = v6;
    v19 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
    v77 = v2;
    v20 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    if (v20)
    {
      v21 = v18;
      v22 = a1;
      v23 = v20;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {

        sub_1000095E8(v13, &unk_10118AAF0);
        return;
      }

      sub_100309144(v13, v17, _s23QueueSnapshotIdentifierOMa);
      v24 = sub_1004329EC();
      if (!v24)
      {
        sub_10030AD48(v17, _s23QueueSnapshotIdentifierOMa);

        return;
      }

      v25 = v24;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        v28 = v77;
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        v28 = v77;
        if (!v29)
        {
          objc_opt_self();
          v29 = swift_dynamicCastObjCClass();
          if (!v29)
          {
            goto LABEL_32;
          }
        }

        v27 = v29;
      }

      v30 = v25;
      v31 = [v27 artworkCatalog];
      v32 = *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork];
      *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork] = v31;
      v33 = v31;

      sub_100553DD0();
      v34 = sub_100433508();
      if (v34)
      {
        v35 = v34;
        v36 = *&v34[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
        v74 = v30;
        if (v36)
        {
          v37 = v36;
          v38 = v36;
        }

        else
        {
          v38 = *&v34[OBJC_IVAR___MusicAttributionMetadata_placeholderArtworkCatalog];
          v37 = v38;
          v36 = 0;
        }

        v43 = *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_badgeArtworkCatalog];
        *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_badgeArtworkCatalog] = v38;
        v44 = v36;
        v45 = v37;

        v46 = *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView];
        v47 = *&v46[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog];
        *&v46[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog] = v38;
        v42 = v45;
        v48 = v46;

        sub_100556868();
        v28 = v77;
        v30 = v74;
      }

      else
      {
        v39 = *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_badgeArtworkCatalog];
        *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_badgeArtworkCatalog] = 0;

        v40 = *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView];
        v41 = *&v40[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog];
        *&v40[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog] = 0;
        v42 = v40;

        sub_100556868();
      }

      v49 = [v21 backgroundView];
      if (v49)
      {
        v50 = v49;
        v51 = [objc_opt_self() clearColor];
        [v50 setBackgroundColor:v51];
      }

      v52 = *&v28[v19];
      if (v52)
      {
        v53 = v52;

        v54 = *&v53[qword_10118F958];
        if (v54)
        {

          v55 = v54(v53, v82);

          sub_100020438(v54);
          if (v55)
          {
            sub_10010FC20(&unk_101184740);
            v56 = *(type metadata accessor for UICellAccessory() - 8);
            v82 = (*(v56 + 80) + 32) & ~*(v56 + 80);
            v73 = swift_allocObject();
            *(v73 + 16) = xmmword_100EBC6B0;
            v57 = v78;
            (*(v78 + 104))(v10, enum case for UICellAccessory.DisplayedState.always(_:), v81);
            v58 = v22;
            v59 = v80;
            *v80 = 0x403C000000000000;
            v60 = enum case for UICellAccessory.LayoutDimension.custom(_:);
            v61 = type metadata accessor for UICellAccessory.LayoutDimension();
            v62 = v30;
            v63 = *(v61 - 8);
            (*(v63 + 104))(v59, v60, v61);
            (*(v63 + 56))(v59, 0, 1, v61);
            v30 = v62;
            v64 = v58;
            v65 = v79;
            v22 = v58;
            v28 = v77;
            UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
            static UICellAccessory.reorder(displayed:options:)();
            (*(v75 + 8))(v65, v76);
            (*(v57 + 8))(v10, v81);
            goto LABEL_26;
          }
        }

        else
        {
        }

        v66 = v22;
LABEL_26:
        UICollectionViewListCell.accessories.setter();

        v67 = v22;
        v68 = [v28 view];
        if (v68)
        {
          v69 = v68;
          [v68 directionalLayoutMargins];

          [v21 directionalLayoutMargins];
          [v21 setDirectionalLayoutMargins:?];

          v70 = v30;
          sub_1004F26A8(v83);
          v71 = sub_1004F24B0(v83);

          sub_1000095E8(v83, &qword_1011A3DD0);
          sub_10030AD48(v17, _s23QueueSnapshotIdentifierOMa);
          return;
        }

        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_100307EC8(void *a1)
{
  _s22AutoPlayBackgroundViewCMa();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v14 = a1;
    sub_1002EB3C8(v4);
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    if (v5)
    {
      v6 = v5;
      v7 = v1;
      v8 = [v1 traitCollection];
      sub_1001D1C24();
      sub_1001D1C78();
      UITraitCollection.subscript.getter();

      if (v15)
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          v10 = 5;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {

        v10 = 5;
      }

      v11 = sub_1004357B8(v10);
      v13 = v12;

      if ((v13 & 1) == 0 && IndexPath.section.getter() == v11 && v7[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] == 1)
      {
        sub_1002E555C(1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1003080A0(void *a1, void *a2)
{
  v4 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v25 - v13;
  aBlock[0] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0);
  v15 = swift_dynamicCast();
  v16 = *(v8 + 56);
  if (v15)
  {
    v16(v6, 0, 1, v7);
    v17 = *(v8 + 32);
    v17(v14, v6, v7);
    sub_1002F8DC0();
    if (v18)
    {
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v8 + 16))(v10, v14, v7);
      v20 = *(v8 + 80);
      v26 = a2;
      v21 = (v20 + 24) & ~v20;
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      v17((v22 + v21), v10, v7);
      aBlock[4] = sub_100309954;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010A5598;
      v23 = _Block_copy(aBlock);

      [v26 addAnimations:v23];
      _Block_release(v23);
      return (*(v8 + 8))(v14, v7);
    }

    (*(v8 + 8))(v14, v7);
  }

  else
  {
    v16(v6, 1, 1, v7);
    sub_1000095E8(v6, &unk_10118BCE0);
  }

  return [a2 setPreferredCommitStyle:0];
}

void sub_1003083FC(uint64_t a1)
{
  v97 = type metadata accessor for IndexPath();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v3;
  v100 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v79 - v5;
  v7 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v7 - 8);
  v98 = (&v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v89 = (&v79 - v10);
  isa = type metadata accessor for Actions.MetricsReportingContext();
  v93 = *(isa - 1);
  v11 = *(v93 + 64);
  __chkstk_darwin(isa);
  v99 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = (&v79 - v13);
  v14 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v79 - v15;
  v17 = type metadata accessor for GenericMusicItem();
  v103 = *(v17 - 8);
  v104 = v17;
  v18 = *(v103 + 64);
  __chkstk_darwin(v17);
  v92 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v101 = &v79 - v20;
  v21 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v21 - 8);
  v23 = &v79 - v22;
  v24 = _s23QueueSnapshotIdentifierOMa(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v91 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v105 = &v79 - v28;
  v94 = v1;
  v29 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v29)
  {
    v30 = v29;
    v88 = a1;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v31 = &unk_10118AAF0;
      v32 = v23;
LABEL_7:
      sub_1000095E8(v32, v31);
      return;
    }

    v33 = v105;
    sub_100309144(v23, v105, _s23QueueSnapshotIdentifierOMa);
    v34 = sub_1004329EC();
    if (v34)
    {
      v87 = v25;
      v35 = v34;
      v36 = [v34 innermostModelObject];

      v37 = v36;
      GenericMusicItem.init(_:)();
      v39 = v103;
      v38 = v104;
      if ((*(v103 + 48))(v16, 1, v104) == 1)
      {
        sub_10030AD48(v105, _s23QueueSnapshotIdentifierOMa);

        v31 = &unk_101189DA0;
        v32 = v16;
        goto LABEL_7;
      }

      v40 = *(v39 + 32);
      v85 = v39 + 32;
      v84 = v40;
      v40(v101, v16, v38);
      v41 = type metadata accessor for URL();
      (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
      v42 = v89;
      MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x7478654E7055, 0xE600000000000000, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v6, 0, 0, 0, v89, 1, 0, 0, 2);
      v43 = type metadata accessor for MetricsEvent.Page(0);
      v44 = *(*(v43 - 8) + 56);
      v44(v42, 0, 1, v43);
      sub_1000089F8(v42, v98, &unk_1011838F0);
      MetricsReportingController.shared.unsafeMutableAddressor();
      v83 = sub_10053771C();
      v82 = v45;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v86 = v37;
      v46 = qword_101218AD0;
      v81 = GroupActivitiesManager.hasJoined.getter();
      v80 = GroupActivitiesManager.participantsCount.getter();
      sub_1000095E8(v42, &unk_1011838F0);
      v47 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      v48 = *(v46 + v47);
      v49 = isa;
      v50 = isa[5];
      v51 = v102;
      v44((v102 + v50), 1, 1, v43);
      v52 = v49[7];
      v53 = (v51 + v49[6]);
      v54 = v49[8];
      *v51 = xmmword_100EBEF60;
      sub_10006B010(v98, v51 + v50, &unk_1011838F0);
      v55 = v82;
      *v53 = v83;
      v53[1] = v55;
      *(v51 + v52) = 0;
      *(v51 + v54) = 0;
      v56 = v51 + v49[9];
      *v56 = v81 & 1;
      *(v56 + 1) = v80;
      *(v56 + 2) = v48;
      v57 = v101;
      v58 = sub_1002435F0();
      v59 = v88;
      sub_1002F8DC0();
      v98 = v58;
      if ((v60 & 1) == *(v58 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron))
      {
        *(v98 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = v60 & 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        isa = &v79;
        __chkstk_darwin(KeyPath);
        aBlock = v98;
        sub_100309644(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v89 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = v96;
      v63 = v97;
      (*(v96 + 16))(v100, v59, v97);
      v64 = v103;
      v65 = v92;
      (*(v103 + 16))(v92, v57, v104);
      v66 = v91;
      sub_1003090DC(v105, v91, _s23QueueSnapshotIdentifierOMa);
      sub_1003090DC(v102, v99, type metadata accessor for Actions.MetricsReportingContext);
      v67 = (*(v62 + 80) + 24) & ~*(v62 + 80);
      v68 = (v95 + *(v64 + 80) + v67) & ~*(v64 + 80);
      v69 = (v18 + *(v87 + 80) + v68) & ~*(v87 + 80);
      v70 = (v26 + *(v93 + 80) + v69) & ~*(v93 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = v89;
      (*(v62 + 32))(v71 + v67, v100, v63);
      v72 = v65;
      v73 = v104;
      v84(v71 + v68, v72, v104);
      sub_100309144(v66, v71 + v69, _s23QueueSnapshotIdentifierOMa);
      sub_100309144(v99, v71 + v70, type metadata accessor for Actions.MetricsReportingContext);
      v74 = objc_opt_self();
      v110 = sub_100218654;
      v111 = v98;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108 = sub_100747E6C;
      v109 = &unk_1010A52A0;
      v75 = _Block_copy(&aBlock);

      v110 = sub_1003091AC;
      v111 = v71;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108 = sub_100747EBC;
      v109 = &unk_1010A52C8;
      v76 = _Block_copy(&aBlock);

      v77 = v74;
      v78 = isa;
      [v77 configurationWithIdentifier:isa previewProvider:v75 actionProvider:v76];

      _Block_release(v76);
      _Block_release(v75);

      (*(v103 + 8))(v101, v73);
      sub_10030AD48(v105, _s23QueueSnapshotIdentifierOMa);
      sub_10030AD48(v102, type metadata accessor for Actions.MetricsReportingContext);
    }

    else
    {
      sub_10030AD48(v33, _s23QueueSnapshotIdentifierOMa);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003090DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100309144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1003091AC(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GenericMusicItem() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for Actions.MetricsReportingContext() - 8);
  v13 = *(v1 + 16);
  v14 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  sub_1002FD678(a1, v13, v1 + v4, v1 + v7, (v1 + v10), v14);
}

uint64_t sub_100309370()
{
  v1 = type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = (v2 + *(v1 + 20));
  _s23QueueSnapshotIdentifierOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for IndexPath();
    (*(*(v7 - 8) + 8))(v3, v7);
    v6 = &qword_10118AB08;
LABEL_7:
    v3 = (v3 + *(sub_10010FC20(v6) + 48));
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_10010FC20(&qword_10118AB00);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10010FC20(&qword_10118AB10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      ++v3;
      goto LABEL_8;
    }

    v5 = type metadata accessor for IndexPath();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = &qword_10118AB18;
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_100309560(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_1003046F0(a1, a2, v2 + v7);
}

uint64_t sub_100309644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030968C()
{
  v1 = *(sub_10010FC20(&qword_10118AB30) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  v3 = (v2 + *(type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0) + 20));
  _s23QueueSnapshotIdentifierOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for IndexPath();
    (*(*(v7 - 8) + 8))(v3, v7);
    v6 = &qword_10118AB08;
LABEL_7:
    v3 = (v3 + *(sub_10010FC20(v6) + 48));
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_10010FC20(&qword_10118AB00);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10010FC20(&qword_10118AB10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      ++v3;
      goto LABEL_8;
    }

    v5 = type metadata accessor for IndexPath();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = &qword_10118AB18;
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_1003099D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002FD1B0(a1, v4, v5, v6);
}

uint64_t sub_100309A88(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_100309AD8(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_100309AE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100309B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1002FCDEC(a1, v4, v5, v6);
}

uint64_t sub_100309BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101180C90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100309C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_100309C68(a1, a2, a3, a4, a5);
  }
}

void sub_100309C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {

    sub_100020438(a3);
  }
}

unint64_t sub_100309CC0()
{
  result = qword_10118ABE8;
  if (!qword_10118ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ABE8);
  }

  return result;
}

void sub_100309D34()
{
  v1 = *(sub_10010FC20(&qword_10118AB38) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  sub_1002F5CD4(v3, v4, v5, v6, v7, v0 + v2, v9, v10);
}

unint64_t sub_100309E04()
{
  result = qword_10118ABF8;
  if (!qword_10118ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ABF8);
  }

  return result;
}

uint64_t sub_100309E58(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1002F481C(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_100309FCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002F439C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10030A13C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002F1118(a1, v4, v5, v6);
}

void sub_10030A200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for IndexPath() - 8);
  v13 = *(v4 + 16);
  v14 = (v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)));

  sub_1002ECBC4(a1, a2, a3, a4, v13, v4 + v10, v14);
}

uint64_t sub_10030A300()
{
  v1 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for IndexPath();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
    v6 = &qword_10118AB08;
LABEL_7:
    v3 = (v3 + *(sub_10010FC20(v6) + 48));
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_10010FC20(&qword_10118AB00);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10010FC20(&qword_10118AB10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      ++v3;
      goto LABEL_8;
    }

    v5 = type metadata accessor for IndexPath();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
    v6 = &qword_10118AB18;
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_10030A4F4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_10030A584()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1002EDCA8(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_10030A61C()
{

  return swift_deallocObject();
}

uint64_t sub_10030A67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002EEACC(a1, v4, v5, v6);
}

uint64_t sub_10030A730(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1002EAEE4(a1);
}

uint64_t sub_10030A7DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002EAB7C(a1, v4, v5, v6);
}

uint64_t sub_10030A8A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1002EA178(a1);
}

uint64_t sub_10030A94C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1002E9E9C(a1);
}

uint64_t sub_10030AA8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002E9110(a1, v4, v5, v6);
}

unint64_t sub_10030ABA8()
{
  result = qword_10118AC88;
  if (!qword_10118AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118AC88);
  }

  return result;
}

void sub_10030AC04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse);
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse) = v2;
  v3 = v2;
}

void sub_10030AD10()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1002DD040(v1);
}

uint64_t sub_10030AD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10030ADE0()
{
  result = _s10DataSourceCMa(319);
  if (v1 <= 0x3F)
  {
    result = _s23QueueSnapshotIdentifierOMa(319);
    if (v2 <= 0x3F)
    {
      result = sub_10001F7E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10030AE7C()
{
  type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0);
  sub_10030408C();
  return 0;
}

uint64_t sub_10030AEE0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F3F4;

  return sub_1003046F0(a1, a2, v2 + v7);
}

uint64_t sub_10030B104(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10030BC9C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10030B1E4()
{
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v0 + 24) isVolumeControlAvailable] ^ 1;
}

id sub_10030B264@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [*(v3 + 24) isVolumeControlAvailable];
  *a2 = result ^ 1;
  return result;
}

id sub_10030B2EC()
{
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v0 + 24) isMuted];
}

id sub_10030B368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [*(v3 + 24) isMuted];
  *a2 = result;
  return result;
}

id sub_10030B3EC(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [*(v1 + 24) isMuted];
  if (result != v2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10030B50C()
{
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_10030B57C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

double sub_10030B5F4()
{
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = [v1 isMuted];
  result = 0.0;
  if ((v2 & 1) == 0)
  {
    [v1 volumeValue];
    return v4;
  }

  return result;
}

id sub_10030B6CC(double a1)
{
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) == 1)
  {
    result = [*(v1 + 24) volumeValue];
    v4 = a1;
    if (v5 != v4)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

id sub_10030B7FC(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_10030BC9C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + 24);
  if ([v4 isMuted])
  {
    [v4 setMuted:0];
  }

  *&v5 = a2;
  return [v4 setVolumeValue:v5];
}

uint64_t sub_10030B954(void *a1, uint64_t a2, void *a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_10030BC9C();
    v6 = a3;
    v7 = a1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_10030BA84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeController.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10030BACC()
{
  v1 = OBJC_IVAR____TtC5Music16VolumeController___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VolumeController()
{
  result = qword_10118AE30;
  if (!qword_10118AE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10030BBCC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10030BC9C()
{
  result = qword_10118AF60;
  if (!qword_10118AF60)
  {
    type metadata accessor for VolumeController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118AF60);
  }

  return result;
}

uint64_t sub_10030BD30()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_10030BC9C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 16);

    if ((v2 & 1) == 0)
    {
      result = swift_weakLoadStrong();
      if (result)
      {
        swift_getKeyPath();
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  return result;
}

uint64_t sub_10030BE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Backdrop.SnapshotConfiguration();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10030BF40, 0, 0);
}

uint64_t sub_10030BF40()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[3]);
  sub_100173A78(0x20000000000001uLL);
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = v1;
  Backdrop.SnapshotConfiguration.init(image:size:scale:offset:traitCollection:)();
  type metadata accessor for Backdrop.CompositeRenderer();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10030C094;
  v5 = v0[8];

  return static Backdrop.CompositeRenderer.snapshot(configuration:)(v5);
}

uint64_t sub_10030C094(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_10030C240;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_10030C1BC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10030C1BC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_10030C240()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10030C2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10030C530;

  return sub_10030BE7C(a1, a2, a3);
}

uint64_t sub_10030C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10030C430;

  return sub_10030BE7C(a1, a2, a3);
}

uint64_t sub_10030C430(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

double sub_10030C66C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music20AccountButtonWrapper_button);
  if (v1)
  {
    [v1 intrinsicContentSize];
  }

  else
  {
    v2 = 0.0;
  }

  return fmax(v2, 34.0);
}

unint64_t sub_10030C70C()
{
  result = qword_10118AFA8;
  if (!qword_10118AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118AFA8);
  }

  return result;
}

uint64_t sub_10030C760@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_10030C790(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;

  return sub_10030C998;
}

uint64_t sub_10030C828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v9;
    v12[5] = a2;
    v12[6] = a3;
    sub_1001F4CB8(0, 0, v7, &unk_100EC6878, v12);
  }

  return result;
}

uint64_t sub_10030C9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10030CA40, v8, v7);
}

uint64_t sub_10030CA40()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  withObservationTracking<A>(_:onChange:)();

  v5 = dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter() & 1;
  v3(v2, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10030CB20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10030C9A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10030CBE8@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_10030CC20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10030CC3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10030CC84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10030CCE8(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for MusicFavoriteStatus();
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 40);
  if (*(v6 + 16))
  {
    v20 = v3;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = v6 + 56;
    v9 = -1 << *(v6 + 32);
    v10 = v7 & ~v9;
    if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (!*(*(v6 + 48) + v10) || *(*(v6 + 48) + v10) == 2)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      swift_getKeyPath();
      v13 = v20;
      (*(v20 + 104))(v5, enum case for MusicFavoriteStatus.favorited(_:), v2);
      sub_10010FC20(&qword_10118B098);
      sub_10030D80C(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      (*(v13 + 8))(v5, v2);
    }

LABEL_11:
    if (*(v6 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(v6 + 32);
      v16 = v14 & ~v15;
      if ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (!*(*(v6 + 48) + v16) || *(*(v6 + 48) + v16) == 1)
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_20;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            return;
          }
        }

LABEL_20:
        sub_10010FC20(&qword_10118B098);
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }
}

_UNKNOWN **sub_10030D078()
{
  static ApplicationCapabilities.shared.getter(v6);
  sub_100014984(v6);
  v1 = BYTE8(v6[0]);
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((*(v0 + 16) & 1) != 0 || v3 == 6)
  {
    if ((v1 & 1) == 0)
    {
      return _swiftEmptyArrayStorage;
    }

    return &off_101098EE0;
  }

  else
  {
    type metadata accessor for MusicLibrary();

    static MusicLibrary.shared.getter();
    sub_10030D80C(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v1 & 1) == 0)
    {
      if (v4)
      {
        return &off_101098F30;
      }

      return _swiftEmptyArrayStorage;
    }

    if (v4)
    {
      return &off_101098F08;
    }

    else
    {
      return &off_101098EE0;
    }
  }
}

void sub_10030D1D4(uint64_t a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10030D80C(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  sub_10010B100(a1, *(v1 + 40));
  v3 = *(v1 + 49);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 72));
}

void sub_10030D404(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 16);
  type metadata accessor for TitledSection();
  type metadata accessor for Artist();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118B098);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*(&v4 - 8));
  sub_10030CCE8(a1);
}

Swift::Int sub_10030D4D8()
{
  Hasher.init(_seed:)();
  sub_10030D1D4(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10030D51C()
{
  Hasher.init(_seed:)();
  sub_10030D1D4(v1);
  return Hasher._finalize()();
}

uint64_t sub_10030D558(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_10030D694(v8, v9) & 1;
}

unint64_t sub_10030D5B8()
{
  result = qword_10118AFB0;
  if (!qword_10118AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118AFB0);
  }

  return result;
}

unint64_t sub_10030D618(uint64_t a1)
{
  result = sub_10030D640();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10030D640()
{
  result = qword_10118B090;
  if (!qword_10118B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118B090);
  }

  return result;
}

uint64_t sub_10030D694(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_10045EC58(*a1);
  v7 = v6;
  if (v5 == sub_10045EC58(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10018FCA0(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 49);
  v12 = *(a2 + 49);
  if (sub_1006B8B0C(*(a1 + 48), *(a2 + 48)) & 1) == 0 || ((v11 ^ v12))
  {
    return 0;
  }

  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v15 = *(a2 + 72);

  return sub_10047B908(v14, v15);
}

uint64_t sub_10030D80C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030D854()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = _findStringSwitchCase(cases:string:)(&off_101098DD8, v7);

    if (!v8)
    {
      return 0;
    }

    if (v8 == 1)
    {
      return 1;
    }
  }

  v10 = [v0 standardUserDefaults];
  Library.SortConfiguration.storageKey.getter(1u);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 stringForKey:v11];

  if (!v12)
  {
    return 3;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  v17 = _findStringSwitchCase(cases:string:)(&off_101098E28, v16);

  if (v17 >= 3)
  {
    return 3;
  }

  else
  {
    return v17;
  }
}

__n128 sub_10030D9E8@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for MusicLibrary();
  v4 = static MusicLibrary.shared.getter();
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_10010FC20(&unk_10118CD70);
  sub_100178DD8(&unk_101182910, sub_100178D84);
  sub_100178DD8(&unk_101182920, sub_100178E50);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v6, v31);

  v7 = v31[0];
  if (!v31[0])
  {
    v8 = sub_10030D854();
    v9 = Optional<A>.convertToSet.getter(v8);
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = &_swiftEmptySetSingleton;
    }
  }

  v10 = a1 & 1;
  LOBYTE(v31[0]) = 1;
  v31[1] = v4;
  v32 = a1 & 1;
  v33 = 0;
  v34 = 0xE000000000000000;
  v35 = &_swiftEmptySetSingleton;
  v36 = 256;
  v37 = 0;
  v38 = 0xE000000000000000;
  v39 = _swiftEmptyArrayStorage;
  v40 = &_swiftEmptySetSingleton;
  v11 = sub_10030D078();
  v12 = sub_1003AE5C4(v11, v7);

  sub_10030DC10(&v40);
  LOBYTE(v16) = 1;
  *(&v16 + 1) = v4;
  v17.n128_u8[0] = v10;
  v17.n128_u64[1] = 0;
  *&v18 = 0xE000000000000000;
  *(&v18 + 1) = v12;
  LOWORD(v19) = 256;
  *(&v19 + 1) = 0;
  *&v20 = 0xE000000000000000;
  *(&v20 + 1) = _swiftEmptyArrayStorage;
  v21[0] = 1;
  v22 = v4;
  v23 = v10;
  v24 = 0;
  v25 = 0xE000000000000000;
  v26 = v12;
  v27 = 256;
  v28 = 0;
  v29 = 0xE000000000000000;
  v30 = _swiftEmptyArrayStorage;
  sub_10030DC78(&v16, &v15);
  sub_10030DCB0(v21);
  v13 = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v13;
  *(a2 + 64) = v20;
  result = v17;
  *a2 = v16;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10030DC10(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118CD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10030DCE0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTrackColor;
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.45];

  *&v1[v4] = v7;
  v8 = OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTrackColor;
  *&v1[v8] = [v5 systemFillColor];
  v9 = OBJC_IVAR____TtC5Music17PlayerTimeControl_slider;
  type metadata accessor for SliderView();
  *&v1[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel;
  type metadata accessor for PlayerTimeControl.TimeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 _setLayoutDebuggingIdentifier:v13];

  *&v1[v10] = v12;
  v14 = OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel;
  v15 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = String._bridgeToObjectiveC()();
  [v15 _setLayoutDebuggingIdentifier:v16];

  *&v1[v14] = v15;
  v17 = OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabel;
  *&v1[v17] = sub_10030F088();
  v18 = OBJC_IVAR____TtC5Music17PlayerTimeControl_liveTrack;
  *&v1[v18] = sub_10030F2AC();
  v19 = OBJC_IVAR____TtC5Music17PlayerTimeControl_trackingTintColor;
  v20 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v21 = *v20;
  *&v1[v19] = *v20;
  *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabelTextColor] = v21;
  *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelTextColor] = 0;
  v1[OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking] = 0;
  *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_backgroundObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_foregroundObserver] = 0;
  v22 = OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeFormatter;
  v23 = objc_allocWithZone(AVTimeFormatter);
  v24 = v21;
  v25 = [v23 init];
  [v25 setStyle:1];
  *&v1[v22] = v25;
  v26 = OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeFormatter;
  v27 = [objc_allocWithZone(AVTimeFormatter) init];
  [v27 setStyle:2];
  *&v1[v26] = v27;
  *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelFont] = 0;
  v28 = OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver;
  type metadata accessor for PlaybackTimeObserver();
  swift_allocObject();
  *&v1[v28] = PlaybackTimeObserver.init(name:)(0xD000000000000014, 0x8000000100E46770);
  v144.receiver = v1;
  v144.super_class = type metadata accessor for PlayerTimeControl();
  v29 = objc_msgSendSuper2(&v144, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  if (qword_10117F8E0 != -1)
  {
    swift_once();
  }

  [v29 setTintColor:qword_101219078];
  v30 = v29;
  [v30 setSemanticContentAttribute:1];
  v31 = OBJC_IVAR____TtC5Music17PlayerTimeControl_slider;
  [*&v30[OBJC_IVAR____TtC5Music17PlayerTimeControl_slider] setSemanticContentAttribute:1];
  v32 = *&v30[v31];
  v33 = *((swift_isaMask & *v32) + 0x1C0);
  v34 = v32;
  v35 = v33();

  [v30 addGestureRecognizer:v35];
  v36 = *&v30[v31];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = *((swift_isaMask & *v36) + 0x2A0);
  v39 = v36;

  v38(sub_100311B2C, v37);

  v40 = *&v30[v31];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v40;

  v43 = *((swift_isaMask & *v42) + 0x2B8);

  v43(sub_100311B34, v41);

  v44 = OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabel;
  [*&v30[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabel] setTextColor:*&v30[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabelTextColor]];
  sub_10010FC20(&qword_101183990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EC3620;
  v46 = *&v30[v31];
  *(inited + 32) = v46;
  v142 = OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel;
  v47 = *&v30[OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel];
  *(inited + 40) = v47;
  v143 = OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel;
  v48 = *&v30[OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel];
  *(inited + 48) = v48;
  v49 = *&v30[v44];
  *(inited + 56) = v49;
  v141 = OBJC_IVAR____TtC5Music17PlayerTimeControl_liveTrack;
  v50 = *&v30[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveTrack];
  *(inited + 64) = v50;
  v51 = inited & 0xC000000000000001;
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v56 = v50;
  if ((inited & 0xC000000000000001) != 0)
  {
    v57 = sub_100062D50(0, inited);
  }

  else
  {
    v57 = v52;
  }

  v58 = v57;
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 addSubview:v58];

  if (v51)
  {
    v59 = sub_100062D50(1uLL, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_24;
    }

    v59 = *(inited + 40);
  }

  v60 = v59;
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 addSubview:v60];

  if (v51)
  {
    v61 = sub_100062D50(2uLL, inited);
    goto LABEL_13;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v61 = *(inited + 48);
LABEL_13:
  v62 = v61;
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 addSubview:v62];

  if (!v51)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v63 = *(inited + 56);
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v63 = sub_100062D50(3uLL, inited);
LABEL_17:
  v64 = v63;
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 addSubview:v64];

  if (v51)
  {
    v65 = sub_100062D50(4uLL, inited);
LABEL_21:
    v66 = v65;

    [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v30 addSubview:v66];

    v140 = objc_opt_self();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100EC3DF0;
    v68 = [*&v30[v44] centerYAnchor];
    v69 = *&v30[v31];
    v70 = *((swift_isaMask & *v69) + 0x1D8);
    v71 = v69;
    v72 = v70();

    v73 = [v72 centerYAnchor];
    v74 = [v68 constraintEqualToAnchor:v73];

    *(v67 + 32) = v74;
    v75 = [*&v30[v44] centerXAnchor];
    v76 = [v30 centerXAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    *(v67 + 40) = v77;
    v78 = [*&v30[v141] leadingAnchor];
    v79 = [v30 leadingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v67 + 48) = v80;
    v81 = [*&v30[v141] trailingAnchor];
    v82 = [v30 trailingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v67 + 56) = v83;
    v84 = [*&v30[v141] topAnchor];
    v85 = *&v30[v31];
    v86 = *((swift_isaMask & *v85) + 0x1D8);
    v87 = v85;
    v88 = v86();

    v89 = [v88 topAnchor];
    v90 = [v84 constraintEqualToAnchor:v89];

    *(v67 + 64) = v90;
    v91 = [*&v30[v141] heightAnchor];
    v92 = *&v30[v31];
    v93 = *((swift_isaMask & *v92) + 0x1D8);
    v94 = v92;
    v95 = v93();

    v96 = [v95 heightAnchor];
    v97 = [v91 constraintEqualToAnchor:v96];

    *(v67 + 72) = v97;
    v98 = *&v30[v31];
    v99 = *((swift_isaMask & *v98) + 0x1D8);
    v100 = v98;
    v101 = v99();

    v102 = [v101 topAnchor];
    v103 = [v30 topAnchor];
    v104 = [v102 constraintEqualToAnchor:v103 constant:10.0];

    *(v67 + 80) = v104;
    v105 = *&v30[v31];
    v106 = *((swift_isaMask & *v105) + 0x1D8);
    v107 = v105;
    v108 = v106();

    v109 = [v108 leadingAnchor];
    v110 = [v30 leadingAnchor];
    v111 = [v109 constraintEqualToAnchor:v110];

    *(v67 + 88) = v111;
    v112 = *&v30[v31];
    v113 = *((swift_isaMask & *v112) + 0x1D8);
    v114 = v112;
    v115 = v113();

    v116 = [v115 trailingAnchor];
    v117 = [v30 trailingAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];

    *(v67 + 96) = v118;
    v119 = [*&v30[v142] leadingAnchor];
    v120 = [v30 leadingAnchor];
    v121 = [v119 constraintEqualToAnchor:v120];

    *(v67 + 104) = v121;
    v122 = [*&v30[v142] firstBaselineAnchor];
    v123 = [*&v30[v31] bottomAnchor];
    v124 = [v122 constraintEqualToAnchor:v123 constant:22.0];

    *(v67 + 112) = v124;
    v125 = [*&v30[v142] bottomAnchor];
    v126 = [v30 bottomAnchor];
    v127 = [v125 constraintEqualToAnchor:v126];

    *(v67 + 120) = v127;
    v128 = [*&v30[v143] trailingAnchor];
    v129 = [v30 trailingAnchor];
    v130 = [v128 constraintEqualToAnchor:v129];

    *(v67 + 128) = v130;
    v131 = [*&v30[v143] firstBaselineAnchor];
    v132 = [*&v30[v31] bottomAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:22.0];

    *(v67 + 136) = v133;
    v134 = [*&v30[v143] bottomAnchor];
    v135 = [v30 bottomAnchor];

    v136 = [v134 constraintEqualToAnchor:v135];
    *(v67 + 144) = v136;
    sub_100009F78(0, &qword_1011838A0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v140 activateConstraints:isa];

    v138 = sub_10031042C();
    __chkstk_darwin(v138);
    __chkstk_darwin(v139);
    sub_10010FC20(&qword_101187648);
    withObservationTracking<A>(_:onChange:)();
    sub_100310248();

    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
  {
    v65 = *(inited + 64);
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void sub_10030ED98(char a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver);
    swift_beginAccess();
    v7 = 0.0;
    if (*(v6 + 104) != 2)
    {
      v7 = *(v6 + 80);
    }

    v8 = v7 * a2;
    v9 = v7 - v8;
    v10 = *&v5[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler];
    if (v10)
    {

      v10(a1 & 1, v8);
      sub_100020438(v10);
    }

    sub_10030FD0C(v8, v9);
    if (v5[OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking] != (a1 & 1))
    {
      v5[OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking] = a1 & 1;
      sub_10030FBC0();
      v11 = v5;
      [v11 layoutIfNeeded];
      if (a1)
      {
        v12 = SliderView.Specs.expandedTransform.unsafeMutableAddressor();
        v14 = *v12;
        v13 = *(v12 + 1);
        v15 = *(v12 + 2);
      }

      else
      {
        v13 = xmmword_100EBEF30;
        v14 = xmmword_100EBEF40;
        v15 = 0uLL;
      }

      v17[0] = v14;
      v17[1] = v13;
      v17[2] = v15;
      [v11 setTransform:v17];

      v16 = *&v11[OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler];
      if (v16)
      {

        v16(a1 & 1);
        sub_100020438(v16);
      }
    }
  }
}

void sub_10030EF40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking) = 0;
    sub_10030FBC0();
    [v1 layoutIfNeeded];
    v2 = *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver];
    swift_beginAccess();
    v3 = *(v2 + 72);
    v5[0] = *(v2 + 56);
    v5[1] = v3;
    v5[2] = *(v2 + 88);
    v6 = *(v2 + 104);
    sub_10030FEA8(v5);
    v4 = *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler];
    if (v4)
    {

      v4(0);
      sub_100020438(v4);
    }
  }
}

id sub_10030F088()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 _setLayoutDebuggingIdentifier:v3];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  StringProtocol.localizedUppercase.getter();
  v4 = String._bridgeToObjectiveC()();

  [v2 setText:v4];

  sub_100009F78(0, &qword_101183A00);
  v5 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v2 setFont:v5];

  [v2 setHidden:1];
  return v2;
}

id sub_10030F2AC()
{
  type metadata accessor for PlayerTimeControl.LiveTrack();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 _setLayoutDebuggingIdentifier:v1];

  v2 = [objc_opt_self() systemFillColor];
  [v0 setBackgroundColor:v2];

  [v0 setHidden:1];
  return v0;
}

void sub_10030F3E0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for PlayerTimeControl();
  v10.receiver = v2;
  v10.super_class = v4;
  v5 = objc_msgSendSuper2(&v10, "isHidden");
  v9.receiver = v2;
  v9.super_class = v4;
  objc_msgSendSuper2(&v9, "setHidden:", a1 & 1);
  if (v5 != [v2 isHidden])
  {
    v6 = [v2 superview];
    if (v6 && (v6, [v2 alpha], v7 > 0.0) && (objc_msgSend(v2, "isHidden") & 1) == 0)
    {
      v8 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking) ^ 1;
    }

    else
    {
      v8 = 0;
    }

    PlaybackTimeObserver.automaticallyUpdates.setter(v8 & 1);
  }
}

void sub_10030F574(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for PlayerTimeControl();
  v12.receiver = v2;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, "alpha");
  v6 = v5;
  v11.receiver = v2;
  v11.super_class = v4;
  objc_msgSendSuper2(&v11, "setAlpha:", a1);
  [v2 alpha];
  if (v6 != v7)
  {
    v8 = [v2 superview];
    if (v8 && (v8, [v2 alpha], v9 > 0.0) && (objc_msgSend(v2, "isHidden") & 1) == 0)
    {
      v10 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking) ^ 1;
    }

    else
    {
      v10 = 0;
    }

    PlaybackTimeObserver.automaticallyUpdates.setter(v10 & 1);
  }
}

void sub_10030F670()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PlayerTimeControl();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveTrack];
  v2 = [v1 layer];
  [v1 bounds];
  [v2 setCornerRadius:CGRectGetHeight(v10) * 0.5];

  [*&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabel] bounds];
  Width = CGRectGetWidth(v11);
  [v1 bounds];
  v4 = CGRectGetWidth(v12);
  if (v4 <= 1.0)
  {
    v4 = 1.0;
  }

  v5 = (Width + 8.0) / v4;
  v6 = OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack_erasedPercentage;
  *&v1[OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack_erasedPercentage] = v5;
  if (v5 < 0.0 || v5 > 1.0)
  {
    v8 = fmin(v5, 1.0);
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    *&v1[v6] = v8;
  }

  else if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    sub_100310DCC();
  }
}

void sub_10030F918()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PlayerTimeControl();
  objc_msgSendSuper2(&v4, "didMoveToSuperview");
  v1 = [v0 superview];
  if (v1 && (v1, [v0 alpha], v2 > 0.0) && (objc_msgSend(v0, "isHidden") & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  PlaybackTimeObserver.automaticallyUpdates.setter(v3 & 1);
}

id sub_10030FA7C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for PlayerTimeControl();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_10030FBC0()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel];
  v2 = OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking;
  if (v0[OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking] == 1)
  {
    v3 = [objc_opt_self() labelColor];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelTextColor];
    if (v4)
    {
      v5 = v4;
      goto LABEL_7;
    }

    v3 = [v0 tintColor];
  }

  v5 = v3;
LABEL_7:
  v6 = v5;
  [v1 setTextColor:v5];

  v7 = *&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel];
  if (v0[v2] == 1)
  {
    v8 = [objc_opt_self() labelColor];
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelTextColor];
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    v8 = [v0 tintColor];
  }

  v10 = v8;
LABEL_13:
  v11 = v10;
  [v7 setTextColor:?];
}

void sub_10030FD0C(double a1, double a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel);
  v5 = OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeFormatter;
  v6 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeFormatter);
  if (a1 > 0.0 || a2 > 0.0)
  {
    v10 = [v6 stringFromSeconds:?];
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    [v4 setText:v10];

    v8 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel);
    v9 = [*(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeFormatter) stringFromSeconds:a2];
  }

  else
  {
    v7 = [v6 stringFromSeconds:NAN];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v4 setText:v7];

    v8 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel);
    v9 = [*(v2 + v5) stringFromSeconds:NAN];
  }

  v11 = v9;
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v11 = v12;
  }

  v13 = v11;
  [v8 setText:?];
}

void sub_10030FEA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver);
  swift_beginAccess();
  v5 = (*(v4 + 104) != 2) & *(v4 + 104);
  PlaybackTimeObserver.durationSnapshot.setter(a1);
  v6 = *(a1 + 48);
  if (v6 == 2)
  {
    if ((v5 & 1) == 0)
    {
      return;
    }

    LOBYTE(v6) = 0;
  }

  else if (v5 == (v6 & 1))
  {
    return;
  }

  sub_10010FC20(&qword_101183990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6D0;
  v8 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabel);
  v9 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_liveTrack);
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBE270;
  v11 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
  v12 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel);
  *(v10 + 48) = v13;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v6 & 1;
  *(v15 + 32) = v10;
  aBlock[4] = sub_100311AF0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A6328;
  v16 = _Block_copy(aBlock);
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  v21 = v13;

  [v14 _animateUsingSpringWithDuration:0 delay:v16 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:300.0 animations:24.0 completion:0.0];
  _Block_release(v16);
}

void sub_1003100EC(unint64_t a1, unsigned __int8 a2, unint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = sub_100062D50(i, a1);
    }

    else
    {
      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    [v8 setHidden:(a2 ^ 1) & 1];
  }

LABEL_10:
  if (a3 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  if (v10 < 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  for (j = 0; j != v10; ++j)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v12 = sub_100062D50(j, a3);
    }

    else
    {
      v12 = *(a3 + 8 * j + 32);
    }

    v13 = v12;
    [v12 setHidden:a2 & 1];
  }
}

void sub_100310248()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking;
  if (v0[OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking] == 1)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_slider];
    v4 = *((swift_isaMask & *v3) + 0x238);
    v5 = v3;
    v6 = v4();
  }

  else
  {
    v7 = PlaybackTimeObserver.effectiveElapsedTime.getter();
    v6 = 0.0;
    if ((v8 & 1) == 0)
    {
      v6 = *&v7;
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver];
  swift_beginAccess();
  v10 = 0.0;
  if (*(v9 + 104) != 2)
  {
    v10 = *(v9 + 80);
  }

  v11 = v6 * v10;
  v12 = v10 - v6 * v10;
  if ((v1[v2] & 1) == 0)
  {
    v13 = *&v1[OBJC_IVAR____TtC5Music17PlayerTimeControl_slider];
    v14 = *((swift_isaMask & *v13) + 0x2C8);
    v15 = v13;
    v14(0, v6);
  }

  sub_10030FD0C(v11, v12);
  v16 = [v1 superview];
  if (v16 && (v16, [v1 alpha], v17 > 0.0) && (objc_msgSend(v1, "isHidden") & 1) == 0)
  {
    v18 = v1[v2] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  PlaybackTimeObserver.automaticallyUpdates.setter(v18 & 1);
}

id sub_10031042C()
{
  v1 = [objc_opt_self() defaultMetrics];
  v2 = [v0 traitCollection];
  [v1 scaledValueForValue:v2 compatibleWithTraitCollection:12.0];
  v4 = v3;

  v5 = [objc_opt_self() monospacedDigitSystemFontOfSize:v4 weight:UIFontWeightSemibold];
  v6 = OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelFont;
  v7 = *&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelFont];
  *&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelFont] = v5;
  v8 = v5;

  [*&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel] setFont:v8];
  [*&v0[OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel] setFont:*&v0[v6]];

  [v0 invalidateIntrinsicContentSize];
  [v0 setNeedsUpdateConstraints];

  return [v0 setNeedsLayout];
}

void sub_10031057C()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_1001F4CB8(0, 0, v2, &unk_100EC69B0, v8);
  }
}

uint64_t sub_1003106D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100310768, v6, v5);
}

uint64_t sub_100310768()
{
  v1 = *(v0 + 32);

  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_10010FC20(&qword_101187648);
  withObservationTracking<A>(_:onChange:)();

  sub_100310248();
  v2 = *(v0 + 8);

  return v2();
}

id sub_100310ABC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack_erasedPercentage] = 0x3FD0000000000000;
  v9 = OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor;
  *&v4[v9] = [objc_opt_self() systemFillColor];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for PlayerTimeControl.LiveTrack();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 layer];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  [v12 setStartPoint:{0.0, 0.5}];
  [v12 setEndPoint:{1.0, 0.5}];
  sub_100310DCC();

  return v10;
}

void sub_100310DCC()
{
  v15 = [v0 layer];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  sub_10010FC20(&qword_101181530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBEF50;
  v3 = OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor;
  v4 = [*&v0[OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor] CGColor];
  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v2 + 56) = v5;
  *(v2 + 32) = v4;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  v9 = [v8 CGColor];

  *(v2 + 88) = v6;
  *(v2 + 64) = v9;
  v10 = [v7 clearColor];
  v11 = [v10 CGColor];

  *(v2 + 120) = v6;
  *(v2 + 96) = v11;
  v12 = [*&v0[v3] CGColor];
  *(v2 + 152) = v6;
  *(v2 + 128) = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setColors:isa];

  sub_10010FC20(&qword_101183990);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBDC10;
  sub_100009F78(0, &qword_101189A20);
  *(v14 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v14 + 40) = CGFloat._bridgeToObjectiveC()();
  *(v14 + 48) = CGFloat._bridgeToObjectiveC()();
  *(v14 + 56) = NSNumber.init(floatLiteral:)(1.0);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setLocations:v16];
}

void sub_1003112F0(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlayerTimeControl.TimeLabel();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 layer];
  v4 = *&v1[OBJC_IVAR____TtCC5Music17PlayerTimeControl9TimeLabel_multipliedTextColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 traitCollection];
    v7 = [v5 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
  }

  else
  {
    v8 = 0;
  }

  [v3 setContentsMultiplyColor:v8];
}

id sub_10031157C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1003115E8(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTrackColor;
  v4 = *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTrackColor);
  *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTrackColor) = a1;
  v5 = a1;

  v6 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
  v7 = *((swift_isaMask & *v6) + 0x210);
  v8 = v6;
  v7(v5);

  v9 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_liveTrack);
  v10 = *(v2 + v3);

  return [v9 setBackgroundColor:v10];
}

void sub_1003116C8()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTrackColor;
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.45];

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTrackColor;
  *(v1 + v8) = [v5 systemFillColor];
  v9 = OBJC_IVAR____TtC5Music17PlayerTimeControl_slider;
  type metadata accessor for SliderView();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel;
  type metadata accessor for PlayerTimeControl.TimeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 _setLayoutDebuggingIdentifier:v13];

  *(v1 + v10) = v12;
  v14 = OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeLabel;
  v15 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = String._bridgeToObjectiveC()();
  [v15 _setLayoutDebuggingIdentifier:v16];

  *(v1 + v14) = v15;
  v17 = OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabel;
  *(v1 + v17) = sub_10030F088();
  v18 = OBJC_IVAR____TtC5Music17PlayerTimeControl_liveTrack;
  *(v1 + v18) = sub_10030F2AC();
  v19 = OBJC_IVAR____TtC5Music17PlayerTimeControl_trackingTintColor;
  v20 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v21 = *v20;
  *(v1 + v19) = *v20;
  *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabelTextColor) = v21;
  *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelTextColor) = 0;
  *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl__tracking) = 0;
  *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl_backgroundObserver) = 0;
  *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl_foregroundObserver) = 0;
  v22 = OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeFormatter;
  v23 = objc_allocWithZone(AVTimeFormatter);
  v24 = v21;
  v25 = [v23 init];
  [v25 setStyle:1];
  *(v1 + v22) = v25;
  v26 = OBJC_IVAR____TtC5Music17PlayerTimeControl_remainingTimeFormatter;
  v27 = [objc_allocWithZone(AVTimeFormatter) init];
  [v27 setStyle:2];
  *(v1 + v26) = v27;
  *(v1 + OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelFont) = 0;
  v28 = OBJC_IVAR____TtC5Music17PlayerTimeControl_timeObserver;
  type metadata accessor for PlaybackTimeObserver();
  swift_allocObject();
  *(v1 + v28) = PlaybackTimeObserver.init(name:)(0xD000000000000014, 0x8000000100E46770);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003119E8(void *a1)
{
  v2 = OBJC_IVAR____TtCC5Music17PlayerTimeControl9TimeLabel_multipliedTextColor;
  v3 = *&v1[OBJC_IVAR____TtCC5Music17PlayerTimeControl9TimeLabel_multipliedTextColor];
  *&v1[OBJC_IVAR____TtCC5Music17PlayerTimeControl9TimeLabel_multipliedTextColor] = a1;
  v4 = a1;

  v5 = [v1 layer];
  v6 = *&v1[v2];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 traitCollection];
    v9 = [v7 resolvedColorWithTraitCollection:v8];

    v10 = [v9 CGColor];
  }

  else
  {
    v10 = 0;
  }

  [v5 setContentsMultiplyColor:v10];
}

double sub_100311B00(uint64_t a1, double a2)
{
  v2 = *(a1 + 32) + (a2 - *a1) * *(a1 + 40);
  if (v2 >= *(a1 + 24))
  {
    v2 = *(a1 + 24);
  }

  return fmax(v2, 0.0);
}

uint64_t sub_100311B4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1003106D0(a1, v4, v5, v6);
}

uint64_t sub_100311C00@<X0>(uint64_t a1@<X8>)
{
  result = PlaybackTimeObserver.effectiveElapsedTime.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void (*sub_100311C40())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_100311B44;
}

Swift::Int sub_100311CB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100311D7C()
{
  String.hash(into:)();
}

Swift::Int sub_100311E34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100311EFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10031215C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100311F3C()
{
  LOBYTE(v1) = 0;
  sub_100027238();
  sub_100009838();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100011DF0(&v2);
    return 0;
  }
}

uint64_t sub_100311FF0(unsigned __int8 a1)
{
  sub_100027238();
  sub_100009838();
  NSUserDefaults.subscript.getter(&v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return a1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_100011DF0(&v3);
    return 2;
  }
}

unint64_t sub_1003120A0()
{
  result = qword_10118B1D8;
  if (!qword_10118B1D8)
  {
    sub_1001109D0(&qword_10118B1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118B1D8);
  }

  return result;
}

unint64_t sub_100312108()
{
  result = qword_10118B1E8;
  if (!qword_10118B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118B1E8);
  }

  return result;
}

unint64_t sub_10031215C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A3A0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003121A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicPin.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicPin.Item.album(_:) || v6 == enum case for MusicPin.Item.artist(_:))
  {
    goto LABEL_6;
  }

  if (v6 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v3 + 96))(v5, v2);
    v10 = type metadata accessor for MusicVideo();
    (*(*(v10 - 8) + 32))(a1, v5, v10);
    v11 = &enum case for Track.musicVideo(_:);
    goto LABEL_9;
  }

  if (v6 == enum case for MusicPin.Item.playlist(_:))
  {
LABEL_6:
    (*(v3 + 8))(v5, v2);
    v8 = type metadata accessor for Track();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  if (v6 != enum case for MusicPin.Item.song(_:))
  {
    v16 = type metadata accessor for Track();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 96))(v5, v2);
  v15 = type metadata accessor for Song();
  (*(*(v15 - 8) + 32))(a1, v5, v15);
  v11 = &enum case for Track.song(_:);
LABEL_9:
  v12 = *v11;
  v13 = type metadata accessor for Track();
  v14 = *(v13 - 8);
  (*(v14 + 104))(a1, v12, v13);
  return (*(v14 + 56))(a1, 0, 1, v13);
}

unint64_t sub_1003124C4(int a1)
{
  v29 = a1;
  v1 = type metadata accessor for MusicPin.Action();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MusicPin.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  strcpy(&v32, "shelfItem.Pin");
  HIWORD(v32._object) = -4864;
  v31._countAndFlagsBits = 1029990747;
  v31._object = 0xE400000000000000;
  MusicPin.id.getter();
  v9 = MusicItemID.description.getter();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x657079546E69702CLL;
  v13._object = 0xE90000000000003DLL;
  String.append(_:)(v13);
  String.append(_:)(v31);

  MusicPin.item.getter();
  v14 = (*(v6 + 88))(v8, v5);
  if (v14 == enum case for MusicPin.Item.album(_:))
  {
    v15 = 0x6D75626C61;
    v16 = 0xE500000000000000;
  }

  else if (v14 == enum case for MusicPin.Item.artist(_:))
  {
    v15 = 0x747369747261;
    v16 = 0xE600000000000000;
  }

  else if (v14 == enum case for MusicPin.Item.musicVideo(_:))
  {
    v15 = 0x646956636973756DLL;
    v16 = 0xEA00000000006F65;
  }

  else if (v14 == enum case for MusicPin.Item.playlist(_:))
  {
    v15 = 0x7473696C79616C70;
    v16 = 0xE800000000000000;
  }

  else
  {
    if (v14 != enum case for MusicPin.Item.song(_:))
    {
      goto LABEL_12;
    }

    v15 = 1735290739;
    v16 = 0xE400000000000000;
  }

  String.append(_:)(*&v15);
LABEL_12:
  (*(v6 + 8))(v8, v5);
  v17._countAndFlagsBits = 0x3D6E6F697463612CLL;
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  MusicPin.action.getter();
  v18 = (*(v2 + 88))(v4, v1);
  if (v18 == enum case for MusicPin.Action.navigate(_:))
  {
    v19._countAndFlagsBits = 0x657461676976616ELL;
    v19._object = 0xE800000000000000;
    String.append(_:)(v19);
  }

  else if (v18 == enum case for MusicPin.Action.play(_:))
  {
    v20._countAndFlagsBits = 2036427888;
    v20._object = 0xE400000000000000;
    String.append(_:)(v20);
  }

  else if (v18 == enum case for MusicPin.Action.shuffle(_:))
  {
    v21._countAndFlagsBits = 0x656C6666756873;
    v21._object = 0xE700000000000000;
    String.append(_:)(v21);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
  }

  v31._countAndFlagsBits = 0x3D7865646E692CLL;
  v31._object = 0xE700000000000000;
  v30 = MusicPin.position.getter();
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  String.append(_:)(v31);

  if (v29 != 2)
  {
    v31._countAndFlagsBits = 0x676E69746964652CLL;
    v31._object = 0xE90000000000003DLL;
    if (v29)
    {
      v23 = 1702195828;
    }

    else
    {
      v23 = 0x65736C6166;
    }

    if (v29)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = v24;
    String.append(_:)(*&v23);

    String.append(_:)(v31);
  }

  v26._countAndFlagsBits = 93;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  return AccessibilityIdentifier.init(name:)(v32);
}

uint64_t MusicPin.commandIssuingIdentifier.getter()
{
  v0 = type metadata accessor for MusicPin.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0x6E6950636973754DLL;
  v15 = 0xE900000000000028;
  MusicPin.item.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MusicPin.Item.album(_:))
  {
    v5 = 0x3A44496D75626C41;
    v6 = 0xE800000000000000;
  }

  else if (v4 == enum case for MusicPin.Item.artist(_:))
  {
    v5 = 0x4449747369747241;
    v6 = 0xE90000000000003ALL;
  }

  else
  {
    if (v4 != enum case for MusicPin.Item.musicVideo(_:))
    {
      if (v4 == enum case for MusicPin.Item.playlist(_:))
      {
        v5 = 0x7473696C79616C50;
        v7 = 17481;
      }

      else
      {
        if (v4 == enum case for MusicPin.Item.song(_:))
        {
          v5 = 0x3A4449676E6F53;
          v6 = 0xE700000000000000;
          goto LABEL_13;
        }

        v5 = 0x79546E776F6E6B55;
        v7 = 25968;
      }

      v6 = v7 & 0xFFFF0000FFFFLL | 0xEB000000003A0000;
      goto LABEL_13;
    }

    v5 = 0x646956636973754DLL;
    v6 = 0xED00003A44496F65;
  }

LABEL_13:
  String.append(_:)(*&v5);
  (*(v1 + 8))(v3, v0);
  MusicPin.id.getter();
  v8 = MusicItemID.description.getter();
  v10 = v9;

  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  String.append(_:)(v13);

  return v14;
}

void sub_100312C8C(id a1, void *a2, char *a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v86 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v10 - 8);
  v88 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v74 - v13;
  v15 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v74 - v16;
  v18 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v18 - 8);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  __chkstk_darwin(v24);
  v26 = &v74 - v25;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v27 = (*(*qword_101218AC8 + 432))();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 tracklist];

    v87 = v29;
    if (v29)
    {
      v81 = a2;
      v83 = a1;
      v82 = a3;
      v30 = *(*&a3[OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext] + 32);
      if (v30 >= 0)
      {
        v31 = *(*&a3[OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext] + 32);
      }

      else
      {
        v31 = (v30 & 0x7FFFFFFFFFFFFFFFLL);
      }

      v32 = (v30 & 0x7FFFFFFFFFFFFFFFLL);
      v84 = static PresentationSource.topmostPresentedViewController(from:options:)(v31, 0);

      v33 = type metadata accessor for Actions.PlaybackContext();
      v34 = *(v33 - 8);
      v35 = *(v34 + 56);
      v35(v26, 1, 1, v33);
      v36 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
      sub_1000089F8(v26, v20, &unk_10118AB20);
      v37 = *(v34 + 48);
      if (v37(v20, 1, v33) == 1)
      {
        v79 = v37;
        v80 = v35;
        v38 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
        (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
        *&v100 = 0;
        v98 = 0u;
        v99 = 0u;
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v39 = qword_101218AD8;
        v40 = v88;
        sub_1000089F8(v14, v88, &unk_1011838E0);
        v78 = v39;
        v41 = v84;
        v77 = UIViewController.playActivityInformation.getter();
        v76 = v42;
        v75 = v43;
        v74 = v44;
        sub_1000089F8(&v98, &v93, &unk_101183910);
        if (v94)
        {
          sub_100188D80(&v93, &v95);
          v35 = v80;
        }

        else
        {
          v89[0] = v41;
          sub_100009F78(0, &qword_101183D40);
          v45 = v41;
          sub_10010FC20(&unk_101183920);
          if (swift_dynamicCast())
          {
            sub_100188D80(&v90, &v95);
            v35 = v80;
          }

          else
          {
            v92 = 0;
            v91 = 0u;
            v90 = 0u;
            *&v95 = v45;
            v46 = v45;
            v47 = String.init<A>(reflecting:)();
            *(&v96 + 1) = &type metadata for Player.CommandIssuerIdentity;
            *&v97 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v95 = v47;
            *(&v95 + 1) = v48;
            v35 = v80;
            if (*(&v91 + 1))
            {
              sub_1000095E8(&v90, &unk_101183910);
            }
          }

          v40 = v88;
          if (v94)
          {
            sub_1000095E8(&v93, &unk_101183910);
          }
        }

        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v78, v40, v77, v76, v75, v74, &v95, v23);
        sub_1000095E8(&v98, &unk_101183910);
        sub_1000095E8(v14, &unk_1011838E0);
        if (v79(v20, 1, v33) != 1)
        {
          sub_1000095E8(v20, &unk_10118AB20);
        }
      }

      else
      {
        sub_100314A80(v20, v23);
      }

      v35(v23, 0, 1, v33);
      v49 = v84;
      v50 = v87;
      sub_1001CCD5C(v84, v23, v17, variable initialization expression of Library.Context.playlistVariants, 0, &v95);
      sub_1000095E8(v23, &unk_10118AB20);
      a1 = v83;
      if (*(&v95 + 1))
      {
        v98 = v95;
        v99 = v96;
        v100 = v97;
        *&v93 = &off_10109A488;
        sub_100124084(&off_10109A460);
        v51 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v93, 1);

        v90 = v98;
        sub_100015BB0(&v90);
        v93 = v99;
        sub_100015BB0(&v93);

        sub_1000095E8(v17, &unk_1011838F0);
        sub_1000095E8(v26, &unk_10118AB20);
        a3 = v82;
        a2 = v81;
        if (v51)
        {
          sub_100009F78(0, &unk_1011845F0);
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v52 = String.init(localized:table:bundle:locale:comment:)();
          v54 = v53;
          if (qword_10117F578 != -1)
          {
            swift_once();
          }

          v89[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89[1] = v55;
          v56._countAndFlagsBits = 0x676E6F532ELL;
          v56._object = 0xE500000000000000;
          String.append(_:)(v56);
          v57 = String._bridgeToObjectiveC()();

          v58 = [v51 children];
          sub_100009F78(0, &qword_10118CDE0);
          v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v60._countAndFlagsBits = v52;
          v60._object = v54;
          v101.value.super.isa = 0;
          v101.is_nil = v57;
          v61.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v60, 0, v101, 0, 0xFFFFFFFFFFFFFFFFLL, v59, v73).super.super.isa;
          [v83 insertSiblingMenu:v61.super.super.isa afterMenuForIdentifier:UIMenuEdit];

          goto LABEL_34;
        }
      }

      else
      {

        sub_1000095E8(v17, &unk_1011838F0);
        sub_1000095E8(v26, &unk_10118AB20);
        a3 = v82;
        a2 = v81;
      }
    }
  }

  if (qword_10117F580 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_1000060E4(v62, qword_101218A28);
  v63 = a2;
  v64 = a3;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = a1;
    v69 = swift_slowAlloc();
    v89[0] = v69;
    *v67 = 136446210;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = sub_1000105AC(v70, v71, v89);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v65, v66, "| ❌ %{public}s – Unable to create a contextMenu for the playing item, using disabled menu", v67, 0xCu);
    sub_10000959C(v69);
    a1 = v68;
  }

  v61.super.super.isa = sub_1003139B4();
  [a1 insertSiblingMenu:v61.super.super.isa afterMenuForIdentifier:UIMenuEdit];
LABEL_34:
}

id sub_1003138A8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_100313940(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

Class sub_1003139B4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for DisabledAction();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 systemImageNamed:v2];

  v83 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 systemImageNamed:v5];

  v81 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v3 systemImageNamed:v7];

  v79 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v3 systemImageNamed:v9];

  v77 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v3 systemImageNamed:v11];

  v75 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v3 systemImageNamed:v13];

  v73 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v3 systemImageNamed:v15];

  v71 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v3 systemImageNamed:v17];

  v70 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v3 systemImageNamed:v19];

  v69 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v3 imageNamed:v21];

  v68 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v3 systemImageNamed:v23];

  v67 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v3 systemImageNamed:v25];

  v66 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v3 systemImageNamed:v27];

  v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v30 = String._bridgeToObjectiveC()();
  v31 = [v3 systemImageNamed:v30];

  v65 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100009F78(0, &unk_1011845F0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v63 = v33;
  v64 = v32;
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34._countAndFlagsBits = 0x676E6F532ELL;
  v34._object = 0xE500000000000000;
  String.append(_:)(v34);
  v62 = String._bridgeToObjectiveC()();

  sub_10010FC20(&qword_101183990);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100EC3620;
  type metadata accessor for DisabledMenu();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBC6C0;
  *(v36 + 32) = v83;
  v84 = v83;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v85.value.super.isa = 0;
  v85.is_nil = 0;
  *(v35 + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v85, 1, 0xFFFFFFFFFFFFFFFFLL, v36, v56);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100EBC6C0;
  *(v38 + 32) = v81;
  v82 = v81;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v86.value.super.isa = 0;
  v86.is_nil = 0;
  *(v35 + 40) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v86, 1, 0xFFFFFFFFFFFFFFFFLL, v38, v57);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EC3620;
  *(v40 + 32) = v79;
  *(v40 + 40) = v77;
  *(v40 + 48) = v75;
  *(v40 + 56) = v73;
  *(v40 + 64) = v71;
  v80 = v79;
  v78 = v77;
  v76 = v75;
  v74 = v73;
  v72 = v71;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v87.value.super.isa = 0;
  v87.is_nil = 0;
  *(v35 + 48) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v87, 1, 0xFFFFFFFFFFFFFFFFLL, v40, v58);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100EBDC10;
  *(v42 + 32) = v70;
  *(v42 + 40) = v69;
  *(v42 + 48) = v68;
  *(v42 + 56) = v67;
  v43 = v70;
  v44 = v69;
  v45 = v68;
  v46 = v67;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v88.value.super.isa = 0;
  v88.is_nil = 0;
  *(v35 + 56) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v47, 0, v88, 1, 0xFFFFFFFFFFFFFFFFLL, v42, v59);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100EBE270;
  *(v48 + 32) = v66;
  *(v48 + 40) = v29;
  *(v48 + 48) = v65;
  v49 = v66;
  v50 = v29;
  v51 = v65;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v89.value.super.isa = 0;
  v89.is_nil = 0;
  *(v35 + 64) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52, 0, v89, 1, 0xFFFFFFFFFFFFFFFFLL, v48, v60);
  v53._object = v63;
  v53._countAndFlagsBits = v64;
  v90.value.super.isa = 0;
  v90.is_nil = v62;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v53, 0, v90, 0, 0xFFFFFFFFFFFFFFFFLL, v35, v61).super.super.isa;

  return isa;
}

uint64_t sub_100314A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.PlaybackContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100314AEC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_10049DE94();

  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC5Music17MainSceneDelegate_responder];
    v3 = v2;

    if (v2)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100314B80()
{
  v1 = OBJC_IVAR____TtC5Music19ApplicationMainMenu____lazy_storage___submenus;
  if (*&v0[OBJC_IVAR____TtC5Music19ApplicationMainMenu____lazy_storage___submenus])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music19ApplicationMainMenu____lazy_storage___submenus];
  }

  else
  {
    v3 = v0;
    sub_10010FC20(&qword_10118B280);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100EC6C60;
    v4 = v0;
    sub_10031BBA8(v4);
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    *(v2 + 56) = &_s8FileMenuVN;
    *(v2 + 64) = &off_1010A6AD0;
    v13 = swift_allocObject();
    *(v2 + 32) = v13;
    v13[2] = v6;
    v13[3] = v8;
    v13[4] = v10;
    v13[5] = v12;
    *(v2 + 96) = &_s8EditMenuVN;
    *(v2 + 104) = &off_10109D448;
    *(v2 + 72) = UIMenuEdit;
    *(v2 + 80) = v4;
    v14 = qword_10117F578;
    v15 = v4;
    v16 = UIMenuEdit;
    if (v14 != -1)
    {
      swift_once();
    }

    *&v29[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v29[0] + 1) = v17;
    v18._countAndFlagsBits = 0x676E6F532ELL;
    v18._object = 0xE500000000000000;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    *(v2 + 136) = &_s8SongMenuVN;
    *(v2 + 144) = &off_1010A6530;
    *(v2 + 112) = v19;
    *(v2 + 120) = v15;
    v20 = v15;
    sub_10031EA30(v20, v27);
    *(v2 + 176) = &_s8ViewMenuVN;
    *(v2 + 184) = &off_1010A6C08;
    v21 = swift_allocObject();
    *(v2 + 152) = v21;
    v22 = v27[1];
    *(v21 + 16) = v27[0];
    *(v21 + 32) = v22;
    *(v21 + 48) = v28;
    sub_100318EA8(v20, v29);
    *(v2 + 216) = &_s12ControlsMenuVN;
    *(v2 + 224) = &off_1010A68B0;
    v23 = swift_allocObject();
    *(v2 + 192) = v23;
    v24 = v29[3];
    *(v23 + 48) = v29[2];
    *(v23 + 64) = v24;
    *(v23 + 80) = v29[4];
    *(v23 + 96) = v30;
    v25 = v29[1];
    *(v23 + 16) = v29[0];
    *(v23 + 32) = v25;
    *&v3[v1] = v2;
  }

  return v2;
}

void sub_100314DE4(void *a1)
{
  sub_100315BC0();
  v2 = [a1 system];
  v3 = [objc_opt_self() mainSystem];
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101218A28);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "╭ Building the Application Main Menu", v8, 2u);
    }

    [a1 removeMenuForIdentifier:UIMenuFormat];
    v9 = sub_100314B80();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + 32;
      do
      {
        sub_100008FE4(v11, v17);
        v12 = v18;
        v13 = v19;
        sub_10000954C(v17, v18);
        (*(v13 + 24))(a1, v12, v13);
        sub_10000959C(v17);
        v11 += 40;
        --v10;
      }

      while (v10);
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "╰ Done", v16, 2u);
    }
  }
}

uint64_t sub_1003150B0(uint64_t a1)
{
  v2 = sub_100314B80();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_100008FE4(v4, v8);
      v5 = v9;
      v6 = v10;
      sub_10000954C(v8, v9);
      (*(v6 + 32))(a1, v5, v6);
      sub_10000959C(v8);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

uint64_t sub_1003151F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100314B80();
  result = v6 + 32;
  v8 = -*(v6 + 16);
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {

      sub_1000189C0(a2, v24);
      v14 = v25;
      if (v25)
      {
        v15 = sub_10000954C(v24, v25);
        v16 = *(v14 - 8);
        v17 = __chkstk_darwin(v15);
        v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v19, v17);
        v20 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v16 + 8))(v19, v14);
        sub_10000959C(v24);
      }

      else
      {
        v20 = 0;
      }

      v21 = type metadata accessor for ApplicationMainMenu();
      v23.receiver = v3;
      v23.super_class = v21;
      v13 = objc_msgSendSuper2(&v23, "canPerformAction:withSender:", a1, v20);
      swift_unknownObjectRelease();
      return v13 & 1;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    v10 = result + 40;
    sub_100008FE4(result, v24);
    v11 = v25;
    v12 = v26;
    sub_10000954C(v24, v25);
    v13 = (*(v12 + 40))(a1, a2, v11, v12);
    sub_10000959C(v24);
    result = v10;
    if (v13 != 2)
    {

      return v13 & 1;
    }
  }

  __break(1u);
  return result;
}

id sub_1003154C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationMainMenu();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100315554(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v7 = *(v4 + 16);
  v5 = v4 + 16;
  v6 = v7;
  if (v7)
  {
    v65 = a1;
    v8 = v5 + 16 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    a1 = v10 + 8;
    v12 = *(v10 + 8);
    v63 = v9;
    v13 = v12(ObjectType, v10);
    v14 = 0;
    v15 = *(v13 + 16);
    v66 = _swiftEmptyArrayStorage;
LABEL_3:
    v16 = (v13 + 32 + 32 * v14);
    while (v15 != v14)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v17 = v16 + 4;
      ++v14;
      a1 = *v16;
      v16 += 4;
      if (a1)
      {
        v18 = *(v17 - 3);
        v19 = *(v17 - 2);
        v20 = *(v17 - 1);

        v21 = a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_100499918(0, *(v66 + 2) + 1, 1, v66);
        }

        a1 = *(v66 + 2);
        v22 = *(v66 + 3);
        if (a1 >= v22 >> 1)
        {
          v66 = sub_100499918((v22 > 1), a1 + 1, 1, v66);
        }

        *(v66 + 2) = a1 + 1;
        v23 = &v66[32 * a1];
        *(v23 + 4) = v21;
        *(v23 + 5) = v18;
        *(v23 + 6) = v19;
        *(v23 + 7) = v20;
        goto LABEL_3;
      }
    }

    v64 = *(v66 + 2);
    if (v64)
    {
      v24 = 0;
      a1 = (v66 + 56);
      while (1)
      {
        v25 = v65;
        if (v24 >= *(v66 + 2))
        {
          goto LABEL_40;
        }

        v26 = *(a1 - 24);
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
        if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
        {
          break;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v33 = v26;

        if (v32)
        {

          v25 = v65;
          goto LABEL_33;
        }

        ++v24;

        a1 += 32;
        if (v64 == v24)
        {
          goto LABEL_21;
        }
      }

      v52 = v26;

LABEL_33:
      if (qword_10117F580 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000060E4(v53, qword_101218A28);
      v54 = v25;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v67 = v58;
        *v57 = 136446210;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = sub_1000105AC(v59, v60, &v67);

        *(v57 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v55, v56, "| ✅ %{public}s", v57, 0xCu);
        sub_10000959C(v58);
      }

      return v26;
    }

LABEL_21:

    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000060E4(v34, qword_101218A28);
    v35 = v65;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67 = v39;
      *v38 = 136446210;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = sub_1000105AC(v40, v41, &v67);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "| ❌ %{public}s – could not find a submenuContext", v38, 0xCu);
      sub_10000959C(v39);
    }
  }

  else
  {
    if (qword_10117F580 != -1)
    {
LABEL_41:
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000060E4(v43, qword_101218A28);
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67 = v48;
      *v47 = 136446210;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = sub_1000105AC(v49, v50, &v67);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "| ❌ %{public}s – could not find an activeSubmenuProvider", v47, 0xCu);
      sub_10000959C(v48);
    }
  }

  return 0;
}

NSString sub_100315B88()
{
  result = String._bridgeToObjectiveC()();
  qword_101218A20 = result;
  return result;
}

unint64_t sub_100315BC0()
{
  result = qword_10118B288;
  if (!qword_10118B288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118B288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationMainMenu.NowPlayingContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t type metadata accessor for ApplicationMainMenu.ParentFolderContext()
{
  result = qword_10118B2E8;
  if (!qword_10118B2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100315D30()
{
  sub_10005BAFC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100315D9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100315DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100315E34(void *a1)
{
  v2 = v1;
  v79 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009F78(0, &unk_1011845F0);
  v8 = sub_100319BE4(0x63616279616C502ELL, 0xE90000000000006BLL);
  sub_10010FC20(&qword_101183990);
  v9 = swift_allocObject();
  v85 = xmmword_100EBE270;
  *(v9 + 16) = xmmword_100EBE270;
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  v12 = *(v2 + 32);
  *(v9 + 48) = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v90.value.super.isa = 0;
  v90.is_nil = v8;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v90, 1, 0xFFFFFFFFFFFFFFFFLL, v9, v75).super.super.isa;
  v17 = sub_100319BE4(0x6F546F472ELL, 0xE500000000000000);
  v18 = sub_100315554(v17);
  v20 = v19;

  if (v18)
  {

    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v91.value.super.isa = 0;
    v91.is_nil = v18;
    v81 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v91, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v76.super.super.isa).super.super.isa;
  }

  else
  {
    v81 = 0;
  }

  v22 = sub_100319BE4(0x656D756C6F562ELL, 0xE700000000000000);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBC6D0;
  sub_100319990(&UIKeyInputUpArrow, &selRef_volumeUpAction_);
  *(v23 + 32) = v24;
  sub_100319990(&UIKeyInputDownArrow, &selRef_volumeDownAction_);
  *(v23 + 40) = v25;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v92.value.super.isa = 0;
  v92.is_nil = v22;
  v80 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v92, 1, 0xFFFFFFFFFFFFFFFFLL, v23, v76.super.super.isa).super.super.isa;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v83 = v5;
  v27 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v28;
  v30 = String._bridgeToObjectiveC()();
  v31 = [objc_opt_self() systemImageNamed:v30];

  v32 = sub_100319BE4(0x65756575512ELL, 0xE600000000000000);
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v7;
  v35 = v34;

  v88 = v33;
  v89 = v35;
  v36._countAndFlagsBits = 0x7461657065522ELL;
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  LOBYTE(v33) = String._bridgeToObjectiveC()();

  v37 = swift_allocObject();
  *(v37 + 16) = v85;
  v38 = *(v2 + 48);
  v39 = *(v2 + 56);
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = *(v2 + 64);
  *(v37 + 48) = v40;
  v41 = v38;
  v42 = v39;
  v43 = v40;
  v44._countAndFlagsBits = v27;
  v44._object = v29;
  v93.value.super.isa = v31;
  v93.is_nil = v33;
  v45 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, 0, v93, 32, 0xFFFFFFFFFFFFFFFFLL, v37, v77).super.super.isa;
  v46 = swift_allocObject();
  *(v46 + 16) = v85;
  v47 = *(v2 + 40);
  *(v46 + 32) = v47;
  *(v46 + 40) = v45;
  v48 = *(v2 + 72);
  *(v46 + 48) = v48;
  v88 = v46;
  v49 = sub_1002931A8();
  v50 = v47;
  v51 = v45;
  v52 = v48;
  v53 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v49);
  *&v85 = v51;
  if (v53)
  {
    v54 = *(v2 + 80);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v56 = v81;
    v55 = isa;
    if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_24:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v46 = v88;
  }

  else
  {
    v56 = v81;
    v55 = isa;
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000060E4(v57, qword_101218A28);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "| ❌ Alchemy - FF is not enabled", v60, 2u);
    }
  }

  v61 = sub_100319BE4(0x65756575512ELL, 0xE600000000000000);

  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v94.value.super.isa = 0;
  v94.is_nil = v61;
  v63 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v62, 0, v94, 1, 0xFFFFFFFFFFFFFFFFLL, v46, v78.super.super.isa).super.super.isa;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v64 = String.init(localized:table:bundle:locale:comment:)();
  v66 = v65;
  v87[4] = v55;
  v87[5] = v56;
  v67 = v80;
  v87[6] = v80;
  v87[7] = v63;
  v68 = _swiftEmptyArrayStorage;
  v86 = _swiftEmptyArrayStorage;
  v83 = v56;
  isa = v67;
  v56 = v63;
  v81 = v55;
  v69 = 0;
  v55 = 4;
LABEL_13:
  if (v69 <= 4)
  {
    v70 = 4;
  }

  else
  {
    v70 = v69;
  }

  while (v69 != 4)
  {
    if (v70 == v69)
    {
      __break(1u);
      goto LABEL_24;
    }

    v71 = v87[v69++ + 4];
    if (v71)
    {
      v72 = v71;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v68 = v86;
      goto LABEL_13;
    }
  }

  sub_10010FC20(&qword_10118CE10);
  swift_arrayDestroy();

  v73._countAndFlagsBits = v64;
  v73._object = v66;
  v95.value.super.isa = 0;
  v95.is_nil = 0;
  v74 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v73, 0, v95, 0, 0xFFFFFFFFFFFFFFFFLL, v68, v78.super.super.isa).super.super.isa;
  [v79 insertSiblingMenu:v74 beforeMenuForIdentifier:UIMenuWindow];
}

void sub_100316618(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  [a1 action];
  if (![v1[2] action] || (static Selector.== infix(_:_:)() & 1) == 0)
  {
    [v1[5] action];
    if (static Selector.== infix(_:_:)())
    {
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v13 = (*(*qword_101218AC8 + 432))();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 tracklist];

        v16 = [v15 shuffleType];
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      v30 = !v17;
      goto LABEL_34;
    }

    if (qword_10117F590 != -1)
    {
      swift_once();
    }

    if (static Selector.== infix(_:_:)())
    {
      v18 = sub_100317BD4();
      if (v18 != 3)
      {
        v19 = v18;
        if (qword_10117F5F8 != -1)
        {
          swift_once();
        }

        v20 = (*(*qword_101218AC8 + 432))();
        if (v20)
        {
          v21 = v20;
          v22 = [v20 tracklist];

          v23 = [v22 repeatType];
          if (qword_100EC6EA0[v19] == qword_100EC6EA0[sub_100319CDC(v23)])
          {
            swift_bridgeObjectRelease_n();
            v24 = 1;
            v25 = 1;
          }

          else
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
            swift_bridgeObjectRelease_n();
            v24 = v25 & 1;
          }

          [a1 setState:v24];
          if (qword_10117F580 != -1)
          {
            swift_once();
          }

          v82 = type metadata accessor for Logger();
          sub_1000060E4(v82, qword_101218A28);
          v83 = a1;
          v125 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v125, v84))
          {
            v85 = swift_slowAlloc();
            v127[0] = swift_slowAlloc();
            *v85 = 136446466;
            [v83 action];
            v86 = Selector.description.getter();
            v88 = sub_1000105AC(v86, v87, v127);

            *(v85 + 4) = v88;
            *(v85 + 12) = 2082;
            if (v25)
            {
              v89 = 6710863;
            }

            else
            {
              v89 = 28239;
            }

            if (v25)
            {
              v90 = 0xE300000000000000;
            }

            else
            {
              v90 = 0xE200000000000000;
            }

            v91 = sub_1000105AC(v89, v90, v127);

            *(v85 + 14) = v91;
            _os_log_impl(&_mh_execute_header, v125, v84, "👀✅ %{public}s - state: %{public}s", v85, 0x16u);
            swift_arrayDestroy();
            goto LABEL_44;
          }

LABEL_88:

          return;
        }
      }

      if (qword_10117F580 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000060E4(v42, qword_101218A28);
      v43 = a1;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_54;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v127[0] = v47;
      *v46 = 136446210;
      [v43 action];
      v48 = Selector.description.getter();
      v50 = sub_1000105AC(v48, v49, v127);

      *(v46 + 4) = v50;
      v51 = "🙈🚫 %{public}s is hidden and disabled – Cannot determine repeatCommand or repeatType";
    }

    else
    {
      [v1[9] action];
      if (static Selector.== infix(_:_:)())
      {
        if (qword_10117F5F8 != -1)
        {
          swift_once();
        }

        v26 = (*(*qword_101218AC8 + 432))();
        if (v26 && (v27 = v26, v28 = [v26 tracklist], v27, v29 = objc_msgSend(v28, "actionAtQueueEnd"), v28, v29 == 3))
        {
          v30 = 1;
          v17 = 1;
        }

        else
        {
          v30 = 0;
          v17 = 0;
        }

LABEL_34:
        [a1 setState:v30];
        if (qword_10117F580 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_1000060E4(v32, qword_101218A28);
        v33 = a1;
        v125 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v125, v34))
        {
          v35 = swift_slowAlloc();
          v127[0] = swift_slowAlloc();
          *v35 = 136446466;
          [v33 action];
          v36 = Selector.description.getter();
          v38 = sub_1000105AC(v36, v37, v127);

          *(v35 + 4) = v38;
          *(v35 + 12) = 2082;
          if (v17)
          {
            v39 = 6710863;
          }

          else
          {
            v39 = 28239;
          }

          if (v17)
          {
            v40 = 0xE300000000000000;
          }

          else
          {
            v40 = 0xE200000000000000;
          }

          v41 = sub_1000105AC(v39, v40, v127);

          *(v35 + 14) = v41;
          _os_log_impl(&_mh_execute_header, v125, v34, "👀✅ %{public}s - state: %{public}s", v35, 0x16u);
          swift_arrayDestroy();
LABEL_44:

          return;
        }

        goto LABEL_88;
      }

      [v1[10] action];
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        return;
      }

      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v56 = (*(*qword_101218AC8 + 432))();
      if (v56)
      {
        v57 = v56;
        v6 = [v56 tracklist];

        if (v6)
        {
          if ([v6 toggleTransitionsCommand])
          {
            swift_unknownObjectRelease();
            v58 = [v6 transitionsActive];
          }

          else
          {
            v58 = 0;
          }

          v96 = [v6 transitionStyle];
          if (v96 == 1)
          {
            v97 = 0x78694D6F747541;
            v98 = 0xE700000000000000;
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
          }

          else
          {
            if (v96)
            {
              if (qword_10117F580 != -1)
              {
                swift_once();
              }

              v113 = type metadata accessor for Logger();
              sub_1000060E4(v113, qword_101218A28);
              v114 = a1;
              v115 = v6;
              v116 = Logger.logObject.getter();
              v117 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v127[0] = swift_slowAlloc();
                *v118 = 136446466;
                [v114 action];
                v119 = Selector.description.getter();
                v121 = sub_1000105AC(v119, v120, v127);

                *(v118 + 4) = v121;
                *(v118 + 12) = 2082;
                v130 = [v115 transitionStyle];
                type metadata accessor for MPTransitionStylePreference(0);
                v122 = String.init<A>(describing:)();
                v124 = sub_1000105AC(v122, v123, v127);

                *(v118 + 14) = v124;
                _os_log_impl(&_mh_execute_header, v116, v117, "🙈🚫 %{public}s is hidden and disabled – Unknown MPTransitionStylePreference=%{public}s", v118, 0x16u);
                swift_arrayDestroy();
              }

              [v114 setAttributes:5];
              return;
            }

            v97 = 0x64616673736F7243;
            v98 = 0xE900000000000065;
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
          }

          v99 = String._bridgeToObjectiveC()();
          v100 = [objc_opt_self() imageNamed:v99];

          v126 = v58;
          v62 = v100;
          [a1 setState:v58];
          v101 = String._bridgeToObjectiveC()();

          [a1 setTitle:v101];

          [a1 setImage:v62];
          if (qword_10117F580 != -1)
          {
            swift_once();
          }

          v102 = type metadata accessor for Logger();
          sub_1000060E4(v102, qword_101218A28);
          v103 = a1;

          v66 = Logger.logObject.getter();
          v104 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v66, v104))
          {
            v105 = swift_slowAlloc();
            v127[0] = swift_slowAlloc();
            *v105 = 136446722;
            [v103 action];
            v106 = Selector.description.getter();
            v108 = sub_1000105AC(v106, v107, v127);

            *(v105 + 4) = v108;
            *(v105 + 12) = 2082;
            v109 = sub_1000105AC(v97, v98, v127);

            *(v105 + 14) = v109;
            *(v105 + 22) = 2082;
            if (v126)
            {
              v110 = 28239;
            }

            else
            {
              v110 = 6710863;
            }

            if (v126)
            {
              v111 = 0xE200000000000000;
            }

            else
            {
              v111 = 0xE300000000000000;
            }

            v112 = sub_1000105AC(v110, v111, v127);

            *(v105 + 24) = v112;
            _os_log_impl(&_mh_execute_header, v66, v104, "👀✅ %{public}s - title: %{public}s, state: %{public}s", v105, 0x20u);
            swift_arrayDestroy();
            goto LABEL_70;
          }

LABEL_110:

          goto LABEL_111;
        }
      }

      if (qword_10117F580 != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      sub_1000060E4(v92, qword_101218A28);
      v43 = a1;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v44, v45))
      {
LABEL_54:

        [v43 setAttributes:5];
        return;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v127[0] = v47;
      *v46 = 136446210;
      [v43 action];
      v93 = Selector.description.getter();
      v95 = sub_1000105AC(v93, v94, v127);

      *(v46 + 4) = v95;
      v51 = "🙈🚫 %{public}s is hidden and disabled – Cannot get a tracklist from nowPlaying";
    }

LABEL_53:
    _os_log_impl(&_mh_execute_header, v44, v45, v51, v46, 0xCu);
    sub_10000959C(v47);

    goto LABEL_54;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v5 = (*(*qword_101218AC8 + 432))();
  if (!v5)
  {
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000060E4(v52, qword_101218A28);
    v43 = a1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_54;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v127[0] = v47;
    *v46 = 136446210;
    [v43 action];
    v53 = Selector.description.getter();
    v55 = sub_1000105AC(v53, v54, v127);

    *(v46 + 4) = v55;
    v51 = "🙈🚫 %{public}s is hidden and disabled – UIApplication.player.nowPlaying is nil";
    goto LABEL_53;
  }

  v6 = v5;
  v128 = &type metadata for Player.PlaybackCommand;
  v129 = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v127[0]) = 2;
  v7 = MPCPlayerResponse.canPerform(_:)(v127);
  sub_10000959C(v127);
  if (v7)
  {
    v8 = [v6 tracklist];
    v9 = [v8 playingItem];

    if (v9)
    {
      v10 = MPCPlayerResponseItem.isLiveContent.getter();

      if (v10)
      {
        v11 = 1886352467;
        v12 = 0xE400000000000000;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        goto LABEL_66;
      }
    }
  }

  v128 = &type metadata for Player.PlaybackCommand;
  v129 = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v127[0]) = 1;
  v31 = MPCPlayerResponse.canPerform(_:)(v127);
  sub_10000959C(v127);
  if (v31)
  {
    v11 = 0x6573756150;
    v12 = 0xE500000000000000;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    goto LABEL_66;
  }

  v128 = &type metadata for Player.PlaybackCommand;
  v129 = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v127[0]) = 0;
  v59 = MPCPlayerResponse.canPerform(_:)(v127);
  sub_10000959C(v127);
  if (v59)
  {
    v11 = 2036427856;
    v12 = 0xE400000000000000;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
LABEL_66:
    v60 = String._bridgeToObjectiveC()();
    v61 = [objc_opt_self() systemImageNamed:v60];

    v62 = v61;
    v63 = String._bridgeToObjectiveC()();

    [a1 setTitle:v63];

    [a1 setImage:v62];
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000060E4(v64, qword_101218A28);
    v65 = a1;

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v127[0] = swift_slowAlloc();
      *v68 = 136446466;
      [v65 action];
      v69 = Selector.description.getter();
      v71 = sub_1000105AC(v69, v70, v127);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2082;
      v72 = sub_1000105AC(v11, v12, v127);

      *(v68 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "👀✅ %{public}s – title: %{public}s", v68, 0x16u);
      swift_arrayDestroy();
LABEL_70:

LABEL_111:

      return;
    }

    goto LABEL_110;
  }

  if (qword_10117F580 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_1000060E4(v73, qword_101218A28);
  v74 = a1;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v127[0] = v78;
    *v77 = 136446210;
    [v74 action];
    v79 = Selector.description.getter();
    v81 = sub_1000105AC(v79, v80, v127);

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v75, v76, "🙈🚫 %{public}s is hidden and disabled – Stop, Pause, and Play comannds are all not supported on the player", v77, 0xCu);
    sub_10000959C(v78);
  }

  [v74 setAttributes:5];
}

uint64_t sub_100317BD4()
{
  if ([v0 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1000095E8(v12, &unk_101183F30);
    return 3;
  }

  sub_10010FC20(&unk_10118A3F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (!*(v9 + 16) || (v1 = sub_100019C10(0xD000000000000011, 0x8000000100E3C4C0), (v2 & 1) == 0))
  {

    return 3;
  }

  v3 = (*(v9 + 56) + 16 * v1);
  v4 = *v3;
  v5 = v3[1];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  v7 = _findStringSwitchCase(cases:string:)(&off_10109A5E8, v6);

  if (v7 >= 3)
  {
    return 3;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100317D2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 160) = a4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a5;
  type metadata accessor for MainActor();
  *(v5 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 128) = v7;
  *(v5 + 136) = v6;

  return _swift_task_switch(sub_100317DC8, v7, v6);
}

uint64_t sub_100317DC8()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 160);
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = v2;
  *(v0 + 96) = v1;
  v3 = v1;
  v4 = String.init<A>(reflecting:)();
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_10016B618;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_100317F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_100318004, v6, v5);
}

uint64_t sub_100318004()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v0[5] = &type metadata for Player.ChangeCommand;
  v0[6] = &protocol witness table for Player.ChangeCommand;
  v0[2] = 1;
  v0[12] = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  v0[10] = &type metadata for Player.CommandIssuerIdentity;
  v0[11] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[7] = v3;
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10016B304;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

uint64_t sub_100318168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_100318200, v6, v5);
}

uint64_t sub_100318200()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v0[5] = &type metadata for Player.ChangeCommand;
  v0[6] = &protocol witness table for Player.ChangeCommand;
  v0[2] = 0;
  v0[12] = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  v0[10] = &type metadata for Player.CommandIssuerIdentity;
  v0[11] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[7] = v3;
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10016B304;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

void sub_100318398(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [objc_opt_self() sharedController];
  [v5 *a4];
}

uint64_t sub_100318400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_100318498, v6, v5);
}

uint64_t sub_100318498()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  *(v0 + 40) = &type metadata for Player.ShuffleCommand;
  *(v0 + 48) = &protocol witness table for Player.ShuffleCommand;
  *(v0 + 16) = 0;
  *(v0 + 96) = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_10016B304;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

void sub_10031860C(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_100317BD4();
  if (v7 == 3)
  {
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101218A28);
    v9 = a1;
    v25 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136446210;
      v13 = v9;
      v14 = [v13 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_1000105AC(v15, v17, &v26);

      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v25, v10, "Unable to determine repeat command from sender: %{public}s", v11, 0xCu);
      sub_10000959C(v12);
    }

    else
    {
      v24 = v25;
    }
  }

  else
  {
    v19 = v7;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    type metadata accessor for MainActor();
    v21 = v2;
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = &protocol witness table for MainActor;
    *(v23 + 32) = v19;
    *(v23 + 40) = v21;
    sub_1001F524C(0, 0, v6, &unk_100EC6DB0, v23);
  }
}

uint64_t sub_1003188E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 160) = a4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a5;
  type metadata accessor for MainActor();
  *(v5 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 128) = v7;
  *(v5 + 136) = v6;

  return _swift_task_switch(sub_100318980, v7, v6);
}

uint64_t sub_100318980()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160) + 1;
  v2 = *(v0 + 112);
  *(v0 + 40) = &type metadata for Player.RepeatCommand;
  *(v0 + 48) = &protocol witness table for Player.RepeatCommand;
  *(v0 + 16) = v1;
  *(v0 + 96) = v2;
  v3 = v2;
  v4 = String.init<A>(reflecting:)();
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_10016B304;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_100318B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_100318C28, v6, v5);
}

uint64_t sub_100318C28()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v0[5] = &type metadata for Player.ToggleTransitionsCommand;
  v0[6] = &protocol witness table for Player.ToggleTransitionsCommand;
  v0[12] = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  v0[10] = &type metadata for Player.CommandIssuerIdentity;
  v0[11] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[7] = v3;
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10016B304;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

void sub_100318D7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = a1;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1001F524C(0, 0, v9, a5, v13);
}

void sub_100318EA8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._countAndFlagsBits = 0x6C6F72746E6F432ELL;
  v5._object = 0xE900000000000073;
  String.append(_:)(v5);
  v33 = String._bridgeToObjectiveC()();

  sub_100009F78(0, &qword_1011A46F0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();
  v35 = objc_opt_self();
  v7 = [v35 systemImageNamed:v6];

  v8 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v9 = [v8 _nonRepeatableKeyCommand];

  v32 = v9;
  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v35 systemImageNamed:v10];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v13 = [v12 _nonRepeatableKeyCommand];

  v31 = v13;
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v35 systemImageNamed:v14];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v17 = [v16 _nonRepeatableKeyCommand];

  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v30 = v17;
  sub_100009F78(0, &qword_10118B320);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v35 systemImageNamed:v18];

  v29 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (qword_10117F590 != -1)
  {
    swift_once();
  }

  sub_10010C578(&off_10109A4B0);
  sub_1000095E8(&unk_10109A4D0, &qword_101183AA0);
  sub_10010FC20(&unk_10118A3F0);
  v28 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10010C578(&off_10109A4F0);
  sub_1000095E8(&unk_10109A510, &qword_101183AA0);
  v27 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10010C578(&off_10109A530);
  sub_1000095E8(&unk_10109A550, &qword_101183AA0);
  v20 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v35 systemImageNamed:v21];

  v23 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v24 = String._bridgeToObjectiveC()();
  v25 = [v35 imageNamed:v24];

  v26 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  *a2 = v33;
  a2[1] = a1;
  a2[2] = v32;
  a2[3] = v31;
  a2[4] = v30;
  a2[5] = v29;
  a2[6] = v28;
  a2[7] = v27;
  a2[8] = v20;
  a2[9] = v23;
  a2[10] = v26;
}

uint64_t sub_1003198DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100318B90(a1, v4, v5, v6);
}

void sub_100319990(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *a2;
  if (qword_10117F588 != -1)
  {
    swift_once();
  }

  v6 = qword_101218A40;
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() keyCommandWithInput:v7 modifierFlags:0x100000 action:v5 upAction:v6];

  if (v8)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v9 = String._bridgeToObjectiveC()();

    [v8 setTitle:v9];

    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() systemImageNamed:v10];

    [v8 setImage:v11];
  }

  else
  {
    __break(1u);
  }
}

NSString sub_100319BE4(uint64_t a1, void *a2)
{
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4._countAndFlagsBits = 0x6C6F72746E6F432ELL;
  v4._object = 0xE900000000000073;
  String.append(_:)(v4);
  v5 = String._bridgeToObjectiveC()();

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  return v7;
}

unint64_t sub_100319CDC(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 3)
  {
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_101218A28);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      type metadata accessor for MPRepeatType(0);
      v7 = String.init<A>(describing:)();
      v9 = sub_1000105AC(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unknown repeat type: %{public}s", v5, 0xCu);
      sub_10000959C(v6);
    }

    return 0;
  }

  return v1;
}

void sub_100319E3C()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3 - 8];
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v5 = (*(*qword_101218AC8 + 432))();
  if (v5)
  {
    v6 = v5;
    v20 = &type metadata for Player.PlaybackCommand;
    v21 = &protocol witness table for Player.PlaybackCommand;
    v19[0] = 2;
    v7 = MPCPlayerResponse.canPerform(_:)(v19);
    sub_10000959C(v19);
    if (v7 && (v8 = [v6 tracklist], v9 = objc_msgSend(v8, "playingItem"), v8, v9) && (v10 = MPCPlayerResponseItem.isLiveContent.getter(), v9, (v10 & 1) != 0))
    {
      v11 = 2;
    }

    else
    {
      v20 = &type metadata for Player.PlaybackCommand;
      v21 = &protocol witness table for Player.PlaybackCommand;
      v11 = 1;
      v19[0] = 1;
      v12 = MPCPlayerResponse.canPerform(_:)(v19);
      sub_10000959C(v19);
      if (!v12)
      {
        v20 = &type metadata for Player.PlaybackCommand;
        v21 = &protocol witness table for Player.PlaybackCommand;
        v19[0] = 0;
        v13 = MPCPlayerResponse.canPerform(_:)(v19);
        sub_10000959C(v19);
        v11 = 0;
        if (!v13)
        {
          goto LABEL_11;
        }
      }
    }

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    type metadata accessor for MainActor();
    v15 = v1;
    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v11;
    *(v17 + 40) = v15;
    sub_1001F524C(0, 0, v4, &unk_100EC6DF0, v17);

LABEL_11:
  }
}

uint64_t sub_10031A0C4()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v5 = (*(*qword_101218AC8 + 432))();
  if (v5 && (v6 = v5, v7 = [v5 tracklist], v6, v8 = objc_msgSend(v7, "actionAtQueueEnd"), v7, v8 == 3))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = v1;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  sub_1001F524C(0, 0, v4, &unk_100EC6DA0, v13);
}

uint64_t sub_10031A2A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10016B124(a1, v4, v5, v7, v6);
}

uint64_t sub_10031A364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003188E4(a1, v4, v5, v7, v6);
}

uint64_t sub_10031A428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100318400(a1, v4, v5, v6);
}

uint64_t sub_10031A4DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100318168(a1, v4, v5, v6);
}

uint64_t sub_10031A590(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100317F6C(a1, v4, v5, v6);
}

uint64_t sub_10031A644()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10031A684(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100317D2C(a1, v4, v5, v7, v6);
}

__n128 sub_10031A748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10031A76C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10031A7B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10031A830(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  sub_10031CF98(a1, v9, type metadata accessor for PlaylistCreation.FlowResult);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_10031D000(v9, type metadata accessor for PlaylistCreation.FlowResult);
  }

  v24 = *(v11 + 32);
  v24(v16, v9, v10);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for MainActor();
  v23 = a2;
  v19 = static MainActor.shared.getter();
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = &protocol witness table for MainActor;
  v24((v22 + v20), v13, v10);
  *(v22 + v21) = v23;
  sub_1001F4CB8(0, 0, v6, &unk_100EC6F00, v22);

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_10031AB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10010FC20(&unk_1011841F0);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10031ACB0, v9, v8);
}

uint64_t sub_10031ACB0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  sub_1007041B4(v4, 0, 0, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v0[4], &unk_1011841F0);
  }

  else
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v8 = v0[6];
    sub_10031CF28(v0[4], v5, type metadata accessor for AppInterfaceContext.Activity);
    sub_10031CF98(v5, v6, type metadata accessor for AppInterfaceContext.Activity);
    sub_10031CF98(v6, v7, type metadata accessor for AppInterfaceContext.Activity);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    sub_10031CF28(v7, v10 + v9, type metadata accessor for AppInterfaceContext.Activity);
    sub_100706900(v6, sub_100139B24, v10);

    sub_10031D000(v6, type metadata accessor for AppInterfaceContext.Activity);
    sub_10031D000(v5, type metadata accessor for AppInterfaceContext.Activity);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10031AEFC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10010FC20(&unk_101181520);
  v2[4] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult();
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Folder();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10031B06C, v6, v5);
}

uint64_t sub_10031B06C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];

  sub_10031CF98(v4, v3, type metadata accessor for Actions.CreateFolder.Context.FlowResult);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10031D000(v0[5], type metadata accessor for Actions.CreateFolder.Context.FlowResult);
  }

  else
  {
    v5 = v0[10];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[4];
    v19 = v9;
    v10 = v0[3];
    v20 = *(v8 + 32);
    v20(v5, v0[5], v7);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = v6;
    (*(v8 + 16))(v6, v5, v7);
    v13 = v10;
    v14 = static MainActor.shared.getter();
    v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = v14;
    *(v16 + 3) = &protocol witness table for MainActor;
    *(v16 + 4) = v13;
    v20(&v16[v15], v12, v7);
    sub_1001F4CB8(0, 0, v19, &unk_100EC6EF0, v16);

    (*(v8 + 8))(v5, v7);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10031B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = _s9PlaylistsV5ScopeVMa(0);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v5[8] = *(v7 + 64);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10031B408, v9, v8);
}

uint64_t sub_10031B408()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = *(v2 + 20);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, v3, v5);
  (*(v6 + 56))(v1 + v4, 0, 1, v5);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  *v12 = qword_101218AB8;
  *(v12 + *(v11 + 24)) = 0;
  v13 = objc_opt_self();

  v14 = [v13 currentTraitCollection];
  v15 = [v14 horizontalSizeClass];

  v16 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());
  v17 = sub_10037E11C(v12, 0, v15 != 2);
  v18 = &v8[*(sub_10010FC20(&unk_1011841E0) + 48)];
  v19 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v8 = v17;
  v20 = type metadata accessor for UITraitOverrides();
  (*(*(v20 - 8) + 56))(&v8[v19], 1, 1, v20);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *v18 = sub_100137E80;
  v18[1] = v21;
  swift_storeEnumTagMultiPayload();
  sub_10031CF98(v8, v7, type metadata accessor for AppInterfaceContext.Activity);
  sub_10031CF98(v7, v9, type metadata accessor for AppInterfaceContext.Activity);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_10031CF28(v9, v23 + v22, type metadata accessor for AppInterfaceContext.Activity);
  v24 = v17;
  sub_100706900(v7, sub_100137E88, v23);

  sub_10031D000(v7, type metadata accessor for AppInterfaceContext.Activity);
  sub_10031D000(v8, type metadata accessor for AppInterfaceContext.Activity);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10031B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[44] = a1;
  v4[45] = a4;
  type metadata accessor for MainActor();
  v4[46] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[47] = v6;
  v4[48] = v5;

  return _swift_task_switch(sub_10031B838, v6, v5);
}

uint64_t sub_10031B838()
{
  static Actions.CreateFolder.action(context:)(*(v0 + 360), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  v2 = sub_10010FC20(&qword_10118B330);
  *v1 = v0;
  v1[1] = sub_10031B8FC;
  v3 = *(v0 + 352);

  return Action.execute(checkSupportedStatus:)(v3, 1, v2);
}

uint64_t sub_10031B8FC()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    *(v2 + 128) = *(v2 + 16);
    *(v2 + 144) = v3;
    v4 = *(v2 + 48);
    v5 = *(v2 + 64);
    v6 = *(v2 + 80);
    v7 = *(v2 + 112);
    *(v2 + 208) = *(v2 + 96);
    *(v2 + 224) = v7;
    *(v2 + 176) = v5;
    *(v2 + 192) = v6;
    *(v2 + 160) = v4;
    sub_1000095E8(v2 + 128, &qword_10118B330);
    v8 = *(v2 + 376);
    v9 = *(v2 + 384);
    v10 = sub_10031BAE4;
  }

  else
  {
    *(v2 + 240) = *(v2 + 16);
    *(v2 + 256) = v3;
    v11 = *(v2 + 48);
    v12 = *(v2 + 64);
    v13 = *(v2 + 80);
    v14 = *(v2 + 112);
    *(v2 + 320) = *(v2 + 96);
    *(v2 + 336) = v14;
    *(v2 + 288) = v12;
    *(v2 + 304) = v13;
    *(v2 + 272) = v11;
    sub_1000095E8(v2 + 240, &qword_10118B330);
    v8 = *(v2 + 376);
    v9 = *(v2 + 384);
    v10 = sub_10031BA80;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10031BA80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10031BAE4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10031BBA8(uint64_t a1)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._countAndFlagsBits = 0x656C69462ELL;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  String._bridgeToObjectiveC()();

  sub_100009F78(0, &qword_1011A46F0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 systemImageNamed:{v4, a1}];

  v7 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v7 _nonRepeatableKeyCommand];

  if (v8)
  {
    sub_100009F78(0, &qword_10118B320);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v5 systemImageNamed:v9];

    UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10031BF34(void *a1, void *a2, void *a3, void *a4)
{
  sub_100009F78(0, &unk_1011845F0);
  sub_10010FC20(&qword_101183990);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6D0;
  *(preferredElementSize + 32) = a3;
  *(preferredElementSize + 40) = a4;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = a2;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v13).super.super.isa;
  [a1 insertChildMenu:isa atStartOfMenuForIdentifier:UIMenuFile];
}

void sub_10031C038(void *a1, uint64_t a2)
{
  sub_100009F78(0, &qword_101197A30);
  if (static NSObject.== infix(_:_:)())
  {
    v4 = *(*(a2 + OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext) + 32);
    if (v4 >= 0)
    {
      v5 = *(*(a2 + OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext) + 32);
    }

    else
    {
      v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = [v5 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    type metadata accessor for MusicLibrary();
    v17 = static MusicLibrary.shared.getter();
    sub_10031D190();
    LOBYTE(v7) = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v7)
    {
      [a1 setAttributes:{0, v17}];
    }

    else
    {
      [a1 setAttributes:{1, v17}];
      if (qword_10117F580 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000060E4(v8, qword_101218A28);
      v9 = a1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136446210;
        [v9 action];
        v14 = Selector.description.getter();
        v16 = sub_1000105AC(v14, v15, &v18);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "👀🚫 %{public}s is disabled – musicLibrary != .shared", v12, 0xCu);
        sub_10000959C(v13);
      }
    }
  }
}

uint64_t sub_10031C2A8()
{
  v1 = type metadata accessor for AppInterfaceContext.Activity(0);
  v2 = *(v1 - 8);
  v34[1] = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = v34 - v5;
  __chkstk_darwin(v6);
  v36 = v34 - v7;
  v8 = type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_10118B328);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v14 = type metadata accessor for ApplicationMainMenu.ParentFolderContext();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v18 - 8);
  v20 = v34 - v19;
  v21 = type metadata accessor for Playlist.Folder();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_10031D790(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &qword_10118B328);
  }

  else
  {
    sub_1000095E8(v20, &unk_10118F670);
    sub_10031CF28(v13, v17, type metadata accessor for ApplicationMainMenu.ParentFolderContext);
    sub_1001F4144(v17, v20);
  }

  sub_10031CC74(v20, v10);
  v22 = v8[6];
  v23 = sub_10010FC20(&unk_1011841D0);
  (*(*(v23 - 8) + 56))(&v10[v22], 1, 1, v23);
  v24 = swift_allocObject();
  v34[0] = v20;
  *(v24 + 16) = v0;
  v25 = &v10[v8[5]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v10[v8[7]];
  *v26 = sub_10031CF90;
  v26[1] = v24;
  v27 = v36;
  sub_10031CF98(v10, v36, type metadata accessor for PlaylistCreation.Context);
  swift_storeEnumTagMultiPayload();
  v28 = v38;
  sub_10031CF98(v27, v38, type metadata accessor for AppInterfaceContext.Activity);
  v29 = v37;
  sub_10031CF98(v28, v37, type metadata accessor for AppInterfaceContext.Activity);
  v30 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_10031CF28(v29, v31 + v30, type metadata accessor for AppInterfaceContext.Activity);
  v32 = v0;
  sub_100706900(v28, sub_100139B24, v31);

  sub_10031D000(v28, type metadata accessor for AppInterfaceContext.Activity);
  sub_10031D000(v27, type metadata accessor for AppInterfaceContext.Activity);
  sub_10031D000(v10, type metadata accessor for PlaylistCreation.Context);
  return sub_1000095E8(v34[0], &unk_10118F670);
}

uint64_t sub_10031C7B4()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v37 - v3;
  v5 = sub_10010FC20(&qword_10118B328);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = type metadata accessor for ApplicationMainMenu.ParentFolderContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v12 - 8);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v37 - v16;
  v18 = type metadata accessor for Playlist.Folder();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_10031D790(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_10118B328);
  }

  else
  {
    sub_1000095E8(v17, &unk_10118F670);
    sub_10031CF28(v7, v11, type metadata accessor for ApplicationMainMenu.ParentFolderContext);
    sub_1001F4144(v11, v17);
  }

  sub_10031CC74(v17, v14);
  v19 = *&v0[OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext];
  v20 = *(v19 + 32);
  if (v20 >= 0)
  {
    v21 = *(v19 + 32);
  }

  else
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
  v23 = [v21 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v24 = v37[0];
  v25 = *(v19 + 32);
  if (v25 >= 0)
  {
    v26 = *(v19 + 32);
  }

  else
  {
    v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v27 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
  v28 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v29 = static PresentationSource.topmostPresentedViewController(from:options:)(v26, *v28);

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v41 = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v29, v39, v37);
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v14, 0, v24, v37, &unk_100EC6EC8, v30, v38);
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
  type metadata accessor for MainActor();
  v32 = v1;

  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = &protocol witness table for MainActor;
  v35 = v38[1];
  *(v34 + 32) = v38[0];
  *(v34 + 48) = v35;
  *(v34 + 64) = v38[2];
  sub_10086E3AC(0, 0, v4, &unk_100EC6ED8, v34);

  return sub_1000095E8(v17, &unk_10118F670);
}

uint64_t sub_10031CC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031CCE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_10031AEFC(a1, v4);
}

uint64_t sub_10031CD80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10031B7A0(a1, v4, v5, v1 + 32);
}

uint64_t sub_10031CE30(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10031B2C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10031CF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031CF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031D000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10031D060(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10031AB64(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10031D190()
{
  result = qword_10118CE20;
  if (!qword_10118CE20)
  {
    type metadata accessor for MusicLibrary();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CE20);
  }

  return result;
}

uint64_t sub_10031D1E8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext];
  v3 = *(v2 + 32);
  if (v3 >= 0)
  {
    v4 = *(v2 + 32);
  }

  else
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v5 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
  v6 = static PresentationSource.topmostPresentedViewController(from:options:)(v4, 0);

  v47 = v6;
  sub_100009F78(0, &qword_101183D40);
  sub_10010FC20(&qword_10118B338);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v49, v51);
    v7 = v52;
    v8 = v53;
    sub_10000954C(v51, v52);
    v9 = (*(v8 + 8))(v7, v8);
    v10 = *(v9 + 16);
    if (v10)
    {
      v46 = v1;
      v11 = v9 + 32;
      v12 = _swiftEmptyArrayStorage;
      do
      {
        sub_100008FE4(v11, v49);
        sub_100059A8C(v49, &v47);
        sub_10010FC20(&qword_10118B348);
        if (swift_dynamicCast())
        {
          v13 = v48;
          if (v48 != 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_100499A24(0, *(v12 + 2) + 1, 1, v12);
            }

            v15 = *(v12 + 2);
            v14 = *(v12 + 3);
            if (v15 >= v14 >> 1)
            {
              v12 = sub_100499A24((v14 > 1), v15 + 1, 1, v12);
            }

            *(v12 + 2) = v15 + 1;
            v12[v15 + 32] = v13 & 1;
          }
        }

        v11 += 40;
        --v10;
      }

      while (v10);

      v1 = v46;
      if (*(v12 + 2))
      {
        goto LABEL_23;
      }
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
LABEL_23:
        v29 = v12[32];

        sub_10000959C(v51);
        return v29;
      }
    }

    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000060E4(v31, qword_101218A28);
    v32 = v1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *&v49[0] = swift_slowAlloc();
      *v35 = 136446466;
      v47 = &type metadata for ApplicationMainMenu.NowPlayingContext;
      sub_10010FC20(&qword_10118B350);
      v36 = String.init<A>(describing:)();
      v38 = sub_1000105AC(v36, v37, v49);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2082;
      v39 = *(v2 + 32);
      if (v39 >= 0)
      {
        v40 = *(v2 + 32);
      }

      else
      {
        v40 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      }

      v41 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      v42 = static PresentationSource.topmostPresentedViewController(from:options:)(v40, 0);

      swift_getObjectType();
      v43 = _typeName(_:qualified:)();
      v45 = sub_1000105AC(v43, v44, v49);

      *(v35 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v33, v34, "No actionContext of type=%{public}s found on view controller %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    sub_10000959C(v51);
  }

  else
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    sub_1000095E8(v49, &qword_10118B340);
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_101218A28);
    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51[0] = v21;
      *v20 = 136446210;
      v22 = *(v2 + 32);
      if (v22 >= 0)
      {
        v23 = *(v2 + 32);
      }

      else
      {
        v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
      }

      v24 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
      v25 = static PresentationSource.topmostPresentedViewController(from:options:)(v23, 0);

      swift_getObjectType();
      v26 = _typeName(_:qualified:)();
      v28 = sub_1000105AC(v26, v27, v51);

      *(v20 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "Cannot find an actionContextProviding view controller – %{public}s does not conform to ActionContextProviding", v20, 0xCu);
      sub_10000959C(v21);
    }

    else
    {
    }
  }

  return 2;
}

uint64_t sub_10031D790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118B328);
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - v5;
  v7 = type metadata accessor for ApplicationMainMenu.ParentFolderContext();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = *&v1[OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext];
  v14 = *(v13 + 32);
  if (v14 >= 0)
  {
    v15 = *(v13 + 32);
  }

  else
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
  }

  v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
  v17 = static PresentationSource.topmostPresentedViewController(from:options:)(v15, 0);

  v66[0] = v17;
  sub_100009F78(0, &qword_101183D40);
  sub_10010FC20(&qword_10118B338);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v67, v69);
    v18 = v70;
    v19 = v71;
    sub_10000954C(v69, v70);
    v20 = (*(v19 + 8))(v18, v19);
    v21 = *(v20 + 16);
    if (v21)
    {
      v60 = v12;
      v61 = v2;
      v62 = v13;
      v63 = a1;
      v64 = v20;
      v22 = v20 + 32;
      v23 = (v65 + 56);
      v24 = (v65 + 48);
      v25 = _swiftEmptyArrayStorage;
      do
      {
        sub_100008FE4(v22, v67);
        sub_100059A8C(v67, v66);
        sub_10010FC20(&qword_10118B348);
        v26 = swift_dynamicCast();
        (*v23)(v6, v26 ^ 1u, 1, v7);
        if ((*v24)(v6, 1, v7) == 1)
        {
          sub_1000095E8(v6, &qword_10118B328);
        }

        else
        {
          sub_10031F98C(v6, v9, type metadata accessor for ApplicationMainMenu.ParentFolderContext);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_100499B3C(0, v25[2] + 1, 1, v25);
          }

          v28 = v25[2];
          v27 = v25[3];
          if (v28 >= v27 >> 1)
          {
            v25 = sub_100499B3C(v27 > 1, v28 + 1, 1, v25);
          }

          v25[2] = v28 + 1;
          sub_10031F98C(v9, v25 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v28, type metadata accessor for ApplicationMainMenu.ParentFolderContext);
        }

        v22 += 40;
        --v21;
      }

      while (v21);

      v13 = v62;
      a1 = v63;
      v2 = v61;
      v12 = v60;
      if (v25[2])
      {
        goto LABEL_24;
      }
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
LABEL_24:
        v43 = v65;
        sub_10031F924(v25 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v12, type metadata accessor for ApplicationMainMenu.ParentFolderContext);

        sub_10031F98C(v12, a1, type metadata accessor for ApplicationMainMenu.ParentFolderContext);
        (*(v43 + 56))(a1, 0, 1, v7);
        return sub_10000959C(v69);
      }
    }

    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000060E4(v44, qword_101218A28);
    v45 = v2;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *&v67[0] = swift_slowAlloc();
      *v48 = 136446466;
      v66[0] = v7;
      sub_10010FC20(&qword_10118B358);
      v49 = String.init<A>(describing:)();
      v51 = sub_1000105AC(v49, v50, v67);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      v52 = *(v13 + 32);
      if (v52 >= 0)
      {
        v53 = *(v13 + 32);
      }

      else
      {
        v53 = (v52 & 0x7FFFFFFFFFFFFFFFLL);
      }

      v54 = (v52 & 0x7FFFFFFFFFFFFFFFLL);
      v55 = static PresentationSource.topmostPresentedViewController(from:options:)(v53, 0);

      swift_getObjectType();
      v56 = _typeName(_:qualified:)();
      v58 = sub_1000105AC(v56, v57, v67);

      *(v48 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "No actionContext of type=%{public}s found on view controller %{public}s", v48, 0x16u);
      swift_arrayDestroy();
    }

    (*(v65 + 56))(a1, 1, 1, v7);
    return sub_10000959C(v69);
  }

  v68 = 0;
  memset(v67, 0, sizeof(v67));
  sub_1000095E8(v67, &qword_10118B340);
  if (qword_10117F580 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000060E4(v29, qword_101218A28);
  v30 = v2;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v69[0] = v34;
    *v33 = 136446210;
    v35 = *(v13 + 32);
    if (v35 >= 0)
    {
      v36 = *(v13 + 32);
    }

    else
    {
      v36 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v37 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v38 = static PresentationSource.topmostPresentedViewController(from:options:)(v36, 0);

    swift_getObjectType();
    v39 = _typeName(_:qualified:)();
    v41 = sub_1000105AC(v39, v40, v69);

    *(v33 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "Cannot find an actionContextProviding view controller – %{public}s does not conform to ActionContextProviding", v33, 0xCu);
    sub_10000959C(v34);
  }

  return (*(v65 + 56))(a1, 1, 1, v7);
}

void sub_10031DF68(void *a1)
{
  v78 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v80 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v79 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v1;
  v6 = sub_10031EEBC(0x7341776569562ELL, 0xE700000000000000);
  v7 = sub_100315554(v6);
  v9 = v8;

  if (v7)
  {
    sub_100009F78(0, &unk_1011845F0);

    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v84.value.super.isa = 0;
    v84.is_nil = v7;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v84, 33, 0xFFFFFFFFFFFFFFFFLL, v9, v70).super.super.isa;
  }

  else
  {
    isa = 0;
  }

  v11 = sub_10031EEBC(0x6C694674726F532ELL, 0xEB00000000726574);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v82 = v12;
  v83 = v14;
  v15._countAndFlagsBits = 0x74726F532ELL;
  v15._object = 0xE500000000000000;
  String.append(_:)(v15);
  v16 = String._bridgeToObjectiveC()();

  v17 = sub_100315554(v16);
  v19 = v18;

  if (v17)
  {
    sub_100009F78(0, &unk_1011845F0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v20 = String.init(localized:table:bundle:locale:comment:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    v85.value.super.isa = 0;
    v85.is_nil = v17;
    v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v85, 32, 0xFFFFFFFFFFFFFFFFLL, v19, v70).super.super.isa;
  }

  v24 = sub_10031EEBC(0x6C694674726F532ELL, 0xEB00000000726574);
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v82 = v25;
  v83 = v27;
  v28._countAndFlagsBits = 0x7265746C69462ELL;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29 = String._bridgeToObjectiveC()();

  v30 = sub_100315554(v29);
  v32 = v31;

  if (v30)
  {
    sub_100009F78(0, &unk_1011845F0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    v35 = v34;

    v36._countAndFlagsBits = v33;
    v36._object = v35;
    v86.value.super.isa = 0;
    v86.is_nil = v30;
    v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v36, 0, v86, 32, 0xFFFFFFFFFFFFFFFFLL, v32, v70).super.super.isa;
  }

  v37 = v77;
  v38 = sub_10031EEBC(0x6C694674726F532ELL, 0xEB00000000726574);
  v81[19] = v17;
  v81[20] = v30;
  v39 = _swiftEmptyArrayStorage;
  v82 = _swiftEmptyArrayStorage;
  v74 = v30;
  v75 = v17;
  for (i = 0; i != 2; ++i)
  {
    v41 = v81[i + 19];
    if (v41)
    {
      v42 = v41;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v39 = v82;
    }
  }

  v43 = sub_100009F78(0, &unk_1011845F0);
  v73[1] = sub_10010FC20(&qword_10118CE10);
  swift_arrayDestroy();
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v87.value.super.isa = 0;
  v87.is_nil = v38;
  v77 = v43;
  v45.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, 0, v87, 1, 0xFFFFFFFFFFFFFFFFLL, v39, v70).super.super.isa;
  v46 = [v78 menuForIdentifier:UIMenuSidebar];
  v47 = _swiftEmptyArrayStorage;
  if (v46)
  {
    v48 = v46;
    v49 = [v46 children];

    sub_100009F78(0, &qword_10118CDE0);
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  v51 = sub_10031EEBC(0x776F68532ELL, 0xE500000000000000);
  sub_10010FC20(&qword_101183990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  v53 = *(v37 + 16);
  v54 = *(v37 + 24);
  *(inited + 32) = v53;
  *(inited + 40) = v54;
  v82 = v50;
  v55 = v53;
  v56 = v54;
  sub_10012409C(inited);
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v88.value.super.isa = 0;
  v88.is_nil = v51;
  v58.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v57, 0, v88, 1, 0xFFFFFFFFFFFFFFFFLL, v82, v71.super.super.isa).super.super.isa;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v80 = String.init(localized:table:bundle:locale:comment:)();
  v79 = v59;
  if (qword_10117F578 != -1)
  {
LABEL_30:
    swift_once();
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v60;
  v61._countAndFlagsBits = 0x776569562ELL;
  v61._object = 0xE500000000000000;
  String.append(_:)(v61);
  v62 = String._bridgeToObjectiveC()();

  v81[4] = isa;
  v81[5] = v45.super.super.isa;
  v63 = *(v37 + 32);
  v81[6] = v58.super.super.isa;
  v81[7] = v63;
  v82 = v47;
  isa = isa;
  v45.super.super.isa = v45.super.super.isa;
  v64 = v58.super.super.isa;
  v65 = v63;
  v37 = 0;
LABEL_19:
  if (v37 <= 4)
  {
    v66 = 4;
  }

  else
  {
    v66 = v37;
  }

  while (v37 != 4)
  {
    if (v66 == v37)
    {
      __break(1u);
      goto LABEL_30;
    }

    v67 = v81[v37++ + 4];
    if (v67)
    {
      v58.super.super.isa = v67;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v47 = v82;
      goto LABEL_19;
    }
  }

  swift_arrayDestroy();
  v68._countAndFlagsBits = v80;
  v68._object = v79;
  v89.value.super.isa = 0;
  v89.is_nil = v62;
  v69 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v68, 0, v89, 1, 0xFFFFFFFFFFFFFFFFLL, v47, v72.super.super.isa).super.super.isa;
  [v78 replaceMenuForIdentifier:UIMenuView withMenu:v69];
}

void sub_10031EA30(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._countAndFlagsBits = 0x776569562ELL;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v19 = String._bridgeToObjectiveC()();

  sub_100009F78(0, &qword_1011A46F0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed:v6];

  v9 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v10 = [v9 _nonRepeatableKeyCommand];

  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v7 systemImageNamed:v11];

  v13 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v14 = [v13 _nonRepeatableKeyCommand];

  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v7 systemImageNamed:v15];

  v17 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v18 = [v17 _nonRepeatableKeyCommand];

  if (v18)
  {
    *a2 = v19;
    a2[1] = a1;
    a2[2] = v10;
    a2[3] = v14;
    a2[4] = v18;
    return;
  }

LABEL_9:
  __break(1u);
}

NSString sub_10031EEBC(uint64_t a1, void *a2)
{
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4._countAndFlagsBits = 0x776569562ELL;
  v4._object = 0xE500000000000000;
  String.append(_:)(v4);
  v5 = String._bridgeToObjectiveC()();

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  return v7;
}

void sub_10031EFAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  [a1 action];
  if ([a3 action] && (static Selector.== infix(_:_:)() & 1) != 0)
  {
    if (sub_10031D1E8() == 2)
    {
      return;
    }

    goto LABEL_9;
  }

  if ([a4 action])
  {
    if (static Selector.== infix(_:_:)())
    {
      v9 = sub_10031D1E8();
      if (v9 != 2 && (v9 & 1) != 0)
      {
LABEL_9:
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v10 = String._bridgeToObjectiveC()();

        [a1 setTitle:v10];
      }
    }
  }
}

uint64_t sub_10031F190(int a1, int a2, uint64_t a3, void *a4, id a5)
{
  if ([a5 action] && (static Selector.== infix(_:_:)() & 1) != 0)
  {
    v7 = *(*(a3 + OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext) + 32);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = v7;
      v9 = sub_1006BDF60([v8 selectedIndex]);

      if (v9)
      {
        v10 = [v9 viewControllers];
        sub_100009F78(0, &qword_101183D40);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v11 >> 62)
        {
          v12 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        return v12 > 1;
      }
    }

    return 0;
  }

  if (![a4 action] || (static Selector.== infix(_:_:)() & 1) == 0)
  {
    return 2;
  }

  v14 = sub_10031D1E8();
  if (v14 != 2 && (v14 & 1) != 0)
  {
    return 1;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  result = (*(*qword_101218AC8 + 432))();
  if (result)
  {
    v15 = result;
    v16 = [result tracklist];

    if (!v16)
    {
      return 0;
    }

    v17 = [v16 playingItem];
    if (v17 && (v18 = v17, v19 = MPCPlayerResponseItem.supportsLyrics.getter(), v18, (v19 & 1) != 0))
    {
      v20 = 1;
    }

    else
    {
      v21 = [v16 vocalsControlCommand];
      if (v21)
      {
        v20 = [v21 isActive];
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
      }
    }

    return v20;
  }

  return result;
}

id sub_10031F3F8()
{
  v1 = type metadata accessor for AppInterfaceContext.Activity(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_10031D1E8();
  v12 = *(v0 + OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext);
  if (v11 == 2)
  {
    v13 = &v10[*(sub_10010FC20(&unk_1011841E0) + 48)];
    *v10 = 5;
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v13 = 0;
    v13[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10031F924(v10, v7, type metadata accessor for AppInterfaceContext.Activity);
    sub_10031F924(v7, v4, type metadata accessor for AppInterfaceContext.Activity);
    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_10031F98C(v4, v15 + v14, type metadata accessor for AppInterfaceContext.Activity);
    sub_100706900(v7, sub_100139B24, v15);

    sub_100115C8C(v7);
    return sub_100115C8C(v10);
  }

  else
  {
    v17 = (*(v12 + 32) & 0x7FFFFFFFFFFFFFFFLL);

    return [v17 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_10031F640()
{
  v0 = type metadata accessor for AppInterfaceContext.Activity(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_10031D1E8();
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v15 = &v9[*(sub_10010FC20(&unk_1011841E0) + 48)];
    *v9 = 1;
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v15 = 0;
    v15[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10031F924(v9, v6, type metadata accessor for AppInterfaceContext.Activity);
    sub_10031F924(v6, v3, type metadata accessor for AppInterfaceContext.Activity);
    v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    sub_10031F98C(v3, v13 + v16, type metadata accessor for AppInterfaceContext.Activity);
    v14 = sub_100137E88;
  }

  else
  {
    v11 = &v9[*(sub_10010FC20(&unk_1011841E0) + 48)];
    *v9 = 0;
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v11 = 0;
    v11[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10031F924(v9, v6, type metadata accessor for AppInterfaceContext.Activity);
    sub_10031F924(v6, v3, type metadata accessor for AppInterfaceContext.Activity);
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    sub_10031F98C(v3, v13 + v12, type metadata accessor for AppInterfaceContext.Activity);
    v14 = sub_100139B24;
  }

  sub_100706900(v6, v14, v13);

  sub_100115C8C(v6);
  return sub_100115C8C(v9);
}

uint64_t sub_10031F924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031F98C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031F9F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10031FA3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10031FA94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xEF636973754D2E65;
    v2 = 0x6C7070612E6D6F63;
  }

  qword_101218A50 = v2;
  *algn_101218A58 = v4;
}

unint64_t sub_10031FB40(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = 0xE900000000000064;
  sub_10010FC20(&qword_101190BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "mliStateChange");
  *(inited + 63) = -18;
  *(inited + 64) = 7368801;
  *(inited + 72) = 0xE300000000000000;
  if (qword_10117F598 != -1)
  {
    v13 = inited;
    swift_once();
    inited = v13;
  }

  v6 = *algn_101218A58;
  *(inited + 80) = qword_101218A50;
  *(inited + 88) = v6;
  *(inited + 96) = 0x6574617453646C6FLL;
  *(inited + 104) = 0xE800000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v8 = 0x6572676F72506E69;
      v7 = 0xEA00000000007373;
    }

    else
    {
      v8 = 0x6574656C706D6F63;
      v7 = 0xE900000000000064;
    }
  }

  else if (a1)
  {
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
  }

  else
  {
    v7 = 0x8000000100E3BEB0;
    v8 = 0xD00000000000001ELL;
  }

  *(inited + 112) = v8;
  *(inited + 120) = v7;
  *(inited + 128) = 0x657461745377656ELL;
  *(inited + 136) = 0xE800000000000000;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0x6572676F72506E69;
      v4 = 0xEA00000000007373;
    }

    else
    {
      v9 = 0x6574656C706D6F63;
    }
  }

  else if (a2)
  {
    v4 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x8000000100E3BEB0;
    v9 = 0xD00000000000001ELL;
  }

  *(inited + 144) = v9;
  *(inited + 152) = v4;
  v10 = inited;

  v11 = sub_10010C578(v10);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0);
  swift_arrayDestroy();
  return v11;
}