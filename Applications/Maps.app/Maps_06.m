uint64_t sub_1001170A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100118948;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

void sub_100117204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = *(v3 + 24);
    aBlock[0] = _swiftEmptyArrayStorage;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
LABEL_33:
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v10 = 0;
      v34 = v6 & 0xC000000000000001;
      v11 = _swiftEmptyArrayStorage;
      v29 = a1;
      v30 = a2;
      v32 = v8;
      v33 = v6;
      v28 = v7;
      v31 = v9;
      do
      {
        v27 = v11;
        v12 = v10;
        while (1)
        {
          if (v34)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v12 >= *(v8 + 16))
            {
              goto LABEL_32;
            }

            v7 = *(v6 + 8 * v12 + 32);

            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          v13 = v3;
          a2 = *(v3 + 40);
          v14 = *(v7 + 24);
          v15 = *(v14 + 16);
          a1 = *(v14 + 24);
          swift_getKeyPath();
          aBlock[9] = a2;
          sub_1001186A8(&qword_101925FC0, type metadata accessor for PinnedItemsController);

          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v16 = OBJC_IVAR____TtC4Maps21PinnedItemsController__pinnedById;
          swift_beginAccess();
          v17 = *(a2 + v16);
          if (*(v17 + 16))
          {

            v18 = sub_100297040(v15, a1);
            v20 = v19;

            if (v20)
            {
              break;
            }
          }

          v3 = v13;
          ++v12;
          v8 = v32;
          v6 = v33;
          if (v10 == v31)
          {
            a1 = v29;
            a2 = v30;
            v11 = v27;
            goto LABEL_23;
          }
        }

        v21 = *(*(v17 + 56) + 8 * v18);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = aBlock[0];
        a2 = v30;
        v7 = v28;
        a1 = v29;
        v3 = v13;
        v8 = v32;
        v6 = v33;
      }

      while (v10 != v31);
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

LABEL_23:

    if ((v11 & 0xC000000000000001) == 0)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v22 = *(v11 + 8 * a1 + 32);
LABEL_27:
        v23 = v22;
        if (a2 < a1 || (v24 = __OFSUB__(a2, 1), --a2, !v24))
        {
          type metadata accessor for MapsFavoriteItem();
          isa = Array._bridgeToObjectiveC()().super.isa;

          aBlock[4] = UIView.annotateView(with:);
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1002B0058;
          aBlock[3] = &unk_101604750;
          v26 = _Block_copy(aBlock);
          [v23 moveToIndex:a2 with:isa completion:v26];
          _Block_release(v26);

          return;
        }

LABEL_37:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_37;
    }

    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_27;
  }
}

void sub_10011765C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);

  v8 = sub_100530A48(v6, v7);

  if (v8)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v11 = v8;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    v13[5] = v11;

    sub_10020AAE4(0, 0, v4, &unk_1011E7330, v13);
  }
}

uint64_t sub_1001177F4()
{
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 48) = 0u;
  ObservationRegistrar.init()();
  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for PinnedItemsController()) init];
  sub_1000588AC(*(v0 + 48));
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  sub_100117864();
  return v0;
}

uint64_t sub_100117864()
{
  withObservationTracking<A>(_:onChange:)();
  swift_getKeyPath();
  sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1001187B0(v5);

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v4;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_100117A38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  swift_getKeyPath();
  sub_1001186A8(&qword_101925FC0, type metadata accessor for PinnedItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC4Maps21PinnedItemsController__pinnedItems);
  if (v3 >> 62)
  {
    goto LABEL_34;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v4)
  {
    v14 = v2;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v8 = swift_allocObject();
      swift_weakInit();
      v2 = swift_allocObject();
      *(v2 + 16) = v8;
      *(v2 + 24) = v6;
      type metadata accessor for PinnedItemRowViewModel();
      swift_allocObject();

      sub_10011C520(v9, sub_100118940, v2);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v2 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v5;
      if (v7 == v4)
      {
        v2 = v14;
        break;
      }
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v2 + OBJC_IVAR____TtC4Maps21PinnedItemsController__suggestedItems);
  if (v2 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v3 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v11 = *(v2 + 8 * v3 + 32);

        v12 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_32;
        }
      }

      type metadata accessor for PinnedItemRowViewModel();
      swift_allocObject();
      sub_10011C520(v11, UIView.annotateView(with:), 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v3;
    }

    while (v12 != v10);
  }

  *a2 = _swiftEmptyArrayStorage;
  a2[1] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100117E4C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100117EC8(a2, a4, a1);
  }

  return result;
}

void sub_100117EC8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  if (a1 == 11)
  {
    v14 = sub_100530A48(*(a2 + 16), *(a2 + 24));
    if (!v14)
    {
      return;
    }

    v15 = v14;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v12 = v15;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v17;
    v19[5] = v12;

    sub_10020AAE4(0, 0, v10, &unk_1011E73E8, v19);

    goto LABEL_8;
  }

  if (a1 == 10)
  {
    v11 = sub_100530A48(*(a2 + 16), *(a2 + 24));
    if (v11)
    {
      v12 = v11;
      swift_getKeyPath();
      v20[1] = v4;
      sub_1001186A8(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *(v4 + 144);
      if (v13)
      {

        v13(v4, v12, a3);
        sub_1000588AC(v13);
      }

LABEL_8:
    }
  }
}

uint64_t sub_100118120()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_1011E7390, v6);
}

uint64_t sub_100118274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011830C, v6, v5);
}

uint64_t sub_10011830C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100117864();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011839C()
{
  sub_1001187B0(*(v0 + 16));

  sub_1000588AC(*(v0 + 48));
  sub_1000588AC(*(v0 + 64));
  sub_1000588AC(*(v0 + 80));
  sub_1000588AC(*(v0 + 96));
  sub_1000588AC(*(v0 + 112));
  sub_1000588AC(*(v0 + 128));
  sub_1000588AC(*(v0 + 144));
  v1 = OBJC_IVAR____TtC4Maps20PinnedItemsViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100118444()
{
  sub_10011839C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PinnedItemsViewModel()
{
  result = qword_10190B5A8;
  if (!qword_10190B5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001184F0()
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

uint64_t sub_1001185B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001186A8(&qword_101925FC0, type metadata accessor for PinnedItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps21PinnedItemsController__pinnedById;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1001186A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001186F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_100531324(a1, v4, v5, v7, v6);
}

uint64_t sub_1001187B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100118838()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_1000F0120(v1);
  return sub_1001187B0(v4);
}

uint64_t sub_10011888C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100118274(a1, v4, v5, v6);
}

uint64_t sub_100118948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

void sub_100118A8C()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps29RAPTextViewCollectionViewCell_textView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setDelegate:v0];
  v2 = [v1 placeholderLabel];
  if (v2)
  {
    v3 = v2;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v9._object = 0x800000010121D2F0;
    v4._countAndFlagsBits = 0xD00000000000001BLL;
    v4._object = 0x800000010121D2B0;
    v5._object = 0x800000010121D2D0;
    v9._countAndFlagsBits = 0xD000000000000022;
    v5._countAndFlagsBits = 0xD000000000000015;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, qword_1019600D8, v5, v9);
    v6 = String._bridgeToObjectiveC()();

    [v3 setText:v6];

    v7 = [v0 contentView];
    [v7 addSubview:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100118C18()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E7420;
  v4 = *&v1[OBJC_IVAR____TtC4Maps29RAPTextViewCollectionViewCell_textView];
  v5 = [v4 topAnchor];
  v6 = [v1 contentView];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  *(v3 + 32) = v8;
  v9 = [v4 bottomAnchor];
  v10 = [v1 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-16.0];
  *(v3 + 40) = v12;
  v13 = [v4 leadingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
  *(v3 + 48) = v16;
  v17 = [v4 trailingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:-16.0];
  *(v3 + 56) = v20;
  v21 = [v4 heightAnchor];
  [v1 preferredHeight];
  v22 = [v21 constraintEqualToConstant:?];

  *(v3 + 64) = v22;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_10011908C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RAPTextViewCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10011928C(void *a1)
{
  v3 = objc_opt_self();
  v4 = [a1 text];
  v6 = [v3 validatedComment:v4];

  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong textViewCellDidChangeWithTextViewCell:v1 validatedText:v6];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100119400()
{
  swift_getKeyPath();
  View.modifier<A>(_:)();
}

uint64_t sub_10011947C(__int128 *a1, void (*a2)(__int128 *), uint64_t a3, char a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v8 + 8))(v10, v7);
    a2 = v14;
  }

  v14 = v13;
  a2(&v14);
}

uint64_t sub_100119600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;
  v9 = sub_1000CE6B8(&qword_10190B730);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(sub_1000CE6B8(&qword_10190B738) + 36));
  *v10 = sub_1000CD948;
  v10[1] = 0;
  v10[2] = sub_10011973C;
  v10[3] = v8;

  return sub_1000CDA08();
}

unint64_t sub_100119748()
{
  result = qword_10190B740;
  if (!qword_10190B740)
  {
    sub_1000D6664(&qword_10190B738);
    sub_1000414C8(&qword_10190B748, &qword_10190B730);
    sub_1000414C8(&qword_10190B750, &qword_10190B758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B740);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for LibraryVisitedPlacesCellState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_100119840(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_100119888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001198DC()
{
  result = qword_10190B760;
  if (!qword_10190B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B760);
  }

  return result;
}

uint64_t sub_100119930(void *a1, uint64_t a2, uint64_t a3, void *a4, __int16 a5)
{
  if ((a5 & 0x100) != 0)
  {
    v12 = a5;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = a4;
    *(v13 + 40) = v12 & 1;
    *(v13 + 41) = 1;
    v20 = sub_100119F7C;
    v21 = v13;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_100271778;
    v19 = &unk_101604A60;
    v10 = _Block_copy(&v16);

    v14 = a4;

    v11 = &selRef_getImageForInvertedSuggestion_completion_;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v20 = sub_1000D2C74;
    v21 = v9;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_100271778;
    v19 = &unk_101604A10;
    v10 = _Block_copy(&v16);

    v11 = &selRef_getImageForSuggestion_completion_;
  }

  [a1 *v11];
  _Block_release(v10);
  return 1;
}

void sub_100119AE8(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_100119FA0(v3);
    a2();
  }

  else
  {
    a2();
  }
}

id sub_100119B6C(void *a1, void *a2)
{
  v4 = [objc_opt_self() systemFillColor];
  [v4 setFill];

  v5 = [a1 CGContext];
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  CGContextFillEllipseInRect(v5, v26);

  v15 = [a1 format];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [a2 drawInRect:{v17, v19, v21, v23}];
}

void sub_100119CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 9);
  v9 = objc_opt_self();
  if (v7 == 1)
  {
    v9 = [v9 sharedCarCache];
    if (v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = [v9 sharedCache];
  if (!v9)
  {
    __break(1u);
    return;
  }

LABEL_5:
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9;
  sub_100119930(v9, a2, a3, v6, v10 | v7);
}

uint64_t sub_100119D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  sub_10011A1CC();
  return static NSObject.== infix(_:_:)() & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

Swift::Int sub_100119DF8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100119E68()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100119EB8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100119F28()
{
  result = qword_10190B768;
  if (!qword_10190B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B768);
  }

  return result;
}

