uint64_t sub_10047E418()
{
  if (*(v0 + 56))
  {
    return *(v0 + 56);
  }

  result = v0;
  *(v0 + 56) = v0;
  return result;
}

uint64_t sub_10047E448()
{
  sub_1000D8F2C(v0 + 16);

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10047E560()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_10010F2AC(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  if (qword_10117F810 != -1)
  {
    swift_once();
  }

  UnfairLock.locked<A>(_:)(sub_1003BE72C);
  *(v0 + 64) = qword_101193E90;
  swift_unknownObjectWeakInit();
  return v0;
}

Swift::Int sub_10047E664()
{
  Hasher.init(_seed:)();
  v0 = sub_10047E418();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_10047E6DC()
{
  Hasher.init(_seed:)();
  v0 = sub_10047E418();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

uint64_t sub_10047E764()
{
  if (qword_10117F808 != -1)
  {
    swift_once();
  }

  if (byte_101218F00)
  {
    return 0;
  }

  else
  {
    return *(v0 + 145);
  }
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10047E860()
{
  Hasher.init(_seed:)();
  LaunchURL.Resolver.PerformOption.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

double sub_10047E8A0(uint64_t a1, uint64_t a2)
{
  Date.timeIntervalSince1970.getter();
  v4 = v3;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

uint64_t sub_10047E914(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_10047E964(a1, a2);
  return v4;
}

uint64_t sub_10047E964(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 513;
  *(v2 + 16) = a1;
  type metadata accessor for CollectionViewImpressionTracker.History.Event();
  *(v2 + 48) = static Array._allocateUninitialized(_:)();
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_10047E9E0()
{
  swift_beginAccess();
  type metadata accessor for CollectionViewImpressionTracker.History.Event();
  type metadata accessor for Array();
  swift_getWitnessTable();
  BidirectionalCollection.last.getter();
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 & 1;
  }
}

uint64_t sub_10047EAA4(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  v11[4] = sub_10047E8A0(a1 & 1, v7);
  v12 = v9 & 1;
  swift_beginAccess();
  type metadata accessor for CollectionViewImpressionTracker.History.Event();
  type metadata accessor for Array();
  Array.append(_:)();
  return swift_endAccess();
}

uint64_t sub_10047EC00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10047EC40()
{
  _StringGuts.grow(_:)(72);
  v0._object = 0x8000000100E4D470;
  v0._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x3A656D6172462027;
  v1._object = 0xEA00000000002720;
  String.append(_:)(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    [Strong frame];
  }

  sub_10010FC20(qword_101191978);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A44492027;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  sub_10010FC20(&qword_101184A70);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  return 0;
}

uint64_t sub_10047EDDC()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10047EE40()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = v3 + 1;
      v5 = *(v1 + 32 + 16 * v3);
      swift_unknownObjectRetain();
      sub_10047EF60(&v5, v0);
      swift_unknownObjectRelease();
      v3 = v4;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:

  if (qword_10117F808 != -1)
  {
LABEL_13:
    swift_once();
  }

  if ((byte_101218F00 & 1) == 0 && *(v0 + 145) == 1)
  {

    sub_10047F654();
  }
}

uint64_t sub_10047EF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (qword_10117F808 != -1)
  {
    swift_once();
  }

  if (byte_101218F00)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 145);
  }

  return (*(v3 + 16))(v5, ObjectType, v3);
}

uint64_t sub_10047F01C()
{
  swift_beginAccess();
  type metadata accessor for CollectionViewImpressionTracker.History();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (!v2)
  {
  }

  v4 = 0;
  v5 = (v1 + 40);
  while (v4 < *(v1 + 16))
  {
    ++v4;
    v6 = *v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 104);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    result = swift_unknownObjectRelease();
    v5 += 2;
    if (v2 == v4)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_10047F160(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    v23[2] = v3[14];
    v12 = swift_allocObject();
    v13 = swift_weakInit();
    __chkstk_darwin(v13);
    v23[-4] = v12;
    v23[-3] = a1;
    *&v23[-2] = a2;
    __chkstk_darwin(v14);
    v15 = *(v6 + 312);
    v16 = *(v6 + 320);
    v23[-4] = v15;
    v23[-3] = v16;
    v23[-2] = sub_100481D90;
    v23[-1] = v17;
    type metadata accessor for IndexPath();
    type metadata accessor for CollectionViewImpressionTracker.TrackedItem();
    sub_100481DBC(&qword_10118EB38, 255, &type metadata accessor for IndexPath);
    type metadata accessor for Dictionary();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = UIScrollView.isScrolling.getter();

      if ((v20 & 1) == 0)
      {
        v22 = v3[6];
        __chkstk_darwin(v21);
        v23[-2] = a1;
        *&v23[-1] = a2;

        sub_100377034(sub_100481E04, &v23[-4], v22);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10047F4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10047FA44(a2, a1, a4);
  }

  return result;
}

uint64_t sub_10047F55C(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  type metadata accessor for IndexPath();
  type metadata accessor for CollectionViewImpressionTracker.TrackedItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

void sub_10047F654()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10117F808 != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if ((byte_101218F00 & 1) == 0 && *(v1 + 145) == 1)
  {
    v25 = v2;
    v15 = v12;
    sub_100009F78(0, &qword_101182960);
    *v14 = static OS_dispatch_queue.main.getter();
    (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v15);
    v16 = _dispatchPreconditionTest(_:)();
    (*(v11 + 8))(v14, v15);
    if (v16)
    {
      v17 = [objc_opt_self() sharedApplication];
      v18 = [v17 applicationState];

      v19 = v25;
      if (!v18)
      {
        Date.init()();
        v20 = swift_allocObject();
        swift_weakInit();
        (*(v4 + 16))(v6, v9, v3);
        v21 = (*(v4 + 80) + 40) & ~*(v4 + 80);
        v22 = swift_allocObject();
        *(v22 + 2) = *(v19 + 312);
        *(v22 + 3) = *(v19 + 320);
        *(v22 + 4) = v20;
        (*(v4 + 32))(&v22[v21], v6, v3);

        sub_100534EE4(sub_100481FD4, v22);

        (*(v4 + 8))(v9, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10047F9D4(double a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10047F160(a3, a1);
  }

  return result;
}

void sub_10047FA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v36 = *v3;
  v37 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v8 = static OS_dispatch_queue.main.getter();
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v6 + 104);
  v10(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (qword_10117F808 != -1)
  {
LABEL_34:
    swift_once();
  }

  if ((byte_101218F00 & 1) != 0 || *(v3 + 145) != 1)
  {
    return;
  }

  *v8 = static OS_dispatch_queue.main.getter();
  v10(v8, v9, v5);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v8, v5);
  if (v13)
  {
    v14 = [objc_opt_self() sharedApplication];
    v15 = [v14 applicationState];

    if (v15)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = v37;
      v19 = swift_unknownObjectWeakLoadStrong();
      if (!v19)
      {

        return;
      }

      sub_100480118();
      v20 = v17;
      v21 = sub_1004802F0(v18, v17);

      v22 = sub_100431E88(*(v18 + 16));
      v24 = v23;
      swift_beginAccess();
      v38 = v22;
      v39 = v24;
      type metadata accessor for CollectionViewImpressionTracker.History();

      Dictionary.subscript.getter();

      v25 = v40;
      if (v40)
      {

        v26 = sub_10047E9E0();

        if (v21)
        {
          if (v26 == 2 || (v26 & 1) != 0)
          {
LABEL_21:
            v31 = 0;
LABEL_22:
            sub_10047FEF4(v18);
            sub_10047EAA4(v31, v35);
          }
        }

        else if (v26 != 2 && (v26 & 1) == 0)
        {
          v31 = 1;
          goto LABEL_22;
        }

        v32 = v4[19];
        if (v32)
        {
          if (v25)
          {

            v33 = sub_10048C5C4(v34, v32);

            *(v25 + 41) = v33 & 1;
LABEL_31:

            return;
          }

LABEL_29:

          return;
        }

LABEL_30:

        goto LABEL_31;
      }

      if ((v21 & 1) == 0)
      {
        if (v4[19])
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (qword_10117F790 == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_16:
  v27 = type metadata accessor for Logger();
  sub_1000060E4(v27, qword_101218DD0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Paused tracking.  Container view was deallocated", v30, 2u);
  }
}

uint64_t sub_10047FEF4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  sub_100431E88(v4);
  swift_beginAccess();
  type metadata accessor for CollectionViewImpressionTracker.History();

  Dictionary.subscript.getter();

  v5 = v9;
  if (!v9)
  {
    if (*(a1 + 32))
    {
      v6 = qword_10117F810;

      if (v6 != -1)
      {
        swift_once();
      }

      UnfairLock.locked<A>(_:)(sub_1003C18BC);
      v7 = qword_101193E90;
    }

    else
    {
      v7 = *(a1 + 24);
    }

    v5 = swift_allocObject();
    sub_10047E964(v4, v7);

    sub_100431E88(v4);
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v5 + 32) = *(v2 + 64);
    *(v5 + 40) = 0;
  }

  return v5;
}

uint64_t sub_100480118()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 parentViewController];
      if (v3)
      {
        v4 = v3;
        swift_getObjectType();
        v5 = swift_conformsToProtocol2();
        if (v5)
        {
          v6 = v5;
          v7 = v0;
          v8 = v4;
LABEL_16:

          ObjectType = swift_getObjectType();
          (*(v6 + 8))(ObjectType, v6);
          v13 = v12;
          v14 = v7;
          Strong = swift_unknownObjectWeakLoadStrong();
          *(v14 + 24) = v13;
          swift_unknownObjectWeakAssign();
          sub_10047DDD0(Strong);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        else
        {
          v8 = v4;
          while (1)
          {
            v9 = v8;

            v8 = [v8 parentViewController];
            if (!v8)
            {
              break;
            }

            swift_getObjectType();
            v10 = swift_conformsToProtocol2();
            if (v10)
            {
              v6 = v10;
              v7 = v0;
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1004802F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a2;
      if ([v6 isHidden] & 1) == 0 && objc_msgSend(v6, "_isInAWindow") && (v8 = swift_unknownObjectWeakLoadStrong(), v9 = sub_1004806C4(v7, v8, *(v2 + 24)), swift_unknownObjectRelease(), (v9))
      {
        [v7 visibleBounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [v7 adjustedContentInset];
        sub_100058728(v11, v13, v15, v17, v18, v19);
        [v6 frame];
        v42 = v20;
        v21 = CGRect.isContained(in:percentage:)();
        if (*(a1 + 48) > 1u)
        {
          if (*(a1 + 48) != 2)
          {
            [v6 frame];
            [v6 convertRect:v7 toCoordinateSpace:?];
            [v7 visibleBounds];
            v22 = CGRect.isContained(in:percentage:)();
            goto LABEL_17;
          }

          v40 = [v6 superview];
          if (!v40)
          {
            goto LABEL_22;
          }

          v41 = v40;
          [v6 frame];
          [v41 convertRect:v7 toCoordinateSpace:?];
          v22 = CGRect.isContained(in:percentage:)();

          v7 = v6;
          v6 = v41;
        }

        else
        {
          v22 = v21;
          if (*(a1 + 48))
          {
            if (v21)
            {
              if (swift_unknownObjectWeakLoadStrong())
              {
                v23 = *(v2 + 24);
                ObjectType = swift_getObjectType();
                v25 = (*(v23 + 88))(ObjectType, v23);
                swift_unknownObjectRelease();
                if (v25)
                {
                  if (v25 != a2 && (v26 = swift_unknownObjectWeakLoadStrong()) != 0 && (v27 = v26, v28 = [v26 superview], v27, v28))
                  {
                    [v25 visibleBounds];
                    v30 = v29;
                    v32 = v31;
                    v34 = v33;
                    v36 = v35;
                    [v25 adjustedContentInset];
                    sub_100058728(v30, v32, v34, v36, v37, v38);
                    [v6 frame];
                    [v28 convertRect:v25 toCoordinateSpace:?];
                    v22 = CGRect.isContained(in:percentage:)();

                    v7 = v25;
                    v6 = v28;
                  }

                  else
                  {

                    v22 = 1;
                    v7 = v25;
                  }

                  goto LABEL_17;
                }
              }
            }

LABEL_22:
            v22 = 1;
          }
        }
      }

      else
      {
        v22 = 0;
      }

LABEL_17:

      return v22 & 1;
    }
  }

  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1004806C4(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  ObjectType = swift_getObjectType();
  v6 = (*(a3 + 88))(ObjectType, a3);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v8 superview];
  if (v9)
  {
    while (1)
    {

      if (v8)
      {
        v11 = [v8 superview];
        if (v11)
        {
          v12 = v11;

          if (v12 == v7)
          {
            break;
          }
        }
      }

      v10 = [v8 superview];

      v9 = [v10 superview];
      v8 = v10;
      if (!v9)
      {
        goto LABEL_10;
      }
    }
  }

  v10 = v8;
LABEL_10:
  [v7 visibleBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = [v7 adjustedContentInset];
  if (v10)
  {
    v24 = sub_100058728(v14, v16, v18, v20, v22, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v10 frame];
    v40.origin.x = v31;
    v40.origin.y = v32;
    v40.size.width = v33;
    v40.size.height = v34;
    v39.origin.x = v24;
    v39.origin.y = v26;
    v39.size.width = v28;
    v39.size.height = v30;
    if (CGRectIntersectsRect(v39, v40))
    {
      v35 = swift_getObjectType();
      v36 = (*(a3 + 32))(v35, a3);
      v38 = sub_1004806C4(v7, v36, v37);

      swift_unknownObjectRelease();
      return v38 & 1;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004808E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v8, &unk_10118BCE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000095E8(v8, &unk_10118BCE0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = v5 + 312;
    v14 = *(v5 + 312);
    v15 = *(v16 + 8);
    v17 = *(v15 + 8);
    v33 = v2;
    v18 = v17(v12, v14, v15);
    swift_unknownObjectRelease();
    if (v18)
    {
      v32 = a2;
      v19 = sub_100431E88(v18);
      v21 = v20;
      swift_beginAccess();
      v38 = v19;
      v39 = v21;
      type metadata accessor for CollectionViewImpressionTracker.History();

      Dictionary.subscript.getter();

      if (v34)
      {
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for CollectionViewImpressionTracker.TrackedItem();
        sub_100481DBC(&qword_10118EB38, 255, &type metadata accessor for IndexPath);

        Dictionary.subscript.getter();

        v22 = v34;
        if (v34)
        {

          sub_10047FEF4(v22);
          sub_10047EAA4(0, v32);
        }

        else
        {
          v23 = qword_10117F810;

          v24 = v32;
          if (v23 != -1)
          {
            swift_once();
          }

          UnfairLock.locked<A>(_:)(sub_1003C18BC);
          v25 = qword_101193E90;
          v26 = swift_allocObject();
          sub_10047E964(v18, v25);
          v27 = v33;
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            *(v26 + 32) = v27[8];
            *(v26 + 40) = 0;
          }

          sub_10047EAA4(0, v24);
          v28 = sub_100431E88(v18);
          v30 = v29;

          v36 = v30;
          v37 = v26;
          v35 = v28;
          swift_beginAccess();
          type metadata accessor for Dictionary();

          Dictionary.subscript.setter();
          swift_endAccess();
        }
      }
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100480DB4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v38 = a2;
  v5 = *v3;
  v6 = type metadata accessor for DispatchTime();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Date();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v5 + 312);
  v13 = *(v5 + 320);
  type metadata accessor for CollectionViewImpressionTracker.History();

  v14 = Dictionary.isEmpty.getter();

  if ((v14 & 1) == 0 || (v15 = 0, (a1 & 4) == 0))
  {
    v35 = a1;
    v16 = v38;
    sub_1004808E0(v36, v38);
    v33 = dispatch_semaphore_create(1);
    v17 = swift_allocObject();
    v36 = v8;
    v18 = v17;
    *(v17 + 16) = _swiftEmptyArrayStorage;
    v32[1] = v17 + 16;
    v34 = v3[11];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v37;
    (*(v9 + 16))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v37);
    v21 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v12;
    *(v23 + 24) = v13;
    *(v23 + 32) = v35;
    *(v23 + 40) = v18;
    *(v23 + 48) = v19;
    (*(v9 + 32))(v23 + v21, v11, v20);
    v24 = v33;
    *(v23 + v22) = v33;

    v25 = v24;
    sub_100535104(sub_100481F14, v23);

    sub_100009F78(0, &qword_101182960);
    v26 = v36;
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    OS_dispatch_semaphore.wait(timeout:)();
    (*(v39 + 8))(v26, v40);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      swift_beginAccess();
      v15 = *(v18 + 16);
    }

    else
    {
      if (qword_10117F790 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000060E4(v27, qword_101218DD0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Semaphore returned a non-success code.  No impressions were generated", v30, 2u);
      }

      return 0;
    }
  }

  return v15;
}

uint64_t sub_100481228(int a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 4) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v18 = sub_1004815D8(a1, a5, a3);
    }

    else
    {
      v18 = 0;
    }

    swift_beginAccess();
    *(a2 + 16) = v18;

    return OS_dispatch_semaphore.signal()();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return OS_dispatch_semaphore.signal()();
  }

  v9 = Strong;
  swift_retain_n();
  swift_getObjectType();
  v10 = &off_1010ADC50;
  v11 = sub_100481AB4();
  v13 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v11)
  {
    do
    {
      v10 = v13;
      v14 = v11;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v11 = (*(v13 + 32))(ObjectType, v13);
      v13 = v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    while (v11);
  }

  else
  {
    v14 = v9;
  }

  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    sub_100481418(v14, v10, a1 | 4u, a5, a2 + 16);
    swift_endAccess();
    swift_unknownObjectRelease();

    return OS_dispatch_semaphore.signal()();
  }

  __break(1u);
  return result;
}

uint64_t sub_100481418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for IndexPath();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = sub_100431F44(a3, a4, v11, ObjectType, a2);
  sub_1000095E8(v11, &unk_10118BCE0);
  if (v14)
  {
    sub_1001254E4(v14);
  }

  v15 = (*(a2 + 56))(ObjectType, a2);
  __chkstk_darwin(v15);
  v17[-4] = v17[0];
  LOWORD(v17[-3]) = a3;
  v17[-2] = a4;
  v17[-1] = a5;
  sub_100376F9C(sub_100481ED4, &v17[-6], v15);
}

uint64_t sub_1004815D8(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = swift_beginAccess();
  v10 = v4[13];
  if (a1)
  {
    __chkstk_darwin(v9);
    v11 = *(v8 + 312);
    v12 = *(v8 + 320);
    type metadata accessor for CollectionViewImpressionTracker.History();

    v10 = Dictionary.filter(_:)();
  }

  else
  {
    v11 = *(v8 + 312);
    v12 = *(v8 + 320);
  }

  v13 = sub_1005368D0(v10, a2, a1 & 1, v11, v12, a3);

  return v13;
}

uint64_t sub_100481748()
{

  swift_unknownObjectWeakDestroy();
}

uint64_t sub_1004817A8()
{
  sub_1000D8F2C(v0 + 16);

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100481820()
{
  sub_1004817A8();

  return swift_deallocClassInstance();
}

uint64_t sub_10048196C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004819A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1004819EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100481A5C()
{
  result = qword_1011918F0;
  if (!qword_1011918F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011918F0);
  }

  return result;
}

uint64_t sub_100481AD4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_10047DDD0(Strong);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_100481BB8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218DD0);
  sub_1000060E4(v0, qword_101218DD0);
  return static Logger.music(_:)();
}

uint64_t sub_100481C24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100481D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100481DBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100481F14(double a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_100481228(v6, v4, a1, v5, v7);
}

uint64_t sub_100481FD4(double a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10047F9D4(a1, v4, v5);
}

uint64_t sub_100482098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100482100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100482160(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657469726F766166;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657469726F766166;
  }

  else
  {
    v5 = 7105633;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100482204()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100482284()
{
  String.hash(into:)();
}

Swift::Int sub_1004822F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10048236C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101098DD8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1004823CC(uint64_t *a1@<X8>)
{
  v2 = 7105633;
  if (*v1)
  {
    v2 = 0x657469726F766166;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100482418(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x646956636973756DLL;
    v6 = 0x7473696C79616C70;
    if (a1 != 8)
    {
      v6 = 0x73676E6F73;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7365726E6567;
    if (a1 != 5)
    {
      v7 = 0x59726F466564616DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736D75626C61;
    v2 = 0x73747369747261;
    v3 = 0x74616C69706D6F63;
    if (a1 != 3)
    {
      v3 = 0x7265736F706D6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6544747369747261;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10048256C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100482418(*a1);
  v5 = v4;
  if (v3 == sub_100482418(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1004825F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100482418(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100482658()
{
  sub_100482418(*v0);
  String.hash(into:)();
}

Swift::Int sub_1004826AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100482418(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10048270C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100482A18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10048273C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100482418(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100482904()
{
  result = qword_101191A50;
  if (!qword_101191A50)
  {
    sub_1001109D0(&qword_101191A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191A50);
  }

  return result;
}

unint64_t sub_10048296C()
{
  result = qword_101191A60;
  if (!qword_101191A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191A60);
  }

  return result;
}

unint64_t sub_1004829C4()
{
  result = qword_101191A68;
  if (!qword_101191A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191A68);
  }

  return result;
}

unint64_t sub_100482A18(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109B660, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_100482A64()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_10010FC20(&unk_10118CD70);
  sub_100178DD8(&unk_101182910, sub_100178D84);
  sub_100178DD8(&unk_101182920, sub_100178E50);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v2, v17);

  v3 = v17[0];
  if (v17[0])
  {
    if (*(v17[0] + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v4 = Hasher._finalize()(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
    {
      v7 = ~v5;
      while (!*(*(v3 + 48) + v6) || *(*(v3 + 48) + v6) == 2)
      {
        LOBYTE(v8) = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        goto LABEL_11;
      }

      LOBYTE(v8) = 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    goto LABEL_11;
  }

  v9 = [v0 standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 stringForKey:v10];

  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  v8 = _findStringSwitchCase(cases:string:)(&off_101098DD8, v15);

  if (v8 != 1)
  {
    if (!v8)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }

LABEL_16:
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

LABEL_11:

  return v8 & 1;
}

uint64_t sub_100482D8C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = &selRef_objectAtIndexedSubscript_;
  v8 = [v6 standardUserDefaults];
  v9 = sub_10010FC20(&unk_10118CD70);
  v10 = sub_100178DD8(&unk_101182910, sub_100178D84);
  v11 = sub_100178DD8(&unk_101182920, sub_100178E50);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v9, v25);

  if (v25[0])
  {
    v12 = v25[0];
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  v26 = v12;
  if (a1)
  {
    v21 = v10;
    v22 = v6;
    v23 = a2;
    v24 = a3;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << v12[32];
    v15 = v13 & ~v14;
    if ((*&v12[((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v15))
    {
      v16 = ~v14;
      while (!*(*(v12 + 6) + v15) || *(*(v12 + 6) + v15) == 2)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_12;
        }

        v15 = (v15 + 1) & v16;
        if (((*&v12[((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v15) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = v12;
      sub_1003B54E8(1, v15, isUniquelyReferenced_nonNull_native);
      v12 = v25[0];
    }

LABEL_12:
    v10 = v21;
    v6 = v22;
    v7 = &selRef_objectAtIndexedSubscript_;
  }

  else
  {
    sub_100194E54(1u);
    v12 = v26;
  }

  v19 = [v6 v7[462]];
  v25[4] = v10;
  v25[5] = v11;
  v25[3] = v9;
  v25[0] = v12;
  NSUserDefaults.encodeValue(_:forKey:)(v25);

  return sub_10000959C(v25);
}

uint64_t (*sub_100483050(void *a1, id a2, void *a3))()
{
  v6 = [a2 album];
  v7 = v6;
  if (v6 && (v8 = [v6 artist]) != 0)
  {
    v9 = v8;
    v10 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v11 = MPModelObject.bestIdentifier(for:)(*v10, 0);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a2 artist];
  if (v14)
  {
    v15 = v14;
    v16 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v17 = MPModelObject.bestIdentifier(for:)(*v16, 0);
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  static ApplicationCapabilities.shared.getter(v71);
  sub_100014984(v71);
  if (BYTE1(v71[0]))
  {
    if (v13 | v19)
    {
      v69 = a3;
      v20 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v21 = MPModelObject.bestIdentifier(for:)(*v20, 0);
      if (!v22)
      {

        return 0;
      }

      v23 = v21;
      v24 = v22;
      if (v7)
      {
        if (v13)
        {
          v68 = v21;
          if (v11 == v21 && v13 == v22)
          {
            v25 = v7;
          }

          else
          {
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v51 = v7;

            if ((v52 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v53 = *v20;
          v51 = v7;
          MPModelObject.bestIdentifier(for:)(v53, 0);
          v55 = v54;

          if (v55)
          {

            goto LABEL_42;
          }

LABEL_44:

          v23 = v68;
          if (!v19)
          {
            goto LABEL_45;
          }

          goto LABEL_33;
        }
      }

      else
      {
      }

      if (!v19)
      {
LABEL_45:

        goto LABEL_46;
      }

LABEL_33:
      if (v17 == v23 && v19 == v24)
      {
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
LABEL_46:
          if (qword_10117F798 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_1000060E4(v60, qword_101218DE8);
          v61 = a2;
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v37, v38))
          {
            goto LABEL_29;
          }

          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v70 = v40;
          *v39 = 136446210;
          v62 = [v61 identifiers];
          v63 = [v62 description];
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67 = sub_1000105AC(v64, v66, &v70);

          *(v39 + 4) = v67;
          v47 = "Failed to create navigation handler to Catalog Artist for Song=%{public}s (No Sidepacked Object)";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v37, v38, v47, v39, 0xCu);
          sub_10000959C(v40);

LABEL_29:

          return 0;
        }
      }

      MPModelObject.bestIdentifier(for:)(*v20, 0);
      if (v50)
      {

        v51 = a2;
LABEL_42:

        v56 = swift_allocObject();
        v56[2] = a2;
        v56[3] = a1;
        v56[4] = v69;
        v57 = a2;
        v58 = a1;
        v59 = v69;
        return sub_1004892A4;
      }

      goto LABEL_46;
    }
  }

  else
  {
  }

  v26 = sub_1004843F8();
  if (!v7 || (v26 & 1) != 0 || (v27 = [v7 artist]) == 0)
  {
LABEL_24:
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_101218DE8);
    v36 = a2;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_29;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v70 = v40;
    *v39 = 136446210;
    v41 = [v36 identifiers];
    v42 = [v41 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_1000105AC(v43, v45, &v70);

    *(v39 + 4) = v46;
    v47 = "Failed to create navigation handler to Library Artist for Song=%{public}s (No Artist Found)";
    goto LABEL_28;
  }

  v28 = v27;
  v29 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v29, 0);
  if (!v30)
  {

    goto LABEL_24;
  }

  v31 = swift_allocObject();
  v31[2] = a3;
  v31[3] = a2;
  v31[4] = v28;
  v32 = a2;
  v33 = a3;
  return sub_100489250;
}

void (*sub_100483660(void *a1, void *a2, void *a3, uint64_t a4))()
{
  v98 = a4;
  v7 = sub_10010FC20(&unk_101191A70);
  __chkstk_darwin(v7 - 8);
  v9 = &v90 - v8;
  v93 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v95 = *(v93 - 8);
  v10 = __chkstk_darwin(v93);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v90 - v13;
  v14 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v90 - v15;
  v17 = type metadata accessor for GenericMusicItem();
  v96 = *(v17 - 8);
  v97 = v17;
  __chkstk_darwin(v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 trackCount] <= 1)
  {
    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v21 = [a1 representativeSong];
      if (!v21)
      {
LABEL_10:
        v24 = 0;
        goto LABEL_11;
      }

      v20 = v21;
    }

    v22 = a2;
    v23 = [v20 hasVideo];

    if (v23)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v24 = [a2 isLibraryAdded];
  if (sub_1004843F8())
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v25, 0);
  if (!v26 || (, !((a2 == 0) | v24 & 1)))
  {
LABEL_14:
    static ApplicationCapabilities.shared.getter(v101);
    sub_100014984(v101);
    if (BYTE1(v101[0]))
    {
      v33 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
      v34 = a1;
      v35 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v34);
      if (v35)
      {

        v36 = swift_allocObject();
        v37 = v98;
        v36[2] = v98;
        v36[3] = a2;
        v36[4] = v34;
        v38 = a2;
        v39 = v37;
        v40 = v34;
        return sub_100489030;
      }
    }

    static ApplicationCapabilities.shared.getter(v102);
    sub_100014984(v102);
    if ((BYTE1(v102[0]) & 1) != 0 && a2)
    {
      v41 = a2;
      v42 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v43 = MPModelObject.bestIdentifier(for:)(*v42, 0);
      if (v44)
      {
        v45 = v43;
        v46 = v44;
        if (a3)
        {
          v47 = [a3 innermostModelObject];
          objc_opt_self();
          v48 = swift_dynamicCastObjCClass();
          if (!v48)
          {
            v49 = v45;

LABEL_39:
            v65 = v98;
LABEL_40:
            v66 = swift_allocObject();
            v66[2] = v65;
            v66[3] = v41;
            v66[4] = v49;
            v66[5] = v46;
            v67 = v65;
            return sub_100488FCC;
          }

          v49 = v45;
          if ([v48 type] == 4)
          {
            v91 = v46;
            v92 = v41;
            GenericMusicItem.init(_:)();
            v51 = v96;
            v50 = v97;
            if ((*(v96 + 48))(v16, 1, v97) == 1)
            {

              v52 = &unk_101189DA0;
              v53 = v16;
LABEL_44:
              sub_1000095E8(v53, v52);
LABEL_45:
              v65 = v98;
              v46 = v91;
              v41 = v92;
              goto LABEL_40;
            }

            v90 = v47;
            (*(v51 + 32))(v19, v16, v50);
            type metadata accessor for MusicLibrary();
            static MusicLibrary.shared.getter();
            MusicLibrary.state(for:)();

            dispatch thunk of MusicLibrary.GenericItemState.addStatus.getter();

            v68 = type metadata accessor for MusicLibrary.AddStatus();
            v69 = *(v68 - 8);
            if ((*(v69 + 48))(v9, 1, v68) == 1)
            {
              (*(v51 + 8))(v19, v50);

              v52 = &unk_101191A70;
              v53 = v9;
              goto LABEL_44;
            }

            if ((*(v69 + 88))(v9, v68) != enum case for MusicLibrary.AddStatus.unaddable(_:))
            {
              (*(v51 + 8))(v19, v50);

              (*(v69 + 8))(v9, v68);
              goto LABEL_45;
            }

            (*(v69 + 96))(v9, v68);
            v70 = v94;
            v71 = v95;
            v72 = v93;
            (*(v95 + 32))(v94, v9, v93);
            (*(v71 + 104))(v12, enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:), v72);
            sub_100488FD8();
            v73 = dispatch thunk of static Equatable.== infix(_:_:)();
            v76 = *(v71 + 8);
            v74 = v71 + 8;
            v75 = v76;
            v76(v12, v72);
            if (v73)
            {

              v75(v70, v72);
              (*(v96 + 8))(v19, v97);
              goto LABEL_45;
            }

            if (qword_10117F798 != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            sub_1000060E4(v77, qword_101218DE8);
            v78 = v92;
            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v92 = v81;
              v98 = swift_slowAlloc();
              v100 = v98;
              *v81 = 136446210;
              v82 = [v78 identifiers];
              v95 = v74;
              v83 = v82;
              v84 = [v82 description];
              v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v87 = v86;

              v88 = sub_1000105AC(v85, v87, &v100);

              v89 = v92;
              *(v92 + 4) = v88;
              _os_log_impl(&_mh_execute_header, v79, v80, "Failed to create navigation handler to Album for Song=%{public}s because a radio station is playing an unaddable song or speaking.", v89, 0xCu);
              sub_10000959C(v98);

              v75(v94, v93);
            }

            else
            {

              v75(v94, v72);
            }

            (*(v96 + 8))(v19, v97);
            return 0;
          }
        }

        else
        {
          v49 = v43;
        }

        goto LABEL_39;
      }
    }

    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000060E4(v54, qword_101218DE8);
    v55 = a2;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v100 = v59;
      *v58 = 136446210;
      if (a2)
      {
        v60 = [v55 identifiers];
      }

      else
      {
        v60 = 0;
      }

      v99 = v60;
      sub_10010FC20(&qword_101191A80);
      v61 = String.init<A>(describing:)();
      v63 = sub_1000105AC(v61, v62, &v100);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to create navigation handler to Album for Song=%{public}s", v58, 0xCu);
      sub_10000959C(v59);
    }

    return 0;
  }

  v27 = swift_allocObject();
  v28 = v98;
  v27[2] = v98;
  v27[3] = a2;
  v27[4] = a1;
  v29 = a2;
  v30 = v28;
  v31 = a1;
  return sub_10048903C;
}

void (*sub_1004840C8(void *a1, void *a2, void *a3))()
{
  v6 = [a1 type];
  if (a2 && (sub_1004843F8() & 1) != 0 || ![a1 isLibraryAdded] || (v7 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor(), MPModelObject.bestIdentifier(for:)(*v7, 0), !v8))
  {
    static ApplicationCapabilities.shared.getter(v33);
    sub_100014984(v33);
    if ((BYTE1(v33[0]) & 1) != 0 && (v14 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata()), v15 = a1, (v16 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v15)) != 0))
    {

      v17 = swift_allocObject();
      v17[2] = a3;
      v17[3] = a2;
      v17[4] = v15;
      v18 = a2;
      v19 = v15;
      v20 = a3;
      return sub_100489160;
    }

    else
    {
      if (qword_10117F798 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000060E4(v21, qword_101218DE8);
      v22 = a2;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v25 = 136315394;
        if (v6 == 3)
        {
          v26 = 0xEF7265646C6F4620;
        }

        else
        {
          v26 = 0xE800000000000000;
        }

        v27 = sub_1000105AC(0x7473696C79616C50, v26, &v32);

        *(v25 + 4) = v27;
        *(v25 + 12) = 2082;
        if (a2)
        {
          v28 = [v22 identifiers];
        }

        sub_10010FC20(&qword_101191A80);
        v29 = String.init<A>(describing:)();
        v31 = sub_1000105AC(v29, v30, &v32);

        *(v25 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create navigation handler to %s for Song=%{public}s", v25, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  else
  {

    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = v6 == 3;
    *(v9 + 32) = a2;
    *(v9 + 40) = a1;
    v10 = a2;
    v11 = a1;
    v12 = a3;
    return sub_10048916C;
  }
}

uint64_t sub_1004843F8()
{
  v1 = [v0 identifiers];
  v2 = [v1 library];

  if (v2)
  {
    v3 = [v2 databaseID];
    swift_unknownObjectRelease();
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [objc_opt_self() deviceMediaLibrary];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 uniqueIdentifier];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        if (v4 != v10 || v6 != v12)
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v13 = v15 ^ 1;
          return v13 & 1;
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

void sub_100484558(void *a1, void *a2, void *a3)
{
  v70 = a3;
  v71 = a2;
  v4 = type metadata accessor for UITraitOverrides();
  v69 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AppInterfaceContext.Activity(0);
  v7 = *(v68 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v68);
  v10 = __chkstk_darwin(v9);
  v12 = &v58 - v11;
  __chkstk_darwin(v10);
  v14 = &v58 - v13;
  v15 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 delegate];
  if (!v18 || (v67 = v7, v76 = v18, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    v74 = 0;
    aBlock = 0u;
    v73 = 0u;
    goto LABEL_11;
  }

  if (!*(&v73 + 1))
  {
LABEL_11:
    sub_1000095E8(&aBlock, &unk_101184EA0);
    return;
  }

  v19 = *(*sub_10000954C(&aBlock, *(&v73 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  v66 = v19;
  if (v19)
  {
    v63 = v14;
    v64 = v4;
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, qword_101218DE8);
    v21 = v71;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v65 = v21;

    v24 = v23;
    v25 = os_log_type_enabled(v22, v23);
    v61 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = v12;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      v60 = v26;
      *v26 = 136446210;
      v27 = v22;
      if (v71)
      {
        v28 = [v65 identifiers];
      }

      else
      {
        v28 = 0;
      }

      v76 = v28;
      sub_10010FC20(&qword_101191A80);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000105AC(v29, v30, &aBlock);

      v32 = v60;
      *(v60 + 1) = v31;
      _os_log_impl(&_mh_execute_header, v27, v24, "Pushing to Library Album for Song=%{public}s", v32, 0xCu);
      sub_10000959C(v59);
    }

    else
    {
    }

    v33 = v63;
    v34 = v64;
    v35 = sub_10010FC20(&qword_10118A430);
    v36 = *(v35 + 48);
    v37 = *(v35 + 64);
    v38 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v38 - 8) + 56))(v17, 0, 1, v38);
    v17[v36] = 0;
    v17[v37] = 0;
    swift_storeEnumTagMultiPayload();
    v39 = v65;
    v40 = v70;
    v41 = sub_1006A9254(v40, v17, v71);
    if (v41)
    {
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = v66;
      *(v43 + 24) = v42;

      v44 = v42;
      v45 = UIWindowScene.rootViewController.getter();
      if (v45)
      {
        v46 = v45;
        v47 = [v45 presentedViewController];
        if (v47)
        {

          v48 = swift_allocObject();
          *(v48 + 16) = sub_100489048;
          *(v48 + 24) = v43;
          v74 = sub_100029B6C;
          v75 = v48;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v73 = sub_10002BC98;
          *(&v73 + 1) = &unk_1010AE018;
          v49 = _Block_copy(&aBlock);

          [v46 dismissViewControllerAnimated:1 completion:v49];

          _Block_release(v49);

          return;
        }
      }

      v50 = &v33[*(sub_10010FC20(&unk_1011841E0) + 48)];
      v51 = *(sub_10010FC20(&unk_10118CE00) + 48);
      *v33 = v44;
      v52 = v44;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *&aBlock = static MusicLibrary.shared.getter();
      sub_100137E8C();
      dispatch thunk of UIMutableTraits.subscript.setter();
      v53 = v69;
      (*(v69 + 16))(&v33[v51], v6, v34);
      UIViewController.traitOverrides.setter();
      (*(v53 + 56))(&v33[v51], 0, 1, v34);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v50 = 0;
      *(v50 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v54 = v62;
      sub_100137EE0(v33, v62, type metadata accessor for AppInterfaceContext.Activity);
      v55 = v61;
      sub_100137EE0(v54, v61, type metadata accessor for AppInterfaceContext.Activity);
      v56 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = 0;
      sub_100115BB4(v55, v57 + v56);
      sub_100706900(v54, sub_100137E88, v57);

      sub_1001385B8(v54, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v33, type metadata accessor for AppInterfaceContext.Activity);
    }

    else
    {
    }
  }
}

void sub_100484D44(void *a1, void *a2, void *a3)
{
  v81 = a2;
  v5 = type metadata accessor for UITraitOverrides();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v79 = *(v8 - 8);
  v9 = *(v79 + 64);
  v10 = __chkstk_darwin(v8);
  v80 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v68 - v12;
  __chkstk_darwin(v11);
  v15 = &v68 - v14;
  v16 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 delegate];
  if (!v19 || (v77 = v15, v86 = v19, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    v84 = 0;
    aBlock = 0u;
    v83 = 0u;
    goto LABEL_11;
  }

  if (!*(&v83 + 1))
  {
LABEL_11:
    sub_1000095E8(&aBlock, &unk_101184EA0);
    return;
  }

  v20 = *(*sub_10000954C(&aBlock, *(&v83 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  if (v20)
  {
    v73 = v7;
    v74 = v5;
    v75 = v8;
    v76 = v20;
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000060E4(v21, qword_101218DE8);
    v22 = v81;
    v23 = v81;
    v24 = a3;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v72 = v24;

    v71 = v23;
    v27 = os_log_type_enabled(v25, v26);
    v70 = v13;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&aBlock = v69;
      v29 = v28;
      *v28 = 136446466;
      v30 = v26;
      if (v22)
      {
        v31 = v25;
        v32 = [v71 identifiers];
      }

      else
      {
        v31 = v25;
        v32 = 0;
      }

      v86 = v32;
      sub_10010FC20(&qword_101191A80);
      v33 = String.init<A>(describing:)();
      v35 = sub_1000105AC(v33, v34, &aBlock);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2082;
      v36 = [v72 identifiers];
      v37 = [v36 description];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_1000105AC(v68, v39, &aBlock);

      *(v29 + 14) = v40;
      v25 = v31;
      _os_log_impl(&_mh_execute_header, v31, v30, "Pushing to Catalog Album for Song=%{public}s using Album =%{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    v41 = v77;
    v42 = v74;
    v43 = v73;
    v44 = UIWindowScene.rootViewController.getter();
    if (v44 && (v45 = v44, v46 = [v44 traitCollection], v45, LOBYTE(v45) = UITraitCollection.isMediaPicker.getter(), v46, (v45 & 1) == 0) && (*v18 = 1, swift_storeEnumTagMultiPayload(), v47 = v71, v48 = v72, (v49 = sub_1006A9254(v48, v18, v81)) != 0))
    {
      v50 = v49;
      v51 = swift_allocObject();
      v51[2] = v76;
      v51[3] = v50;

      v52 = v50;
      v53 = UIWindowScene.rootViewController.getter();
      if (v53)
      {
        v54 = v53;
        v55 = [v53 presentedViewController];
        if (v55)
        {

          v56 = swift_allocObject();
          *(v56 + 16) = sub_100489080;
          *(v56 + 24) = v51;
          v84 = sub_1001D3174;
          v85 = v56;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v83 = sub_10002BC98;
          *(&v83 + 1) = &unk_1010AE0E0;
          v57 = _Block_copy(&aBlock);

          [v54 dismissViewControllerAnimated:1 completion:v57];

          _Block_release(v57);

          return;
        }
      }

      v58 = &v41[*(sub_10010FC20(&unk_1011841E0) + 48)];
      v59 = sub_10010FC20(&unk_10118CE00);
      v81 = v51;
      v60 = v41;
      v61 = *(v59 + 48);
      *v60 = v52;
      v62 = v52;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *&aBlock = static MusicLibrary.shared.getter();
      sub_100137E8C();
      dispatch thunk of UIMutableTraits.subscript.setter();
      v63 = v78;
      (*(v78 + 16))(&v60[v61], v43, v42);
      UIViewController.traitOverrides.setter();
      (*(v63 + 56))(&v60[v61], 0, 1, v42);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v58 = 0;
      *(v58 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v64 = v70;
      sub_100137EE0(v60, v70, type metadata accessor for AppInterfaceContext.Activity);
      v65 = v80;
      sub_100137EE0(v64, v80, type metadata accessor for AppInterfaceContext.Activity);
      v66 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      sub_100115BB4(v65, v67 + v66);
      sub_100706900(v64, sub_100139B24, v67);

      sub_1001385B8(v64, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v60, type metadata accessor for AppInterfaceContext.Activity);
    }

    else
    {
    }
  }
}

uint64_t sub_10048559C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v29 = a3;
  v5 = type metadata accessor for UITraitOverrides();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppInterfaceContext.Activity(0);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = (&v25 + *(sub_10010FC20(&unk_1011841E0) + 48) - v16);
  v19 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v17 = a2;
  v20 = a2;
  UIViewController.traitOverrides.getter();
  type metadata accessor for MusicLibrary();
  v32 = static MusicLibrary.shared.getter();
  sub_100137E8C();
  dispatch thunk of UIMutableTraits.subscript.setter();
  (*(v6 + 16))(&v17[v19], v8, v5);
  UIViewController.traitOverrides.setter();
  (*(v6 + 56))(&v17[v19], 0, 1, v5);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v18 = 0;
  v18[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100137EE0(v17, v15, type metadata accessor for AppInterfaceContext.Activity);
  v21 = v26;
  sub_100137EE0(v15, v26, type metadata accessor for AppInterfaceContext.Activity);
  v22 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_100115BB4(v21, v23 + v22);
  sub_100706900(v15, v31, v23);

  sub_1001385B8(v15, type metadata accessor for AppInterfaceContext.Activity);
  return sub_1001385B8(v17, type metadata accessor for AppInterfaceContext.Activity);
}

void sub_1004858B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v84 = a4;
  v6 = type metadata accessor for UITraitOverrides();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v77 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for AppInterfaceContext.Activity(0);
  v81 = *(v78 - 8);
  v8 = *(v81 + 64);
  v9 = __chkstk_darwin(v78);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v69 - v11;
  __chkstk_darwin(v10);
  v14 = &v69 - v13;
  v15 = sub_10010FC20(&qword_101183A20);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v69 - v19;
  v21 = type metadata accessor for ContainerDetail.Source(0);
  v22 = __chkstk_darwin(v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v69 - v25;
  v27 = [a1 delegate];
  if (!v27 || (v76 = v14, v89 = v27, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    v87 = 0;
    aBlock = 0u;
    v86 = 0u;
    goto LABEL_10;
  }

  if (!*(&v86 + 1))
  {
LABEL_10:
    sub_1000095E8(&aBlock, &unk_101184EA0);
    return;
  }

  v28 = *(*sub_10000954C(&aBlock, *(&v86 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  v75 = v28;
  if (v28)
  {
    v73 = v12;
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000060E4(v29, qword_101218DE8);
    v30 = a2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v74 = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v71 = v33;
      v72 = swift_slowAlloc();
      *&aBlock = v72;
      *v33 = 136446210;
      v34 = [v30 identifiers];
      v35 = [v34 description];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v31;
      v37 = v36;

      v38 = sub_1000105AC(v69, v37, &aBlock);

      v39 = v71;
      *(v71 + 1) = v38;
      v40 = v70;
      _os_log_impl(&_mh_execute_header, v70, v74, "Pushing to Catalog Album using Song=%{public}s", v39, 0xCu);
      sub_10000959C(v72);
    }

    else
    {
    }

    v41 = UIWindowScene.rootViewController.getter();
    if (!v41 || (v42 = v41, v43 = [v41 traitCollection], v42, LOBYTE(v42) = UITraitCollection.isMediaPicker.getter(), v43, (v42 & 1) != 0))
    {

      return;
    }

    v44 = MusicItemID.init(_:)();
    v46 = v45;
    *v26 = 1;
    swift_storeEnumTagMultiPayload();
    v47 = type metadata accessor for URL();
    (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
    sub_100137EE0(v26, v24, type metadata accessor for ContainerDetail.Source);
    sub_1004890B8(v20, v18);
    v48 = sub_1004E5248(v44, v46, v24, v18);
    v49 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v50 = sub_100137F64(v48, v49);
    sub_1000095E8(v20, &qword_101183A20);
    sub_1001385B8(v26, type metadata accessor for ContainerDetail.Source);
    v51 = swift_allocObject();
    *(v51 + 16) = v75;
    *(v51 + 24) = v50;

    v52 = v50;
    v53 = UIWindowScene.rootViewController.getter();
    v54 = v76;
    if (v53)
    {
      v55 = v53;
      v56 = [v53 presentedViewController];
      if (v56)
      {

        v57 = swift_allocObject();
        *(v57 + 16) = sub_100489128;
        *(v57 + 24) = v51;
        v87 = sub_1001D3174;
        v88 = v57;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v86 = sub_10002BC98;
        *(&v86 + 1) = &unk_1010AE1A8;
        v58 = _Block_copy(&aBlock);

        [v55 dismissViewControllerAnimated:1 completion:v58];

        _Block_release(v58);

        return;
      }
    }

    v59 = &v54[*(sub_10010FC20(&unk_1011841E0) + 48)];
    v60 = *(sub_10010FC20(&unk_10118CE00) + 48);
    *v54 = v52;
    v61 = v52;
    v62 = v77;
    UIViewController.traitOverrides.getter();
    type metadata accessor for MusicLibrary();
    *&aBlock = static MusicLibrary.shared.getter();
    sub_100137E8C();
    v63 = v80;
    dispatch thunk of UIMutableTraits.subscript.setter();
    v64 = v79;
    (*(v79 + 16))(&v54[v60], v62, v63);
    UIViewController.traitOverrides.setter();
    (*(v64 + 56))(&v54[v60], 0, 1, v63);
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v59 = 0;
    *(v59 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v65 = v73;
    sub_100137EE0(v54, v73, type metadata accessor for AppInterfaceContext.Activity);
    v66 = v82;
    sub_100137EE0(v65, v82, type metadata accessor for AppInterfaceContext.Activity);
    v67 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    sub_100115BB4(v66, v68 + v67);
    sub_100706900(v65, sub_100139B24, v68);

    sub_1001385B8(v65, type metadata accessor for AppInterfaceContext.Activity);
    sub_1001385B8(v54, type metadata accessor for AppInterfaceContext.Activity);
  }
}

void sub_1004861E0(void *a1, int a2, void (*a3)(char *, char *, uint64_t), void *a4)
{
  v140 = a4;
  v142 = a3;
  LODWORD(v141) = a2;
  v5 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v5);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UITraitOverrides();
  v132 = *(v8 - 8);
  v133 = v8;
  __chkstk_darwin(v8);
  v131 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v10);
  v129 = (&v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AppInterfaceContext.Activity(0);
  v13 = *(v12 - 8);
  v134 = v12;
  v135 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v130 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v117 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v117 - v20;
  __chkstk_darwin(v19);
  v128 = &v117 - v22;
  v23 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v23 - 8);
  v25 = &v117 - v24;
  v26 = type metadata accessor for Playlist.Folder();
  v138 = *(v26 - 8);
  v139 = v26;
  v27 = *(v138 + 64);
  v28 = __chkstk_darwin(v26);
  v137 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v31 = &v117 - v30;
  __chkstk_darwin(v29);
  v136 = &v117 - v32;
  v33 = [a1 delegate];
  if (!v33 || (v127 = v18, v147 = v33, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    v145 = 0;
    aBlock = 0u;
    v144 = 0u;
    goto LABEL_14;
  }

  if (!*(&v144 + 1))
  {
LABEL_14:
    sub_1000095E8(&aBlock, &unk_101184EA0);
    return;
  }

  v34 = *(*sub_10000954C(&aBlock, *(&v144 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  if (!v34)
  {
    return;
  }

  v121 = v10;
  v125 = a1;
  v126 = v34;
  if (qword_10117F798 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_101218DE8);
  v36 = v142;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v124 = v36;

  v123 = v38;
  v39 = os_log_type_enabled(v37, v38);
  v122 = v21;
  if (v39)
  {
    v120 = v37;
    v40 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&aBlock = v118;
    *v40 = 136315394;
    if (v141)
    {
      v41 = 0xEF7265646C6F4620;
    }

    else
    {
      v41 = 0xE800000000000000;
    }

    v42 = sub_1000105AC(0x7473696C79616C50, v41, &aBlock);

    *(v40 + 4) = v42;
    v119 = v40;
    *(v40 + 12) = 2082;
    if (v142)
    {
      v43 = [v124 identifiers];
    }

    else
    {
      v43 = 0;
    }

    v147 = v43;
    sub_10010FC20(&qword_101191A80);
    v44 = String.init<A>(describing:)();
    v46 = sub_1000105AC(v44, v45, &aBlock);

    v47 = v119;
    *(v119 + 14) = v46;
    v37 = v120;
    _os_log_impl(&_mh_execute_header, v120, v123, "Pushing to Library %s for Song=%{public}s", v47, 0x16u);
    swift_arrayDestroy();
  }

  v48 = UIWindowScene.rootViewController.getter();
  if (!v48)
  {
    goto LABEL_27;
  }

  v49 = v48;
  v50 = [v48 traitCollection];

  LOBYTE(v49) = UITraitCollection.isMediaPicker.getter();
  if (v49)
  {
    goto LABEL_27;
  }

  v51 = v122;
  if ((v141 & 1) == 0)
  {
LABEL_23:
    v55 = sub_10010FC20(&qword_10118A430);
    v56 = *(v55 + 48);
    v57 = *(v55 + 64);
    v58 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v58 - 8) + 56))(v7, 0, 1, v58);
    v7[v56] = 0;
    v7[v57] = 0;
    swift_storeEnumTagMultiPayload();
    v59 = v124;
    v60 = v140;
    v61 = sub_1006A99C4(v60, v7, v142, 1);
    if (v61)
    {
      v62 = v61;
      v63 = swift_allocObject();
      *(v63 + 16) = v126;
      *(v63 + 24) = v62;

      v64 = v62;
      v65 = UIWindowScene.rootViewController.getter();
      if (v65)
      {
        v66 = v65;
        v67 = [v65 presentedViewController];
        if (v67)
        {

          v68 = swift_allocObject();
          *(v68 + 16) = sub_10048917C;
          *(v68 + 24) = v63;
          v145 = sub_1001D3174;
          v146 = v68;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v144 = sub_10002BC98;
          *(&v144 + 1) = &unk_1010AE2C0;
          v69 = _Block_copy(&aBlock);

          [v66 dismissViewControllerAnimated:1 completion:v69];

          _Block_release(v69);

          return;
        }
      }

      v84 = &v51[*(sub_10010FC20(&unk_1011841E0) + 48)];
      v85 = *(sub_10010FC20(&unk_10118CE00) + 48);
      *v51 = v64;
      v86 = v64;
      v87 = v131;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *&aBlock = static MusicLibrary.shared.getter();
      sub_100137E8C();
      v88 = v133;
      dispatch thunk of UIMutableTraits.subscript.setter();
      v89 = v132;
      (*(v132 + 16))(&v51[v85], v87, v88);
      UIViewController.traitOverrides.setter();
      (*(v89 + 56))(&v51[v85], 0, 1, v88);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v84 = 0;
      *(v84 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v90 = v127;
      sub_100137EE0(v51, v127, type metadata accessor for AppInterfaceContext.Activity);
      v91 = v130;
      sub_100137EE0(v90, v130, type metadata accessor for AppInterfaceContext.Activity);
      v92 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = 0;
      *(v93 + 24) = 0;
      sub_100115BB4(v91, v93 + v92);
      sub_100706900(v90, sub_100139B24, v93);

      sub_1001385B8(v90, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v51, type metadata accessor for AppInterfaceContext.Activity);
      return;
    }

LABEL_27:

    return;
  }

  v52 = v140;
  v53 = v139;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v54 = v138;
  if ((*(v138 + 48))(v25, 1, v53) == 1)
  {
    sub_1000095E8(v25, &unk_10118F670);
    v51 = v122;
    goto LABEL_23;
  }

  v70 = *(v54 + 32);
  v71 = v136;
  v70(v136, v25, v53);
  v72 = *(v54 + 16);
  v72(v31, v71, v53);
  v142 = v72;
  v72(v137, v31, v53);
  v73 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v126;
  v70((v74 + v73), v31, v53);
  v75 = v121;

  v76 = UIWindowScene.rootViewController.getter();
  v77 = v129;
  if (v76)
  {
    v78 = v76;
    v79 = [v76 presentedViewController];
    if (v79)
    {

      v80 = swift_allocObject();
      *(v80 + 16) = sub_1004891B4;
      *(v80 + 24) = v74;
      v145 = sub_1001D3174;
      v146 = v80;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v144 = sub_10002BC98;
      *(&v144 + 1) = &unk_1010AE388;
      v81 = _Block_copy(&aBlock);

      [v78 dismissViewControllerAnimated:1 completion:v81];
      _Block_release(v81);

      v82 = *(v138 + 8);
      v83 = v139;
      v82(v137, v139);
      v82(v136, v83);
      return;
    }
  }

  v141 = v74;
  v94 = *(v75 + 20);
  v95 = v139;
  v142(v77 + v94, v137, v139);
  v96 = v138;
  (*(v138 + 56))(v77 + v94, 0, 1, v95);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v77 = qword_101218AB8;
  *(v77 + *(v75 + 24)) = 0;
  v97 = objc_opt_self();

  v98 = [v97 currentTraitCollection];
  v99 = [v98 horizontalSizeClass];

  v100 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());
  v101 = sub_10037E11C(v77, 0, v99 != 2);
  v102 = sub_10010FC20(&unk_1011841E0);
  v103 = v128;
  v104 = &v128[*(v102 + 48)];
  v105 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v103 = v101;
  v106 = v101;
  v107 = v131;
  UIViewController.traitOverrides.getter();
  type metadata accessor for MusicLibrary();
  *&aBlock = static MusicLibrary.shared.getter();
  sub_100137E8C();
  v108 = v133;
  dispatch thunk of UIMutableTraits.subscript.setter();
  v109 = v132;
  (*(v132 + 16))(&v103[v105], v107, v108);
  UIViewController.traitOverrides.setter();

  (*(v109 + 56))(&v103[v105], 0, 1, v108);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v110 = swift_allocObject();
  *(v110 + 16) = v106;
  *v104 = sub_100137E80;
  v104[1] = v110;
  swift_storeEnumTagMultiPayload();
  v111 = v122;
  sub_100137EE0(v103, v122, type metadata accessor for AppInterfaceContext.Activity);
  v112 = v127;
  sub_100137EE0(v111, v127, type metadata accessor for AppInterfaceContext.Activity);
  v113 = (*(v135 + 80) + 32) & ~*(v135 + 80);
  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  *(v114 + 24) = 0;
  sub_100115BB4(v112, v114 + v113);
  sub_100706900(v111, sub_100139B24, v114);

  sub_1001385B8(v111, type metadata accessor for AppInterfaceContext.Activity);
  sub_1001385B8(v103, type metadata accessor for AppInterfaceContext.Activity);
  v115 = *(v96 + 8);
  v116 = v139;
  v115(v137, v139);
  v115(v136, v116);
}

uint64_t sub_10048722C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v40 = a1;
  v38 = type metadata accessor for UITraitOverrides();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v34 - v13;
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = *(v5 + 20);
  v18 = type metadata accessor for Playlist.Folder();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v7 + v17, v35, v18);
  (*(v19 + 56))(v7 + v17, 0, 1, v18);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v7 = qword_101218AB8;
  *(v7 + *(v5 + 24)) = 0;
  v20 = objc_opt_self();

  v21 = [v20 currentTraitCollection];
  v22 = [v21 horizontalSizeClass];

  v23 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());
  v24 = sub_10037E11C(v7, 0, v22 != 2);
  v25 = &v16[*(sub_10010FC20(&unk_1011841E0) + 48)];
  v26 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v16 = v24;
  v27 = v24;
  UIViewController.traitOverrides.getter();
  type metadata accessor for MusicLibrary();
  v41 = static MusicLibrary.shared.getter();
  sub_100137E8C();
  v28 = v38;
  dispatch thunk of UIMutableTraits.subscript.setter();
  (*(v2 + 16))(&v16[v26], v4, v28);
  UIViewController.traitOverrides.setter();

  (*(v2 + 56))(&v16[v26], 0, 1, v28);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *v25 = sub_100489408;
  v25[1] = v29;
  swift_storeEnumTagMultiPayload();
  sub_100137EE0(v16, v14, type metadata accessor for AppInterfaceContext.Activity);
  v30 = v39;
  sub_100137EE0(v14, v39, type metadata accessor for AppInterfaceContext.Activity);
  v31 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  sub_100115BB4(v30, v32 + v31);
  sub_100706900(v14, sub_100139B24, v32);

  sub_1001385B8(v14, type metadata accessor for AppInterfaceContext.Activity);
  return sub_1001385B8(v16, type metadata accessor for AppInterfaceContext.Activity);
}

void sub_100487714(void *a1, void *a2, void *a3)
{
  v71 = a3;
  v72 = a2;
  v4 = type metadata accessor for UITraitOverrides();
  v69 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppInterfaceContext.Activity(0);
  v70 = *(v7 - 8);
  v8 = *(v70 + 64);
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  v12 = &v59 - v11;
  __chkstk_darwin(v10);
  v14 = &v59 - v13;
  v15 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 delegate];
  if (!v18 || (v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v77 = v18, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    v75 = 0;
    aBlock = 0u;
    v74 = 0u;
    goto LABEL_11;
  }

  if (!*(&v74 + 1))
  {
LABEL_11:
    sub_1000095E8(&aBlock, &unk_101184EA0);
    return;
  }

  v19 = *(*sub_10000954C(&aBlock, *(&v74 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  if (v19)
  {
    v62 = v4;
    v65 = v7;
    v66 = v14;
    v67 = v19;
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, qword_101218DE8);
    v21 = v72;
    v22 = v72;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v64 = v22;

    v25 = v24;
    v26 = os_log_type_enabled(v23, v24);
    v63 = v12;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&aBlock = v60;
      v61 = v27;
      *v27 = 136446210;
      if (v21)
      {
        v28 = v23;
        v29 = [v64 identifiers];
      }

      else
      {
        v28 = v23;
        v29 = 0;
      }

      v77 = v29;
      sub_10010FC20(&qword_101191A80);
      v30 = String.init<A>(describing:)();
      v32 = sub_1000105AC(v30, v31, &aBlock);

      v33 = v61;
      *(v61 + 1) = v32;
      v23 = v28;
      _os_log_impl(&_mh_execute_header, v28, v25, "Pushing to Catalog Playlist for Song=%{public}s", v33, 0xCu);
      sub_10000959C(v60);
    }

    v34 = v66;
    v35 = UIWindowScene.rootViewController.getter();
    if (v35 && (v36 = v35, v37 = [v35 traitCollection], v36, LOBYTE(v36) = UITraitCollection.isMediaPicker.getter(), v37, (v36 & 1) == 0) && (*v17 = 1, swift_storeEnumTagMultiPayload(), v38 = v64, v39 = v71, (v40 = sub_1006A99C4(v39, v17, v72, 1)) != 0))
    {
      v41 = v40;
      v42 = swift_allocObject();
      v42[2] = v67;
      v42[3] = v41;

      v43 = v41;
      v44 = UIWindowScene.rootViewController.getter();
      if (v44)
      {
        v45 = v44;
        v46 = [v44 presentedViewController];
        if (v46)
        {

          v47 = swift_allocObject();
          *(v47 + 16) = sub_100489218;
          *(v47 + 24) = v42;
          v75 = sub_1001D3174;
          v76 = v47;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v74 = sub_10002BC98;
          *(&v74 + 1) = &unk_1010AE4A0;
          v48 = _Block_copy(&aBlock);

          [v45 dismissViewControllerAnimated:1 completion:v48];

          _Block_release(v48);

          return;
        }
      }

      v49 = &v34[*(sub_10010FC20(&unk_1011841E0) + 48)];
      v50 = *(sub_10010FC20(&unk_10118CE00) + 48);
      *v34 = v43;
      v51 = v43;
      v72 = v42;
      v52 = v51;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *&aBlock = static MusicLibrary.shared.getter();
      sub_100137E8C();
      v53 = v62;
      dispatch thunk of UIMutableTraits.subscript.setter();
      v54 = v69;
      (*(v69 + 16))(&v34[v50], v6, v53);
      UIViewController.traitOverrides.setter();
      (*(v54 + 56))(&v34[v50], 0, 1, v53);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v49 = 0;
      *(v49 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v55 = v63;
      sub_100137EE0(v34, v63, type metadata accessor for AppInterfaceContext.Activity);
      v56 = v68;
      sub_100137EE0(v55, v68, type metadata accessor for AppInterfaceContext.Activity);
      v57 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = 0;
      sub_100115BB4(v56, v58 + v57);
      sub_100706900(v55, sub_100139B24, v58);

      sub_1001385B8(v55, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v34, type metadata accessor for AppInterfaceContext.Activity);
    }

    else
    {
    }
  }
}

uint64_t sub_100487ED8(void *a1, void *a2, void *a3)
{
  v74 = a3;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v73 = &v64 - v10;
  __chkstk_darwin(v9);
  v12 = (&v64 - v11);
  v13 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for Artist();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v75 = &v64 - v21;
  v22 = [a1 delegate];
  if (v22 && (v71 = v17, v80 = v22, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v77 + 1))
    {
      v23 = *(*sub_10000954C(&aBlock, *(&v77 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

      result = sub_10000959C(&aBlock);
      v70 = v23;
      if (!v23)
      {
        return result;
      }

      v69 = v16;
      if (qword_10117F798 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000060E4(v25, qword_101218DE8);
      v26 = a2;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v67 = v12;
        v30 = v29;
        v68 = swift_slowAlloc();
        *&aBlock = v68;
        *v30 = 136446210;
        v31 = [v26 identifiers];
        v32 = [v31 description];
        v66 = v28;
        v33 = v32;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v27;
        v35 = v34;

        v36 = sub_1000105AC(v64, v35, &aBlock);

        v37 = v30;
        v12 = v67;
        *(v37 + 1) = v36;
        v38 = v65;
        _os_log_impl(&_mh_execute_header, v65, v66, "Pushing to Library Artist for song=%{public}s", v37, 0xCu);
        sub_10000959C(v68);
      }

      else
      {
      }

      v41 = UIWindowScene.rootViewController.getter();
      if (!v41)
      {
      }

      v42 = v41;
      v43 = [v41 traitCollection];

      LOBYTE(v42) = UITraitCollection.isMediaPicker.getter();
      if (v42)
      {
      }

      v44 = v74;
      v45 = v69;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      v46 = v71;
      if ((*(v71 + 48))(v15, 1, v45) == 1)
      {

        v39 = &unk_101184930;
        p_aBlock = v15;
        return sub_1000095E8(p_aBlock, v39);
      }

      v47 = v75;
      (*(v46 + 32))(v75, v15, v45);
      (*(v46 + 16))(v20, v47, v45);
      v48 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
      v49 = sub_1001FAE8C(v20, 0);
      v50 = swift_allocObject();
      *(v50 + 16) = v70;
      *(v50 + 24) = v49;

      v51 = v49;
      v52 = UIWindowScene.rootViewController.getter();
      if (v52)
      {
        v53 = v52;
        v54 = [v52 presentedViewController];
        if (v54)
        {

          v55 = swift_allocObject();
          *(v55 + 16) = sub_1004893D0;
          *(v55 + 24) = v50;
          v78 = sub_1001D3174;
          v79 = v55;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v77 = sub_10002BC98;
          *(&v77 + 1) = &unk_1010AE5E0;
          v56 = _Block_copy(&aBlock);

          [v53 dismissViewControllerAnimated:1 completion:v56];
          _Block_release(v56);

          return (*(v71 + 8))(v75, v69);
        }
      }

      v57 = (v12 + *(sub_10010FC20(&unk_1011841E0) + 48));
      v58 = *(sub_10010FC20(&unk_10118CE00) + 48);
      *v12 = v51;
      v59 = type metadata accessor for UITraitOverrides();
      (*(*(v59 - 8) + 56))(v12 + v58, 1, 1, v59);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v57 = 0;
      v57[1] = 0;
      swift_storeEnumTagMultiPayload();
      v60 = v73;
      sub_100137EE0(v12, v73, type metadata accessor for AppInterfaceContext.Activity);
      sub_100137EE0(v60, v8, type metadata accessor for AppInterfaceContext.Activity);
      v61 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      *(v62 + 24) = 0;
      sub_100115BB4(v8, v62 + v61);
      v63 = v51;
      sub_100706900(v60, sub_100139B24, v62);

      sub_1001385B8(v60, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v12, type metadata accessor for AppInterfaceContext.Activity);
      return (*(v71 + 8))(v75, v69);
    }
  }

  else
  {
    v78 = 0;
    aBlock = 0u;
    v77 = 0u;
  }

  v39 = &unk_101184EA0;
  p_aBlock = &aBlock;
  return sub_1000095E8(p_aBlock, v39);
}

uint64_t sub_100488704(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = (&v20 + *(sub_10010FC20(&unk_1011841E0) + 48) - v11);
  v14 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v12 = a2;
  v15 = type metadata accessor for UITraitOverrides();
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v13 = 0;
  v13[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100137EE0(v12, v10, type metadata accessor for AppInterfaceContext.Activity);
  sub_100137EE0(v10, v7, type metadata accessor for AppInterfaceContext.Activity);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_100115BB4(v7, v17 + v16);
  v18 = a2;
  sub_100706900(v10, sub_100139B24, v17);

  sub_1001385B8(v10, type metadata accessor for AppInterfaceContext.Activity);
  return sub_1001385B8(v12, type metadata accessor for AppInterfaceContext.Activity);
}

uint64_t sub_100488954(void *a1, void *a2, void *a3)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v58 = &v51[-v7];
  v8 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v8 - 8);
  v10 = &v51[-v9];
  v11 = type metadata accessor for Artist();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v56 = v14;
  v57 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v51[-v15];
  if (qword_10117F798 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000060E4(v17, qword_101218DE8);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v55 = a3;
    v22 = v21;
    v53 = swift_slowAlloc();
    *&v60 = v53;
    *v22 = 136446210;
    v23 = [v18 identifiers];
    v24 = [v23 description];
    v54 = a2;
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v20;
    v27 = v16;
    v28 = v26;
    v29 = v11;
    v30 = v12;
    v32 = v31;

    v33 = v28;
    v16 = v27;
    v34 = sub_1000105AC(v33, v32, &v60);
    v12 = v30;
    v11 = v29;

    *(v22 + 4) = v34;
    a2 = v54;
    _os_log_impl(&_mh_execute_header, v19, v52, "Pushing to Catalog Artist for song=%{public}s", v22, 0xCu);
    sub_10000959C(v53);

    a3 = v55;
  }

  v35 = a2;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v36 = &unk_101184930;
    v37 = v10;
    return sub_1000095E8(v37, v36);
  }

  v38 = *(v12 + 32);
  v38(v16, v10, v11);
  v39 = [a3 delegate];
  if (!v39)
  {
    (*(v12 + 8))(v16, v11);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
LABEL_15:
    v36 = &unk_101184EA0;
    v37 = &v60;
    return sub_1000095E8(v37, v36);
  }

  v59 = v39;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    goto LABEL_14;
  }

  if (!*(&v61 + 1))
  {
LABEL_14:
    (*(v12 + 8))(v16, v11);
    goto LABEL_15;
  }

  v40 = *(*sub_10000954C(&v60, *(&v61 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&v60);
  if (!v40)
  {
    return (*(v12 + 8))(v16, v11);
  }

  v41 = type metadata accessor for TaskPriority();
  (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
  v42 = v57;
  (*(v12 + 16))(v57, v16, v11);
  type metadata accessor for MainActor();

  v43 = static MainActor.shared.getter();
  v44 = v11;
  v45 = v12;
  v46 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v47 = &v56[v46 + 7];
  v56 = v16;
  v48 = v47 & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v43;
  *(v49 + 24) = &protocol witness table for MainActor;
  v38((v49 + v46), v42, v44);
  *(v49 + v48) = v40;
  sub_1001F4CB8(0, 0, v58, &unk_100ECECB8, v49);

  return (*(v45 + 8))(v56, v44);
}

uint64_t sub_100488F4C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218DE8);
  sub_1000060E4(v0, qword_101218DE8);
  sub_100005AE4();
  OS_os_log.init(musicCategory:)();
  return Logger.init(_:)();
}

unint64_t sub_100488FD8()
{
  result = qword_101191A88;
  if (!qword_101191A88)
  {
    type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191A88);
  }

  return result;
}

uint64_t sub_1004890B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004891B4()
{
  v1 = *(type metadata accessor for Playlist.Folder() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10048722C(v2, v3);
}

uint64_t sub_10048925C()
{

  return swift_deallocObject();
}

uint64_t sub_1004892B0(uint64_t a1)
{
  v4 = *(type metadata accessor for Artist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003C3224(a1, v6, v7, v1 + v5, v8);
}

id sub_10048940C()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

id sub_100489578(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  sub_100035A7C();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a1[7])
  {
    v6 = a1[8];
    v12[4] = a1[7];
    v12[5] = v6;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10003640C;
    v12[3] = &unk_1010AE658;
    v7 = _Block_copy(v12);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[6];
  v9 = type metadata accessor for MusicTab.Group();
  v13.receiver = v1;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, "initWithTitle:image:identifier:children:viewControllerProvider:", v3, v8, v4, v5.super.isa, v7);
  _Block_release(v7);

  sub_100036360(a1);
  return v10;
}

id sub_1004898A4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10048992C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100489974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1004899DC(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource] = 0;
  v1[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController_onlyShowDownloaded] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  v5 = String._bridgeToObjectiveC()();

  [v4 setPlayActivityFeatureName:v5];

  return v4;
}

uint64_t sub_100489B30()
{
  v1 = OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource;
  if (*&v0[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource];
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController_onlyShowDownloaded];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for CarPlayLibraryViewController.DataSource();
    swift_allocObject();
    v5 = v0;
    v2 = sub_10048B4D8(v5, v3, sub_10048B4D0, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

unint64_t sub_100489D3C(void *a1)
{
  v3 = type metadata accessor for GridView.Base.Style();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100489B30();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *(v7 + 72);
  if (result >= *(v9 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = *(v9 + result + 32);

  v11 = *(v1 + OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource);

  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = *(v11 + 72);
  if (result < *(v12 + 16))
  {
    v13 = *(v12 + result + 32);
    if (v13 >= 2)
    {
      v18 = [objc_opt_self() cellForTableView:a1];
    }

    else
    {
      sub_10048ADA4(v13);
      v14 = String._bridgeToObjectiveC()();
      v33 = v6;
      v15 = v4;
      v16 = v14;

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v18 = [a1 dequeueReusableCellWithIdentifier:v16 forIndexPath:isa];

      v4 = v15;
      v6 = v33;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v29 = v28;
          v30 = v18;

          v31 = sub_10048AC2C();

          sub_1003FBD30(v29);
        }

        return v18;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        *v6 = 0;
        v6[8] = 1;
        *(v6 + 2) = 0;
        *(v6 + 12) = 257;
        (*(v4 + 104))(v6, enum case for GridView.Base.Style.condensed(_:), v3);
        v21 = v18;
        CPUIGridViewBaseTableViewCell.gridViewStyle.setter();
        [v20 setContentInsets:{0.0, 8.0, 0.0, 0.0}];

        sub_10048AA8C();

LABEL_17:
        CPUIGridViewBaseTableViewCell.viewModels.setter();
      }
    }

    else
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        v24 = *(sub_10010FC20(&qword_101191D68) + 48);
        *v6 = 0;
        v6[8] = 1;
        v25 = enum case for GridView.ImageGrid.Layout.Distribution.fillEqually(_:);
        v26 = type metadata accessor for GridView.ImageGrid.Layout.Distribution();
        (*(*(v26 - 8) + 104))(&v6[v24], v25, v26);
        (*(v4 + 104))(v6, enum case for GridView.Base.Style.imageGrid(_:), v3);
        v21 = v18;
        CPUIGridViewBaseTableViewCell.gridViewStyle.setter();
        [v23 setContentInsets:{0.0, 8.0, 0.0, 0.0}];

        v27 = sub_10048A9A4();

        if (v27)
        {
        }

        goto LABEL_17;
      }
    }

    return v18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10048A398(void *a1, unint64_t a2)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  sub_100489B30();
  v7 = sub_10048AEF0(a1, a2);

  if (!v7)
  {
    return v7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(*(v2 + OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource) + 72);
    if (*(v9 + 16) > a2)
    {
      if (*(v9 + a2 + 32) >= 2u && (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
      {
        v11 = v10;
        v12 = v7;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v13 = String.init(localized:table:bundle:locale:comment:)();
        v15 = v14;
        v16 = String._bridgeToObjectiveC()();
        [v11 setTitle:v16];

        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = swift_allocObject();
        v18[2] = v17;
        v18[3] = v13;
        v18[4] = v15;
        aBlock[4] = sub_10048B56C;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002BC98;
        aBlock[3] = &unk_1010AE920;
        v19 = _Block_copy(aBlock);

        [v11 setAction:v19];
        _Block_release(v19);
      }

      else
      {

        return 0;
      }

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_10048A678()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC5Music28CarPlayLibraryViewController_onlyShowDownloaded);
    v3 = objc_allocWithZone(MCDRecentlyAddedTableViewController);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v3 initWithIdentifier:v4 showLocalContent:v2];

    if (v5)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();
      [v6 setTitle:v7];

      v8 = v1;
      [v6 setPlayActivityFeatureNameSourceViewController:v8];

      v9 = [v8 navigationController];
      if (v9)
      {
        [v9 pushViewController:v6 animated:1];
      }
    }

    else
    {
      v6 = v1;
    }
  }
}

void sub_10048A914(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong tableView];

      if (v5)
      {
        [v5 reloadData];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

char *sub_10048A9A4()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    if (*(v0 + 40))
    {
      v2 = 0;
      v3 = 1;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = swift_allocObject();
      swift_weakInit();
      _s14PinsDataSourceCMa();
      swift_allocObject();
      v2 = sub_100345830(Strong, 0, sub_10048B4B0, v5);
      v3 = *(v0 + 48);
    }

    *(v0 + 48) = v2;

    sub_1000D9148(v3);
  }

  sub_10000CD8C(v1);
  return v2;
}

uint64_t sub_10048AA8C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v0 + 40);
    v4 = swift_allocObject();
    swift_weakInit();
    _s21LibraryMenuDataSourceCMa();
    swift_allocObject();
    v1 = sub_1003FFD48(Strong, v3, sub_10048B490, v4);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_10048AB5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_10048B140(a4);
    v10 = v9;
    v11 = *(v7 + 24);

    v12 = sub_10018E070(a2);
    v11(a4, v8, v10, v12, 0);
  }

  return result;
}

char *sub_10048AC2C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = *(v0 + 40);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = objc_allocWithZone(_s23RecentlyAddedDataSourceCMa());
    v7 = Strong;
    v8 = v0;
    v9 = sub_1003FB6E0(v7, v4, sub_10048B488, v5);
    v10 = *(v0 + 64);
    *(v8 + 64) = v9;
    v2 = v9;

    v1 = 0;
  }

  v11 = v1;
  return v2;
}

uint64_t sub_10048ACF0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_10048B140(2);
    v6 = v5;
    v7 = *(v3 + 24);

    v7(2, v4, v6, _swiftEmptyArrayStorage, a1);
  }

  return result;
}

uint64_t sub_10048ADA4(char a1)
{
  if (!a1)
  {
    v5 = [objc_opt_self() reuseIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v6;

    v3 = 0x72476567616D492ELL;
    v4 = 0xEA00000000006469;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v1 = [objc_opt_self() reuseIdentifier];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v2;

    v3 = 0x736E65646E6F432ELL;
    v4 = 0xEA00000000006465;
LABEL_5:
    String.append(_:)(*&v3);

    return v10;
  }

  sub_10048B578();
  v8 = [swift_getObjCClassFromMetadata() identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

id sub_10048AEF0(id result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v2 + 72);
  if (*(v3 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(v3 + a2 + 32) < 2u)
  {
    return 0;
  }

  v4 = result;
  v5 = [objc_opt_self() reuseIdentifier];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v5];

  return v6;
}

uint64_t sub_10048AFB4()
{
  v1 = v0;
  v2 = sub_10048A9A4();
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();

      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
LABEL_4:
        v5 = &off_10109B798;
        goto LABEL_7;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_7:
  v7 = *(sub_10048AA8C() + 16);
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = &off_10109B7C0;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_1001256DC(v9);
  v10 = sub_10048AC2C();
  v11 = *&v10[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_viewModels];
  if (v11 >> 62)
  {
    v15 = v10;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v15;
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v13 = &off_10109B7E8;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  sub_1001256DC(v13);
  *(v1 + 72) = v5;
}

uint64_t sub_10048B140(unsigned __int8 a1)
{
  v2 = a1;
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  v5 = 0;
  if (v4)
  {
    v6 = v3 + 32;
    while (*(v6 + v5) != a1)
    {
      if (v4 == ++v5)
      {
        v5 = 0;
        break;
      }
    }
  }

  sub_10048AFB4();
  v7 = *(v1 + 72);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (*(v10 + v9) != v2)
    {
      if (v8 == ++v9)
      {
        return v5;
      }
    }

    return v9;
  }

  return v5;
}

uint64_t sub_10048B1F8()
{
  swift_unknownObjectWeakDestroy();

  sub_1000D9148(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CarPlayLibraryViewController.SectionDifference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CarPlayLibraryViewController.SectionDifference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10048B3B8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10048B3E4(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

unint64_t sub_10048B434()
{
  result = qword_101191D60;
  if (!qword_101191D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191D60);
  }

  return result;
}

uint64_t sub_10048B4D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 48) = 1;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakAssign();
  *(v4 + 40) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;

  sub_10048A9A4();

  sub_10048AA8C();

  return v4;
}

unint64_t sub_10048B578()
{
  result = qword_101191D70;
  if (!qword_101191D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101191D70);
  }

  return result;
}

void sub_10048B5C4(void *a1)
{
  for (i = 0; i != 3; ++i)
  {
    if (!*(&off_10109B770 + i + 32))
    {
      type metadata accessor for CPUIGridViewBaseTableViewCell();
      v3 = [objc_opt_self() reuseIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = 0xEA00000000006469;
      v5 = 0x72476567616D492ELL;
LABEL_3:
      String.append(_:)(*&v5);

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = String._bridgeToObjectiveC()();

      [a1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

      continue;
    }

    if (*(&off_10109B770 + i + 32) == 1)
    {
      type metadata accessor for CPUIGridViewBaseTableViewCell();
      v8 = [objc_opt_self() reuseIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = 0x736E65646E6F432ELL;
      v4 = 0xEA00000000006465;
      goto LABEL_3;
    }
  }

  v9 = [objc_opt_self() reuseIdentifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for CPUITableHeaderFooterView();
  [a1 registerClass:swift_getObjCClassFromMetadata() forHeaderFooterViewReuseIdentifier:v9];
}

uint64_t sub_10048B7D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CPUILimitedUserInterfaces();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10049CB30(&qword_101192098, &type metadata accessor for CPUILimitedUserInterfaces), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10049CB30(&qword_1011920A0, &type metadata accessor for CPUILimitedUserInterfaces);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10048B9E8(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();

    v4 = Hasher._finalize()();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (*(*(a2 + 48) + v6) == 1)
          {
            v8 = 0x657469726F766166;
          }

          else
          {
            v8 = 0x64616F6C6E776F64;
          }

          v9 = 0xE900000000000073;
          v10 = a1;
          if (!a1)
          {
LABEL_8:
            v11 = 0xE300000000000000;
            if (v8 != 7105633)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v9 = 0xE300000000000000;
          v8 = 7105633;
          v10 = a1;
          if (!a1)
          {
            goto LABEL_8;
          }
        }

        if (v10 == 1)
        {
          v12 = 0x657469726F766166;
        }

        else
        {
          v12 = 0x64616F6C6E776F64;
        }

        v11 = 0xE900000000000073;
        if (v8 != v12)
        {
          goto LABEL_17;
        }

LABEL_16:
        if (v9 == v11)
        {

          v13 = 1;
          return v13 & 1;
        }

LABEL_17:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        return v13 & 1;
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_10048BBDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), ApplicationCapabilities.Service.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0x646956636973756DLL;
    v29 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x8000000100E4DAB0;
        }

        v13 = *(*(a2 + 48) + v6) ? v7 : 0x636973756DLL;
        v14 = *(*(a2 + 48) + v6) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v10 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      else if (*(*(a2 + 48) + v6) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x8000000100E4DA90;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x8000000100E4DA70;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a1 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a1 == 9)
      {
        v16 = 0x8000000100E4DA70;
      }

      if (a1 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x8000000100E4DA90;
      }

      v17 = 0x746963696C707865;
      if (a1 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a1 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a1 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a1 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a1 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a1 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x8000000100E4DAB0;
      }

      if (a1)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a1)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a1 <= 4u ? v19 : v15;
      v24 = a1 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = v7;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v6 = (v25 + 1) & v30;
        LOBYTE(a1) = v29;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_10048BFB0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    Hasher._combine(_:)(6uLL);
    v4 = a1;
  }

  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + v7);
      if (v9 > 5)
      {
        switch(v9)
        {
          case 6u:
            if (a1 == 6)
            {
              return 1;
            }

            goto LABEL_7;
          case 7u:
            if (a1 == 7)
            {
              return 1;
            }

            goto LABEL_7;
          case 8u:
            if (a1 == 8)
            {
              return 1;
            }

            goto LABEL_7;
        }
      }

      else
      {
        switch(v9)
        {
          case 3u:
            if (a1 == 3)
            {
              return 1;
            }

            goto LABEL_7;
          case 4u:
            if (a1 == 4)
            {
              return 1;
            }

            goto LABEL_7;
          case 5u:
            if (a1 == 5)
            {
              return 1;
            }

            goto LABEL_7;
        }
      }

      if ((a1 - 9) <= 0xF9u && v9 == a1)
      {
        return 1;
      }

LABEL_7:
      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10048C144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (Hasher.init(_seed:)(), Lyrics.TextLine.hash(into:)(), v8 = Hasher._finalize()(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    v12 = *(v5 + 72);
    do
    {
      sub_10049CA68(*(a2 + 48) + v12 * v10, v7, type metadata accessor for Lyrics.TextLine);
      v13 = static Lyrics.TextLine.== infix(_:_:)(v7, a1);
      sub_10049CAD0(v7, type metadata accessor for Lyrics.TextLine);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10048C2CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Song();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10049CB30(&unk_10118D020, &type metadata accessor for Song), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10049CB30(&qword_101185748, &type metadata accessor for Song);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_10048C4E4(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_100ECF330[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100ECF330[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_10048C5C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10049CB30(&qword_10118EB38, &type metadata accessor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10049CB30(&qword_101192840, &type metadata accessor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10048C7DC(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1 & 1);
    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_10048C8A4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100009F78(0, &qword_101181F70), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10048C9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10048CAB4(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), Library.Menu.Identifier.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "nt";
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 0xA:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 0xC:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "nt";
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10048CE30@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecentlyAddedMusicItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Album();
    a1[3] = v10;
    v11 = &protocol witness table for Album;
LABEL_10:
    a1[4] = v11;
    v14 = sub_10001C8B8(a1);
    return (*(*(v10 - 8) + 32))(v14, v8, v10);
  }

  if (v9 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for MusicMovie();
    a1[3] = v10;
    v12 = &unk_10118AB60;
    v13 = &type metadata accessor for MusicMovie;
LABEL_5:
    v11 = sub_10049CB30(v12, v13);
    goto LABEL_10;
  }

  if (v9 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for MusicVideo();
    a1[3] = v10;
    v11 = &protocol witness table for MusicVideo;
    goto LABEL_10;
  }

  if (v9 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Playlist();
    a1[3] = v10;
    v11 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v9 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for TVSeason();
    a1[3] = v10;
    v12 = &unk_101181A68;
    v13 = &type metadata accessor for TVSeason;
    goto LABEL_5;
  }

  if (v9 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for UploadedVideo();
    a1[3] = v10;
    v12 = &unk_10118AB40;
    v13 = &type metadata accessor for UploadedVideo;
    goto LABEL_5;
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  v16._object = 0x8000000100E42030;
  v16._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v16);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10048D214@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Playlist.Folder();
    a1[3] = v10;
    v11 = sub_10049CB30(&qword_10118C1A0, &type metadata accessor for Playlist.Folder);
LABEL_5:
    a1[4] = v11;
    v12 = sub_10001C8B8(a1);
    return (*(*(v10 - 8) + 32))(v12, v8, v10);
  }

  if (v9 == enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Playlist();
    a1[3] = v10;
    v11 = &protocol witness table for Playlist;
    goto LABEL_5;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v15 = 0xD000000000000021;
  v16 = 0x8000000100E420C0;
  sub_10049CB30(&qword_101183228, &type metadata accessor for Playlist.Folder.Item);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10048D4C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t (*a11)(void), uint64_t a12)
{
  v558 = a8;
  v608 = a7;
  v636 = a4;
  v16 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v16 - 8);
  v612 = &v531 - v17;
  v623 = type metadata accessor for Album();
  v613 = *(v623 - 8);
  v18 = __chkstk_darwin(v623);
  v592 = &v531 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v593 = &v531 - v20;
  v591 = type metadata accessor for Playlist.Kind();
  v598 = *(v591 - 8);
  __chkstk_darwin(v591);
  v555 = &v531 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v590 = sub_10010FC20(&qword_101187EF0);
  __chkstk_darwin(v590);
  v601 = &v531 - v22;
  v23 = sub_10010FC20(&qword_101187EF8);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v531 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v620 = &v531 - v28;
  __chkstk_darwin(v27);
  v617 = &v531 - v29;
  v30 = type metadata accessor for Artist();
  v575 = *(v30 - 8);
  v576 = v30;
  __chkstk_darwin(v30);
  v574 = &v531 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10010FC20(&unk_101184930);
  v578 = *(v32 - 8);
  v33 = __chkstk_darwin(v32 - 8);
  v581 = &v531 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v580 = &v531 - v36;
  v37 = __chkstk_darwin(v35);
  v559 = &v531 - v38;
  v579 = v39;
  __chkstk_darwin(v37);
  v577 = &v531 - v40;
  v546 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  __chkstk_darwin(v546);
  v545 = &v531 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10010FC20(&qword_101191E70);
  __chkstk_darwin(v42 - 8);
  v544 = &v531 - v43;
  v44 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v44 - 8);
  v548 = &v531 - v45;
  v553 = type metadata accessor for Playlist.Folder.Item();
  v551 = *(v553 - 8);
  v46 = __chkstk_darwin(v553);
  v543 = &v531 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v542 = &v531 - v49;
  v50 = __chkstk_darwin(v48);
  v549 = &v531 - v51;
  v52 = __chkstk_darwin(v50);
  v540 = &v531 - v53;
  v54 = __chkstk_darwin(v52);
  v552 = &v531 - v55;
  v541 = v56;
  __chkstk_darwin(v54);
  v550 = &v531 - v57;
  v58 = sub_10010FC20(&unk_101183960);
  v59 = __chkstk_darwin(v58 - 8);
  v606 = &v531 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v587 = &v531 - v61;
  v624 = type metadata accessor for Song();
  v625 = *(v624 - 8);
  v62 = __chkstk_darwin(v624);
  v554 = &v531 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v616 = &v531 - v65;
  v66 = __chkstk_darwin(v64);
  v597 = &v531 - v67;
  v68 = __chkstk_darwin(v66);
  v595 = &v531 - v69;
  v70 = __chkstk_darwin(v68);
  v622 = &v531 - v71;
  v72 = __chkstk_darwin(v70);
  v615 = &v531 - v73;
  v596 = v74;
  __chkstk_darwin(v72);
  v589 = &v531 - v75;
  v76 = sub_10010FC20(&unk_10118F670);
  v77 = __chkstk_darwin(v76 - 8);
  v556 = &v531 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v571 = &v531 - v79;
  v80 = type metadata accessor for Playlist.Folder();
  v572 = *(v80 - 8);
  v573 = v80;
  __chkstk_darwin(v80);
  v557 = &v531 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Playlist.Entry();
  v583 = *(v82 - 8);
  v584 = v82;
  __chkstk_darwin(v82);
  v585 = &v531 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10010FC20(&unk_1011845D0);
  __chkstk_darwin(v84 - 8);
  v607 = &v531 - v85;
  v621 = type metadata accessor for PlaylistContext();
  v605 = *(v621 - 8);
  __chkstk_darwin(v621);
  v586 = &v531 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v566 = type metadata accessor for Actions.Collaborate.Context();
  __chkstk_darwin(v566);
  v565 = &v531 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10010FC20(&qword_10118E0D8);
  __chkstk_darwin(v88 - 8);
  v564 = &v531 - v89;
  v562 = type metadata accessor for Actions.EditPlaylist.Context();
  __chkstk_darwin(v562);
  v561 = &v531 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10010FC20(&qword_101191E78);
  __chkstk_darwin(v91 - 8);
  v560 = &v531 - v92;
  v93 = sub_10010FC20(&unk_1011814D0);
  v94 = __chkstk_darwin(v93 - 8);
  v609 = &v531 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v94);
  v619 = &v531 - v96;
  v626 = type metadata accessor for Playlist();
  v629 = *(v626 - 8);
  v97 = __chkstk_darwin(v626);
  v618 = &v531 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __chkstk_darwin(v97);
  v563 = &v531 - v100;
  v101 = __chkstk_darwin(v99);
  v582 = &v531 - v102;
  v103 = __chkstk_darwin(v101);
  v602 = &v531 - v104;
  v105 = __chkstk_darwin(v103);
  v614 = &v531 - v106;
  v594 = v107;
  __chkstk_darwin(v105);
  v603 = (&v531 - v108);
  v588 = type metadata accessor for Actions.PlaybackContext();
  v567 = *(v588 - 1);
  __chkstk_darwin(v588);
  v568 = v109;
  v628 = (&v531 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = sub_10010FC20(&unk_1011838D0);
  v111 = __chkstk_darwin(v110 - 8);
  v600 = &v531 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __chkstk_darwin(v111);
  v547 = &v531 - v114;
  v115 = __chkstk_darwin(v113);
  v569 = &v531 - v116;
  v117 = __chkstk_darwin(v115);
  v604 = &v531 - v118;
  __chkstk_darwin(v117);
  v634 = &v531 - v119;
  v630 = swift_projectBox();
  sub_100008FE4(a1, &v698);
  v120 = sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&qword_101191E80);
  v121 = swift_dynamicCast();
  v632 = a3;
  v627 = a2;
  v631 = a5;
  v570 = v26;
  if (v121)
  {
    sub_100059A8C(&v685, &v707);

    v122 = static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(&v707, a2, a3, v636, sub_10049BAB8, a5);

    sub_10010FC20(&unk_101183940);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_100EBC6B0;
    *(v123 + 32) = v122;
    v124 = v123 + 32;
    v125 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v124, &unk_10118AB80);
    swift_deallocClassInstance();
    v611 = static ActionBuilder.buildIf(_:)(v125);

    sub_10000959C(&v707);
  }

  else
  {
    *&v687 = 0;
    v686 = 0u;
    v685 = 0u;
    sub_1000095E8(&v685, &qword_101191E88);
    v611 = static ActionBuilder.buildIf(_:)(0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v127 = Strong, v128 = sub_10003169C(), v127, v128))
  {
    v129 = a1[3];
    v130 = a1[4];
    v131 = sub_10000954C(a1, v129);
    __chkstk_darwin(v131);
    v133 = &v531 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v134 + 16))(v133);
    sub_1000089F8(v636, v634, &unk_1011838D0);

    v135 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

    sub_100492B08(v133, v135, v128, v634, v129, v130, v670);
    static Actions.ShowSongCredits.action(context:)(v670, v671);

    v701 = v671[3];
    v702 = v671[4];
    v703 = v671[5];
    v704 = v671[6];
    v698 = v671[0];
    v699 = v671[1];
    v700 = v671[2];
    v136 = static ActionBuilder.buildExpression<A, B>(_:)(&v698, &type metadata for Actions.ShowSongCredits.Context, &type metadata for () + 8, &protocol witness table for Actions.ShowSongCredits.Context);
    v710 = v701;
    v711 = v702;
    v712 = v703;
    v713 = v704;
    v707 = v698;
    v708 = v699;
    v709 = v700;
    sub_1000095E8(&v707, &qword_101191EF0);
    sub_10010FC20(&unk_101183940);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_100EBC6B0;
    *(v137 + 32) = v136;
    v138 = v137 + 32;
    v139 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v138, &unk_10118AB80);
    swift_deallocClassInstance();
    v610 = static ActionBuilder.buildIf(_:)(v139);
  }

  else
  {
    v610 = static ActionBuilder.buildIf(_:)(0);
  }

  v140 = v621;
  sub_100008FE4(a1, &v707);
  v141 = sub_10010FC20(&qword_101182C50);
  v633 = v120;
  v142 = swift_dynamicCast();
  v635 = a1;
  v143 = v627;
  v144 = v619;
  if (v142)
  {
    sub_100059A8C(&v698, v684);
    sub_100008FE4(v684, &v637);
    sub_10010FC20(&qword_101182C48);
    v145 = swift_dynamicCast();
    v599 = v141;
    if (v145)
    {
      sub_100059A8C(&v653, &v645);
      v146 = *(&v646 + 1);
      v147 = v647;
      v148 = sub_10000954C(&v645, *(&v646 + 1));
      __chkstk_darwin(v148);
      v150 = (&v531 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v151 + 16))(v150);
      v152 = v630;
      swift_beginAccess();
      v153 = v152;
      v154 = v628;
      sub_10049CA68(v153, v628, type metadata accessor for Actions.PlaybackContext);
      v155 = v634;
      sub_1000089F8(v636, v634, &unk_1011838D0);
      Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v150, v154, 0, v155, v146, *(v147 + 8), v672);
      static Actions.Playback.action(context:)(v672, v673);

      v702 = v673[4];
      v703 = v673[5];
      v704 = v673[6];
      v698 = v673[0];
      v699 = v673[1];
      v700 = v673[2];
      *&v705 = v674;
      v701 = v673[3];
      v156 = static ActionBuilder.buildExpression<A, B>(_:)(&v698, &type metadata for Actions.Playback.Context, &type metadata for () + 8, &protocol witness table for Actions.Playback.Context);
      v711 = v702;
      v712 = v703;
      v713 = v704;
      *&v714 = v705;
      v707 = v698;
      v708 = v699;
      v709 = v700;
      v710 = v701;
      sub_1000095E8(&v707, &qword_101191EE8);
      sub_10010FC20(&unk_101183940);
      v157 = swift_allocObject();
      v539 = xmmword_100EBC6B0;
      *(v157 + 16) = xmmword_100EBC6B0;
      *(v157 + 32) = v156;
      v158 = v157 + 32;
      v159 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v158, &unk_10118AB80);
      swift_deallocClassInstance();
      v160 = sub_10049ABA4(0, 1, 1, _swiftEmptyArrayStorage, &unk_101183940, &unk_100EC64D0, &unk_10118AB80);
      v162 = *(v160 + 2);
      v161 = *(v160 + 3);
      if (v162 >= v161 >> 1)
      {
        v160 = sub_10049ABA4((v161 > 1), v162 + 1, 1, v160, &unk_101183940, &unk_100EC64D0, &unk_10118AB80);
      }

      *(v160 + 2) = v162 + 1;
      *&v160[8 * v162 + 32] = v159;
      v163 = *(&v646 + 1);
      v164 = v647;
      v165 = sub_10000954C(&v645, *(&v646 + 1));
      __chkstk_darwin(v165);
      v167 = (&v531 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v168 + 16))(v167);
      v169 = v630;
      swift_beginAccess();
      v170 = v628;
      sub_10049CA68(v169, v628, type metadata accessor for Actions.PlaybackContext);
      v171 = v634;
      sub_1000089F8(v636, v634, &unk_1011838D0);
      Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v167, v170, 1, v171, v163, *(v164 + 8), v675);
      static Actions.Playback.action(context:)(v675, v676);

      v689 = v676[4];
      v690 = v676[5];
      v691 = v676[6];
      v685 = v676[0];
      v686 = v676[1];
      v687 = v676[2];
      *&v692 = v677;
      v688 = v676[3];
      v172 = static ActionBuilder.buildExpression<A, B>(_:)(&v685, &type metadata for Actions.Playback.Context, &type metadata for () + 8, &protocol witness table for Actions.Playback.Context);
      v702 = v689;
      v703 = v690;
      v704 = v691;
      *&v705 = v692;
      v698 = v685;
      v699 = v686;
      v700 = v687;
      v701 = v688;
      sub_1000095E8(&v698, &qword_101191EE8);
      v173 = swift_allocObject();
      *(v173 + 16) = v539;
      *(v173 + 32) = v172;
      v174 = v173 + 32;
      v175 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v174, &unk_10118AB80);
      swift_deallocClassInstance();
      v177 = *(v160 + 2);
      v176 = *(v160 + 3);
      if (v177 >= v176 >> 1)
      {
        v160 = sub_10049ABA4((v176 > 1), v177 + 1, 1, v160, &unk_101183940, &unk_100EC64D0, &unk_10118AB80);
      }

      v144 = v619;
      *(v160 + 2) = v177 + 1;
      *&v160[8 * v177 + 32] = v175;
      v178 = static ActionBuilder.buildArray(_:)(v160);

      v179 = swift_allocObject();
      *(v179 + 16) = v539;
      *(v179 + 32) = v178;
      v180 = v179 + 32;
      v181 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v180, &unk_10118AB80);
      swift_deallocClassInstance();
      *&v539 = static ActionBuilder.buildIf(_:)(v181);

      sub_10000959C(&v645);
      v182 = v636;
      a1 = v635;
    }

    else
    {
      v182 = v636;
      *&v655 = 0;
      v653 = 0u;
      v654 = 0u;
      sub_1000095E8(&v653, &qword_101182C40);
      *&v539 = static ActionBuilder.buildIf(_:)(0);
    }

    sub_100008FE4(a1, &v707);
    v183 = v626;
    v184 = swift_dynamicCast();
    v185 = v629;
    v186 = *(v629 + 56);
    v187 = v603;
    v188 = v594;
    if (v184)
    {
      v186(v144, 0, 1, v183);
      v619 = *(v185 + 32);
      (v619)(v187, v144, v183);
      v189 = v182;
      v190 = *(v185 + 16);
      v191 = v614;
      v190(v614, v187, v183);
      v532 = v190;
      v533 = v185 + 16;
      sub_10012B7A8(v632, &v707);
      sub_1000089F8(v189, v634, &unk_1011838D0);
      v190(v602, v191, v183);
      v192 = v582;
      v190(v582, v191, v183);
      sub_10012B7A8(&v707, &v698);
      v193 = *(v185 + 80);
      v534 = ~v193;
      v535 = v193;
      v194 = (v193 + 16) & ~v193;
      v195 = (v188 + v194 + 7) & 0xFFFFFFFFFFFFFFF8;
      v196 = (v195 + 15) & 0xFFFFFFFFFFFFFFF8;
      v197 = swift_allocObject();
      v538 = v185 + 32;
      (v619)(v197 + v194, v192, v183);
      *(v197 + v195) = 0;
      v198 = v191;
      sub_10012B828(&v698, v197 + v196);
      v199 = v634;
      v200 = v604;
      sub_1000089F8(v634, v604, &unk_1011838D0);
      v201 = v561;
      Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)(v602, sub_10049BA20, v197, v200, v561);
      v202 = v199;
      v203 = v532;
      sub_1000095E8(v202, &unk_1011838D0);
      sub_10012BA6C(&v707);
      v204 = *(v629 + 8);
      v536 = v629 + 8;
      v537 = v204;
      v204(v198, v183);
      v205 = v560;
      static Actions.EditPlaylist.action(context:)(v201, v560);
      sub_10049CAD0(v201, type metadata accessor for Actions.EditPlaylist.Context);
      v561 = static ActionBuilder.buildExpression<A, B>(_:)(v205, v562, &type metadata for () + 8, &protocol witness table for Actions.EditPlaylist.Context);
      sub_1000095E8(v205, &qword_101191E78);
      v203(v198, v603, v183);
      if (qword_10117F610 != -1)
      {
        swift_once();
      }

      v562 = qword_101218AE0;
      sub_10012B7A8(v632, &v707);
      sub_1000089F8(v636, v634, &unk_1011838D0);
      v203(v602, v198, v183);
      v206 = v582;
      v203(v582, v198, v183);
      v207 = (v535 + 24) & v534;
      v208 = v207 + v594;
      v209 = swift_allocObject();
      v594 = v209;
      *(v209 + 16) = v562;
      (v619)(v209 + v207, v206, v183);
      v210 = v563;
      v203(v563, v198, v183);
      sub_10012B7A8(&v707, &v698);
      v211 = (v208 + 7) & 0xFFFFFFFFFFFFFFF8;
      v212 = swift_allocObject();
      *(v212 + 16) = v562;
      v213 = v212 + v207;
      v214 = v183;
      (v619)(v213, v210, v183);
      sub_10012B828(&v698, v212 + v211);
      v215 = v634;
      v216 = v604;
      sub_1000089F8(v634, v604, &unk_1011838D0);
      swift_retain_n();
      v217 = v565;
      Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)(v602, sub_1003F6738, v594, sub_1003F679C, v212, v216, v565);
      sub_1000095E8(v215, &unk_1011838D0);
      sub_10012BA6C(&v707);
      v218 = v537;
      v537(v614, v214);
      v219 = v564;
      static Actions.Collaborate.action(context:)(v217, v564);
      sub_10049CAD0(v217, type metadata accessor for Actions.Collaborate.Context);
      v220 = static ActionBuilder.buildExpression<A, B>(_:)(v219, v566, &type metadata for () + 8, &protocol witness table for Actions.Collaborate.Context);
      sub_1000095E8(v219, &qword_10118E0D8);
      sub_10010FC20(&unk_101183940);
      v221 = swift_allocObject();
      *(v221 + 16) = xmmword_100EBDC20;
      *(v221 + 32) = v561;
      *(v221 + 40) = v220;
      v222 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_10010FC20(&unk_10118AB80);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v223 = static ActionBuilder.buildIf(_:)(v222);

      v218(v603, v214);
      v143 = v627;
    }

    else
    {
      v186(v144, 1, 1, v183);
      sub_1000095E8(v144, &unk_1011814D0);
      v223 = static ActionBuilder.buildIf(_:)(0);
      v143 = v627;
    }

    sub_10010FC20(&unk_101183940);
    v224 = swift_allocObject();
    *(v224 + 16) = xmmword_100EBDC20;
    *(v224 + 32) = v539;
    *(v224 + 40) = v223;
    v225 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v619 = static ActionBuilder.buildIf(_:)(v225);

    sub_10000959C(v684);
    v140 = v621;
    v141 = v599;
  }

  else
  {
    *&v700 = 0;
    v699 = 0u;
    v698 = 0u;
    sub_1000095E8(&v698, &qword_101182C38);
    v619 = static ActionBuilder.buildIf(_:)(0);
  }

  v226 = v607;
  sub_1000089F8(v608, v607, &unk_1011845D0);
  if ((*(v605 + 48))(v226, 1, v140) == 1)
  {
    sub_1000095E8(v226, &unk_1011845D0);
    v608 = static ActionBuilder.buildIf(_:)(0);
  }

  else
  {
    v227 = v226;
    v228 = v586;
    sub_10049BE38(v227, v586, type metadata accessor for PlaylistContext);
    v229 = v585;
    (*(v583 + 16))(v585, v228, v584);
    v230 = v228 + *(v140 + 20);
    v231 = v614;
    (*(v629 + 16))(v614, v230, v626);
    v232 = v634;
    sub_1000089F8(v636, v634, &unk_1011838D0);
    Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(v229, v231, v143, v232, v678);
    static Actions.RemoveFromPlaylist.action(context:)(v678, v679);

    v701 = v679[3];
    v702 = v679[4];
    v703 = v679[5];
    v704 = v679[6];
    v698 = v679[0];
    v699 = v679[1];
    v700 = v679[2];
    v233 = static ActionBuilder.buildExpression<A, B>(_:)(&v698, &type metadata for Actions.RemoveFromPlaylist.Context, &type metadata for () + 8, &protocol witness table for Actions.RemoveFromPlaylist.Context);
    v710 = v701;
    v711 = v702;
    v712 = v703;
    v713 = v704;
    v707 = v698;
    v708 = v699;
    v709 = v700;
    sub_1000095E8(&v707, &qword_101191EE0);
    sub_10010FC20(&unk_101183940);
    v234 = swift_allocObject();
    *(v234 + 16) = xmmword_100EBC6B0;
    *(v234 + 32) = v233;
    v235 = v234 + 32;
    v236 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v235, &unk_10118AB80);
    swift_deallocClassInstance();
    v608 = static ActionBuilder.buildIf(_:)(v236);

    sub_10049CAD0(v228, type metadata accessor for PlaylistContext);
  }

  v237 = v635;
  swift_beginAccess();
  v238 = swift_unknownObjectWeakLoadStrong();
  if (v238 && (v239 = v238, v240 = sub_10003169C(), v239, v240))
  {
    sub_100008FE4(v237, &v685);
    sub_10010FC20(&qword_101183E10);
    v241 = swift_dynamicCast();
    v599 = v141;
    if (v241)
    {
      sub_1000D8F88(&v698, &v707);
      *&v700 = &off_1010AD928;
      *(&v699 + 1) = &type metadata for PlaylistPicker.Presenter;
      *&v698 = v240;

      v242 = static MusicActions.libraryActions(item:library:presentationSource:playlistPickerPresenter:observer:metricsReportingContext:)(&v707, v627, v632, &v698, v558, a9, v636);
      sub_1000095E8(&v698, &qword_101191ED8);
      sub_10010FC20(&unk_101183940);
      v243 = swift_allocObject();
      *(v243 + 16) = xmmword_100EBC6B0;
      *(v243 + 32) = v242;
      v244 = v243 + 32;
      v245 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v244, &unk_10118AB80);
      swift_deallocClassInstance();
      v246 = static ActionBuilder.buildIf(_:)(v245);

      sub_10000959C(&v707);
    }

    else
    {
      v700 = 0u;
      v699 = 0u;
      v698 = 0u;
      sub_1000095E8(&v698, &qword_101183E18);
      v246 = static ActionBuilder.buildIf(_:)(0);
    }

    v247 = v573;
    v248 = v571;
    sub_100008FE4(v635, &v707);
    v249 = swift_dynamicCast();
    v250 = v572;
    v251 = *(v572 + 56);
    if (v249)
    {
      v251(v248, 0, 1, v247);
      v252 = *(v250 + 32);
      v621 = v246;
      v253 = v557;
      v252(v557, v248, v247);
      v254 = v556;
      (*(v250 + 16))(v556, v253, v247);
      v251(v254, 0, 1, v247);
      *&v709 = &off_1010AD928;
      *(&v708 + 1) = &type metadata for PlaylistPicker.Presenter;
      *&v707 = v240;

      v255 = static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(v254, v627, v632, &v707, 0, 0);
      sub_1000095E8(v254, &unk_10118F670);
      sub_10000959C(&v707);
      sub_10010FC20(&unk_101183940);
      v256 = swift_allocObject();
      *(v256 + 16) = xmmword_100EBC6B0;
      v257 = v247;
      *(v256 + 32) = v255;
      v258 = v256 + 32;
      v259 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v258, &unk_10118AB80);
      swift_deallocClassInstance();
      v260 = static ActionBuilder.buildIf(_:)(v259);

      v261 = v253;
      v246 = v621;
      (*(v250 + 8))(v261, v257);
    }

    else
    {
      v251(v248, 1, 1, v247);
      sub_1000095E8(v248, &unk_10118F670);
      v260 = static ActionBuilder.buildIf(_:)(0);
    }

    sub_10010FC20(&unk_101183940);
    v262 = swift_allocObject();
    *(v262 + 16) = xmmword_100EBDC20;
    *(v262 + 32) = v246;
    *(v262 + 40) = v260;
    v263 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v607 = static ActionBuilder.buildIf(_:)(v263);

    v237 = v635;
  }

  else
  {
    v607 = static ActionBuilder.buildIf(_:)(0);
  }

  v264 = v632;
  LODWORD(v621) = a10;
  sub_100008FE4(v237, &v707);
  v265 = swift_dynamicCast();
  v266 = v628;
  if (v265)
  {
    sub_100059A8C(&v698, &v685);
    v267 = v630;
    swift_beginAccess();
    sub_10049CA68(v267, v266, type metadata accessor for Actions.PlaybackContext);
    v605 = static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(&v685, v266, v264, v636);
    sub_10049CAD0(v266, type metadata accessor for Actions.PlaybackContext);
    sub_100008FE4(v237, v684);
    v268 = v587;
    v269 = v624;
    if (swift_dynamicCast())
    {
      v270 = v625;
      (*(v625 + 56))(v268, 0, 1, v269);
      v603 = *(v270 + 32);
      v271 = v589;
      v603(v589, v268, v269);
      v272 = *(v270 + 16);
      v273 = v615;
      v272(v615, v271, v269);
      swift_beginAccess();
      sub_10049CA68(v267, v266, type metadata accessor for Actions.PlaybackContext);
      sub_1000089F8(v636, v634, &unk_1011838D0);
      v274 = v269;
      v272(v622, v273, v269);
      v275 = v595;
      v272(v595, v273, v269);
      v276 = (*(v625 + 80) + 16) & ~*(v625 + 80);
      v277 = (v276 + v596 + *(v567 + 80)) & ~*(v567 + 80);
      v278 = swift_allocObject();
      v279 = v275;
      v280 = v603;
      v603((v278 + v276), v279, v274);
      sub_10049BE38(v628, v278 + v277, type metadata accessor for Actions.PlaybackContext);
      v281 = v597;
      v280(v597, v615, v274);
      v282 = swift_allocObject();
      v283 = v274;
      v280((v282 + v276), v281, v274);
      v284 = v632;
      Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)(v622, sub_1001317A4, v278, sub_100131870, v282, v634, v283, &protocol witness table for Song, v680);
      static Actions.Preview.action(context:)(v680, v681);

      v701 = v681[3];
      v702 = v681[4];
      v703 = v681[5];
      v704 = v681[6];
      v698 = v681[0];
      v699 = v681[1];
      v700 = v681[2];
      v285 = static ActionBuilder.buildExpression<A, B>(_:)(&v698, &type metadata for Actions.Preview.Context, &type metadata for () + 8, &protocol witness table for Actions.Preview.Context);
      v710 = v701;
      v711 = v702;
      v712 = v703;
      v713 = v704;
      v707 = v698;
      v708 = v699;
      v709 = v700;
      sub_1000095E8(&v707, &qword_101191ED0);
      sub_10010FC20(&unk_101183940);
      v286 = swift_allocObject();
      *(v286 + 16) = xmmword_100EBC6B0;
      *(v286 + 32) = v285;
      v287 = v286 + 32;
      v288 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v287, &unk_10118AB80);
      swift_deallocClassInstance();
      v289 = static ActionBuilder.buildIf(_:)(v288);
      v264 = v284;

      (*(v625 + 8))(v589, v283);
    }

    else
    {
      (*(v625 + 56))(v268, 1, 1, v269);
      sub_1000095E8(v268, &unk_101183960);
      v289 = static ActionBuilder.buildIf(_:)(0);
    }

    sub_10010FC20(&unk_101183940);
    v290 = swift_allocObject();
    *(v290 + 16) = xmmword_100EBDC20;
    *(v290 + 32) = v605;
    *(v290 + 40) = v289;
    v291 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v605 = static ActionBuilder.buildIf(_:)(v291);

    sub_10000959C(&v685);
    v237 = v635;
  }

  else
  {
    *&v700 = 0;
    v699 = 0u;
    v698 = 0u;
    sub_1000095E8(&v698, &qword_101182C38);
    v605 = static ActionBuilder.buildIf(_:)(0);
  }

  sub_100008FE4(v237, &v645);
  sub_10010FC20(&unk_1011814E0);
  v292 = swift_dynamicCast();
  v293 = v630;
  if (v292)
  {
    sub_100059A8C(&v637, &v685);
    sub_100008FE4(&v685, v684);
    swift_beginAccess();
    v294 = (v293 + v588[6]);
    v295 = *v294;
    v296 = v294[1];
    v297 = v264;
    v298 = v294[2];
    v299 = v294[3];
    sub_10012B7A8(v297, &v707);
    v300 = v634;
    sub_1000089F8(v636, v634, &unk_1011838D0);
    sub_100344C3C(v295, v296, v298, v299);
    v301 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
    sub_100008FE4(v684, &v653);
    sub_100008FE4(v684, &v716);
    sub_10012B7A8(&v707, &v698);
    v302 = swift_allocObject();
    sub_100059A8C(&v716, v302 + 16);
    *(v302 + 56) = v621;
    *(v302 + 64) = v295;
    *(v302 + 72) = v296;
    *(v302 + 80) = v298;
    *(v302 + 88) = v299;
    sub_10012B828(&v698, v302 + 96);
    v303 = v604;
    sub_1000089F8(v300, v604, &unk_1011838D0);
    type metadata accessor for MusicLibrary();
    sub_100344C3C(v295, v296, v298, v299);

    v304 = static MusicLibrary.shared.getter();
    Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(&v653, v304, v301, &unk_100ECA3B0, v302, v303, v682);
    sub_100344C88(v295, v296, v298, v299);
    sub_1000095E8(v300, &unk_1011838D0);
    sub_10012BA6C(&v707);
    sub_10000959C(v684);
    static Actions.Share.action(context:)(v682, v684);

    v727 = v683;
    sub_100015BB0(&v727);
    v702 = v684[4];
    v703 = v684[5];
    v704 = v684[6];
    v705 = v684[7];
    v698 = v684[0];
    v699 = v684[1];
    v700 = v684[2];
    v701 = v684[3];
    v305 = static ActionBuilder.buildExpression<A, B>(_:)(&v698, &type metadata for Actions.Share.Context, &type metadata for () + 8, &protocol witness table for Actions.Share.Context);
    v711 = v702;
    v712 = v703;
    v713 = v704;
    v714 = v705;
    v707 = v698;
    v708 = v699;
    v709 = v700;
    v710 = v701;
    sub_1000095E8(&v707, &qword_10118E0F0);
    sub_10010FC20(&unk_101183940);
    v306 = swift_allocObject();
    *(v306 + 16) = xmmword_100EBC6B0;
    *(v306 + 32) = v305;
    v307 = v306 + 32;
    v308 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    v309 = v307;
    v237 = v635;
    sub_1000095E8(v309, &unk_10118AB80);
    v264 = v632;
    swift_deallocClassInstance();
    v604 = static ActionBuilder.buildIf(_:)(v308);

    sub_10000959C(&v685);
  }

  else
  {
    *&v639 = 0;
    v638 = 0u;
    v637 = 0u;
    sub_1000095E8(&v637, &qword_10118E0A8);
    v604 = static ActionBuilder.buildIf(_:)(0);
  }

  v310 = v606;
  sub_100008FE4(v237, &v653);
  v311 = v624;
  if (swift_dynamicCast())
  {
    v312 = v625;
    (*(v625 + 56))(v310, 0, 1, v311);
    v313 = (v312 + 32);
    v606 = *(v312 + 32);
    v314 = v616;
    (v606)(v616, v310, v311);
    v315 = v311;
    v316 = *(v312 + 16);
    v317 = v615;
    v316(v615, v314, v311);
    sub_10012B7A8(v264, &v707);
    sub_1000089F8(v636, v634, &unk_1011838D0);
    v318 = static ApplicationCapabilities.shared.getter(&v685);
    (v316)(v622, v317, v311, v318);
    v319 = v595;
    v599 = v316;
    v316(v595, v317, v311);
    v602 = (v312 + 16);
    v320 = *(v312 + 80);
    v321 = (v320 + 16) & ~v320;
    v589 = (v596 + 7);
    v322 = (v596 + 7 + v321) & 0xFFFFFFFFFFFFFFF8;
    v323 = swift_allocObject();
    v603 = v323;
    v324 = v319;
    v325 = v606;
    (v606)(v323 + v321, v324, v315);
    v326 = v323 + v322;
    v327 = v690;
    *(v326 + 4) = v689;
    *(v326 + 5) = v327;
    v328 = v692;
    *(v326 + 6) = v691;
    *(v326 + 7) = v328;
    v329 = v686;
    *v326 = v685;
    *(v326 + 1) = v329;
    v330 = v688;
    *(v326 + 2) = v687;
    *(v326 + 3) = v330;
    v331 = v597;
    v325(v597, v317, v315);
    v596 = v320;
    v332 = swift_allocObject();
    v594 = v321;
    v597 = v313;
    (v606)(v332 + v321, v331, v315);
    v595 = v322;
    *(v332 + v322) = 0;
    sub_10012B828(&v707, v332 + ((v322 + 15) & 0xFFFFFFFFFFFFFFF8));
    Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)(v622, sub_1004988EC, v603, &unk_100ECEF68, v332, v634, v315, &protocol witness table for Song, v693);
    static Actions.ViewFullLyrics.action(context:)(v693, v694);

    v701 = v694[3];
    v702 = v694[4];
    v703 = v694[5];
    v704 = v694[6];
    v698 = v694[0];
    v699 = v694[1];
    v700 = v694[2];
    v333 = static ActionBuilder.buildExpression<A, B>(_:)(&v698, &type metadata for Actions.ViewFullLyrics.Context, &type metadata for () + 8, &protocol witness table for Actions.ViewFullLyrics.Context);
    v710 = v701;
    v711 = v702;
    v712 = v703;
    v713 = v704;
    v707 = v698;
    v708 = v699;
    v709 = v700;
    sub_1000095E8(&v707, &qword_101191EC0);
    sub_1001EBB88();
    if ((v334 & 1) != 0 || (v335 = [objc_opt_self() currentTraitCollection], v336 = objc_msgSend(v335, "userInterfaceIdiom"), v335, v336 == 6))
    {
      v337 = static ActionBuilder.buildIf(_:)(0);
      v338 = v624;
    }

    else
    {
      v340 = v554;
      v599(v554, v616, v624);
      sub_10012B7A8(v632, &v637);
      sub_1000089F8(v636, v569, &unk_1011838D0);
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v341 = ~v596;
      v342 = (*(*qword_101218AC8 + 432))();
      v622 = v333;
      if (v342)
      {
        v343 = v342;
        v588 = [v342 tracklist];
      }

      else
      {
        v588 = 0;
      }

      v344 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
      v603 = v344;
      v345 = v615;
      v346 = v624;
      v347 = v599;
      v599(v615, v340, v624);
      v348 = (v596 + 24) & v341;
      v349 = v340;
      v350 = &v589[v348] & 0xFFFFFFFFFFFFFFF8;
      v351 = swift_allocObject();
      *(v351 + 16) = v344;
      v352 = v606;
      (v606)(v351 + v348, v345, v346);
      *(v351 + v350) = v588;
      *(&v699 + 1) = v346;
      *&v700 = &protocol witness table for Song;
      v353 = sub_10001C8B8(&v698);
      v347(v353, v349, v346);
      v338 = v346;
      v352(v345, v349, v346);
      v354 = v595;
      v355 = swift_allocObject();
      v352((v355 + v594), v345, v338);
      sub_10012B828(&v637, &v354[v355]);
      Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)(&v698, sub_10049B754, v351, &unk_100ECEF80, v355, v569, v695);
      static Actions.ShareLyrics.action(context:)(v695, v696);

      v649 = v696[4];
      v650 = v696[5];
      v651 = v696[6];
      v645 = v696[0];
      v646 = v696[1];
      v647 = v696[2];
      v648 = v696[3];
      v356 = static ActionBuilder.buildExpression<A, B>(_:)(&v645, &type metadata for Actions.ShareLyrics.Context, &type metadata for () + 8, &protocol witness table for Actions.ShareLyrics.Context);
      v701 = v648;
      v702 = v649;
      v703 = v650;
      v704 = v651;
      v698 = v645;
      v699 = v646;
      v700 = v647;
      sub_1000095E8(&v698, &qword_101191EC8);
      sub_10010FC20(&unk_101183940);
      v357 = swift_allocObject();
      *(v357 + 16) = xmmword_100EBC6B0;
      *(v357 + 32) = v356;
      v358 = v357 + 32;
      v359 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v358, &unk_10118AB80);
      swift_deallocClassInstance();
      v337 = static ActionBuilder.buildIf(_:)(v359);

      v333 = v622;
    }

    sub_10010FC20(&unk_101183940);
    v360 = swift_allocObject();
    *(v360 + 16) = xmmword_100EBDC20;
    *(v360 + 32) = v333;
    *(v360 + 40) = v337;
    v361 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v624 = static ActionBuilder.buildIf(_:)(v361);

    (*(v625 + 8))(v616, v338);
    v339 = v636;
    v264 = v632;
    v237 = v635;
  }

  else
  {
    (*(v625 + 56))(v310, 1, 1, v311);
    sub_1000095E8(v310, &unk_101183960);
    v624 = static ActionBuilder.buildIf(_:)(0);
    v339 = v636;
  }

  swift_beginAccess();
  v362 = swift_unknownObjectWeakLoadStrong();
  if (!v362 || (v363 = v362, v364 = sub_10003169C(), v363, !v364))
  {
    v625 = static ActionBuilder.buildIf(_:)(0);
    v379 = v339;
    v380 = v264;
    goto LABEL_69;
  }

  v622 = v364;
  if (!v621)
  {
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v467 = (*(*qword_101218AC8 + 432))();
    if (v467)
    {
      v468 = v467;
      v469 = [v467 tracklist];

      v470 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
      if (v470)
      {
        if ([v470 itemType] == 3 && (v471 = objc_msgSend(v470, "playlist")) != 0)
        {
          v472 = v471;
          v473 = v548;
          sub_10035A2B0(v472, v548);
          v474 = v551;
          if ((*(v551 + 48))(v473, 1, v553) != 1)
          {
            v606 = v472;
            v492 = *(v474 + 32);
            v493 = v550;
            v494 = v553;
            v625 = v474 + 32;
            v616 = v492;
            (v492)(v550, v473, v553);
            sub_100008FE4(v237, &v707);
            v495 = *(v474 + 16);
            v496 = v552;
            v495(v552, v493, v494);
            sub_1000089F8(v339, v547, &unk_1011838D0);
            v497 = v540;
            v603 = v495;
            v602 = (v474 + 16);
            v495(v540, v496, v494);
            v498 = v474;
            if ((*(v474 + 88))(v497, v494) == enum case for Playlist.Folder.Item.playlist(_:))
            {
              (*(v474 + 96))(v497, v494);
              v499 = v629;
              v500 = v494;
              v501 = v614;
              v502 = v626;
              (*(v629 + 32))(v614, v497, v626);

              v503 = v500;
              v615 = MusicLibrary.state<A>(for:)();
              (*(v499 + 8))(v501, v502);
            }

            else
            {
              v504 = *(v474 + 8);

              v505 = v497;
              v503 = v494;
              v504(v505, v494);
              v498 = v551;
              v615 = 0;
            }

            sub_100008FE4(&v707, &v698);
            v506 = v552;
            v507 = v603;
            v603(v549, v552, v503);
            v508 = v542;
            v507(v542, v506, v503);
            v509 = *(v498 + 80);
            v510 = (v509 + 24) & ~v509;
            v599 = (v541 + 7);
            v511 = (v541 + 7 + v510) & 0xFFFFFFFFFFFFFFF8;
            v512 = swift_allocObject();
            *(v512 + 16) = v627;
            v513 = v512 + v510;
            v614 = v512;
            v514 = v553;
            (v616)(v513, v508, v553);
            *(v512 + v511) = v615;
            v515 = v543;
            v507(v543, v552, v514);
            sub_100008FE4(&v707, &v645);
            v516 = (v509 + 17) & ~v509;
            v517 = (v599 + v516) & 0xFFFFFFFFFFFFFFF8;
            v518 = (v517 + 15) & 0xFFFFFFFFFFFFFFF8;
            v519 = swift_allocObject();
            *(v519 + 16) = 0;
            v520 = v515;
            v521 = v553;
            (v616)(v519 + v516, v520, v553);
            *(v519 + v517) = v615;
            sub_100059A8C(&v645, v519 + v518);
            *(v519 + ((v518 + 47) & 0xFFFFFFFFFFFFFFF8)) = v622;
            v522 = v547;
            v523 = v634;
            sub_1000089F8(v547, v634, &unk_1011838D0);

            v524 = v545;
            Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)(&v698, v549, sub_100498794, v614, &unk_100ECEF58, v519, v523, v545);
            sub_1000095E8(v522, &unk_1011838D0);
            v525 = *(v551 + 8);
            v525(v552, v521);
            sub_10000959C(&v707);
            v526 = v544;
            static Actions.GoToPlaylistFolderItem.action(context:)(v524, v544);
            sub_10049CAD0(v524, type metadata accessor for Actions.GoToPlaylistFolderItem.Context);
            v527 = static ActionBuilder.buildExpression<A, B>(_:)(v526, v546, &type metadata for () + 8, &protocol witness table for Actions.GoToPlaylistFolderItem.Context);
            sub_1000095E8(v526, &qword_101191E70);
            sub_10010FC20(&unk_101183940);
            v528 = swift_allocObject();
            *(v528 + 16) = xmmword_100EBC6B0;
            *(v528 + 32) = v527;
            v529 = v528 + 32;
            v530 = static ActionBuilder.buildBlock(_:)();
            swift_setDeallocating();
            sub_1000095E8(v529, &unk_10118AB80);
            swift_deallocClassInstance();
            v625 = static ActionBuilder.buildIf(_:)(v530);

            v525(v550, v553);
            v339 = v636;
            goto LABEL_61;
          }

          sub_1000095E8(v473, &qword_1011831B0);
        }

        else
        {
        }
      }
    }
  }

  v625 = static ActionBuilder.buildIf(_:)(0);
LABEL_61:
  sub_100008FE4(v237, &v653);
  sub_10010FC20(&qword_101191EB0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(&v716, &v637);
    v365 = *(&v638 + 1);
    v366 = v639;
    v367 = sub_10000954C(&v637, *(&v638 + 1));
    __chkstk_darwin(v367);
    v369 = &v531 - ((v368 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v370 + 16))(v369);
    v371 = v634;
    sub_1000089F8(v339, v634, &unk_1011838D0);
    v372 = v627;

    sub_100132864(v369, v372, v621, v622, v371, v365, v366, v697);
    static Actions.GoToAlbum.action(context:)(v697, &v698);
    v726 = v697[0];
    sub_1000095E8(&v726, &qword_1011815E0);

    v649 = v702;
    v650 = v703;
    v651 = v704;
    v652 = v705;
    v645 = v698;
    v646 = v699;
    v647 = v700;
    v648 = v701;
    v373 = static ActionBuilder.buildExpression<A, B>(_:)(&v645, &type metadata for Actions.GoToAlbum.Context, &type metadata for () + 8, &protocol witness table for Actions.GoToAlbum.Context);
    v711 = v649;
    v712 = v650;
    v713 = v651;
    v714 = v652;
    v707 = v645;
    v708 = v646;
    v709 = v647;
    v710 = v648;
    sub_1000095E8(&v707, &qword_101185D70);
    sub_10010FC20(&unk_101183940);
    v374 = swift_allocObject();
    *(v374 + 16) = xmmword_100EBC6B0;
    *(v374 + 32) = v373;
    v375 = v374 + 32;
    v376 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v375, &unk_10118AB80);
    swift_deallocClassInstance();
    v621 = static ActionBuilder.buildIf(_:)(v376);

    sub_10000959C(&v637);
  }

  else
  {
    *&v718 = 0;
    v717 = 0u;
    v716 = 0u;
    sub_1000095E8(&v716, &qword_101191EB8);
    v621 = static ActionBuilder.buildIf(_:)(0);
  }

  v378 = v576;
  v377 = v577;
  v381 = v574;
  sub_100008FE4(v237, &v653);
  sub_1000089F8(v339, v600, &unk_1011838D0);

  v382 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  sub_100008FE4(&v653, &v707);
  v616 = v382;

  if (swift_dynamicCast())
  {
    v383 = v575;
    (*(v575 + 8))(v381, v378);
    sub_100008FE4(&v653, &v707);
    v384 = v559;
    v385 = swift_dynamicCast();
    (*(v383 + 56))(v384, v385 ^ 1u, 1, v378);
    sub_10003D17C(v384, v377, &unk_101184930);
  }

  else
  {
    (*(v575 + 56))(v377, 1, 1, v378);
  }

  v386 = *(&v654 + 1);
  v614 = v655;
  v387 = sub_10000954C(&v653, *(&v654 + 1));
  v615 = &v531;
  __chkstk_darwin(v387);
  v606 = &v531 - ((v388 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v389 + 16))();
  v390 = v580;
  sub_1000089F8(v377, v580, &unk_101184930);
  v391 = v377;
  v392 = (*(v578 + 80) + 16) & ~*(v578 + 80);
  v393 = (v579 + v392 + 7) & 0xFFFFFFFFFFFFFFF8;
  v394 = swift_allocObject();
  sub_10003D17C(v390, v394 + v392, &unk_101184930);
  *(v394 + v393) = v616;
  v395 = v581;
  sub_10003D17C(v391, v581, &unk_101184930);
  v396 = swift_allocObject();
  sub_10003D17C(v395, v396 + v392, &unk_101184930);
  *(v396 + v393) = v622;
  Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v606, 0, 0, sub_1004984C0, v394, &unk_100ECEF48, v396, v600, v706, v386, v614);
  sub_10000959C(&v653);
  static Actions.GoToArtist.action(context:)(v706, &v707);
  v725 = v706[0];
  sub_1000095E8(&v725, &qword_1011815E0);

  v642 = v712;
  v643 = v713;
  v644 = v714;
  v637 = v707;
  v638 = v708;
  v639 = v709;
  v640 = v710;
  v641 = v711;
  v397 = static ActionBuilder.buildExpression<A, B>(_:)(&v637, &type metadata for Actions.GoToArtist.Context, &type metadata for () + 8, &protocol witness table for Actions.GoToArtist.Context);
  v649 = v641;
  v650 = v642;
  v651 = v643;
  v652 = v644;
  v645 = v637;
  v646 = v638;
  v647 = v639;
  v648 = v640;
  sub_1000095E8(&v645, &unk_101183950);
  sub_10010FC20(&unk_101183940);
  v398 = swift_allocObject();
  *(v398 + 16) = xmmword_100EBE260;
  *(v398 + 32) = v625;
  *(v398 + 40) = v621;
  *(v398 + 48) = v397;
  v399 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_10010FC20(&unk_10118AB80);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v625 = static ActionBuilder.buildIf(_:)(v399);

  v379 = v636;
  v380 = v632;
  v237 = v635;