uint64_t sub_100119FA0(void *a1)
{
  [a1 size];
  v3 = v2;
  v5 = v4;
  v6 = [objc_opt_self() mainScreen];
  v7 = [v6 traitCollection];

  v8 = [objc_opt_self() formatForTraitCollection:v7];
  v9 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v8 format:{v3, v5}];

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10011A1BC;
  *(v11 + 24) = v10;
  v16[4] = sub_10011A1C4;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000CEB98;
  v16[3] = &unk_101604AD8;
  v12 = _Block_copy(v16);
  v13 = a1;

  v14 = [v9 imageWithActions:v12];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_10011A1CC()
{
  result = qword_10190B2D0;
  if (!qword_10190B2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190B2D0);
  }

  return result;
}

uint64_t sub_10011A228()
{
  swift_getKeyPath();
  sub_10011C794(&qword_10190B840, type metadata accessor for PinnedItemRowViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10011A2CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011C794(&qword_10190B840, type metadata accessor for PinnedItemRowViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_10011A3A4(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10011C794(&qword_10190B840, type metadata accessor for PinnedItemRowViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10011A4D8(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_10020AAE4(0, 0, v4, &unk_1011E7768, v7);
}

uint64_t sub_10011A5FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[3] = a4;
  v4[4] = *a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011A6BC, v6, v5);
}

uint64_t sub_10011A6BC()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  type metadata accessor for ListCellViewModel();
  withObservationTracking<A>(_:onChange:)();

  sub_10011A3A4(v0[2]);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10011A78C()
{

  v1 = OBJC_IVAR____TtC4Maps22PinnedItemRowViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PinnedItemRowViewModel()
{
  result = qword_10190B7A0;
  if (!qword_10190B7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011A894()
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

uint64_t sub_10011A950@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t sub_10011A964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10005EB40(v3 + 32, a2);
}

uint64_t sub_10011AA24(uint64_t a1)
{
  sub_10005EB40(a1, v2);
  swift_getKeyPath();
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10004E3D0(v2);
}

uint64_t sub_10011AB04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_10011ABC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t sub_10011AC8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_10011ACD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_10011ADA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 110);
  return result;
}

uint64_t sub_10011AE74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 111);
  return result;
}

uint64_t sub_10011AF44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_10011B014(uint64_t a1)
{
  v38 = type metadata accessor for RichTextType();
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1000CE6B8(&qword_10190B850);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v32 = sub_1000CE6B8(&unk_10190D600);
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v31 - v10;
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  v37 = type metadata accessor for AttributedString();
  v33 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  swift_getKeyPath();
  v41[0] = a1;
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  AttributeContainer.init()();
  v39 = v15;
  AttributedString.init(_:attributes:)();
  swift_getKeyPath();
  v41[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 111) == 1)
  {
    swift_getKeyPath();
    v41[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(a1 + 96);
    v41[0] = *(a1 + 88);
    v41[1] = v16;
    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_10011C794(&qword_101910100, &type metadata accessor for AttributedString);
    sub_1000E5580();

    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100024F64(v5, &unk_10190D5F0);

    if ((*(v9 + 48))(v8, 1, v32) == 1)
    {
      v18 = &qword_10190B850;
      v19 = v8;
    }

    else
    {
      v20 = v31;
      sub_10011C7DC(v8, v31);
      v21 = [objc_opt_self() linkColor];
      sub_10011C84C();
      v22 = AttributedString.subscript.modify();
      v40 = v21;
      sub_10011C8B0();
      AttributedSubstring.subscript.setter();
      v22(v41, 0);
      v18 = &unk_10190D600;
      v19 = v20;
    }

    sub_100024F64(v19, v18);
  }

  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1011E1D30;
  v23 = v34;
  v24 = v36;
  (*(v34 + 104))(v36, enum case for RichTextType.line(_:), v38);
  v25 = v33;
  v26 = v35;
  v27 = v37;
  (*(v33 + 16))(v35, v39, v37);
  swift_getKeyPath();
  v41[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = v32;
  RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
  v29 = *(v25 + 8);
  v29(v26, v27);
  (*(v23 + 8))(v24, v38);
  v29(v39, v27);
  return v28;
}

void *sub_10011B748(_BYTE *a1)
{
  v2 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = a1;
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a1[112])
  {
    v6 = &enum case for TrailingAccessoryViewModel.TrailingAccessoryType.pin(_:);
  }

  else
  {
    swift_getKeyPath();
    v10 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (a1[110])
    {
      return _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    v10 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (a1[111])
    {
      return _swiftEmptyArrayStorage;
    }

    v6 = &enum case for TrailingAccessoryViewModel.TrailingAccessoryType.info(_:);
  }

  sub_1000CE6B8(&unk_10190D580);
  type metadata accessor for TrailingAccessoryViewModel();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E1D30;
  (*(v3 + 104))(v5, *v6, v2);
  TrailingAccessoryViewModel.init(type:)();
  return v7;
}

void *sub_10011B9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CellAction.Style();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v51 = (v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CellAction.Placement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  v15 = type metadata accessor for CellAction();
  v54 = *(v15 - 8);
  __chkstk_darwin(v15);
  v43 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  countAndFlagsBits = v40 - v18;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC4Maps10PinnedItem___observationRegistrar;
  v55 = a1;
  v45 = sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 105) == 1)
  {
    v40[2] = v19;
    object = v15;
    (*(v10 + 104))(v14, enum case for CellAction.Placement.default(_:), v9);
    v20 = v10;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v56._object = 0x800000010121D3F0;
    v21._object = 0xEF6574656C65445FLL;
    v22._countAndFlagsBits = 0x6574656C6544;
    v56._countAndFlagsBits = 0xD000000000000036;
    v21._countAndFlagsBits = 0x6570697753776F52;
    v22._object = 0xE600000000000000;
    v40[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, qword_1019600D8, v22, v56)._countAndFlagsBits;
    v23 = swift_allocObject();
    v24 = v50;
    *(v23 + 16) = v49;
    *(v23 + 24) = v24;
    *(v23 + 32) = 11;
    (*(v46 + 104))(v51, enum case for CellAction.Style.destructive(_:), v47);
    (*(v20 + 16))(v48, v14, v9);
    strcpy(v6, "Swipe.Delete");
    v6[13] = 0;
    *(v6 + 7) = -5120;
    (*(v52 + 104))(v6, enum case for MapsDesignAccessibilityString.button(_:), v53);

    v41 = v6;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    (*(v20 + 8))(v14, v9);
    v25 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = v25[2];
    v26 = v25[3];
    v10 = v20;
    if (v27 >= v26 >> 1)
    {
      v25 = sub_100355E1C(v26 > 1, v27 + 1, 1, v25);
    }

    v25[2] = v27 + 1;
    v28 = v25 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v27;
    v15 = object;
    (*(v54 + 32))(v28, countAndFlagsBits, object);
    v6 = v41;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  v55 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 104) == 1)
  {
    (*(v10 + 104))(v14, enum case for CellAction.Placement.default(_:), v9);
    v45 = v9;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v57._object = 0x800000010121D3B0;
    v29._object = 0xEE0065726168535FLL;
    v30._countAndFlagsBits = 0x6572616853;
    v57._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0x6570697753776F52;
    v30._object = 0xE500000000000000;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, qword_1019600D8, v30, v57);
    countAndFlagsBits = v31._countAndFlagsBits;
    object = v31._object;
    v32 = swift_allocObject();
    *(v32 + 16) = v49;
    *(v32 + 24) = v50;
    *(v32 + 32) = 10;

    v33 = static Color.blue.getter();
    v34 = v51;
    *v51 = v33;
    (*(v46 + 104))(v34, enum case for CellAction.Style.tintable(_:), v47);
    v35 = v45;
    (*(v10 + 16))(v48, v14, v45);
    *v6 = 0x68532E6570697753;
    *(v6 + 1) = 0xEB00000000657261;
    (*(v52 + 104))(v6, enum case for MapsDesignAccessibilityString.button(_:), v53);
    v36 = v43;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    (*(v10 + 8))(v14, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_100355E1C(0, v25[2] + 1, 1, v25);
    }

    v38 = v25[2];
    v37 = v25[3];
    if (v38 >= v37 >> 1)
    {
      v25 = sub_100355E1C(v37 > 1, v38 + 1, 1, v25);
    }

    v25[2] = v38 + 1;
    (*(v54 + 32))(v25 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v38, v36, v15);
  }

  return v25;
}

uint64_t sub_10011C254(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v7 - 8);
  v9 = v13 - v8;
  swift_getKeyPath();
  v17 = a1;
  sub_10011C794(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10005EB40((a1 + 32), &v17);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  swift_getKeyPath();
  v13[1] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000CE6B8(&unk_1019157F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E1D30;

  *(v10 + 32) = sub_10011B014(a1);
  sub_10011B748(a1);
  v11 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_10011B9C0(a1, a2, a3);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  return ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
}

void *sub_10011C520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObservationRegistrar.init()();
  v3[3] = a1;

  v3[2] = sub_10011C254(v7, a2, a3);
  v3[4] = a2;
  v3[5] = a3;
  type metadata accessor for ListCellViewModel();

  withObservationTracking<A>(_:onChange:)();
  sub_10011A3A4(v9);
  return v3;
}

uint64_t sub_10011C65C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_10011C6A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10011A5FC(a1, v4, v5, v6);
}

uint64_t sub_10011C754@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10011C254(*(*(v1 + 16) + 24), *(*(v1 + 16) + 32), *(*(v1 + 16) + 40));
  *a1 = result;
  return result;
}

uint64_t sub_10011C794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10011C7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190D600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011C84C()
{
  result = qword_10190B858;
  if (!qword_10190B858)
  {
    sub_1000D6664(&unk_10190D600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B858);
  }

  return result;
}

unint64_t sub_10011C8B0()
{
  result = qword_10190B860;
  if (!qword_10190B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B860);
  }

  return result;
}

uint64_t sub_10011C92C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  sub_1000CE6B8(&qword_10190B898);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 32) = NSURLContentModificationDateKey;
  v10 = NSURLContentModificationDateKey;
  sub_10052F604(inited);
  swift_setDeallocating();
  sub_10012268C(inited + 32);
  URL.resourceValues(forKeys:)();

  URLResourceValues.contentModificationDate.getter();
  (*(v3 + 8))(v5, v2);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v8, v11);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = (*(*(v11 - 8) + 48))(v8, 1, v11);
  if (result != 1)
  {
    return sub_100024F64(v8, &qword_10190EBD0);
  }

  return result;
}

uint64_t sub_10011CC10(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for URL();
    return a2;
  }

  return result;
}

void sub_10011CC98(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (GEOConfigGetBOOL() && [objc_opt_self() shouldEnableTTRButton] && (GEOConfigGetBOOL() & 1) == 0)
  {
    v14 = [objc_opt_self() _maps_radar_symbolCircleFilled];
    [a1 setImage:v14 forState:0];

    sub_100014C84(0, &unk_101923740);
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [a1 addAction:v16 forControlEvents:{64, 0, 0, 0, sub_100060EA8, v15}];

    [a1 setContextMenuInteractionEnabled:1];
    v18 = sub_100121D48(a2);
    [a1 setMenu:v18];
  }

  else if (sub_10002B22C())
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:v9];

    [a1 setImage:v10 forState:0];
    sub_100014C84(0, &unk_101923740);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v4;
    v17 = v12;
    v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [a1 addAction:v13 forControlEvents:{64, 0, 0, 0, sub_100122684, v17}];

    [a1 setContextMenuInteractionEnabled:0];

    [a1 setMenu:0];
  }
}

void sub_10011CFE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
    v3 = FBKFeedbackForm.init(identifier:)();
    sub_1001219C4();
    dispatch thunk of FBKFeedbackForm.attachments.setter();
    objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
    v4 = v3;
    v5 = FBKFeedbackDraftViewController.init(feedbackForm:)();
    v6 = [v1 topMostPresentedViewController];
    if (v6)
    {
      v7 = v6;
      [v6 presentViewController:v5 animated:1 completion:0];
    }
  }
}

void sub_10011D1B0(uint64_t a1, char a2)
{
  v3 = [objc_allocWithZone(MapsRadarDraft) init];
  [v3 setCollectFullLogArchive:a2 & 1];
  v4 = [objc_opt_self() sharedInstance];
  [v4 launchTTRWithRadar:v3];
}

void sub_10011D250(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_10012261C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10011D650;
  v7[3] = &unk_101604C90;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 collectAttachmentsWithCompletion:v5];
  _Block_release(v5);
}

void sub_10011D350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = objc_allocWithZone(MapsDebugFileExportController);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithFileAtURL:v9 presentingViewController:a2];

  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_100122624;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101604CE0;
  v14 = _Block_copy(aBlock);

  [v11 startWithCompletion:v14];
  _Block_release(v14);
}

id sub_10011D530()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10011D650(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id sub_10011D744()
{
  v0 = objc_opt_self();

  return [v0 show];
}

void sub_10011D77C(void *a1, void *a2)
{
  v3 = [a1 title];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  [a2 setTitle:v3];

  v4 = [objc_opt_self() sharedInstance];
  [v4 launchTTRWithRadar:a2];
}

void sub_10011D8E8(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for URL();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URL() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10011E2C8(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_10011DA14(0, v2, 1, a1);
  }
}

void sub_10011DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v70 = type metadata accessor for URLResourceValues();
  v8 = *(v70 - 8);
  __chkstk_darwin(v70);
  v83 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v61 - v11;
  v12 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v61 - v16;
  v93 = type metadata accessor for Date();
  v17 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v61 - v20;
  v21 = type metadata accessor for URL();
  __chkstk_darwin(v21);
  v74 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v94 = &v61 - v24;
  __chkstk_darwin(v25);
  v88 = &v61 - v27;
  v63 = a2;
  if (a3 != a2)
  {
    v75 = v14;
    v28 = *a4;
    v30 = *(v26 + 16);
    v29 = v26 + 16;
    v79 = v30;
    v78 = NSURLContentModificationDateKey;
    v31 = *(v29 + 56);
    v85 = (v17 + 56);
    v69 = (v8 + 8);
    v92 = (v17 + 48);
    v68 = (v17 + 32);
    v77 = (v17 + 8);
    v76 = (v29 - 8);
    v80 = v29;
    v72 = (v29 + 16);
    v32 = (v28 + v31 * (a3 - 1));
    v71 = -v31;
    v33 = a1 - a3;
    v73 = v28;
    v62 = v31;
    v34 = v28 + v31 * a3;
    v87 = xmmword_1011E1D30;
    v81 = v21;
LABEL_5:
    v67 = a3;
    v64 = v34;
    v65 = v33;
    v35 = v33;
    v66 = v32;
    v36 = v84;
    while (1)
    {
      v86 = v35;
      v37 = v79;
      v79(v88, v34, v21);
      v37(v94, v32, v21);
      sub_1000CE6B8(&qword_10190B898);
      inited = swift_initStackObject();
      *(inited + 16) = v87;
      v39 = v78;
      *(inited + 32) = v78;
      v40 = v39;
      sub_10052F604(inited);
      swift_setDeallocating();
      sub_10012268C(inited + 32);
      v41 = v91;
      URL.resourceValues(forKeys:)();
      if (v41)
      {

        v42 = v82;
        v43 = v93;
        (*v85)(v82, 1, 1, v93);
      }

      else
      {

        v42 = v82;
        URLResourceValues.contentModificationDate.getter();
        (*v69)(v36, v70);
        v43 = v93;
        v44 = *v92;
        if ((*v92)(v42, 1, v93) != 1)
        {
          (*v68)(v89, v42, v43);
          goto LABEL_12;
        }
      }

      static Date.distantPast.getter();
      v44 = *v92;
      if ((*v92)(v42, 1, v43) != 1)
      {
        sub_100024F64(v42, &qword_10190EBD0);
      }

LABEL_12:
      v45 = swift_initStackObject();
      *(v45 + 16) = v87;
      *(v45 + 32) = v40;
      v46 = v40;
      sub_10052F604(v45);
      swift_setDeallocating();
      sub_10012268C(v45 + 32);
      v47 = v83;
      URL.resourceValues(forKeys:)();

      v48 = v75;
      URLResourceValues.contentModificationDate.getter();
      (*v69)(v47, v70);
      v49 = v93;
      if (v44(v48, 1, v93) == 1)
      {
        static Date.distantPast.getter();
        if (v44(v48, 1, v49) != 1)
        {
          sub_100024F64(v48, &qword_10190EBD0);
        }
      }

      else
      {
        (*v68)(v90, v48, v49);
      }

      v36 = v84;
      v51 = v89;
      v50 = v90;
      v52 = static Date.< infix(_:_:)();
      v53 = *v77;
      v54 = v50;
      v55 = v93;
      (*v77)(v54, v93);
      v53(v51, v55);
      v56 = *v76;
      v21 = v81;
      (*v76)(v94, v81);
      v56(v88, v21);
      v91 = 0;
      if ((v52 & 1) == 0)
      {
LABEL_4:
        a3 = v67 + 1;
        v32 = &v66[v62];
        v33 = v65 - 1;
        v34 = v64 + v62;
        if (v67 + 1 == v63)
        {
          return;
        }

        goto LABEL_5;
      }

      v57 = v86;
      if (!v73)
      {
        __break(1u);
        return;
      }

      v58 = *v72;
      v59 = v74;
      (*v72)(v74, v34, v21);
      swift_arrayInitWithTakeFrontToBack();
      v58(v32, v59, v21);
      v32 += v71;
      v34 += v71;
      v60 = __CFADD__(v57, 1);
      v35 = v57 + 1;
      if (v60)
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_10011E2C8(unint64_t *a1, uint64_t a2, void (**a3)(void), uint64_t a4)
{
  v211 = a4;
  v212 = a1;
  v230 = type metadata accessor for URLResourceValues();
  v5 = *(v230 - 8);
  __chkstk_darwin(v230);
  v236 = &v207 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v238 = &v207 - v8;
  __chkstk_darwin(v9);
  v218 = &v207 - v10;
  __chkstk_darwin(v11);
  v219 = &v207 - v12;
  v13 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v13 - 8);
  v235 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v237 = &v207 - v16;
  __chkstk_darwin(v17);
  v217 = &v207 - v18;
  __chkstk_darwin(v19);
  v216 = &v207 - v20;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v255 = &v207 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v256 = &v207 - v25;
  __chkstk_darwin(v26);
  v226 = &v207 - v27;
  __chkstk_darwin(v28);
  v225 = &v207 - v29;
  __chkstk_darwin(v30);
  v209 = &v207 - v31;
  __chkstk_darwin(v32);
  v208 = &v207 - v33;
  v34 = type metadata accessor for URL();
  v220 = *(v34 - 8);
  __chkstk_darwin(v34);
  v214 = &v207 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v231 = &v207 - v37;
  __chkstk_darwin(v38);
  __chkstk_darwin(v39);
  v259 = &v207 - v40;
  __chkstk_darwin(v41);
  v228 = &v207 - v42;
  __chkstk_darwin(v43);
  v224 = &v207 - v44;
  __chkstk_darwin(v45);
  v207 = &v207 - v46;
  __chkstk_darwin(v47);
  v210 = &v207 - v49;
  v221 = a3;
  v50 = a3[1];
  if (v50 < 1)
  {
    v52 = _swiftEmptyArrayStorage;
LABEL_142:
    v5 = *v212;
    if (!*v212)
    {
      goto LABEL_182;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_144:
      v262 = v52;
      v202 = *(v52 + 16);
      if (v202 >= 2)
      {
        while (*v221)
        {
          v203 = *(v52 + 16 * v202);
          v204 = *(v52 + 16 * (v202 - 1) + 40);
          v205 = v257;
          sub_10011FCDC(*v221 + v220[9] * v203, *v221 + v220[9] * *(v52 + 16 * (v202 - 1) + 32), *v221 + v220[9] * v204, v5);
          v257 = v205;
          if (v205)
          {
            goto LABEL_152;
          }

          if (v204 < v203)
          {
            goto LABEL_169;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_10056D550(v52);
          }

          if (v202 - 2 >= *(v52 + 16))
          {
            goto LABEL_170;
          }

          v206 = (v52 + 16 * v202);
          *v206 = v203;
          v206[1] = v204;
          v262 = v52;
          sub_10056D4C4(v202 - 1);
          v52 = v262;
          v202 = *(v262 + 16);
          if (v202 <= 1)
          {
            goto LABEL_152;
          }
        }

        goto LABEL_180;
      }

LABEL_152:

      return;
    }

LABEL_176:
    v52 = sub_10056D550(v52);
    goto LABEL_144;
  }

  v234 = v48;
  v51 = 0;
  v244 = v220 + 2;
  v243 = (v22 + 8);
  v242 = (v220 + 1);
  v241 = NSURLContentModificationDateKey;
  v246 = (v22 + 56);
  v229 = (v5 + 8);
  v258 = (v22 + 48);
  v227 = (v22 + 32);
  v240 = (v220 + 4);
  v52 = _swiftEmptyArrayStorage;
  v223 = xmmword_1011E1D30;
  v251 = v21;
  v245 = v34;
LABEL_4:
  v213 = v52;
  v239 = v51;
  if (v51 + 1 >= v50)
  {
    v71 = v51 + 1;
    v86 = v211;
    goto LABEL_35;
  }

  v222 = v50;
  v53 = *v221;
  v54 = v220[9];
  v254 = *v221 + v54 * (v51 + 1);
  v55 = v220[2];
  v55();
  v56 = v53 + v54 * v51;
  v57 = v207;
  v250 = v55;
  (v55)(v207, v56, v34);
  v58 = v208;
  sub_10011C92C(v208);
  v59 = v209;
  sub_10011C92C(v209);
  LODWORD(v252) = static Date.< infix(_:_:)();
  v60 = *v243;
  v61 = v59;
  v62 = v254;
  (*v243)(v61, v21);
  v249 = v60;
  v60(v58, v21);
  v63 = v220[1];
  v63(v57, v34);
  v248 = v63;
  v63(v210, v34);
  v64 = (v239 + 2);
  v253 = v54;
  v65 = v53 + v54 * (v239 + 2);
  v5 = v219;
  while (1)
  {
    v71 = v222;
    if (v222 == v64)
    {
      break;
    }

    v72 = v250;
    (v250)(v224, v65, v34);
    v254 = v62;
    (v72)(v228, v62, v34);
    sub_1000CE6B8(&qword_10190B898);
    inited = swift_initStackObject();
    *(inited + 16) = v223;
    v74 = v241;
    *(inited + 32) = v241;
    v75 = v74;
    sub_10052F604(inited);
    swift_setDeallocating();
    sub_10012268C(inited + 32);
    v76 = v257;
    URL.resourceValues(forKeys:)();
    if (v76)
    {

      v77 = v216;
      v78 = v251;
      (*v246)(v216, 1, 1, v251);
LABEL_12:
      static Date.distantPast.getter();
      v80 = *v258;
      if ((*v258)(v77, 1, v78) != 1)
      {
        sub_100024F64(v77, &qword_10190EBD0);
      }

      goto LABEL_15;
    }

    v79 = v216;
    URLResourceValues.contentModificationDate.getter();
    v77 = v79;
    (*v229)(v5, v230);
    v80 = *v258;
    v81 = v79;
    v78 = v251;
    if ((*v258)(v81, 1, v251) == 1)
    {
      goto LABEL_12;
    }

    (*v227)(v225, v77, v78);
LABEL_15:
    v82 = swift_initStackObject();
    *(v82 + 16) = v223;
    *(v82 + 32) = v75;
    v83 = v75;
    sub_10052F604(v82);
    swift_setDeallocating();
    sub_10012268C(v82 + 32);
    v84 = v218;
    URL.resourceValues(forKeys:)();
    v257 = 0;

    v85 = v217;
    URLResourceValues.contentModificationDate.getter();
    (*v229)(v84, v230);
    v21 = v251;
    if (v80(v85, 1, v251) == 1)
    {
      v34 = v245;
      static Date.distantPast.getter();
      if (v80(v85, 1, v21) != 1)
      {
        sub_100024F64(v85, &qword_10190EBD0);
      }

      v5 = v219;
    }

    else
    {
      (*v227)(v226, v85, v21);
      v5 = v219;
      v34 = v245;
    }

    v66 = v225;
    v67 = v226;
    v68 = static Date.< infix(_:_:)();
    v69 = v249;
    v249(v67, v21);
    v69(v66, v21);
    v70 = v248;
    (v248)(v228, v34);
    v70(v224, v34);
    ++v64;
    v65 = v253 + v65;
    v62 = v253 + v254;
    if ((v252 ^ v68))
    {
      v71 = (v64 - 1);
      break;
    }
  }

  v86 = v211;
  v52 = v213;
  v51 = v239;
  if (v252)
  {
    if (v71 < v239)
    {
      goto LABEL_173;
    }

    if (v239 < v71)
    {
      v87 = v253 * (v71 - 1);
      v88 = v71 * v253;
      v222 = v71;
      v89 = v239;
      v90 = v239 * v253;
      do
      {
        if (v89 != --v71)
        {
          v92 = *v221;
          if (!*v221)
          {
            goto LABEL_179;
          }

          v5 = v92 + v90;
          v93 = *v240;
          (*v240)(v214, v92 + v90, v245);
          if (v90 < v87 || v5 >= v92 + v88)
          {
            v91 = v245;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v91 = v245;
            if (v90 != v87)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v93(v92 + v87, v214, v91);
          v21 = v251;
          v52 = v213;
          v51 = v239;
        }

        ++v89;
        v87 -= v253;
        v88 -= v253;
        v90 += v253;
      }

      while (v89 < v71);
      v86 = v211;
      v34 = v245;
      v71 = v222;
    }
  }

LABEL_35:
  v94 = v221[1];
  if (v71 >= v94)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v71, v51))
  {
    goto LABEL_172;
  }

  if (v71 - v51 >= v86)
  {
LABEL_44:
    v5 = v71;
    if (v71 < v51)
    {
      goto LABEL_171;
    }

    goto LABEL_45;
  }

  if (__OFADD__(v51, v86))
  {
    goto LABEL_174;
  }

  if (v51 + v86 >= v94)
  {
    v5 = v221[1];
  }

  else
  {
    v5 = v51 + v86;
  }

  if (v5 < v51)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v71 == v5)
  {
    goto LABEL_44;
  }

  v250 = *v221;
  v254 = sub_1000CE6B8(&qword_10190B8A0);
  v233 = v220[9];
  v232 = v220[2];
  v142 = v234;
  v215 = v5;
  while (2)
  {
    v222 = v71;
    v143 = v71;
LABEL_97:
    v144 = v143 - 1;
    v145 = v250;
    v146 = v233;
    v248 = (v250 + v233 * v143);
    v147 = v232;
    v232(v259);
    v249 = v144;
    v247 = v145 + v144 * v146;
    v147(v142);
    v148 = v241;
    v261 = v241;
    v149 = static _SetStorage.allocate(capacity:)();
    v5 = v149 + 56;
    v150 = v261;
    v253 = v148;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    v151 = v150;
    String.hash(into:)();
    v152 = Hasher._finalize()();

    v153 = -1 << *(v149 + 32);
    v52 = v152 & ~v153;
    v154 = v52 >> 6;
    v155 = *(v149 + 56 + 8 * (v52 >> 6));
    v156 = 1 << v52;
    if (((1 << v52) & v155) != 0)
    {
      v157 = ~v153;
      while (1)
      {
        v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v160 = v159;
        if (v158 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v160 == v161)
        {

          goto LABEL_110;
        }

        v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v163)
        {
          break;
        }

        v52 = (v52 + 1) & v157;
        v154 = v52 >> 6;
        v155 = *(v5 + 8 * (v52 >> 6));
        v156 = 1 << v52;
        if (((1 << v52) & v155) == 0)
        {
          v21 = v251;
          goto LABEL_106;
        }
      }

LABEL_110:
      v21 = v251;
    }

    else
    {
LABEL_106:
      *(v5 + 8 * v154) = v156 | v155;
      *(*(v149 + 48) + 8 * v52) = v151;
      v164 = *(v149 + 16);
      v110 = __OFADD__(v164, 1);
      v165 = v164 + 1;
      if (v110)
      {
        __break(1u);
        goto LABEL_154;
      }

      *(v149 + 16) = v165;
    }

    sub_10012268C(&v261);
    v166 = v238;
    v167 = v257;
    URL.resourceValues(forKeys:)();
    if (v167)
    {

      v168 = v237;
      (*v246)(v237, 1, 1, v21);
LABEL_114:
      static Date.distantPast.getter();
      v170 = *v258;
      v171 = (*v258)(v168, 1, v21);
      v252 = v170;
      if (v171 != 1)
      {
        sub_100024F64(v168, &qword_10190EBD0);
      }
    }

    else
    {

      v168 = v237;
      URLResourceValues.contentModificationDate.getter();
      (*v229)(v166, v230);
      v169 = *v258;
      if ((*v258)(v168, 1, v21) == 1)
      {
        goto LABEL_114;
      }

      v252 = v169;
      (*v227)(v256, v168, v21);
    }

    v172 = v253;
    v260 = v253;
    v173 = static _SetStorage.allocate(capacity:)();
    v52 = v173 + 56;
    v174 = v260;
    v175 = v172;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    v176 = v174;
    String.hash(into:)();
    v177 = Hasher._finalize()();

    v178 = -1 << *(v173 + 32);
    v5 = v177 & ~v178;
    v179 = v5 >> 6;
    v180 = *(v173 + 56 + 8 * (v5 >> 6));
    v181 = 1 << v5;
    if (((1 << v5) & v180) == 0)
    {
      goto LABEL_126;
    }

    v257 = v176;
    v182 = ~v178;
    while (1)
    {
      v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v184;
      if (v183 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v185 == v186)
      {

        goto LABEL_130;
      }

      v188 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v188)
      {
        break;
      }

      v5 = (v5 + 1) & v182;
      v179 = v5 >> 6;
      v180 = *(v52 + 8 * (v5 >> 6));
      v181 = 1 << v5;
      if (((1 << v5) & v180) == 0)
      {
        v176 = v257;
LABEL_126:
        *(v52 + 8 * v179) = v181 | v180;
        *(*(v173 + 48) + 8 * v5) = v176;
        v189 = *(v173 + 16);
        v110 = __OFADD__(v189, 1);
        v190 = v189 + 1;
        v21 = v251;
        v34 = v245;
        if (!v110)
        {
          *(v173 + 16) = v190;
          goto LABEL_131;
        }

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
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }
    }