LABEL_69:
  v400 = v237[3];
  v401 = v635[4];
  v402 = sub_10000954C(v635, v400);
  __chkstk_darwin(v402);
  v404 = &v531 - ((v403 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v405 + 16))(v404);
  v406 = v630;
  swift_beginAccess();
  v407 = v628;
  sub_10049CA68(v406, v628, type metadata accessor for Actions.PlaybackContext);
  sub_10012B7A8(v380, &v645);
  v408 = v634;
  sub_1000089F8(v379, v634, &unk_1011838D0);
  v409 = v401;
  v410 = v635;
  Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v404, v407, &v645, v408, v400, v409, v715);
  static Actions.CreateStation.action(context:)(v715, &v716);

  v649 = v720;
  v650 = v721;
  v651 = v722;
  v645 = v716;
  v646 = v717;
  v647 = v718;
  v648 = v719;
  v630 = static ActionBuilder.buildExpression<A, B>(_:)(&v645, &type metadata for Actions.CreateStation.Context, &type metadata for () + 8, &protocol witness table for Actions.CreateStation.Context);
  v669[4] = v649;
  v669[5] = v650;
  v669[6] = v651;
  v669[0] = v645;
  v669[1] = v646;
  v669[2] = v647;
  v669[3] = v648;
  sub_1000095E8(v669, &qword_101191E90);
  sub_100008FE4(v410, &v637);
  sub_10010FC20(&unk_101184960);
  if (swift_dynamicCast())
  {
    sub_100059A8C(&v653, &v645);
    *(&v638 + 1) = &type metadata for PresentationSource;
    *&v639 = &protocol witness table for PresentationSource;
    *&v637 = swift_allocObject();
    sub_10012B7A8(v380, v637 + 16);
    v411 = v631;
    swift_beginAccess();
    v412 = swift_unknownObjectWeakLoadStrong();
    v413 = v380;
    if (v412 && (v414 = v412, v415 = UIViewController.noticePresenter.getter(), v414, v413 = v632, v415))
    {
      v416 = type metadata accessor for NoticePresenter();
      *&v655 = &protocol witness table for NoticePresenter;
      *(&v654 + 1) = v416;
      *&v653 = v415;
    }

    else
    {
      *&v655 = 0;
      v653 = 0u;
      v654 = 0u;
    }

    v418 = v617;
    v420 = v636;
    sub_100008FE4(&v645, &v661);
    v421 = swift_allocObject();
    *(v421 + 16) = v411;
    sub_100059A8C(&v661, v421 + 24);

    v422 = static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(&v645, v627, &v637, &v653, sub_100492D58, 0, v413, v420, sub_1004984B4, v421);

    sub_1000095E8(&v653, &qword_101191EA8);
    sub_10000959C(&v637);
    sub_10010FC20(&unk_101183940);
    v423 = swift_allocObject();
    *(v423 + 16) = xmmword_100EBC6B0;
    *(v423 + 32) = v422;
    v424 = v423 + 32;
    v425 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v424, &unk_10118AB80);
    swift_deallocClassInstance();
    v631 = static ActionBuilder.buildIf(_:)(v425);

    sub_10000959C(&v645);
    v417 = v623;
    v419 = v609;
  }

  else
  {
    *&v655 = 0;
    v653 = 0u;
    v654 = 0u;
    sub_1000095E8(&v653, &qword_101191E98);
    v631 = static ActionBuilder.buildIf(_:)(0);
    v417 = v623;
    v418 = v617;
    v419 = v609;
    v420 = v636;
  }

  v627 = a12;
  v628 = a11;
  sub_100008FE4(v410, &v645);
  v426 = v626;
  v427 = swift_dynamicCast();
  v428 = v629;
  v429 = *(v629 + 56);
  v430 = v620;
  if ((v427 & 1) == 0)
  {
    v429(v419, 1, 1, v426);
    sub_1000095E8(v419, &unk_1011814D0);
    v443 = v612;
LABEL_85:
    v446 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_86;
  }

  v429(v419, 0, 1, v426);
  (*(v428 + 32))(v618, v419, v426);
  Playlist.kind.getter();
  v431 = v598;
  v432 = v591;
  (*(v598 + 104))(v430, enum case for Playlist.Kind.userShared(_:), v591);
  (*(v431 + 56))(v430, 0, 1, v432);
  v433 = *(v590 + 48);
  v434 = v601;
  sub_1000089F8(v418, v601, &qword_101187EF8);
  v435 = v432;
  v436 = v434;
  sub_1000089F8(v430, v434 + v433, &qword_101187EF8);
  v437 = *(v431 + 48);
  if (v437(v434, 1, v435) != 1)
  {
    v444 = v570;
    sub_1000089F8(v434, v570, &qword_101187EF8);
    if (v437(v434 + v433, 1, v435) != 1)
    {
      v475 = v598;
      v476 = v434 + v433;
      v477 = v555;
      (*(v598 + 32))(v555, v476, v435);
      sub_10049CB30(&qword_101187F00, &type metadata accessor for Playlist.Kind);
      v478 = v435;
      v479 = dispatch thunk of static Equatable.== infix(_:_:)();
      v480 = *(v475 + 8);
      v480(v477, v478);
      sub_1000095E8(v620, &qword_101187EF8);
      sub_1000095E8(v617, &qword_101187EF8);
      v480(v444, v478);
      sub_1000095E8(v436, &qword_101187EF8);
      v420 = v636;
      v441 = v632;
      v442 = v629;
      if (v479)
      {
        goto LABEL_99;
      }

LABEL_84:
      (*(v442 + 8))(v618, v626);
      v417 = v623;
      v443 = v612;
      goto LABEL_85;
    }

    v445 = v435;
    sub_1000095E8(v620, &qword_101187EF8);
    v439 = v601;
    sub_1000095E8(v418, &qword_101187EF8);
    (*(v598 + 8))(v444, v445);
    v420 = v636;
LABEL_83:
    sub_1000095E8(v439, &qword_101187EF0);
    v442 = v629;
    goto LABEL_84;
  }

  v438 = v435;
  sub_1000095E8(v430, &qword_101187EF8);
  v439 = v601;
  sub_1000095E8(v418, &qword_101187EF8);
  v440 = v437(v439 + v433, 1, v438);
  v420 = v636;
  if (v440 != 1)
  {
    goto LABEL_83;
  }

  sub_1000095E8(v439, &qword_101187EF8);
  v441 = v632;
  v442 = v629;
LABEL_99:
  v481 = Playlist.isOwner.getter();
  if (v481 != 2 && (v481 & 1) != 0)
  {
    goto LABEL_84;
  }

  v482 = v618;
  v483 = Playlist.id.getter();
  v485 = v484;
  sub_10012B7A8(v441, &v645);
  v486 = v634;
  sub_1000089F8(v420, v634, &unk_1011838D0);
  v487 = swift_allocObject();
  *(v487 + 16) = v483;
  *(v487 + 24) = v485;
  *(v487 + 32) = 0;
  *(v487 + 40) = 0;
  sub_10012B828(&v645, v487 + 48);
  Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v483, v485, 0x7473696C79616C70, 0xE800000000000000, 41, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v723, v487, v486);
  static Actions.ReportConcern.action(context:)(v723, &v645);

  v657 = v649;
  v658 = v650;
  v659 = v651;
  v660 = v652;
  v653 = v645;
  v654 = v646;
  v655 = v647;
  v656 = v648;
  v488 = static ActionBuilder.buildExpression<A, B>(_:)(&v653, &type metadata for Actions.ReportConcern.Context, &type metadata for () + 8, &protocol witness table for Actions.ReportConcern.Context);
  v642 = v658;
  v643 = v659;
  v637 = v653;
  v638 = v654;
  v639 = v655;
  *&v644 = v660;
  v640 = v656;
  v641 = v657;
  sub_1000095E8(&v637, &qword_1011839B0);
  sub_10010FC20(&unk_101183940);
  v489 = swift_allocObject();
  *(v489 + 16) = xmmword_100EBC6B0;
  *(v489 + 32) = v488;
  v490 = v489 + 32;
  v491 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v490, &unk_10118AB80);
  swift_deallocClassInstance();
  v446 = static ActionBuilder.buildIf(_:)(v491);

  (*(v442 + 8))(v482, v626);
  v417 = v623;
  v443 = v612;