LABEL_130:
    v21 = v251;
    v34 = v245;
LABEL_131:
    sub_10012268C(&v260);
    v191 = v236;
    v142 = v234;
    URL.resourceValues(forKeys:)();
    v257 = 0;

    v192 = v235;
    URLResourceValues.contentModificationDate.getter();
    (*v229)(v191, v230);
    v193 = v252;
    if (v252(v192, 1, v21) == 1)
    {
      static Date.distantPast.getter();
      if (v193(v192, 1, v21) != 1)
      {
        sub_100024F64(v192, &qword_10190EBD0);
      }
    }

    else
    {
      (*v227)(v255, v192, v21);
    }

    v194 = v256;
    v195 = v255;
    v196 = static Date.< infix(_:_:)();
    v197 = *v243;
    (*v243)(v195, v21);
    v197(v194, v21);
    v198 = *v242;
    (*v242)(v142, v34);
    v198(v259, v34);
    if ((v196 & 1) == 0)
    {
LABEL_95:
      v71 = v222 + 1;
      v5 = v215;
      if (v222 + 1 != v215)
      {
        continue;
      }

      v52 = v213;
      v51 = v239;
      if (v215 < v239)
      {
        goto LABEL_171;
      }

LABEL_45:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_100097874(0, *(v52 + 16) + 1, 1, v52);
      }

      v96 = *(v52 + 16);
      v95 = *(v52 + 24);
      v97 = v96 + 1;
      if (v96 >= v95 >> 1)
      {
        v52 = sub_100097874((v95 > 1), v96 + 1, 1, v52);
      }

      *(v52 + 16) = v97;
      v98 = v52 + 16 * v96;
      *(v98 + 32) = v51;
      *(v98 + 40) = v5;
      v215 = v5;
      v5 = *v212;
      if (!*v212)
      {
        goto LABEL_181;
      }

      if (v96)
      {
        while (2)
        {
          v99 = v97 - 1;
          if (v97 >= 4)
          {
            v104 = v52 + 32 + 16 * v97;
            v105 = *(v104 - 64);
            v106 = *(v104 - 56);
            v110 = __OFSUB__(v106, v105);
            v107 = v106 - v105;
            if (v110)
            {
              goto LABEL_158;
            }

            v109 = *(v104 - 48);
            v108 = *(v104 - 40);
            v110 = __OFSUB__(v108, v109);
            v102 = v108 - v109;
            v103 = v110;
            if (v110)
            {
              goto LABEL_159;
            }

            v111 = (v52 + 16 * v97);
            v113 = *v111;
            v112 = v111[1];
            v110 = __OFSUB__(v112, v113);
            v114 = v112 - v113;
            if (v110)
            {
              goto LABEL_161;
            }

            v110 = __OFADD__(v102, v114);
            v115 = v102 + v114;
            if (v110)
            {
              goto LABEL_164;
            }

            if (v115 >= v107)
            {
              v133 = (v52 + 32 + 16 * v99);
              v135 = *v133;
              v134 = v133[1];
              v110 = __OFSUB__(v134, v135);
              v136 = v134 - v135;
              if (v110)
              {
                goto LABEL_168;
              }

              if (v102 < v136)
              {
                v99 = v97 - 2;
              }
            }

            else
            {
LABEL_64:
              if (v103)
              {
                goto LABEL_160;
              }

              v116 = (v52 + 16 * v97);
              v118 = *v116;
              v117 = v116[1];
              v119 = __OFSUB__(v117, v118);
              v120 = v117 - v118;
              v121 = v119;
              if (v119)
              {
                goto LABEL_163;
              }

              v122 = (v52 + 32 + 16 * v99);
              v124 = *v122;
              v123 = v122[1];
              v110 = __OFSUB__(v123, v124);
              v125 = v123 - v124;
              if (v110)
              {
                goto LABEL_166;
              }

              if (__OFADD__(v120, v125))
              {
                goto LABEL_167;
              }

              if (v120 + v125 < v102)
              {
                goto LABEL_78;
              }

              if (v102 < v125)
              {
                v99 = v97 - 2;
              }
            }
          }

          else
          {
            if (v97 == 3)
            {
              v100 = *(v52 + 32);
              v101 = *(v52 + 40);
              v110 = __OFSUB__(v101, v100);
              v102 = v101 - v100;
              v103 = v110;
              goto LABEL_64;
            }

            v126 = (v52 + 16 * v97);
            v128 = *v126;
            v127 = v126[1];
            v110 = __OFSUB__(v127, v128);
            v120 = v127 - v128;
            v121 = v110;
LABEL_78:
            if (v121)
            {
              goto LABEL_162;
            }

            v129 = v52 + 16 * v99;
            v131 = *(v129 + 32);
            v130 = *(v129 + 40);
            v110 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v110)
            {
              goto LABEL_165;
            }

            if (v132 < v120)
            {
              break;
            }
          }

          v137 = v99 - 1;
          if (v99 - 1 >= v97)
          {
            goto LABEL_155;
          }

          if (!*v221)
          {
            goto LABEL_178;
          }

          v138 = *(v52 + 32 + 16 * v137);
          v139 = *(v52 + 32 + 16 * v99 + 8);
          v140 = v257;
          sub_10011FCDC(*v221 + v220[9] * v138, *v221 + v220[9] * *(v52 + 32 + 16 * v99), *v221 + v220[9] * v139, v5);
          v257 = v140;
          if (v140)
          {
            goto LABEL_152;
          }

          if (v139 < v138)
          {
            goto LABEL_156;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_10056D550(v52);
          }

          if (v137 >= *(v52 + 16))
          {
            goto LABEL_157;
          }

          v141 = v52 + 16 * v137;
          *(v141 + 32) = v138;
          *(v141 + 40) = v139;
          v262 = v52;
          sub_10056D4C4(v99);
          v52 = v262;
          v97 = *(v262 + 16);
          if (v97 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v50 = v221[1];
      v51 = v215;
      if (v215 >= v50)
      {
        goto LABEL_142;
      }

      goto LABEL_4;
    }

    break;
  }

  if (v250)
  {
    v199 = *v240;
    v200 = v231;
    (*v240)(v231, v248, v34);
    v201 = v247;
    swift_arrayInitWithTakeFrontToBack();
    v199(v201, v200, v34);
    v143 = v249;
    if (v249 == v239)
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
}