LABEL_86:
  sub_100008FE4(v410, &v668);
  if (swift_dynamicCast())
  {
    v447 = v613;
    (*(v613 + 56))(v443, 0, 1, v417);
    v448 = v593;
    (*(v447 + 32))(v593, v443, v417);
    v449 = v592;
    (*(v447 + 16))(v592, v448, v417);
    sub_10012B7A8(v632, &v637);
    v450 = v634;
    sub_1000089F8(v420, v634, &unk_1011838D0);
    Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(v449, &v637, v450, &v724);
    static Actions.OpenInClassical.action(context:)(&v724, &v637);

    v665 = v641;
    v666 = v642;
    v667 = v643;
    v661 = v637;
    v662 = v638;
    v663 = v639;
    v664 = v640;
    v451 = v417;
    v452 = static ActionBuilder.buildExpression<A, B>(_:)(&v661, &type metadata for Actions.OpenInClassical.Context, &type metadata for () + 8, &protocol witness table for Actions.OpenInClassical.Context);
    v657 = v665;
    v658 = v666;
    v659 = v667;
    v653 = v661;
    v654 = v662;
    v655 = v663;
    v656 = v664;
    sub_1000095E8(&v653, &qword_101191EA0);
    sub_10010FC20(&unk_101183940);
    v453 = swift_allocObject();
    *(v453 + 16) = xmmword_100EBC6B0;
    *(v453 + 32) = v452;
    v454 = v453 + 32;
    v455 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v454, &unk_10118AB80);
    swift_deallocClassInstance();
    v456 = static ActionBuilder.buildIf(_:)(v455);

    v457 = (*(v447 + 8))(v448, v451);
  }

  else
  {
    (*(v613 + 56))(v443, 1, 1, v417);
    sub_1000095E8(v443, &unk_101184730);
    v457 = static ActionBuilder.buildIf(_:)(0);
    v456 = v457;
  }

  v458 = v628(v457);
  sub_10010FC20(&unk_101183940);
  v459 = swift_allocObject();
  *(v459 + 16) = xmmword_100ECEEA0;
  *(v459 + 32) = v611;
  v460 = v619;
  *(v459 + 40) = v610;
  *(v459 + 48) = v460;
  v461 = v607;
  *(v459 + 56) = v608;
  *(v459 + 64) = v461;
  v462 = v604;
  *(v459 + 72) = v605;
  *(v459 + 80) = v462;
  v463 = v625;
  *(v459 + 88) = v624;
  *(v459 + 96) = v463;
  v464 = v631;
  *(v459 + 104) = v630;
  *(v459 + 112) = v464;
  *(v459 + 120) = v446;
  *(v459 + 128) = v456;
  *(v459 + 136) = v458;
  v465 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_10010FC20(&unk_10118AB80);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v465;
}

double sub_100492B08@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v29 = a6;
  v30 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a7;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(a1);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - v15;
  __chkstk_darwin(v14);
  v31 = &v29 - v17;
  v18 = *(v10 + 16);
  v18();
  (v18)(v16, a1, a5);
  v19 = *(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  *(v20 + 4) = v30;
  v21 = *(v10 + 32);
  v21(&v20[(v19 + 40) & ~v19], v16, a5);
  v21(v13, a1, a5);
  v22 = (v19 + 32) & ~v19;
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 16) = a5;
  *(v23 + 24) = v24;
  v21((v23 + v22), v13, a5);
  v25 = v31;
  *(v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)(v25, sub_10049BBA4, v20, &unk_100ECF010, v23, v33, a5, v24, v35);
  v26 = v35[1];
  v27 = v34;
  *v34 = v35[0];
  v27[1] = v26;
  result = *&v36;
  v27[2] = v36;
  return result;
}

uint64_t sub_100492D58(void *a1)
{
  sub_10000954C(a1, a1[3]);
  *&result = COERCE_DOUBLE(dispatch thunk of MusicUserRatable.userRating.getter());
  v3 = 0.0;
  if ((v2 & 1) == 0)
  {
    v3 = *&result * 5.0;
  }

  v4 = COERCE_UNSIGNED_INT64(fabs(*&result * 5.0)) < 0x7FF0000000000000;
  if ((v2 & 1) == 0 && !v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 9.22337204e18)
  {
    v6 = v3;
    v7 = type metadata accessor for RatingControlViewController();
    v8 = objc_allocWithZone(v7);
    v9 = objc_allocWithZone(type metadata accessor for RatingControlViewController.RatingControl());
    *&v8[OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl] = sub_1005EC334(5, v6);
    v10.receiver = v8;
    v10.super_class = v7;
    *&result = COERCE_DOUBLE(objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0));
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_100492E6C(char a1, uint64_t a2, void *a3)
{
  if (ActionType.rawValue.getter(a1) == 0x657469726F766166 && v5 == 0xE800000000000000)
  {
LABEL_3:

    goto LABEL_5;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    if (ActionType.rawValue.getter(a1) != 0x6F7661466F646E75 || v12 != 0xEC00000065746972)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        return;
      }

      goto LABEL_5;
    }

    goto LABEL_3;
  }