void sub_10011FCDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v136 = a3;
  v123 = type metadata accessor for URLResourceValues();
  v132 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v107 - v11;
  __chkstk_darwin(v12);
  v14 = (&v107 - v13);
  __chkstk_darwin(v15);
  v121 = (&v107 - v16);
  v17 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v17 - 8);
  v114 = (&v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v113 = &v107 - v20;
  __chkstk_darwin(v21);
  v120 = &v107 - v22;
  __chkstk_darwin(v23);
  v119 = &v107 - v24;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  *&v127 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v126 = &v107 - v29;
  __chkstk_darwin(v30);
  *&v130 = &v107 - v31;
  __chkstk_darwin(v32);
  v129 = &v107 - v33;
  v34 = type metadata accessor for URL();
  v122 = *(v34 - 8);
  __chkstk_darwin(v34);
  v131 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v124 = (&v107 - v37);
  __chkstk_darwin(v38);
  v133 = &v107 - v39;
  __chkstk_darwin(v40);
  v128 = &v107 - v41;
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_83;
  }

  v44 = v136 - a2;
  if (v136 - a2 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_84;
  }

  v45 = (a2 - a1) / v43;
  v139 = a1;
  v138 = a4;
  v135 = v25;
  v125 = v34;
  if (v45 >= v44 / v43)
  {
    v47 = v44 / v43 * v43;
    if (a4 < a2 || a2 + v47 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v47 < 1)
    {
      v80 = a4 + v47;
      goto LABEL_80;
    }

    v78 = -v43;
    v117 = (v122 + 16);
    v116 = NSURLContentModificationDateKey;
    v121 = (v26 + 56);
    v109 = (v132 + 8);
    v119 = (v26 + 48);
    v108 = (v26 + 32);
    v112 = (v26 + 8);
    v111 = (v122 + 8);
    v130 = xmmword_1011E1D30;
    v79 = (a4 + v47);
    v80 = a4 + v47;
    v134 = a4;
    v133 = -v43;
    while (1)
    {
      v107 = v80;
      v81 = a2;
      a2 += v78;
      v132 = a2;
      v120 = v81;
      while (1)
      {
        if (v81 <= a1)
        {
          v139 = v81;
          v137 = v107;
          goto LABEL_81;
        }

        v110 = v80;
        v128 = v79;
        v82 = *v117;
        v122 = &v79[v78];
        v82(v124);
        (v82)(v131, a2, v34);
        sub_1000CE6B8(&qword_10190B898);
        inited = swift_initStackObject();
        *(inited + 16) = v130;
        v84 = v116;
        *(inited + 32) = v116;
        v85 = v84;
        sub_10052F604(inited);
        swift_setDeallocating();
        sub_10012268C(inited + 32);
        v86 = v115;
        URL.resourceValues(forKeys:)();
        if (v5)
        {

          v87 = v113;
          v88 = v135;
          (*v121)(v113, 1, 1, v135);
          v89 = v119;
        }

        else
        {

          v90 = v113;
          URLResourceValues.contentModificationDate.getter();
          v87 = v90;
          (*v109)(v86, v123);
          v89 = v119;
          v91 = *v119;
          v88 = v135;
          if ((*v119)(v87, 1, v135) != 1)
          {
            (*v108)(v126, v87, v88);
            goto LABEL_61;
          }
        }

        static Date.distantPast.getter();
        v91 = *v89;
        if ((*v89)(v87, 1, v88) != 1)
        {
          sub_100024F64(v87, &qword_10190EBD0);
        }

LABEL_61:
        v92 = swift_initStackObject();
        *(v92 + 16) = v130;
        *(v92 + 32) = v85;
        v93 = v85;
        sub_10052F604(v92);
        swift_setDeallocating();
        sub_10012268C(v92 + 32);
        v94 = v118;
        URL.resourceValues(forKeys:)();

        v95 = v114;
        URLResourceValues.contentModificationDate.getter();
        v96 = v94;
        v97 = v95;
        (*v109)(v96, v123);
        v98 = v135;
        if (v91(v95, 1, v135) == 1)
        {
          a2 = v132;
          static Date.distantPast.getter();
          v99 = v91(v97, 1, v98);
          v129 = 0;
          if (v99 != 1)
          {
            sub_100024F64(v97, &qword_10190EBD0);
          }
        }

        else
        {
          v129 = 0;
          (*v108)(v127, v95, v98);
          a2 = v132;
        }

        v100 = v136;
        v136 += v133;
        v101 = v126;
        v102 = v127;
        v103 = static Date.< infix(_:_:)();
        v104 = *v112;
        (*v112)(v102, v98);
        v104(v101, v98);
        v105 = *v111;
        v34 = v125;
        (*v111)(v131, v125);
        v105(v124, v34);
        if (v103)
        {
          break;
        }

        v106 = v122;
        v80 = v122;
        if (v100 < v128 || v136 >= v128)
        {
          swift_arrayInitWithTakeFrontToBack();
          v5 = v129;
        }

        else
        {
          v5 = v129;
          if (v100 != v128)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v79 = v80;
        v78 = v133;
        v81 = v120;
        if (v106 <= v134)
        {
          a2 = v120;
          goto LABEL_80;
        }
      }

      if (v100 < v120 || v136 >= v120)
      {
        swift_arrayInitWithTakeFrontToBack();
        v5 = v129;
        v80 = v110;
      }

      else
      {
        v5 = v129;
        v80 = v110;
        if (v100 != v120)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v79 = v128;
      v78 = v133;
      if (v128 <= v134)
      {
LABEL_80:
        v139 = a2;
        v137 = v80;
        goto LABEL_81;
      }
    }
  }

  v46 = v45 * v43;
  if (a4 < a1 || a1 + v46 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v118 = (a4 + v46);
  v137 = a4 + v46;
  if (v46 >= 1 && a2 < v136)
  {
    v115 = *(v122 + 16);
    v114 = NSURLContentModificationDateKey;
    v124 = (v26 + 56);
    v111 = (v132 + 8);
    v131 = (v26 + 48);
    v110 = (v26 + 32);
    v113 = (v26 + 8);
    v122 += 16;
    v112 = (v122 - 8);
    v127 = xmmword_1011E1D30;
    v117 = v43;
    v116 = v14;
    while (1)
    {
      v126 = a1;
      v49 = v14;
      v132 = a2;
      v50 = v115;
      (v115)(v128, a2, v34);
      v51 = a4;
      v50(v133, a4, v34);
      sub_1000CE6B8(&qword_10190B898);
      v52 = swift_initStackObject();
      *(v52 + 16) = v127;
      v53 = v114;
      *(v52 + 32) = v114;
      v54 = v53;
      sub_10052F604(v52);
      swift_setDeallocating();
      sub_10012268C(v52 + 32);
      v55 = v121;
      URL.resourceValues(forKeys:)();
      if (v5)
      {
        break;
      }

      v58 = v119;
      URLResourceValues.contentModificationDate.getter();
      v56 = v58;
      (*v111)(v55, v123);
      v59 = *v131;
      v60 = v58;
      v57 = v135;
      if ((*v131)(v60, 1, v135) == 1)
      {
        goto LABEL_24;
      }

      (*v110)(v129, v56, v57);
      v61 = v51;
      v62 = v49;
LABEL_27:
      v63 = v126;
      v134 = v61;
      v64 = swift_initStackObject();
      *(v64 + 16) = v127;
      *(v64 + 32) = v54;
      v65 = v54;
      sub_10052F604(v64);
      swift_setDeallocating();
      sub_10012268C(v64 + 32);
      URL.resourceValues(forKeys:)();

      v66 = v120;
      URLResourceValues.contentModificationDate.getter();
      (*v111)(v62, v123);
      v67 = v135;
      v68 = v59(v66, 1, v135);
      a2 = v132;
      if (v68 == 1)
      {
        static Date.distantPast.getter();
        v69 = v63;
        if (v59(v66, 1, v67) != 1)
        {
          sub_100024F64(v66, &qword_10190EBD0);
        }
      }

      else
      {
        v69 = v63;
        (*v110)(v130, v66, v67);
      }

      v70 = v129;
      v71 = v130;
      v72 = static Date.< infix(_:_:)();
      v73 = *v113;
      (*v113)(v71, v67);
      v73(v70, v67);
      v74 = *v112;
      v34 = v125;
      (*v112)(v133, v125);
      v74(v128, v34);
      if (v72)
      {
        v75 = v117;
        v76 = v69;
        if (v69 < a2 || v69 >= v117 + a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 += v75;
          v5 = 0;
        }

        else
        {
          v5 = 0;
          if (v69 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v75;
        }

        v14 = v116;
        a4 = v134;
      }

      else
      {
        v75 = v117;
        v77 = v117 + v134;
        v76 = v69;
        if (v69 < v134 || v69 >= v77)
        {
          swift_arrayInitWithTakeFrontToBack();
          v5 = 0;
        }

        else
        {
          v5 = 0;
          if (v69 != v134)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v138 = v77;
        a4 = v77;
        v14 = v116;
      }

      a1 = v75 + v76;
      v139 = a1;
      if (a4 >= v118 || a2 >= v136)
      {
        goto LABEL_81;
      }
    }

    v56 = v119;
    v57 = v135;
    (*v124)(v119, 1, 1, v135);
LABEL_24:
    v61 = v51;
    static Date.distantPast.getter();
    v59 = *v131;
    v62 = v49;
    if ((*v131)(v56, 1, v57) != 1)
    {
      sub_100024F64(v56, &qword_10190EBD0);
    }

    goto LABEL_27;
  }

LABEL_81:
  sub_10052F248(&v139, &v138, &v137);
}

void *sub_100120F8C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v82 = a4;
  v87 = 0;
  v71 = type metadata accessor for URLResourceValues();
  v6 = *(v71 - 8);
  __chkstk_darwin(v71);
  v78 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v8 - 8);
  v77 = &v57 - v9;
  v80 = type metadata accessor for Date();
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v85 = &v57 - v13;
  v14 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  v17 = type metadata accessor for NSFastEnumerationIterator();
  v83 = *(v17 - 8);
  v84 = v17;
  __chkstk_darwin(v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v75 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v86 = &v57 - v24;
  __chkstk_darwin(v25);
  v27 = &v57 - v26;
  v28 = [objc_opt_self() defaultManager];
  v29 = v21;
  URL.init(fileURLWithPath:isDirectory:)();
  v74 = sub_1000CE6B8(&qword_10190B898);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1011E1D60;
  *(v30 + 32) = NSURLNameKey;
  *(v30 + 40) = NSURLContentModificationDateKey;
  v31 = NSURLNameKey;
  v73 = NSURLContentModificationDateKey;
  v32 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v79 = *(v29 + 8);
  v79(v27, v20);
  if (v32)
  {
    v72 = v32;
    NSEnumerator.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (v89)
    {
      v67 = v29 + 8;
      v33 = (v29 + 56);
      v70 = (v29 + 32);
      v63 = (v10 + 56);
      v60 = (v6 + 8);
      v66 = (v10 + 48);
      v59 = (v10 + 32);
      v69 = (v10 + 8);
      v62 = (v29 + 16);
      v34 = _swiftEmptyArrayStorage;
      v65 = xmmword_1011E1D30;
      while (1)
      {
        v35 = swift_dynamicCast();
        v36 = *v33;
        if (v35)
        {
          v68 = v34;
          v36(v16, 0, 1, v20);
          v61 = *v70;
          v61(v86, v16, v20);
          if (URL.pathExtension.getter() == v82 && v37 == v81)
          {

LABEL_12:
            v64 = v29;
            inited = swift_initStackObject();
            *(inited + 16) = v65;
            v40 = v73;
            *(inited + 32) = v73;
            v41 = v40;
            sub_10052F604(inited);
            swift_setDeallocating();
            sub_10012268C(inited + 32);
            v42 = v78;
            v43 = v87;
            URL.resourceValues(forKeys:)();
            if (v43)
            {

              v44 = v77;
              v45 = v80;
              (*v63)(v77, 1, 1, v80);
              v87 = 0;
LABEL_15:
              static Date.distantPast.getter();
              v46 = v45;
              if ((*v66)(v44, 1, v45) != 1)
              {
                sub_100024F64(v44, &qword_10190EBD0);
              }
            }

            else
            {
              v87 = 0;

              v44 = v77;
              URLResourceValues.contentModificationDate.getter();
              (*v60)(v42, v71);
              v45 = v80;
              if ((*v66)(v44, 1, v80) == 1)
              {
                goto LABEL_15;
              }

              v46 = v45;
              (*v59)(v85, v44, v45);
            }

            v47 = v76;
            Date.init()();
            v48 = v85;
            Date.timeIntervalSince(_:)();
            v50 = v49;
            v51 = *v69;
            (*v69)(v47, v46);
            if (v50 >= a1)
            {
              v51(v48, v46);
              v79(v86, v20);
              v29 = v64;
              v34 = v68;
            }

            else
            {
              v58 = v51;
              (*v62)(v75, v86, v20);
              v34 = v68;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_100355FB4(0, v34[2] + 1, 1, v34);
              }

              v53 = v34[2];
              v52 = v34[3];
              if (v53 >= v52 >> 1)
              {
                v34 = sub_100355FB4(v52 > 1, v53 + 1, 1, v34);
              }

              v58(v85, v80);
              v79(v86, v20);
              v34[2] = v53 + 1;
              v54 = v34 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53;
              v29 = v64;
              v61(v54, v75, v20);
            }

            goto LABEL_6;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_12;
          }

          v79(v86, v20);
          v34 = v68;
        }

        else
        {
          v36(v16, 1, 1, v20);
          sub_100024F64(v16, &unk_101909B00);
        }

LABEL_6:
        NSFastEnumerationIterator.next()();
        if (!v89)
        {
          goto LABEL_28;
        }
      }
    }

    v34 = _swiftEmptyArrayStorage;
LABEL_28:
    (*(v83 + 8))(v19, v84);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1004165F0(v34);
  }

  v55 = v34[2];
  v88[0] = v34 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v88[1] = v55;
  sub_10011D8E8(v88);
  return v34;
}

void *sub_1001219C4()
{
  if (!GEOConfigGetBOOL())
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v0 = objc_opt_self();
  v1 = [v0 navTracesDirectoryPath];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = [v0 navTraceExtension];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  GEOConfigGetDouble();
  v10 = sub_100120F8C(v9, v2, v4, v6, v8);

  Integer = GEOConfigGetInteger();
  v15 = sub_10011CC10(Integer, v10);
  if (v14)
  {
    v18 = v14;
    v19 = v13;
    v20 = v12;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
      v21 = _swiftEmptyArrayStorage;
    }

    v22 = v21[2];

    if (__OFSUB__(v18 >> 1, v19))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v22 != (v18 >> 1) - v19)
    {
      goto LABEL_26;
    }

    v17 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v17)
    {
      goto LABEL_12;
    }

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  while (1)
  {
    sub_100415DEC(v15, v12, v13, v14);
    v17 = v16;
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    if (!GEOConfigGetBOOL())
    {
      v40 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    v23 = objc_opt_self();
    v24 = [v23 routePlanningTracesDirectoryPath];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [v23 routePlanningTraceExtension];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    GEOConfigGetDouble();
    v33 = sub_100120F8C(v32, v25, v27, v29, v31);

    v34 = GEOConfigGetInteger();
    v15 = sub_10011CC10(v34, v33);
    if ((v37 & 1) == 0)
    {
      goto LABEL_14;
    }

    v41 = v37;
    v18 = v36;
    v19 = v35;
    v20 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = _swiftEmptyArrayStorage;
    }

    v43 = v42[2];

    if (!__OFSUB__(v41 >> 1, v18))
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease();
    v14 = v18;
    v13 = v19;
    v12 = v20;
  }

  if (v43 != (v41 >> 1) - v18)
  {
    swift_unknownObjectRelease();
    v37 = v41;
    v36 = v18;
    v35 = v19;
LABEL_14:
    sub_100415DEC(v15, v35, v36, v37);
    v39 = v38;
    goto LABEL_22;
  }

  v44 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v40 = v44;
  if (v44)
  {
    goto LABEL_23;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_22:
  swift_unknownObjectRelease();
  v40 = v39;
LABEL_23:
  sub_1002470DC(v40);
  return v17;
}

Class sub_100121D48(void *a1)
{
  sub_100014C84(0, &unk_101923740);
  v2 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  *(swift_allocObject() + 16) = a1;
  v4 = a1;
  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100014C84(0, &qword_101926880);
  sub_1000CE6B8(&qword_101908400);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1011E4FD0;
  *(preferredElementSize + 32) = v2;
  *(preferredElementSize + 40) = v3;
  v43 = v2;
  v42 = v3;
  v8._object = 0x800000010121D460;
  v8._countAndFlagsBits = 0xD000000000000010;
  v45.value.super.isa = 0;
  v45.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v8, 0, v45, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E47B0;
  *(v10 + 32) = v5;
  v41 = v5;
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = 0x800000010121D480;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  v12 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v11, 0, v46, 1, 0xFFFFFFFFFFFFFFFFLL, v10, v37).super.super.isa;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1011E47B0;
  *(v13 + 32) = v6;
  v14 = v6;
  v15._countAndFlagsBits = 0x736E692077656956;
  v15._object = 0xEE00726F74636570;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  v16 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v47, 1, 0xFFFFFFFFFFFFFFFFLL, v13, v38).super.super.isa;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E47C0;
  *(v17 + 32) = v12;
  *(v17 + 40) = v16;
  *(v17 + 48) = isa;
  v44 = v17;
  v18 = v12;
  v19 = v16;
  v20 = isa;
  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    v40 = v14;
    v21 = [objc_allocWithZone(MapsRadarDraft) init];
    v22 = String._bridgeToObjectiveC()();
    [v21 addDiagnosticExtensionID:v22];

    [v21 setClassification:6];
    [v21 setReproducibility:6];
    v23 = [objc_opt_self() mapsLocationIntelligenceComponent];
    [v21 setComponent:v23];

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1011E7420;
    *(swift_allocObject() + 16) = v21;
    v25 = v21;
    *(v24 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    *(swift_allocObject() + 16) = v25;
    v26 = v25;
    *(v24 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    *(swift_allocObject() + 16) = v26;
    v27 = v26;
    *(v24 + 48) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    *(swift_allocObject() + 16) = v27;
    v28 = v27;
    *(v24 + 56) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    *(swift_allocObject() + 16) = v28;
    v29 = v28;
    *(v24 + 64) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1002BFEFC();
    if (v24 >> 62)
    {
      sub_100014C84(0, &qword_10190B890);

      v30 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100014C84(0, &qword_10190B890);
      v30 = v24;
    }

    v31._countAndFlagsBits = 0xD000000000000015;
    v31._object = 0x800000010121B3D0;
    v48.value.super.isa = 0;
    v48.is_nil = 0;
    v32 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v48, 0, 0xFFFFFFFFFFFFFFFFLL, v30, 0).super.super.isa;
    sub_10054E098(0, 0, v32);

    v14 = v40;
  }

  sub_1002BFEFC();
  if (v44 >> 62)
  {
    sub_100014C84(0, &qword_10190B890);

    v33 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100014C84(0, &qword_10190B890);
    v33 = v44;
  }

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v49.value.super.isa = 0;
  v49.is_nil = 0;
  v35 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v49, 0, 0xFFFFFFFFFFFFFFFFLL, v33, v39.super.super.isa).super.super.isa;

  return v35;
}