LABEL_5:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a3[3];
    v10 = a3[4];
    v11 = sub_10000954C(a3, v9);
    sub_10049B454(v11, v8, v9, v10);
  }
}

uint64_t sub_100492FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = a6;
  v99 = a5;
  v100 = a4;
  v113 = a3;
  v88 = a2;
  v95 = type metadata accessor for MusicPin.Item();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for MusicPin.Action();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for UUID();
  v115 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_1011838D0);
  v110 = *(v11 - 8);
  v114 = *(v110 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = &v79 - v12;
  v14 = type metadata accessor for Actions.PlaybackContext();
  v109 = *(v14 - 8);
  v15 = *(v109 + 8);
  __chkstk_darwin(v14 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicPin();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10049CB30(&qword_10118BB00, &type metadata accessor for MusicPin);
  v98 = a1;
  v90 = dispatch thunk of CustomStringConvertible.description.getter();
  v82 = v21;
  v22 = *(v18 + 16);
  v111 = v18 + 16;
  v112 = v22;
  v97 = v20;
  v22(v20, a1, v17);
  v86 = type metadata accessor for Actions.PlaybackContext;
  sub_10049CA68(a2, v16, type metadata accessor for Actions.PlaybackContext);
  sub_1000089F8(v113, v13, &unk_1011838D0);
  v23 = *(v18 + 80);
  v87 = ((v23 + 16) & ~v23) + v19;
  v24 = (v23 + 16) & ~v23;
  v106 = v24;
  v25 = *(v109 + 80);
  v85 = ((v87 + v25) & ~v25) + v15;
  v26 = (v87 + v25) & ~v25;
  v84 = v26;
  v101 = *(v110 + 80);
  v27 = (v85 + v101) & ~v101;
  v110 = v23 | v101 | 7;
  v28 = swift_allocObject();
  v29 = *(v18 + 32);
  v107 = v18 + 32;
  v108 = v29;
  v29(v28 + v24, v20, v17);
  v83 = type metadata accessor for Actions.PlaybackContext;
  sub_10049BE38(v16, v28 + v26, type metadata accessor for Actions.PlaybackContext);
  sub_10003D17C(v13, v28 + v27, &unk_1011838D0);
  v30 = v103;
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  v34 = *(v115 + 8);
  v115 += 8;
  v109 = v34;
  v34(v30, v104);
  v105 = type metadata accessor for ActionMenu();
  swift_allocObject();
  v117._countAndFlagsBits = v90;
  v117._object = v82;
  v35 = ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v31, v33, 2, 0, 0, v117, 0, sub_10049C5B0, v28);
  v90 = static ActionMenu.ElementBuilder.buildExpression(_:)(v35);

  v36 = v98;
  v82 = dispatch thunk of CustomStringConvertible.description.getter();
  v81 = v37;
  v38 = v97;
  v112(v97, v36, v17);
  sub_10049CA68(v88, v16, v86);
  sub_10012B7A8(v100, v116);
  sub_1000089F8(v113, v13, &unk_1011838D0);
  v39 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v101 + 96);
  v40 = (v101 + 96 + v39) & ~v101;
  v41 = swift_allocObject();
  v108(v41 + v106, v38, v17);
  sub_10049BE38(v16, v41 + v84, v83);
  sub_10012B828(v116, v41 + v39);
  v42 = v13;
  sub_10003D17C(v13, v41 + v40, &unk_1011838D0);
  v43 = v103;
  UUID.init()();
  v44 = UUID.uuidString.getter();
  v46 = v45;
  v47 = v104;
  v109(v43, v104);
  swift_allocObject();
  v118._countAndFlagsBits = v82;
  v118._object = v81;
  v48 = ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v44, v46, 5, 0, 0, v118, 0, sub_10049C6E4, v41);
  v88 = static ActionMenu.ElementBuilder.buildExpression(_:)(v48);

  v49 = v89;
  v50 = v98;
  MusicPin.action.getter();
  v51 = v91;
  v52 = v50;
  MusicPin.item.getter();
  v85 = MusicPin.Action.localizedTitle(for:)(v51);
  v84 = v53;
  (v94)[1](v51, v95);
  (*(v92 + 8))(v49, v93);
  v95 = dispatch thunk of CustomStringConvertible.description.getter();
  v94 = v54;
  v112(v38, v50, v17);
  v80 = v42;
  sub_1000089F8(v113, v42, &unk_1011838D0);
  v55 = (v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v101 + v55 + 8) & ~v101;
  v57 = swift_allocObject();
  v108(v57 + v106, v38, v17);
  *(v57 + v55) = v99;
  sub_10003D17C(v42, v57 + v56, &unk_1011838D0);

  v58 = v103;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v61 = v60;
  v109(v58, v47);
  swift_allocObject();
  v119._countAndFlagsBits = v95;
  v119._object = v94;
  v62 = ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v59, v61, 9, v85, v84, v119, 0, sub_10049C828, v57);
  v95 = static ActionMenu.ElementBuilder.buildExpression(_:)(v62);

  v102 = dispatch thunk of CustomStringConvertible.description.getter();
  v94 = v63;
  v64 = v97;
  v112(v97, v52, v17);
  sub_10012B7A8(v100, v116);
  v65 = v80;
  sub_1000089F8(v113, v80, &unk_1011838D0);
  v66 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v86 + v66) & ~v101;
  v68 = (v114 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v108(v69 + v106, v64, v17);
  *(v69 + v55) = v99;
  sub_10012B828(v116, v69 + v66);
  sub_10003D17C(v65, v69 + v67, &unk_1011838D0);
  *(v69 + v68) = v96;

  UUID.init()();
  v70 = UUID.uuidString.getter();
  v72 = v71;
  v109(v58, v104);
  swift_allocObject();
  v120._countAndFlagsBits = v102;
  v120._object = v94;
  v73 = ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v70, v72, 10, 0, 0, v120, 0, sub_10049C910, v69);
  v74 = static ActionMenu.ElementBuilder.buildExpression(_:)(v73);

  sub_10010FC20(&qword_101191FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = v90;
  v76 = v95;
  *(inited + 40) = v88;
  *(inited + 48) = v76;
  *(inited + 56) = v74;
  v77 = static ActionMenu.ElementBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_10010FC20(&qword_101191FF0);
  swift_arrayDestroy();
  return v77;
}