id sub_100122624()
{
  type metadata accessor for URL();

  return sub_10011D530();
}

uint64_t sub_10012268C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10012279C()
{
  v1 = OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellImageView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10012286C()
{
  v1 = OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellTitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100122968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell_horizontalPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell_verticlePadding] = 0x4034000000000000;
  v11 = &v4[OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell_uniqueIdentifier];
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  *&v4[OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellImageView] = 0;
  *&v4[OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellTitleLabel] = 0;
  if (a3)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for BrowseCategoryTableViewCell();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, "initWithStyle:reuseIdentifier:", a1, v15);

  v18 = v17;
  sub_100122B08();

  return v18;
}

void sub_100122B08()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = [v0 contentView];
  v4 = sub_10012279C();
  [v3 addSubview:v4];

  v5 = OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellImageView;
  LODWORD(v6) = 1148846080;
  [*&v0[OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellImageView] setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [*&v0[v5] setContentCompressionResistancePriority:0 forAxis:v7];
  v8 = *&v0[v5];
  v9 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v9];

  v10 = [v0 contentView];
  v11 = sub_10012286C();
  [v10 addSubview:v11];

  v12 = OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellTitleLabel;
  v13 = *&v0[OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellTitleLabel];
  v14 = [v1 clearColor];
  [v13 setBackgroundColor:v14];

  v15 = *&v0[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 system17];
  [v17 setFont:v18];

  v19 = *&v0[v12];
  v20 = String._bridgeToObjectiveC()();
  [v19 setAccessibilityIdentifier:v20];

  v48 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1011E7920;
  v22 = [*&v0[v5] leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:16.0];
  *(v21 + 32) = v25;
  v26 = [*&v0[v5] widthAnchor];
  v27 = [v26 constraintEqualToConstant:30.0];

  *(v21 + 40) = v27;
  v28 = [*&v0[v5] heightAnchor];
  v29 = [v28 constraintEqualToConstant:30.0];

  *(v21 + 48) = v29;
  v30 = [*&v0[v12] leadingAnchor];
  v31 = [*&v0[v5] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:8.0];

  *(v21 + 56) = v32;
  v33 = [*&v0[v12] trailingAnchor];
  v34 = [v0 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-16.0];
  *(v21 + 64) = v36;
  v37 = [*&v0[v12] topAnchor];
  v38 = [v0 contentView];
  v39 = [v38 topAnchor];

  v40 = [v37 constraintEqualToAnchor:v39 constant:20.0];
  *(v21 + 72) = v40;
  v41 = [*&v0[v12] bottomAnchor];
  v42 = [v0 contentView];
  v43 = [v42 bottomAnchor];

  v44 = [v41 constraintEqualToAnchor:v43 constant:-20.0];
  *(v21 + 80) = v44;
  v45 = [*&v0[v5] centerYAnchor];
  v46 = [*&v0[v12] centerYAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v21 + 88) = v47;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v48 activateConstraints:isa];
}

id sub_10012334C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrowseCategoryTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100123404()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell_horizontalPadding) = 0x4030000000000000;
  *(v1 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell_verticlePadding) = 0x4034000000000000;
  v6 = (v1 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell_uniqueIdentifier);
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *v6 = v7;
  v6[1] = v9;
  *(v1 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellImageView) = 0;
  *(v1 + OBJC_IVAR____TtC4Maps27BrowseCategoryTableViewCell____lazy_storage___cellTitleLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

int *sub_1001235AC@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&unk_10190B9A0);
  type metadata accessor for UIHostingControllerSizingOptions();
  *(swift_allocObject() + 16) = xmmword_1011E1D60;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_100124C64(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000CE6B8(&unk_10190B9B0);
  sub_100124984();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 1;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

double sub_100123730@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UserProfileViewModel();

  State.init(wrappedValue:)();
  a1[3] = &type metadata for UserProfileView;
  a1[4] = sub_100124930();
  v2 = swift_allocObject();
  *a1 = v2;
  *(v2 + 16) = v9;
  *(v2 + 24) = v10;
  __asm { FMOV            V0.2D, #16.0 }

  *(v2 + 32) = _Q0;
  *(v2 + 48) = _Q0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0x4030000000000000;
  result = 0.0;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  return result;
}

id sub_1001237EC()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  if (![PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0))
  {
LABEL_4:
    result = [v1 cardPresentationController];
    if (result)
    {
      v4 = result;
      [result setPresentedModally:1];

      result = [v1 cardPresentationController];
      if (result)
      {
        v5 = result;
        [result setDefaultContaineeLayout:5];

        result = [v1 cardPresentationController];
        if (result)
        {
          v6 = result;
          [result setTakesAvailableHeight:1];

          result = [v1 cardPresentationController];
          if (result)
          {
            v7 = result;
            [result setHideGrabber:1];

            result = [v1 cardPresentationController];
            if (result)
            {
              v8 = result;
              [result setUseDefaultLayoutWhenCalculatingBottomInsetForFloatingControls:1];

              swift_allocObject();
              swift_unknownObjectWeakInit();
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              sub_100124C64(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);

              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

              swift_allocObject();
              swift_unknownObjectWeakInit();
              v10 = swift_getKeyPath();
              __chkstk_darwin(v10);

              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

              swift_allocObject();
              swift_unknownObjectWeakInit();
              v11 = swift_getKeyPath();
              __chkstk_darwin(v11);

              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  result = [v0 cardPresentationController];
  if (result)
  {
    v3 = result;
    [result setAllowResizeInFloatingStyle:1];

    goto LABEL_4;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100123C44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100123CA0(a2);
  }
}

uint64_t sub_100123CA0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_100014C84(0, &unk_10190B9C0);
  v5 = sub_10012431C();
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 loggedIn];

  sub_100124430(a1, v5, v7);

  result = [PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v2);
  if (result)
  {
    v11[3] = ObjectType;
    v11[0] = v2;
    v9 = v2;
    sub_100123F08();
    result = sub_10004E3D0(v11);
  }

  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          return result;
        }

        v10 = &selRef_userProfileViewControllerShowVirtualGarageWithViewController_;
        goto LABEL_22;
      case 4:
        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          return result;
        }

        v10 = &selRef_userProfileViewControllerShowUserProfilePreferencesWithViewController_;
        goto LABEL_22;
      case 5:
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v10 = &selRef_userProfileViewControllerShowOfflineMapsWithViewController_;
          goto LABEL_22;
        }

        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          return result;
        }

        v10 = &selRef_userProfileViewControllerShowLibraryWithViewController_;
        goto LABEL_22;
      case 1:
        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          return result;
        }

        v10 = &selRef_userProfileViewControllerShowReportHistoryWithViewController_;
        goto LABEL_22;
      case 2:
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v10 = &selRef_userProfileViewControllerShowRatingsHistoryWithViewController_;
LABEL_22:
          [result *v10];
          return swift_unknownObjectRelease();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100123E98()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v3[3] = type metadata accessor for UserProfileContaineeViewController();
    v3[0] = v1;
    v2 = v1;
    sub_100123F08();

    return sub_10004E3D0(v3);
  }

  return result;
}

void sub_100123F08()
{
  ObjectType = swift_getObjectType();
  [objc_opt_self() captureExitAccountTapAction];
  if ([PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0))
  {
    v2 = [objc_opt_self() sharedMapsDelegate];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 appKitBundleClass];

      if (v4)
      {
        swift_getObjCClassMetadata();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        [ObjCClassFromMetadata dismissCurrentToolbarPopover];
      }
    }
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, "handleDismissAction:", v0);
  }
}

void sub_100123FE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100124CFC();
  }
}

uint64_t sub_100124084()
{
  v0 = sub_10012431C();
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 loggedIn];

  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100356110(0, *(v0 + 2) + 1, 1, v0);
    }

    v5 = *(v0 + 2);
    v4 = *(v0 + 3);
    if (v5 >= v4 >> 1)
    {
      v0 = sub_100356110((v4 > 1), v5 + 1, 1, v0);
    }

    *(v0 + 2) = v5 + 1;
    *&v0[4 * v5 + 32] = 150;
  }

  sub_100014C84(0, &unk_10190B9C0);
  v6 = [v1 sharedInstance];
  v7 = [v6 loggedIn];

  sub_100124580(v0, v7);
}

char *sub_10012431C()
{
  v0 = sub_100408BD4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v4 = *v2++;
      v5 = v4 - 1;
      if (v4 - 1) <= 4 && ((0x1Bu >> v5))
      {
        v6 = dword_1011E7A24[v5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100356110(0, *(v3 + 2) + 1, 1, v3);
        }

        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          v3 = sub_100356110((v7 > 1), v8 + 1, 1, v3);
        }

        *(v3 + 2) = v8 + 1;
        *&v3[4 * v8 + 32] = v6;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_100124430(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100014C84(0, &qword_101909920);
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      NSNumber.init(integerLiteral:)(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v5;
    }

    while (v5);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100014C84(0, &qword_101909920);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [ObjCClassFromMetadata captureTapActionWithUserProfileLinkType:a1 availableActions:isa signedIntoICloud:a3 & 1];
}

void sub_100124580(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100014C84(0, &qword_101909920);
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      NSNumber.init(integerLiteral:)(v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100014C84(0, &qword_101909920);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [ObjCClassFromMetadata captureAccountDidAppearWithAvailableActions:isa signedIntoICloud:a2 & 1];
}

uint64_t sub_1001248A4()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps34UserProfileContaineeViewController_actionDelegate);
}

unint64_t sub_100124930()
{
  result = qword_10190B998;
  if (!qword_10190B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B998);
  }

  return result;
}