uint64_t sub_100493D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v9 - 8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MusicPin();
  v13 = __chkstk_darwin(v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v16 + 16);
  v42 = a1;
  v39 = v17;
  v40 = v16 + 16;
  (v17)(v15, a1, v12, v13);
  v43 = a2;
  sub_10049CA68(a2, v11, type metadata accessor for Actions.PlaybackContext);
  v45 = a3;
  sub_1000089F8(a3, v8, &unk_1011838D0);
  v18 = sub_10049CB30(&qword_101192000, &type metadata accessor for MusicPin);
  v44 = v8;
  v38 = v18;
  Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v15, v11, 0, v8, v12, v18, v57);
  static Actions.Playback.action(context:)(v57, v58);

  v65 = v58[4];
  v66 = v58[5];
  v67 = v58[6];
  v68 = v59;
  v61 = v58[0];
  v62 = v58[1];
  v63 = v58[2];
  v64 = v58[3];
  v19 = static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(&v61, &type metadata for Actions.Playback.Context, &type metadata for () + 8, &protocol witness table for Actions.Playback.Context);
  v69[4] = v65;
  v69[5] = v66;
  v69[6] = v67;
  v70 = v68;
  v69[0] = v61;
  v69[1] = v62;
  v69[2] = v63;
  v69[3] = v64;
  sub_1000095E8(v69, &qword_101191EE8);
  v41 = sub_10010FC20(&qword_101191FE8);
  inited = swift_initStackObject();
  v46 = xmmword_100EBC6B0;
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v19;
  v21 = inited + 32;
  v22 = static ActionMenu.ElementBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v21, &qword_101191FF0);
  v23 = sub_10049ABA4(0, 1, 1, _swiftEmptyArrayStorage, &qword_101191FE8, &unk_100ECF1B8, &qword_101191FF0);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_10049ABA4((v24 > 1), v25 + 1, 1, v23, &qword_101191FE8, &unk_100ECF1B8, &qword_101191FF0);
  }

  v23[2] = v25 + 1;
  v23[v25 + 4] = v22;
  v39(v15, v42, v12);
  sub_10049CA68(v43, v11, type metadata accessor for Actions.PlaybackContext);
  v26 = v44;
  sub_1000089F8(v45, v44, &unk_1011838D0);
  Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v15, v11, 1, v26, v12, v38, v60);
  static Actions.Playback.action(context:)(v60, &v61);

  v51 = v65;
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v27 = static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(&v47, &type metadata for Actions.Playback.Context, &type metadata for () + 8, &protocol witness table for Actions.Playback.Context);
  v55[4] = v51;
  v55[5] = v52;
  v55[6] = v53;
  v56 = v54;
  v55[0] = v47;
  v55[1] = v48;
  v55[2] = v49;
  v55[3] = v50;
  sub_1000095E8(v55, &qword_101191EE8);
  v28 = swift_initStackObject();
  *(v28 + 16) = v46;
  *(v28 + 32) = v27;
  v29 = v28 + 32;
  v30 = static ActionMenu.ElementBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v29, &qword_101191FF0);
  v32 = v23[2];
  v31 = v23[3];
  if (v32 >= v31 >> 1)
  {
    v23 = sub_10049ABA4((v31 > 1), v32 + 1, 1, v23, &qword_101191FE8, &unk_100ECF1B8, &qword_101191FF0);
  }

  v23[2] = v32 + 1;
  v23[v32 + 4] = v30;
  v33 = static ActionMenu.ElementBuilder.buildArray(_:)(v23);

  v34 = swift_initStackObject();
  *(v34 + 16) = v46;
  *(v34 + 32) = v33;
  v35 = v34 + 32;
  v36 = static ActionMenu.ElementBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v35, &qword_101191FF0);
  return v36;
}