unint64_t sub_100124984()
{
  result = qword_10190DE80;
  if (!qword_10190DE80)
  {
    sub_1000D6664(&unk_10190B9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DE80);
  }

  return result;
}

uint64_t sub_1001249E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100124C64(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSelectLink);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps20UserProfileViewModel__onSelectLink + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100124F28;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100124AE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100100EB8;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100124C64(&qword_10190B9D0, type metadata accessor for UserProfileViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100124C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100124CFC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  [objc_opt_self() captureICloudSignInTapAction];
  URL.init(string:)();
  sub_1000DE5B8(v9, v6);
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_1000FA5D4(v9);
    v9 = v6;
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    v10 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    [v10 _maps_openURL:v12 options:0 completionHandler:0];

    (*(v1 + 8))(v3, v0);
  }

  return sub_1000FA5D4(v9);
}

uint64_t sub_100124F70(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v11 = v2;
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC4Maps20PlaceItemsController__placeById;
  swift_beginAccess();
  v6 = *(v11 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_100297040(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100125088()
{
  swift_getKeyPath();
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps20PlaceItemsController__sortType);
}

uint64_t sub_100125130(unsigned __int8 a1)
{
  v2 = OBJC_IVAR____TtC4Maps20PlaceItemsController__sortType;
  if (*(v1 + OBJC_IVAR____TtC4Maps20PlaceItemsController__sortType) == a1)
  {
    swift_getKeyPath();
    sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return sub_1004A96EC(*(v1 + v2));
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001252CC()
{
  swift_getKeyPath();
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100125378@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps20PlaceItemsController__placeItems);
}

uint64_t sub_10012544C()
{
  swift_getKeyPath();
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10012550C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps20PlaceItemsController__placeById;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1001255F4()
{
  swift_getKeyPath();
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001256B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps20PlaceItemsController__placeById;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_100125720(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC4Maps20PlaceItemsController__sortType;
  *(a1 + OBJC_IVAR____TtC4Maps20PlaceItemsController__sortType) = a2;
  swift_getKeyPath();
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return sub_1004A96EC(*(a1 + v3));
}

char *sub_1001257F0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  *&v0[OBJC_IVAR____TtC4Maps20PlaceItemsController__placeItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps20PlaceItemsController__placeById] = sub_1000D1000(_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC4Maps20PlaceItemsController__sortType] = 2;
  ObservationRegistrar.init()();
  type metadata accessor for LibraryPlacesDataProvider();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC4Maps20PlaceItemsController_placesDataProvider] = sub_1004A9A0C(2);
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v11, "init");
  *(*&v5[OBJC_IVAR____TtC4Maps20PlaceItemsController_placesDataProvider] + 40) = &off_101604E48;
  swift_unknownObjectWeakAssign();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v5;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[5] = 0;
  v9[6] = 0;
  v9[4] = v7;
  sub_10020AAE4(0, 0, v4, &unk_1011E5F50, v9);

  return v7;
}

uint64_t sub_100125A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100125AA8, v8, v7);
}

uint64_t sub_100125AA8()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_1004A9814(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100125B2C(unint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_10012EEA4(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps20PlaceItemsController__placeById;
  swift_beginAccess();
  *(v17 + v4) = _swiftEmptyDictionarySingleton;

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (a1 >> 62)
  {
LABEL_20:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      type metadata accessor for PlaceItem();
      swift_allocObject();
      v9 = swift_unknownObjectRetain();
      v10 = sub_100350A44(v9);
      if (v10)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v7;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    swift_getKeyPath();
    swift_unknownObjectRetain();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    sub_10012AD60(v8, v15, v14, isUniquelyReferenced_nonNull_native);

    *(v2 + v4) = v16;
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_unknownObjectRelease();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v6 != v5);
LABEL_21:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t type metadata accessor for PlaceItemsController()
{
  result = qword_10190BA40;
  if (!qword_10190BA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100126034()
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

uint64_t sub_1001260EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100126184, v6, v5);
}

uint64_t sub_100126184()
{

  sub_100125B2C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100126208()
{
  v1 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_10020AAE4(0, 0, v3, &unk_1011E7AB8, v7);
}

uint64_t sub_10012632C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1001260EC(a1, v4, v5, v6);
}

uint64_t sub_1001263E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&unk_10190BAD0);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100126664(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_10190BB30);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000D2BE0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10012EF50(v23, &v36);
        sub_10004E374(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000D2BE0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10012691C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&unk_10190BA60);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100126BEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&unk_10190BB00);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100126F78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&unk_10190BA88);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v38 & 1) == 0)
      {
        v23 = (v21 & 0x1FFFFFFFFFFFFFFFLL);
        v24 = v22;
      }

      Hasher.init(_seed:)();
      v25 = v21 >> 61;
      v26 = 4;
      if (v21 >> 61 != 4)
      {
        v26 = 5;
      }

      if (v25 == 3)
      {
        v26 = 3;
      }

      v27 = 2;
      if (v25 == 1)
      {
        v27 = 1;
      }

      if (!v25)
      {
        v27 = v21 >> 61;
      }

      if (v25 <= 2)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      Hasher._combine(_:)(v28);
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_44;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_44:
  *v3 = v7;
  return result;
}

uint64_t sub_100127270(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&unk_1019080E0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1001274D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(qword_10190BB78);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10012777C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_101908188);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v2;
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v21 = v8;
        while (1)
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v8 >= v13)
          {
            break;
          }

          v22 = v9[v8];
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v12 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        if ((v45 & 1) == 0)
        {

          v3 = v43;
          goto LABEL_44;
        }

        v42 = 1 << *(v5 + 32);
        v3 = v43;
        if (v42 >= 64)
        {
          bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v42;
        }

        *(v5 + 16) = 0;
        goto LABEL_43;
      }

      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = 32 * (v20 | (v8 << 6));
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v30 = (v24 + v23);
      v46 = v30[1];
      v47 = *v30;
      if ((v45 & 1) == 0)
      {
        v31 = v26;
        sub_1000D2C54(v27, v28, v29);
        v32 = v47;
      }

      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      if (!v29)
      {
        break;
      }

      if (v29 == 1)
      {
        v33 = 4;
LABEL_21:
        Hasher._combine(_:)(v33);
        String.hash(into:)();
        goto LABEL_28;
      }

      if (v27 | v28)
      {
        if (v27 ^ 1 | v28)
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }
      }

      else
      {
        v34 = 0;
      }

      Hasher._combine(_:)(v34);
LABEL_28:
      result = Hasher._finalize()();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v26;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v26;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 32 * v15;
      v18 = *(v7 + 48) + v17;
      *v18 = v16;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      *(v18 + 24) = v29;
      v19 = (*(v7 + 56) + v17);
      *v19 = v47;
      v19[1] = v46;
      ++*(v7 + 16);
      v5 = v44;
    }

    v33 = 3;
    goto LABEL_21;
  }

LABEL_43:

LABEL_44:
  *v3 = v7;
  return result;
}

uint64_t sub_100127AF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&unk_10190BB20);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {

        v25 = v35;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100127DBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&unk_10190BB50);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100128024(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_101908280);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1001282E0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000CE6B8(&qword_1019081B0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_10012EEA4(&qword_1019156D0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1001286D0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000CE6B8(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_100128938(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_101908100);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v42 = (v12 - 1) & v12;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v41 & 1) == 0)
      {
        v29 = v28;

        v30 = v27;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v40;
      v12 = v42;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100128C00(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for Handle();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000CE6B8(&qword_10190BAF0);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100128F94(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000CE6B8(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v6 + 32);
      if (v31 >= 64)
      {
        bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_100129208(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000CE6B8(a3);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1001294A8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for VisitsLoader.VisitData(0);
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1000CE6B8(&unk_10190BAC0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v39)
      {
        sub_1000D2BF0(v25, v7);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_10012EEEC(v25, v7);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10012EEA4(&qword_1019156D0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      sub_10012EEA4(&qword_10190BAA0, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v10 = v36;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1000D2BF0(v7, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v10 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1001298AC(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_1000CE6B8(a3);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_10012EEA4(&qword_1019156D0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_100129C88(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000CE6B8(&qword_10190BA98);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10012EEA4(&qword_10190BAA0, &type metadata accessor for Date);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10012A064(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000CE6B8(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_10012A300(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_10190BA80);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10012A568(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_10190BA78);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10012A7F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000CE6B8(&qword_10190BA70);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_10012AAA0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_10029709C(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1001263E0(v15, a4 & 1);
      v10 = sub_10029709C(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_1000F337C();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_10012C1C0();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

_OWORD *sub_10012AC14(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100297058(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10012C330();
      goto LABEL_7;
    }

    sub_100126664(v13, a3 & 1);
    v19 = sub_100297058(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10012EF50(a2, v21);
      return sub_10012BEEC(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10004E3D0(v17);

  return sub_1000D2BE0(a1, v17);
}

uint64_t sub_10012AD60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100297040(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10012691C(v16, a4 & 1);
      v11 = sub_100297040(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10012C4D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_10012AEF0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1002971C0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100126F78(v14, a3 & 1);
      v9 = sub_1002971C0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_10012C924();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  v24 = (a2 & 0x1FFFFFFFFFFFFFFFLL);
}

void sub_10012B04C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100298E64(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100127270(v14, a3 & 1);
      v9 = sub_100298E64(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_10012CA88();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_10012B1BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_100297040(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_10012A064(v18, a4 & 1, a5);
      v13 = sub_100297040(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10012E398(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a2;
  v26[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_10012B358(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100297040(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100128024(v16, a4 & 1);
      v11 = sub_100297040(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10012D414();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_10012B4FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_100297040(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_100129208(v18, a4 & 1, a5);
      v13 = sub_100297040(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10012DD90(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

void sub_10012B69C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for VisitsLoader.VisitData(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1002974F0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_10012DEF0();
      goto LABEL_7;
    }

    sub_1001294A8(v16, a3 & 1);
    v22 = sub_1002974F0(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10012EEEC(a2, v10);
      sub_10012BFB0(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

uint64_t sub_10012B840(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100297604(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10012E118();
      goto LABEL_7;
    }

    sub_100129C88(v17, a3 & 1);
    v22 = sub_100297604(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10012C050(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_10012BA48(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27[0] = a4;
  v27[1] = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1002972F8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_10012E4F4(v27[0]);
      goto LABEL_7;
    }

    sub_1001298AC(v19, a3 & 1, v27[0]);
    v25 = sub_1002972F8(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      sub_10012C108(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

unint64_t sub_10012BC24(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100296FD4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10012A568(v14, a3 & 1);
      result = sub_100296FD4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10012E8C8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_10012BD70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100297040(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10012A7F8(v16, a4 & 1);
      v11 = sub_100297040(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10012EA24();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_10012BEEC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000D2BE0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_10012BF68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10012BFB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for VisitsLoader.VisitData(0);
  result = sub_1000D2BF0(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10012C050(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Date();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10012C108(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_10012C1C0()
{
  v1 = v0;
  sub_1000CE6B8(&unk_10190BAD0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}