uint64_t sub_100494310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MusicPin();
  v15[3] = v8;
  v15[4] = sub_10049CB30(&qword_101192000, &type metadata accessor for MusicPin);
  v9 = sub_10001C8B8(v15);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(v15, a2, a3, a4);
  sub_10000959C(v15);
  v10 = static ActionMenu.ElementBuilder.buildExpression(_:)();

  sub_10010FC20(&qword_101191FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v10;
  v12 = inited + 32;
  v13 = static ActionMenu.ElementBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v12, &qword_101191FF0);
  return v13;
}

uint64_t sub_100494468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v3 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v3 - 8);
  v48 = v38 - v4;
  v47 = type metadata accessor for MusicPin.Action();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MusicPin();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  __chkstk_darwin(updated);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101191FF8);
  __chkstk_darwin(v11 - 8);
  v13 = v38 - v12;
  v14 = static MusicPin.Action.allCases.getter();
  v15 = *(v14 + 16);
  v16 = &unk_100EBC000;
  if (v15)
  {
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v38[1] = v14;
    v18 = v14 + v17;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v41 = *(v5 + 72);
    v42 = v20;
    v21 = _swiftEmptyArrayStorage;
    v40 = (v5 + 16);
    v39 = xmmword_100EBC6B0;
    do
    {
      v22 = v44;
      v23 = v19;
      v42(v44, v49, v45);
      v24 = v46;
      (*v40)(v46, v18, v47);
      v25 = v48;
      sub_1000089F8(v51, v48, &unk_1011838D0);
      v26 = v50;

      Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)(v22, v24, v26, v25, 0, 0, v10);
      static Actions.UpdatePinAction.action(context:)(v10, v13);
      sub_10049CAD0(v10, type metadata accessor for Actions.UpdatePinAction.Context);
      v27 = static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(v13, updated, &type metadata for () + 8, &protocol witness table for Actions.UpdatePinAction.Context);
      sub_1000095E8(v13, &qword_101191FF8);
      sub_10010FC20(&qword_101191FE8);
      inited = swift_initStackObject();
      *(inited + 16) = v39;
      *(inited + 32) = v27;
      v29 = inited + 32;
      v30 = static ActionMenu.ElementBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v29, &qword_101191FF0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10049ABA4(0, v21[2] + 1, 1, v21, &qword_101191FE8, &unk_100ECF1B8, &qword_101191FF0);
      }

      v32 = v21[2];
      v31 = v21[3];
      if (v32 >= v31 >> 1)
      {
        v21 = sub_10049ABA4((v31 > 1), v32 + 1, 1, v21, &qword_101191FE8, &unk_100ECF1B8, &qword_101191FF0);
      }

      v21[2] = v32 + 1;
      v21[v32 + 4] = v30;
      v18 += v41;
      --v15;
      v19 = v23;
    }

    while (v15);

    v16 = &unk_100EBC000;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  v33 = static ActionMenu.ElementBuilder.buildArray(_:)(v21);

  sub_10010FC20(&qword_101191FE8);
  v34 = swift_initStackObject();
  *(v34 + 16) = v16[107];
  *(v34 + 32) = v33;
  v35 = v34 + 32;
  v36 = static ActionMenu.ElementBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v35, &qword_101191FF0);
  return v36;
}

uint64_t sub_100494988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MusicPin();
  v17[3] = v10;
  v17[4] = sub_10049CB30(&unk_1011970F0, &type metadata accessor for MusicPin);
  v11 = sub_10001C8B8(v17);
  (*(*(v10 - 8) + 16))(v11, a1, v10);

  static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(v17, a2, a3, a4, sub_10049CA30, a5);

  sub_10000959C(v17);
  v12 = static ActionMenu.ElementBuilder.buildExpression(_:)();

  sub_10010FC20(&qword_101191FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v12;
  v14 = inited + 32;
  v15 = static ActionMenu.ElementBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v14, &qword_101191FF0);
  return v15;
}

void sub_100494B0C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  if (ActionType.rawValue.getter(a1) == 7235952 && v9 == 0xE300000000000000)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    type metadata accessor for MainActor();
    v14 = v12;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    sub_1001F4F78(0, 0, v8, a4, v16);
  }
}

uint64_t sub_100494CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for UnifiedMessages.FeatureEngagementEvent();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100494DAC, v7, v6);
}

uint64_t sub_100494DAC()
{

  v1 = sub_10003169C();
  if (v1 && (v2 = v1[2], , , v2))
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    (*(v4 + 104))(v3, enum case for UnifiedMessages.FeatureEngagementEvent.libraryPinAdded(_:), v5);
    MusicPageProvider.reportFeatureEngagementEvent(_:)();

    (*(v4 + 8))(v3, v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  **(v0 + 16) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100494EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100494F48, v6, v5);
}

uint64_t sub_100494F48()
{

  v1 = sub_10003169C();
  if (v1 && (v2 = v1[2], , , v2))
  {
    MusicPageProvider.reloadArtistFavoritesShelf()();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100494FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v4 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v4 - 8);
  v83 = &v74 - v5;
  v6 = type metadata accessor for GenericMusicItem();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = __chkstk_darwin(v8);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v74 - v11;
  v12 = type metadata accessor for Song();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = __chkstk_darwin(v12);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v74 = &v74 - v15;
  v16 = sub_10010FC20(&qword_10118A530);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v74 - v18;
  v89 = a3;
  v20 = *(a3 - 8);
  v21 = __chkstk_darwin(v17);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v74 - v24;
  v26 = type metadata accessor for Track();
  v27 = *(v26 - 8);
  v86 = v26;
  v87 = v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v74 - v31;
  v33 = [objc_opt_self() currentTraitCollection];
  v34 = [v33 userInterfaceIdiom];

  if (v34 == 6)
  {
    return 0xD000000000000017;
  }

  ApplicationCapabilities.Controller.capabilities.getter(v91);
  sub_100014984(v91);
  if ((BYTE8(v91[0]) & 1) == 0)
  {
    return 0xD00000000000003CLL;
  }

  ApplicationCapabilities.Controller.capabilities.getter(v92);
  sub_100014984(v92);
  if ((BYTE1(v92[0]) & 1) == 0)
  {
    return 0xD000000000000016;
  }

  v90 = 2;
  v36 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v36) & 1) == 0)
  {
    return 0xD00000000000001BLL;
  }

  v37 = *(v20 + 16);
  v37(v25, v88, v89);
  v38 = v86;
  v39 = swift_dynamicCast();
  v40 = v87;
  v41 = *(v87 + 56);
  if ((v39 & 1) == 0)
  {
    v41(v19, 1, 1, v38);
    sub_1000095E8(v19, &qword_10118A530);
    v44 = v84;
    v43 = v85;
    goto LABEL_17;
  }

  v41(v19, 0, 1, v38);
  (*(v40 + 32))(v32, v19, v38);
  (*(v40 + 16))(v30, v32, v38);
  v42 = (*(v40 + 88))(v30, v38);
  v43 = v85;
  if (v42 != enum case for Track.song(_:))
  {
    v57 = *(v40 + 8);
    v57(v32, v38);
    v57(v30, v38);
    v44 = v84;
    goto LABEL_17;
  }

  (*(v40 + 96))(v30, v38);
  v44 = v84;
  v45 = v74;
  (*(v84 + 32))(v74, v30, v43);
  Song.catalogID.getter();
  if (!v46)
  {
    (*(v44 + 8))(v45, v43);
    (*(v87 + 8))(v32, v38);
LABEL_17:
    v37(v23, v88, v89);
    v58 = v83;
    v59 = swift_dynamicCast();
    v60 = *(v44 + 56);
    if (v59)
    {
      v60(v58, 0, 1, v43);
      v61 = v82;
      (*(v44 + 32))(v82, v58, v43);
      Song.catalogID.getter();
      if (v62)
      {

        v63 = v75;
        (*(v44 + 16))(v75, v61, v43);
        v64 = v61;
        v66 = v76;
        v65 = v77;
        (*(v76 + 104))(v63, enum case for GenericMusicItem.song(_:), v77);
        v67 = v79;
        sub_100538C48(v63, v79);
        (*(v66 + 8))(v63, v65);
        v68 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
        v69 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
        v70 = v78;
        (*(*(v69 - 8) + 104))(v78, v68, v69);
        v72 = v80;
        v71 = v81;
        (*(v80 + 104))(v70, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v81);
        sub_10049CB30(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
        LOBYTE(v68) = dispatch thunk of static Equatable.== infix(_:_:)();
        v73 = *(v72 + 8);
        v73(v70, v71);
        v73(v67, v71);
        if (v68)
        {
          (*(v44 + 8))(v64, v43);
          return 0xD000000000000013;
        }

        (*(v44 + 8))(v64, v43);
        return 0;
      }

      (*(v44 + 8))(v61, v43);
    }

    else
    {
      v60(v58, 1, 1, v43);
      sub_1000095E8(v58, &unk_101183960);
    }

    return 0xD000000000000010;
  }

  v47 = v75;
  (*(v44 + 16))(v75, v45, v43);
  v49 = v76;
  v48 = v77;
  (*(v76 + 104))(v47, enum case for GenericMusicItem.song(_:), v77);
  v50 = v79;
  sub_100538C48(v47, v79);
  (*(v49 + 8))(v47, v48);
  v51 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
  v52 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v53 = v78;
  (*(*(v52 - 8) + 104))(v78, v51, v52);
  v55 = v80;
  v54 = v81;
  (*(v80 + 104))(v53, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v81);
  sub_10049CB30(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v55 + 8);
  v56(v53, v54);
  v56(v50, v54);
  if (v51)
  {
    (*(v44 + 8))(v74, v43);
    (*(v87 + 8))(v32, v86);
    return 0xD000000000000013;
  }

  (*(v44 + 8))(v74, v43);
  (*(v87 + 8))(v32, v86);
  return 0;
}

uint64_t sub_100495B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10010FC20(&unk_101181520);
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v3[9] = swift_task_alloc();
  sub_10010FC20(&qword_10118A530);
  v3[10] = swift_task_alloc();
  v3[11] = *(a3 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Track();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for Song();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v3[22] = *(v8 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100495E18, 0, 0);
}

uint64_t sub_100495E18()
{
  v62 = v0;
  v1 = v0[17];
  v2 = *(v0[11] + 16);
  v2(v0[15], v0[2], v0[4]);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v58 = v2;
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0 + 18;
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[10];
    v4(v10, 0, 1, v8);
    v11 = *(v9 + 32);
    v11(v5, v10, v8);
    v11(v6, v5, v8);
    v12 = (*(v9 + 88))(v6, v8);
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];
    if (v12 == enum case for Track.song(_:))
    {
      (*(v14 + 96))(v13, v15);
LABEL_8:
      v21 = *v7;
      v22 = v0[24];
      v23 = v0[20];
      v24 = *(v0[21] + 32);
      v0[25] = v24;
      v24(v22, v21, v23);
      v0[26] = type metadata accessor for MainActor();
      v0[27] = static MainActor.shared.getter();
      v26 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100496378, v26, v25);
    }

    (*(v14 + 8))(v13, v15);
    v2 = v58;
  }

  else
  {
    v16 = v0[10];
    v4(v16, 1, 1, v0[16]);
    sub_1000095E8(v16, &qword_10118A530);
  }

  v7 = v0 + 9;
  v17 = v0[21];
  v2(v0[14], v0[2], v0[4]);
  v18 = swift_dynamicCast();
  v19 = *(v17 + 56);
  v20 = v0[20];
  if (v18)
  {
    v19(*v7, 0, 1, v20);
    goto LABEL_8;
  }

  v59 = v0[13];
  v28 = v0[8];
  v27 = v0[9];
  v29 = v2;
  v30 = v0[6];
  v31 = v0[7];
  v32 = v0[4];
  v33 = v0[2];
  v19(v27, 1, 1, v20);
  sub_1000095E8(v27, &unk_101183960);
  v34 = Logger.actions.unsafeMutableAddressor();
  (*(v31 + 16))(v28, v34, v30);
  v35 = v29;
  v29(v59, v33, v32);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[13];
  if (v38)
  {
    v41 = v0[11];
    v40 = v0[12];
    v56 = v0[7];
    v57 = v0[6];
    v60 = v0[8];
    v42 = v0[4];
    v43 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61 = v55;
    *v43 = 136446210;
    v35(v40, v39, v42);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    (*(v41 + 8))(v39, v42);
    v47 = sub_1000105AC(v44, v46, &v61);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "Failed to retrieve song for item=%{public}s", v43, 0xCu);
    sub_10000959C(v55);

    (*(v56 + 8))(v60, v57);
  }

  else
  {
    v48 = v0[11];
    v50 = v0[7];
    v49 = v0[8];
    v51 = v0[6];
    v52 = v0[4];

    (*(v48 + 8))(v39, v52);
    (*(v50 + 8))(v49, v51);
  }

  v53 = v0[1];

  return v53();
}

uint64_t sub_100496378()
{
  v1 = *(v0 + 24);

  *(v0 + 224) = *(v1 + 16);

  return _swift_task_switch(sub_1004963F4, 0, 0);
}

uint64_t sub_1004963F4()
{
  if (v0[28])
  {
    v0[29] = *(v0[3] + 24);
    v0[30] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10049658C, v2, v1);
  }

  else
  {
    (*(v0[21] + 8))(v0[24], v0[20]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10049658C()
{
  v1 = *(v0 + 232);

  if (*(v1 + 16))
  {
    v2 = [*(v1 + 16) selectedTab];
    if (!v2 || (v3 = v2, v4 = sub_10003F0FC(), v3, v4 == 7))
    {
      v4 = 1;
    }

    *(v0 + 248) = sub_1006BD694(v4);
    v5 = sub_100496784;
  }

  else
  {
    v5 = sub_100496664;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100496664()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100496784()
{
  v1 = v0[31];
  v2 = v0[28];
  if (v1)
  {
    v4 = v0[23];
    v3 = v0[24];
    v20 = v3;
    v21 = v0[25];
    v5 = v0[21];
    v18 = v0[22];
    v6 = v0[20];
    v17 = v6;
    v7 = v0[5];
    v19 = v7;
    v8 = v0[3];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    (*(v5 + 16))(v4, v3, v6);

    v10 = v8;

    v11 = static MainActor.shared.getter();
    v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v13 = (v18 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 2) = v11;
    *(v14 + 3) = &protocol witness table for MainActor;
    *(v14 + 4) = v2;
    v21(&v14[v12], v4, v17);
    *&v14[v13] = v1;
    *&v14[(v13 + 15) & 0xFFFFFFFFFFFFFFF8] = v10;
    sub_1001F4CB8(0, 0, v19, &unk_100ECF028, v14);

    (*(v5 + 8))(v20, v17);
  }

  else
  {
    (*(v0[21] + 8))(v0[24], v0[20]);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100496A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_10119DA70);
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[15] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100496BA0, v12, v11);
}

uint64_t sub_100496BA0()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v18 = v0[7];
  v7 = v0[3];

  v8 = type metadata accessor for Song();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for MusicPageProvider.Destination.songDetail<A, B>(_:), v3);
  v9 = MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)();
  (*(v2 + 8))(v1, v3);
  v10 = &v5[*(sub_10010FC20(&unk_1011841E0) + 48)];
  v11 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v5 = v9;
  v12 = type metadata accessor for UITraitOverrides();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  sub_10049CA68(v5, v4, type metadata accessor for AppInterfaceContext.Activity);
  sub_10049CA68(v4, v6, type metadata accessor for AppInterfaceContext.Activity);
  v13 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_10049BE38(v6, v14 + v13, type metadata accessor for AppInterfaceContext.Activity);
  v15 = v9;
  sub_100706900(v4, sub_100115C18, v14);

  sub_10049CAD0(v4, type metadata accessor for AppInterfaceContext.Activity);
  sub_10049CAD0(v5, type metadata accessor for AppInterfaceContext.Activity);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100496E88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 104) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return _swift_task_switch(sub_100496F2C, v9, v8);
}

uint64_t sub_100496F2C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 104);
  v7 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  v8 = sub_10049BEA0(v5, v7, v6, v4, v3, v1, v2);
  *(v0 + 88) = v8;

  v9 = type metadata accessor for SharingController();
  v10 = v5[3];
  v11 = v5[4];
  v12 = sub_10000954C(v5, v10);
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_10049706C;
  v14 = *(v0 + 56);

  return sub_100127B6C(v12, v8, v14, v9, v10, v11);
}

uint64_t sub_10049706C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10049718C, v3, v2);
}

uint64_t sub_10049718C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1004971F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 6)
  {
    return 0xD000000000000019;
  }

  ApplicationCapabilities.Controller.capabilities.getter(v20);
  sub_100014984(v20);
  if ((BYTE1(v20[0]) & 1) == 0)
  {
    return 0xD000000000000016;
  }

  v8 = Song.catalogID.getter();
  if (!v9)
  {
    return 0xD000000000000012;
  }

  v10 = v9;
  v11 = v8;
  if ((Song.hasLyrics.getter() & 1) == 0)
  {

    return 0xD000000000000020;
  }

  type metadata accessor for LyricsLoader();
  if ((static LyricsLoader.supportsLyrics(for:)(a2) & 1) == 0)
  {

    return 0xD00000000000001BLL;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  v12 = a3;
  v13 = [v12 playingItem];
  if (!v13 || (v14 = v13, v15 = [v13 metadataObject], v14, !v15))
  {

LABEL_22:

    return 0xD000000000000019;
  }

  v16 = [v15 innermostModelObject];

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return 0xD000000000000019;
  }

  v17 = MPModelObject.bestIdentifier(for:)(3, 2u);
  if (!v18)
  {

    goto LABEL_30;
  }

  if (v17 != v11 || v18 != v10)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_27;
    }

LABEL_30:

    return 0xD00000000000001ELL;
  }

LABEL_27:
  if (MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) != 0 && (Song.hasTimeSyncedLyrics.getter())
  {

    return 0;
  }

  else
  {

    return 0xD000000000000027;
  }
}

uint64_t sub_100497514(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100497534, 0, 0);
}

uint64_t sub_100497534()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004975C8, v2, v1);
}

uint64_t sub_1004975C8()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_10012A364(v2, v1);
  v3 = v0[1];

  return v3();
}

unint64_t sub_10049763C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsLoader();
  if ((static LyricsLoader.supportsLyrics(for:)(a1) & 1) == 0)
  {
    return 0xD00000000000001BLL;
  }

  if ((*(a2 + 1) & 1) == 0 && (Song.hasCustomLyrics.getter() & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  Song.catalogID.getter();
  if (!v4)
  {
    return 0;
  }

  return ((*(a2 + 8) << 63) >> 63) & 0xD00000000000004BLL;
}

uint64_t sub_100497720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10010FC20(&unk_10119F3A0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004978B0, 0, 0);
}

uint64_t sub_1004978B0()
{
  (*(v0[11] + 16))(v0[12], v0[2], v0[10]);
  v0[13] = type metadata accessor for MainActor();
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100497964, v2, v1);
}

uint64_t sub_100497964()
{
  v1 = v0[12];
  v2 = v0[3];

  objc_allocWithZone(type metadata accessor for StaticLyricsViewController());
  v3 = v2;
  v0[15] = sub_100336758(v1, v2, 0);

  return _swift_task_switch(sub_100497A10, 0, 0);
}

uint64_t sub_100497A10()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    *(v0 + 136) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100497B58, v3, v2);
  }

  else
  {

    v4 = *(v0 + 72);
    (*(*(v0 + 56) + 56))(v4, 1, 1, *(v0 + 48));
    sub_1000095E8(v4, &unk_1011841F0);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100497B58()
{
  v1 = *(v0 + 128);

  *(v0 + 144) = sub_10003169C();

  return _swift_task_switch(sub_100497BCC, 0, 0);
}

uint64_t sub_100497BCC()
{
  v1 = v0[15];
  if (v0[18])
  {
    v2 = v0[8];
    v3 = v0[5];
    v4 = (v2 + *(sub_10010FC20(&unk_1011841E0) + 48));
    v5 = *(sub_10010FC20(&unk_10118CE00) + 48);
    *v2 = v1;
    v6 = type metadata accessor for UITraitOverrides();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_10003D17C(v3, v2 + v5, &unk_10119F3A0);
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v4 = 0;
    v4[1] = 0;
    swift_storeEnumTagMultiPayload();
    v7 = v1;
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_100497DFC;
    v10 = v0[8];
    v9 = v0[9];

    return sub_100706024(v9, v10);
  }

  else
  {

    v12 = v0[9];
    (*(v0[7] + 56))(v12, 1, 1, v0[6]);
    sub_1000095E8(v12, &unk_1011841F0);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100497DFC()
{
  v2 = *(*v1 + 64);
  *(*v1 + 160) = v0;

  sub_10049CAD0(v2, type metadata accessor for AppInterfaceContext.Activity);

  if (v0)
  {
    v3 = sub_100498034;
  }

  else
  {
    v3 = sub_100497F64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100497F64()
{
  v1 = *(v0 + 72);
  (*(*(v0 + 56) + 56))(v1, 0, 1, *(v0 + 48));
  sub_1000095E8(v1, &unk_1011841F0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100498034()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaylistContext.entry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Entry();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaylistContext.entry.setter(uint64_t a1)
{
  v3 = type metadata accessor for Playlist.Entry();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PlaylistContext.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlaylistContext() + 20);
  v4 = type metadata accessor for Playlist();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PlaylistContext()
{
  result = qword_101191E38;
  if (!qword_101191E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaylistContext.playlist.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaylistContext() + 20);
  v4 = type metadata accessor for Playlist();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlaylistContext.init(entry:playlist:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Playlist.Entry();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for PlaylistContext() + 20);
  v8 = type metadata accessor for Playlist();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_100498430()
{
  result = type metadata accessor for Playlist.Entry();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Playlist();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1004984C0()
{
  v1 = *(sub_10010FC20(&unk_101184930) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100136034(v2);
}

uint64_t sub_100498558()
{
  v1 = *(sub_10010FC20(&unk_101184930) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_100498684()
{
  v2 = *(sub_10010FC20(&unk_101184930) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002F3F4;

  return sub_10013625C(v0 + v3, v4);
}

uint64_t sub_1004987C0()
{
  v2 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100134CF4(v8, v0 + v3, v6, v0 + v5, v7);
}

unint64_t sub_1004988EC()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10049763C(v0 + v2, v3);
}

uint64_t sub_100498978()
{
  v2 = *(type metadata accessor for Song() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100497720(v0 + v3, v6, v0 + v5);
}

char *sub_100498A88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101192010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100498B7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&unk_101181640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100498C88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101181538);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ActivityType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100498DB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101181530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}