void *sub_100077314(SEL *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = [v3 *a1];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1000771F4(v7, a2, a3);

  if (v8)
  {
    return v8;
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000773E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10005B9CC(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_10005B9CC(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10007CCC4(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_10005B9CC(v7, v9, v6 != 0);
  return v17;
}

id sub_100077518(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (a5)
  {
    v8 = String._bridgeToObjectiveC()();
    [a5 disableExternalUpdatesWithReason:v8];
  }

  v9 = [objc_allocWithZone(NAFuture) init];
  v10 = objc_opt_self();
  if (![v10 isRecapAvailable])
  {
    v49 = 0x6F69746172657469;
    v50 = 0xEA0000000000736ELL;
    AnyHashable.init<A>(_:)();
    if (*(a4 + 16))
    {
      v29 = sub_10007C3AC(&aBlock);
      if (v30)
      {
        sub_10005A46C(*(a4 + 56) + 32 * v29, v51);
        sub_10005A088(&aBlock);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_15;
        }

        v31 = v49;
        v49 = 0x74736566666FLL;
        v50 = 0xE600000000000000;
        AnyHashable.init<A>(_:)();
        if (*(a4 + 16))
        {
          v32 = sub_10007C3AC(&aBlock);
          if (v33)
          {
            sub_10005A46C(*(a4 + 56) + 32 * v32, v51);
            sub_10005A088(&aBlock);
            if (swift_dynamicCast())
            {
              v34 = *&v49;
              v35 = [objc_allocWithZone(UIScrollTestParameters) init];
              v36 = String._bridgeToObjectiveC()();
              [v35 setTestName:v36];

              [v35 setIterations:v31];
              [v35 setDelta:v34];
              v37 = swift_allocObject();
              *(v37 + 16) = v9;
              v47 = sub_10005A6E4;
              v48 = v37;
              aBlock = _NSConcreteStackBlock;
              v44 = 1107296256;
              v45 = sub_1000799C8;
              v46 = &unk_1000C78D8;
              v38 = _Block_copy(&aBlock);
              v39 = v9;
              v40 = v35;

              [a3 _performScrollTestWithParameters:v40 completionBlock:v38];
              _Block_release(v38);

              if (a5)
              {
                goto LABEL_5;
              }

              return v9;
            }

LABEL_15:
            sub_100057794();
            swift_allocError();
            *v41 = a4;
            *(v41 + 8) = &off_1000C45F0;
            *(v41 + 48) = 1;
            swift_willThrow();

            return v9;
          }
        }
      }
    }

    sub_10005A088(&aBlock);
    goto LABEL_15;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = objc_allocWithZone(RPTScrollViewTestParameters);
  v13 = v9;

  v14 = a3;
  v15 = String._bridgeToObjectiveC()();

  v47 = sub_10005A6E4;
  v48 = v11;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100077B44;
  v46 = &unk_1000C79C8;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 initWithTestName:v15 scrollView:v14 completionHandler:v16];
  _Block_release(v16);

  [v10 runTestWithParameters:v17];
  if (a5)
  {
LABEL_5:
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = ObjectType;
    v47 = sub_10007E720;
    v48 = v18;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100077BF0;
    v46 = &unk_1000C7928;
    v19 = _Block_copy(&aBlock);
    v20 = a5;
    v21 = v9;
    v22 = v20;

    v23 = [v21 flatMap:v19];
    _Block_release(v19);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = ObjectType;
    v47 = sub_10007E728;
    v48 = v24;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_10007A04C;
    v46 = &unk_1000C7978;
    v25 = _Block_copy(&aBlock);
    v26 = v22;

    v27 = [v23 recover:v25];

    _Block_release(v25);
    return v27;
  }

  return v9;
}

uint64_t sub_100077B44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100077B88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_100077BF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

void *sub_100077C5C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_100077D70(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_100077E98(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
    sub_100057D7C(&qword_1000D9E70, &unk_1000DA2C0, HMAccessory_ptr);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v26 = v17;
        v18 = a1(&v26);

        if (v4)
        {
          break;
        }

        v5 = v20;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
      }

      while (v26);
    }

LABEL_20:
    sub_100059150();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_10007811C(void *a1, char a2, uint64_t a3, SEL *a4)
{
  v9 = [a1 *a4];
  if (v9)
  {
    v10 = v9;
    v11 = sub_100070AEC(a2);
    v13 = v12;
    v14 = [a1 itemManager];
    v15 = sub_100077518(v11, v13, v10, a3, v14);
    if (!v5)
    {
      v4 = v15;
    }
  }

  else
  {
    sub_100057794();
    swift_allocError();
    strcpy(v16, "collectionView");
    v16[15] = -18;
    *(v16 + 2) = a1;
    v16[48] = 0;
    swift_willThrow();
    v17 = a1;
  }

  return v4;
}

void sub_100078298(void *a1)
{
  v1 = [a1 hf_characteristicValueManager];
  v2 = [v1 firstReadCompleteFuture];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_1000782FC()
{
  v0 = [objc_opt_self() futureWithNoResult];
  v1 = [v0 asGeneric];

  return v1;
}

id HOAppDelegate.baseViewController.getter()
{
  result = [v0 sceneRootViewController];
  if (result)
  {
    v2 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

id HOAppDelegate.appNavigator.getter()
{
  result = [v0 sceneRootViewController];
  if (result)
  {
    v2 = result;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = [v3 dashboardNavigator];

      if (v4)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t HOAppDelegate.findPreferredAccessory(itemManager:accessoryID:with:)(void *a1, uint64_t a2, uint64_t (*a3)(id, id), uint64_t a4)
{
  v43 = a2;
  v39 = a3;
  v40 = a4;
  v5 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v38 - v7;
  v47[0] = _swiftEmptyArrayStorage;
  v42 = a1;
  v9 = [a1 allDisplayedItems];
  v10 = sub_10005B9DC(0, &qword_1000DA818, HFItem_ptr);
  v11 = sub_100057D7C(&unk_1000DA820, &qword_1000DA818, HFItem_ptr);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v10;
  if ((v12 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v12 = v47[1];
    v13 = v47[2];
    v14 = v47[3];
    v15 = v47[4];
    v16 = v47[5];
  }

  else
  {
    v15 = 0;
    v17 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v12 + 56);
  }

  v38 = v14;
  v20 = (v14 + 64) >> 6;
  while ((v12 & 0x8000000000000000) == 0)
  {
    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          goto LABEL_24;
        }

        v22 = *(v13 + 8 * v23);
        ++v21;
        if (v22)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v24 = (v22 - 1) & v22;
    v11 = *(*(v12 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v11)
    {
      goto LABEL_24;
    }

LABEL_19:
    sub_10007E198(v43, v8);
    v26 = type metadata accessor for UUID();
    v27 = *(v26 - 8);
    isa = 0;
    if ((*(v27 + 48))(v8, 1, v26) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v27 + 8))(v8, v26);
    }

    v29 = [v44 serviceLikeItemWithItem:v11 itemManager:v42 withID:{isa, v38, v39, v40, v41}];

    if (v29)
    {
      v30 = v29;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v15 = v23;
    v16 = v24;
  }

  v25 = __CocoaSet.Iterator.next()();
  if (v25)
  {
    v45 = v25;
    swift_dynamicCast();
    v11 = v46;
    v23 = v15;
    v24 = v16;
    if (v46)
    {
      goto LABEL_19;
    }
  }

LABEL_24:
  sub_100059150();
  sub_10007E108(v47, v39);
  v11 = v47[0];
  if (!(v47[0] >> 62))
  {
    result = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_26;
    }

LABEL_32:
    v37 = 0;
LABEL_33:

    return v37;
  }

LABEL_31:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_26:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v11 + 32);
LABEL_29:
    v34 = v33;

    v35 = [v34 accessories];

    sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
    sub_100057D7C(&qword_1000D9E70, &unk_1000DA2C0, HMAccessory_ptr);
    v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = sub_1000773E4(v36, &unk_1000DA2C0, HMAccessory_ptr);
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_100078B70(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10007CC9C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10007AC04(v6);
  return specialized ContiguousArray._endMutation()();
}

void HOAppDelegate.findAccessory(itemManager:accessoryID:testBlock:)(void *a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4)
{
  v39 = a2;
  v35 = a3;
  v36 = a4;
  v5 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41 = &v33 - v7;
  v38 = a1;
  v8 = [a1 allDisplayedItems];
  sub_10005B9DC(0, &qword_1000DA818, HFItem_ptr);
  sub_100057D7C(&unk_1000DA820, &qword_1000DA818, HFItem_ptr);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v9 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v9 = v46;
    v10 = v47;
    v11 = v48;
    v12 = v49;
    v13 = v50;
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);
  }

  v17 = (v11 + 64) >> 6;
  v37 = v9;
  v33 = v11;
  v34 = v17;
  while (v9 < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23 || (v44 = v23, swift_dynamicCast(), v22 = v45, v20 = v12, v21 = v13, !v45))
    {
LABEL_24:
      sub_100059150();
      return;
    }

LABEL_19:
    v42 = v21;
    v43 = v22;
    v24 = v41;
    sub_10007E198(v39, v41);
    v25 = type metadata accessor for UUID();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v24, 1, v25);
    isa = 0;
    if (v27 != 1)
    {
      v29 = v41;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v17 = v34;
      (*(v26 + 8))(v29, v25);
    }

    v30 = [v40 serviceLikeItemWithItem:v43 itemManager:v38 withID:{isa, v33}];

    v9 = v37;
    if (v30)
    {
      if (v35(v30))
      {
        v31 = [v30 accessories];
        sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
        sub_100057D7C(&qword_1000D9E70, &unk_1000DA2C0, HMAccessory_ptr);
        v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000773E4(v32, &unk_1000DA2C0, HMAccessory_ptr);
        sub_100059150();

        return;
      }
    }

    v12 = v20;
    v13 = v42;
  }

  v18 = v12;
  v19 = v13;
  v20 = v12;
  if (v13)
  {
LABEL_15:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t HOAppDelegate.homeKitObjectID(from:userDefaultsEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v4 = sub_10007C3AC(v11), (v5 & 1) != 0))
  {
    sub_10005A46C(*(a1 + 56) + 32 * v4, v12);
    sub_10005A088(v11);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();
    }
  }

  else
  {
    sub_10005A088(v11);
  }

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 stringForKey:v8];

  if (v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();
  }

  else
  {
    v10 = type metadata accessor for UUID();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_1000799C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

id sub_100079A58(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = a3;
  v7 = objc_opt_self();
  v8 = a2;
  swift_unknownObjectRetain();
  v9 = [v7 globalAsyncScheduler];
  v13[4] = sub_10007E7E0;
  v13[5] = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100077B88;
  v13[3] = &unk_1000C7AB8;
  v10 = _Block_copy(v13);
  v11 = [objc_opt_self() futureWithBlock:v10 scheduler:v9];
  swift_unknownObjectRelease();
  _Block_release(v10);

  return v11;
}

uint64_t sub_100079B94(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() mainThreadScheduler];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  v14[4] = sub_10007E85C;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100077B44;
  v14[3] = &unk_1000C7B08;
  v10 = _Block_copy(v14);
  v11 = a2;
  v12 = a1;
  swift_unknownObjectRetain();

  [v8 performBlock:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

id sub_100079CBC(void *a1, void *a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  [a1 endDisableExternalUpdatesWithReason:v6];

  return [a2 finishWithResult:a3];
}

id sub_100079D44(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = a3;
  v7 = objc_opt_self();
  v8 = a2;
  swift_errorRetain();
  v9 = [v7 globalAsyncScheduler];
  v13[4] = sub_10007E748;
  v13[5] = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100077B88;
  v13[3] = &unk_1000C7A18;
  v10 = _Block_copy(v13);
  v11 = [objc_opt_self() futureWithBlock:v10 scheduler:v9];
  swift_unknownObjectRelease();
  _Block_release(v10);

  return v11;
}

uint64_t sub_100079E80(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() mainThreadScheduler];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  v14[4] = sub_10007E76C;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100077B44;
  v14[3] = &unk_1000C7A68;
  v10 = _Block_copy(v14);
  v11 = a2;
  v12 = a1;
  swift_errorRetain();

  [v8 performBlock:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_100079FA8(void *a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 endDisableExternalUpdatesWithReason:v4];

  v5 = _convertErrorToNSError(_:)();
  [a2 finishWithError:v5];
}

id sub_10007A054(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id sub_10007A0C8(void *a1)
{
  v1 = [a1 topViewController];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_5:
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v2 = [v6 hf_errorWithCode:30 description:v7];

    v4 = _convertErrorToNSError(_:)();
    v5 = [objc_opt_self() futureWithError:v4];
    goto LABEL_6;
  }

  v4 = [objc_opt_self() futureWithResult:v3];
  v5 = [v4 asGeneric];
LABEL_6:
  v8 = v5;

  return v8;
}

uint64_t sub_10007A200(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_10007A30C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 accessory];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v3 accessory];
  if (!v6)
  {

LABEL_9:
    sub_100057794();
    swift_allocError();
    v20 = v19;
    v21 = sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
    *v20 = v2;
    *(v20 + 24) = v21;
    *(v20 + 32) = 0x726F737365636361;
    *(v20 + 40) = 0xE900000000000079;
    *(v20 + 48) = 3;
    swift_willThrow();
    v22 = v2;
    return 0;
  }

  v7 = v6;
  v8 = [v5 name];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [v7 name];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 != v9 || v15 != v11)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v17 & 1;
  }

  return 0;
}

char *sub_10007A8A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000578B4(&qword_1000DA850, &unk_100093830);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_10007A9A4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000578B4(&unk_1000DA8A0, &qword_100093230);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10007AB7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000578B4(&unk_1000D9F80, &unk_100093218);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_10007AC04(uint64_t *a1)
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
        sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10007AF80(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_10007AD18(0, v2, 1, a1);
  }
}

void sub_10007AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &selRef__setTabBarPlacement_;
    v35 = *a4;
    while (2)
    {
      v33 = v5;
      v34 = a3;
      v8 = *(v4 + 8 * a3);
      v32 = v6;
      while (1)
      {
        v9 = *v5;
        v10 = v8;
        v11 = v9;
        v12 = [v10 v7[231]];
        if (!v12)
        {
          goto LABEL_19;
        }

        v13 = v12;
        v14 = [v11 v7[231]];
        if (!v14)
        {

LABEL_19:
          sub_100057794();
          swift_allocError();
          v29 = v28;
          v30 = sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
          *v29 = v10;
          *(v29 + 24) = v30;
          *(v29 + 32) = 0x726F737365636361;
          *(v29 + 40) = 0xE900000000000079;
          *(v29 + 48) = 3;
          swift_willThrow();

          return;
        }

        v15 = v14;
        v37 = v11;
        v16 = [v13 name];
        v36 = v13;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = [v15 name];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        if (v21 == v17 && v23 == v19)
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = v35;
        v7 = &selRef__setTabBarPlacement_;
        if ((v25 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        v26 = *v5;
        v8 = *(v5 + 8);
        *v5 = v8;
        *(v5 + 8) = v26;
        v5 -= 8;
        if (__CFADD__(v6++, 1))
        {
          goto LABEL_16;
        }
      }

      v4 = v35;
      v7 = &selRef__setTabBarPlacement_;
LABEL_16:
      a3 = v34 + 1;
      v5 = v33 + 8;
      v6 = v32 - 1;
      if (v34 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_10007AF80(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_106:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_108;
    }

    goto LABEL_149;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (2)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_30;
    }

    v13 = *v7;
    v14 = *(*v7 + 8 * v12);
    v143 = *(*v7 + 8 * v11);
    v15 = v143;
    v144 = v14;
    v5 = v14;
    v16 = v15;
    v17 = v6;
    v132 = sub_10007A30C(&v144, &v143);
    if (v6)
    {

      return;
    }

    v12 = v11 + 2;
    if (v11 + 2 >= v8)
    {
      goto LABEL_22;
    }

    v126 = v11;
    v18 = (v13 + 8 * v11 + 16);
    v130 = v8;
    while (1)
    {
      v21 = *(v18 - 1);
      v22 = *v18;
      v23 = v21;
      v24 = [v22 accessory];
      if (!v24)
      {
        goto LABEL_118;
      }

      v25 = v24;
      v26 = [v23 accessory];
      if (!v26)
      {

LABEL_118:
        sub_100057794();
        swift_allocError();
        v118 = v117;
        v119 = sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
        *v118 = v22;
        *(v118 + 24) = v119;
        *(v118 + 32) = 0x726F737365636361;
        *(v118 + 40) = 0xE900000000000079;
        *(v118 + 48) = 3;
        swift_willThrow();

        return;
      }

      v27 = v26;
      v135 = v22;
      v137 = v23;
      v139 = v12;
      v28 = [v25 name];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v30;

      v31 = [v27 name];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      if (v32 == v29 && v34 == v5)
      {

        v12 = v139;
        v20 = v130;
        if (v132)
        {
          v6 = v17;
          v7 = a3;
          v11 = v126;
          goto LABEL_23;
        }

        goto LABEL_9;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v12 = v139;
      v20 = v130;
      if ((v132 ^ v19))
      {
        break;
      }

LABEL_9:
      ++v12;
      ++v18;
      v7 = a3;
      if (v20 == v12)
      {
        v12 = v20;
        v6 = v17;
        goto LABEL_21;
      }
    }

    v6 = v17;
    v7 = a3;
LABEL_21:
    v11 = v126;
LABEL_22:
    if (v132)
    {
LABEL_23:
      if (v12 >= v11)
      {
        if (v11 < v12)
        {
          v36 = 8 * v12 - 8;
          v37 = 8 * v11;
          v38 = v12;
          v39 = v11;
          while (1)
          {
            if (v39 != --v38)
            {
              v40 = *v7;
              if (!*v7)
              {
                goto LABEL_146;
              }

              v41 = *(v40 + v37);
              *(v40 + v37) = *(v40 + v36);
              *(v40 + v36) = v41;
            }

            ++v39;
            v36 -= 8;
            v37 += 8;
            if (v39 >= v38)
            {
              goto LABEL_30;
            }
          }
        }

        goto LABEL_30;
      }

LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      return;
    }

LABEL_30:
    v42 = v7[1];
    if (v12 >= v42)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_139;
    }

    if (v12 - v11 >= a4)
    {
LABEL_38:
      if (v12 < v11)
      {
        goto LABEL_138;
      }

      goto LABEL_39;
    }

    v43 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v43 >= v42)
    {
      v43 = v7[1];
    }

    if (v43 < v11)
    {
      goto LABEL_142;
    }

    if (v12 == v43)
    {
      goto LABEL_38;
    }

    v5 = *v7;
    v90 = *v7 + 8 * v12 - 8;
    v127 = v11;
    v91 = v11 - v12;
    v123 = v43;
    v131 = *v7;
    do
    {
      v141 = v12;
      v92 = *(v5 + 8 * v12);
      v124 = v91;
      v125 = v90;
      v93 = v91;
      while (1)
      {
        v94 = *v90;
        v95 = v92;
        v96 = v94;
        v97 = [v95 accessory];
        if (!v97)
        {
          goto LABEL_120;
        }

        v98 = v97;
        v138 = v95;
        v99 = [v96 accessory];
        if (!v99)
        {

LABEL_120:
          sub_100057794();
          swift_allocError();
          v121 = v120;
          v122 = sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
          *v121 = v95;
          *(v121 + 24) = v122;
          *(v121 + 32) = 0x726F737365636361;
          *(v121 + 40) = 0xE900000000000079;
          *(v121 + 48) = 3;
          swift_willThrow();

          return;
        }

        v100 = v99;
        v134 = v6;
        v136 = v96;
        v133 = v93;
        v101 = [v98 name];
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;

        v105 = [v100 name];
        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = v107;

        if (v106 == v102 && v108 == v104)
        {
          break;
        }

        v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v110 & 1) == 0)
        {
          goto LABEL_101;
        }

        v6 = v134;
        v7 = a3;
        v5 = v131;
        if (!v131)
        {
          goto LABEL_147;
        }

        v111 = *v90;
        v92 = *(v90 + 8);
        *v90 = v92;
        *(v90 + 8) = v111;
        v90 -= 8;
        v93 = v133 + 1;
        if (v133 == -1)
        {
          goto LABEL_102;
        }
      }

LABEL_101:
      v6 = v134;
      v7 = a3;
      v5 = v131;
LABEL_102:
      v12 = v141 + 1;
      v90 = v125 + 8;
      v91 = v124 - 1;
    }

    while (v141 + 1 != v123);
    v12 = v123;
    v11 = v127;
    if (v123 < v127)
    {
      goto LABEL_138;
    }

LABEL_39:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10007A8A0(0, *(v10 + 2) + 1, 1, v10);
    }

    v45 = *(v10 + 2);
    v44 = *(v10 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v10 = sub_10007A8A0((v44 > 1), v45 + 1, 1, v10);
    }

    *(v10 + 2) = v46;
    v47 = &v10[16 * v45];
    *(v47 + 4) = v11;
    *(v47 + 5) = v12;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_148;
    }

    v140 = v12;
    if (!v45)
    {
LABEL_3:
      v8 = v7[1];
      v9 = v140;
      if (v140 >= v8)
      {
        goto LABEL_106;
      }

      continue;
    }

    break;
  }

  while (2)
  {
    v49 = v46 - 1;
    if (v46 >= 4)
    {
      v54 = &v10[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_125;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_126;
      }

      v61 = &v10[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_128;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_131;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_137;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }
      }

      else
      {
LABEL_58:
        if (v53)
        {
          goto LABEL_127;
        }

        v66 = &v10[16 * v46];
        v68 = *v66;
        v67 = *(v66 + 1);
        v69 = __OFSUB__(v67, v68);
        v70 = v67 - v68;
        v71 = v69;
        if (v69)
        {
          goto LABEL_130;
        }

        v72 = &v10[16 * v49 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v60 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v60)
        {
          goto LABEL_133;
        }

        if (__OFADD__(v70, v75))
        {
          goto LABEL_134;
        }

        if (v70 + v75 < v52)
        {
          goto LABEL_72;
        }

        if (v52 < v75)
        {
          v49 = v46 - 2;
        }
      }
    }

    else
    {
      if (v46 == 3)
      {
        v50 = *(v10 + 4);
        v51 = *(v10 + 5);
        v60 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        v53 = v60;
        goto LABEL_58;
      }

      v76 = &v10[16 * v46];
      v78 = *v76;
      v77 = *(v76 + 1);
      v60 = __OFSUB__(v77, v78);
      v70 = v77 - v78;
      v71 = v60;
LABEL_72:
      if (v71)
      {
        goto LABEL_129;
      }

      v79 = &v10[16 * v49];
      v81 = *(v79 + 4);
      v80 = *(v79 + 5);
      v60 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v60)
      {
        goto LABEL_132;
      }

      if (v82 < v70)
      {
        goto LABEL_3;
      }
    }

    v87 = v49 - 1;
    if (v49 - 1 < v46)
    {
      if (!*v7)
      {
        goto LABEL_144;
      }

      v88 = *&v10[16 * v87 + 32];
      v5 = *&v10[16 * v49 + 40];
      sub_10007B908((*v7 + 8 * v88), (*v7 + 8 * *&v10[16 * v49 + 32]), (*v7 + 8 * v5), v48);
      if (v6)
      {
        goto LABEL_116;
      }

      if (v5 < v88)
      {
        goto LABEL_123;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10007C398(v10);
      }

      if (v87 >= *(v10 + 2))
      {
        goto LABEL_124;
      }

      v89 = &v10[16 * v87];
      *(v89 + 4) = v88;
      *(v89 + 5) = v5;
      v145 = v10;
      sub_10007C30C(v49);
      v10 = v145;
      v46 = *(v145 + 2);
      if (v46 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  v10 = sub_10007C398(v10);
LABEL_108:
  v145 = v10;
  v112 = *(v10 + 2);
  if (v112 >= 2)
  {
    do
    {
      v113 = *v7;
      if (!*v7)
      {
        goto LABEL_145;
      }

      v7 = (v112 - 1);
      v114 = *&v10[16 * v112];
      v115 = *&v10[16 * v112 + 24];
      sub_10007B908((v113 + 8 * v114), (v113 + 8 * *&v10[16 * v112 + 16]), (v113 + 8 * v115), v5);
      if (v6)
      {
        break;
      }

      if (v115 < v114)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10007C398(v10);
      }

      if (v112 - 2 >= *(v10 + 2))
      {
        goto LABEL_136;
      }

      v116 = &v10[16 * v112];
      *v116 = v114;
      *(v116 + 1) = v115;
      v145 = v10;
      sub_10007C30C(v112 - 1);
      v10 = v145;
      v112 = *(v145 + 2);
      v7 = a3;
    }

    while (v112 > 1);
  }

LABEL_116:
}

uint64_t sub_10007B908(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v83 = &v4[v13];
    if (v11 < 8 || v6 <= v7)
    {
      goto LABEL_66;
    }

    v35 = -v4;
    v36 = &selRef__setTabBarPlacement_;
    __dstb = v7;
    v82 = v4;
    v71 = -v4;
    while (1)
    {
      v78 = v6;
      v37 = v6 - 1;
      v38 = v83;
      v39 = v83 + v35;
      v72 = v37;
      while (1)
      {
        v76 = v5;
        v40 = *--v38;
        v41 = *v37;
        v42 = v40;
        v43 = v41;
        v44 = [v42 v36[231]];
        if (!v44)
        {
          goto LABEL_52;
        }

        v45 = v44;
        v46 = [v43 v36[231]];
        if (!v46)
        {

LABEL_52:
          sub_100057794();
          swift_allocError();
          v59 = v43;
          v61 = v60;
          v62 = sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
          *v61 = v42;
          *(v61 + 24) = v62;
          *(v61 + 32) = 0x726F737365636361;
          *(v61 + 40) = 0xE900000000000079;
          *(v61 + 48) = 3;
          swift_willThrow();

          if (v39 >= 0)
          {
            v63 = v39;
          }

          else
          {
            v63 = v39 + 7;
          }

          v64 = v63 >> 3;
          v65 = v78;
          if (v78 >= v4)
          {
            goto LABEL_61;
          }

LABEL_63:
          memmove(v65, v4, 8 * v64);
          return 1;
        }

        v47 = v46;
        v73 = v39;
        v74 = v43;
        v48 = [v45 name];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = [v47 name];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        if (v53 == v49 && v55 == v51)
        {

          v58 = v76;
          v5 = v76 - 1;
          v4 = v82;
          v36 = &selRef__setTabBarPlacement_;
          v37 = v72;
          goto LABEL_44;
        }

        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v58 = v76;
        v5 = v76 - 1;
        v37 = v72;
        if (v57)
        {
          break;
        }

        v4 = v82;
        v36 = &selRef__setTabBarPlacement_;
LABEL_44:
        if (v83 != v58)
        {
          *v5 = *v38;
        }

        v39 = v73 - 8;
        v83 = v38;
        if (v38 <= v4)
        {
          v83 = v38;
          v6 = v78;
          goto LABEL_66;
        }
      }

      v4 = v82;
      v36 = &selRef__setTabBarPlacement_;
      if (v76 != v78)
      {
        *v5 = *v72;
      }

      if (v83 > v82)
      {
        v6 = v72;
        v35 = v71;
        if (v72 > __dstb)
        {
          continue;
        }
      }

      v6 = v72;
      goto LABEL_66;
    }
  }

  if (a4 != __dst || &__dst[v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v83 = &v4[v10];
  if (v8 < 8 || v6 >= v5)
  {
LABEL_26:
    v6 = v7;
LABEL_66:
    v69 = v83 - v4 + 7;
    if (v83 - v4 >= 0)
    {
      v69 = v83 - v4;
    }

    if (v6 < v4 || v6 >= (v4 + (v69 & 0xFFFFFFFFFFFFFFF8)) || v6 != v4)
    {
      memmove(v6, v4, 8 * (v69 >> 3));
    }

    return 1;
  }

  v14 = &selRef__setTabBarPlacement_;
  v75 = v5;
  while (1)
  {
    __dsta = v7;
    v15 = *v4;
    v16 = *v6;
    v17 = v15;
    v18 = [v16 v14[231]];
    if (!v18)
    {
      break;
    }

    v19 = v18;
    v81 = v4;
    v20 = [v17 v14[231]];
    if (!v20)
    {

      break;
    }

    v21 = v20;
    v77 = v6;
    v22 = [v19 name];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = [v21 name];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (v27 == v23 && v29 == v25)
    {

      v6 = v77;
LABEL_22:
      v33 = __dsta;
      v32 = v81;
      v4 = v81 + 1;
      v34 = v75;
      if (__dsta == v81)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v33 = *v32;
      goto LABEL_24;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v77;
    if ((v31 & 1) == 0)
    {
      goto LABEL_22;
    }

    v32 = v77;
    v33 = __dsta;
    v4 = v81;
    v6 = v77 + 1;
    v34 = v75;
    if (__dsta != v77)
    {
      goto LABEL_23;
    }

LABEL_24:
    v7 = v33 + 1;
    v14 = &selRef__setTabBarPlacement_;
    if (v4 >= v83 || v6 >= v34)
    {
      goto LABEL_26;
    }
  }

  sub_100057794();
  swift_allocError();
  v67 = v66;
  v68 = sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
  *v67 = v16;
  *(v67 + 24) = v68;
  *(v67 + 32) = 0x726F737365636361;
  *(v67 + 40) = 0xE900000000000079;
  *(v67 + 48) = 3;
  swift_willThrow();

  v63 = v83 - v4 + 7;
  if (v83 - v4 >= 0)
  {
    v63 = v83 - v4;
  }

  v64 = v63 >> 3;
  v65 = __dsta;
  if (__dsta < v4)
  {
    goto LABEL_63;
  }

LABEL_61:
  if (v65 >= (v4 + (v63 & 0xFFFFFFFFFFFFFFF8)) || v65 != v4)
  {
    goto LABEL_63;
  }

  return 1;
}

uint64_t sub_10007BF40(void **__dst, id *__src, id *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = v5;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v55 = &v16[v11];
    if (v9 < 8 || __src >= v7)
    {
LABEL_20:
      v27 = v8;
      goto LABEL_53;
    }

    v17 = __src;
    while (1)
    {
      v18 = v17;
      v19 = v6;
      v20 = v16;
      v21 = *v16;
      v22 = *v17;
      v23 = v21;
      v24 = a5(v22, v23);
      if (v19)
      {

        v41 = v20;
        v42 = v55 - v20 + 7;
        if (v55 - v20 >= 0)
        {
          v42 = v55 - v20;
        }

        v43 = v42 >> 3;
        if (v8 < v20 || v8 >= (v20 + (v42 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v20, 8 * v43);
        }

        else if (v8 != v20)
        {
          v44 = 8 * v43;
          v45 = v8;
          goto LABEL_59;
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v18;
      v17 = v18 + 1;
      v16 = v20;
      if (v8 != v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v8;
      v6 = 0;
      if (v16 >= v55 || v17 >= v7)
      {
        goto LABEL_20;
      }
    }

    v26 = v20;
    v16 = v20 + 1;
    v17 = v18;
    if (v8 == v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v8 = *v26;
    goto LABEL_18;
  }

  v27 = __src;
  if (a4 != __src || &__src[v14] <= a4)
  {
    v28 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v28;
  }

  v52 = a4;
  v55 = (a4 + 8 * v14);
  if (v12 < 8 || v27 <= v8)
  {
    v16 = a4;
    goto LABEL_53;
  }

  v29 = -a4;
  v50 = -a4;
LABEL_27:
  v53 = v6;
  v51 = v27;
  v30 = v27 - 1;
  v31 = v55;
  v32 = v55 + v29;
  --v7;
  while (1)
  {
    v33 = *--v31;
    v34 = v30;
    v35 = *v30;
    v36 = v33;
    v37 = v35;
    v38 = a5(v36, v37);

    if (v53)
    {
      break;
    }

    v39 = v7 + 1;
    if (v38)
    {
      v40 = v34;
      if (v39 != v51)
      {
        *v7 = *v34;
      }

      v16 = v52;
      v6 = 0;
      if (v55 <= v52 || (v27 = v40, v29 = v50, v40 <= v8))
      {
        v27 = v40;
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    if (v39 != v55)
    {
      *v7 = *v31;
    }

    v32 -= 8;
    --v7;
    v55 = v31;
    v30 = v34;
    if (v31 <= v52)
    {
      v55 = v31;
      v27 = v51;
      v16 = v52;
LABEL_53:
      v48 = v55 - v16 + 7;
      if (v55 - v16 >= 0)
      {
        v48 = v55 - v16;
      }

      if (v27 >= v16 && v27 < (v16 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v27 == v16)
      {
        return 1;
      }

      v44 = 8 * (v48 >> 3);
      v45 = v27;
      v41 = v16;
LABEL_59:
      memmove(v45, v41, v44);
      return 1;
    }
  }

  if (v32 >= 0)
  {
    v46 = v32;
  }

  else
  {
    v46 = v32 + 7;
  }

  v47 = v46 >> 3;
  v45 = v51;
  v41 = v52;
  if (v51 < v52 || v51 >= (v52 + (v46 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v51, v52, 8 * v47);
    return 1;
  }

  if (v51 != v52)
  {
    v44 = 8 * v47;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_10007C30C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007C398(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_10007C3AC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10007C468(a1, v4);
}

unint64_t sub_10007C3F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10007C530(a1, a2, v6);
}

unint64_t sub_10007C468(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10007E868(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10005A088(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10007C530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10007C618(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_10007AB7C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10007C6B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007E8E4(&unk_1000DA880, &qword_1000DA878, &qword_100093848);
          for (i = 0; i != v6; ++i)
          {
            sub_1000578B4(&qword_1000DA878, &qword_100093848);
            v9 = sub_10007CB94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10005B9DC(0, &qword_1000DA870, HMRoom_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C854(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007E8E4(&qword_1000DA898, &qword_1000DA890, &unk_100093850);
          for (i = 0; i != v6; ++i)
          {
            sub_1000578B4(&qword_1000DA890, &unk_100093850);
            v9 = sub_10007CC14(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10005B9DC(0, &qword_1000D9D68, HMActionSet_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C9F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007E8E4(&qword_1000DA848, &qword_1000DA840, &unk_100093820);
          for (i = 0; i != v6; ++i)
          {
            sub_1000578B4(&qword_1000DA840, &unk_100093820);
            v9 = sub_10007CB94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10007CB94(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10007EAB4;
  }

  __break(1u);
  return result;
}

void (*sub_10007CC14(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10007CC94;
  }

  __break(1u);
  return result;
}

void sub_10007CCC4(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10005B9DC(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10005B9DC(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_10007CEDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_10007CF40(void *a1, uint64_t a2)
{
  v5 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007E198(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v13, v8, v9);
    v17 = [a1 hf_allCameraProfiles];
    sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v19);
    *(&v23 - 2) = v13;
    a1 = sub_100077C5C(sub_10007EA98, (&v23 - 4), v18);

    (*(v10 + 8))(v13, v9);
    return a1;
  }

  sub_10007E208(v8);
  v14 = [a1 hf_allCameraProfiles];
  sub_10005B9DC(0, &qword_1000DA838, HMCameraProfile_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = sub_10007C618(v15, sub_10007C9F4);
  sub_100078B70(&v24);
  result = v24;
  if (v2)
  {

    return a1;
  }

  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    if (*(v24 + 16))
    {
      goto LABEL_9;
    }

LABEL_14:

    return 0;
  }

  v21 = v24;
  v22 = _CocoaArrayWrapper.endIndex.getter();
  result = v21;
  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((result & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*(result + 16))
  {
    v20 = *(result + 32);
LABEL_12:
    a1 = v20;

    return a1;
  }

  __break(1u);
  return result;
}

id _sSo13HOAppDelegateC7HomeAppE23firstReadCompleteFutureSo8NAFutureCySo6NSNullCGyF_0()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = [v0 homeFuture];

  if (v1)
  {
    v12 = sub_100078298;
    v13 = 0;
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_1000782F4;
    v11 = &unk_1000C7B30;
    v2 = _Block_copy(&v8);
    v3 = [v1 flatMap:v2];
    _Block_release(v2);
    v12 = sub_1000782FC;
    v13 = 0;
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = sub_100077BF0;
    v11 = &unk_1000C7B58;
    v4 = _Block_copy(&v8);
    v5 = [v3 flatMap:v4];

    _Block_release(v4);
    return v5;
  }

  else
  {
    v7 = [objc_opt_self() futureWithNoResult];

    return v7;
  }
}

id _sSo13HOAppDelegateC7HomeAppE23sceneRootViewControllerSo06UIViewH0CSgvg_0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10005B9DC(0, &qword_1000DA860, UIScene_ptr);
  sub_100057D7C(&qword_1000DA868, &qword_1000DA860, UIScene_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1000773E4(v2, &qword_1000DA860, UIScene_ptr);

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && [v4 delegate])
    {
      type metadata accessor for HOSceneDelegate();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = *(v5 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window);
        v7 = [v6 rootViewController];

        swift_unknownObjectRelease();
        return v7;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

void *sub_10007D5C0(void *a1, uint64_t a2)
{
  v4 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = &OBJC_PROTOCOL___HFServiceLikeItem;
  v13 = swift_dynamicCastObjCProtocolConditional();
  if (v13)
  {
    sub_10007E198(a2, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v14 = a1;
      sub_10007E208(v7);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v15 = a1;
      v16 = [v13 accessories];
      sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
      sub_100057D7C(&qword_1000D9E70, &unk_1000DA2C0, HMAccessory_ptr);
      v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v18);
      v21[-2] = v12;
      sub_100077E98(sub_10007E8C4, &v21[-4], v17);
      LOBYTE(v16) = v19;

      if (v16)
      {
        (*(v9 + 8))(v12, v8);
      }

      else
      {

        (*(v9 + 8))(v12, v8);
        return 0;
      }
    }
  }

  return v13;
}

void sub_10007D868(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_89:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v7)
    {
      goto LABEL_20;
    }

    v101 = v7;
    v13 = *v6;
    v14 = *(v13 + 8 * v9);
    v9 = *(v13 + 8 * v12);
    v15 = v14;
    v16 = a5(v9, v15);
    if (v5)
    {

      return;
    }

    v17 = v16;

    v18 = v11 + 2;
    v97 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (1)
    {
      v21 = v101;
      if (v101 == v18)
      {
        break;
      }

      v22 = *(v20 - 1);
      v9 = *v20;
      v23 = v22;
      LODWORD(v22) = a5(v9, v23);

      ++v18;
      ++v20;
      if ((v17 ^ v22))
      {
        v21 = v18 - 1;
        break;
      }
    }

    v6 = a3;
    v8 = a4;
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v97;
    if (v21 < v97)
    {
      goto LABEL_123;
    }

    if (v97 < v21)
    {
      v25 = 8 * v21 - 8;
      v26 = v21;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v28 = *(v27 + v19);
          *(v27 + v19) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v19 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v12 = v21;
      v11 = v97;
      goto LABEL_20;
    }

    v12 = v21;
    v11 = v97;
LABEL_20:
    v29 = v6[1];
    if (v12 >= v29)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_119;
    }

    if (v12 - v11 >= v8)
    {
      goto LABEL_132;
    }

    v30 = v11 + v8;
    if (__OFADD__(v11, v8))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v30 >= v29)
    {
      v30 = v6[1];
    }

    if (v30 < v11)
    {
      goto LABEL_122;
    }

    if (v12 == v30)
    {
LABEL_132:
      if (v12 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v79 = *v6;
      v80 = v79 + 8 * v12 - 8;
      v98 = v11;
      v81 = v11 - v12;
      v94 = v30;
      do
      {
        v102 = v12;
        v82 = *(v79 + 8 * v12);
        v83 = v81;
        v95 = v80;
        do
        {
          v84 = *v80;
          v9 = v82;
          v85 = v84;
          v86 = a5(v9, v85);
          if (v5)
          {

            return;
          }

          v87 = v86;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_125;
          }

          v88 = *v80;
          v82 = *(v80 + 8);
          *v80 = v82;
          *(v80 + 8) = v88;
          v80 -= 8;
        }

        while (!__CFADD__(v83++, 1));
        v12 = v102 + 1;
        v80 = v95 + 8;
        --v81;
      }

      while (v102 + 1 != v94);
      v12 = v94;
      v6 = a3;
      v11 = v98;
      if (v94 < v98)
      {
        goto LABEL_118;
      }
    }

    v31 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10007A8A0(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = sub_10007A8A0((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v31;
    *(v35 + 5) = v12;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    v9 = v12;
    if (v33)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v37 = v34 - 1;
    if (v34 >= 4)
    {
      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_111;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_117;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v38 = *(v10 + 4);
      v39 = *(v10 + 5);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_48:
      if (v41)
      {
        goto LABEL_107;
      }

      v54 = &v10[16 * v34];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_110;
      }

      v60 = &v10[16 * v37 + 32];
      v62 = *v60;
      v61 = *(v60 + 1);
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_114;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v64 = &v10[16 * v34];
    v66 = *v64;
    v65 = *(v64 + 1);
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_62:
    if (v59)
    {
      goto LABEL_109;
    }

    v67 = &v10[16 * v37];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_112;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_69:
    v75 = v37 - 1;
    if (v37 - 1 >= v34)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_124;
    }

    v76 = *&v10[16 * v75 + 32];
    v77 = *&v10[16 * v37 + 40];
    sub_10007BF40((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36, a5);
    if (v5)
    {
      goto LABEL_99;
    }

    if (v77 < v76)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10007C398(v10);
    }

    if (v75 >= *(v10 + 2))
    {
      goto LABEL_104;
    }

    v78 = &v10[16 * v75];
    *(v78 + 4) = v76;
    *(v78 + 5) = v77;
    sub_10007C30C(v37);
    v34 = *(v10 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
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
  v10 = sub_10007C398(v10);
LABEL_91:
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
LABEL_99:
  }

  else
  {
    while (*v6)
    {
      v91 = *&v10[16 * v90];
      v92 = *&v10[16 * v90 + 24];
      sub_10007BF40((*v6 + 8 * v91), (*v6 + 8 * *&v10[16 * v90 + 16]), (*v6 + 8 * v92), v9, a5);
      if (v5)
      {
        goto LABEL_99;
      }

      if (v92 < v91)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10007C398(v10);
      }

      if (v90 - 2 >= *(v10 + 2))
      {
        goto LABEL_116;
      }

      v93 = &v10[16 * v90];
      *v93 = v91;
      *(v93 + 1) = v92;
      sub_10007C30C(v90 - 1);
      v90 = *(v10 + 2);
      if (v90 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

void sub_10007DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_10007DFD8(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000578B4(&qword_1000DA858, &qword_100093840);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_10007D868(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10007DEE0(0, v4, 1, a1, a2);
  }
}

void sub_10007E108(unint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_10007CEDC(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  sub_10007DFD8(v6, a2);
  *a1 = v4;
}

uint64_t sub_10007E198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E208(uint64_t a1)
{
  v2 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10007E270(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a4;
  v36 = a2;
  v37 = a3;
  v5 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v38 = v33 - v7;
  v35 = a1;
  v8 = [a1 allDisplayedItems];
  v9 = sub_10005B9DC(0, &qword_1000DA818, HFItem_ptr);
  sub_100057D7C(&unk_1000DA820, &qword_1000DA818, HFItem_ptr);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v33[2] = v9;
  if ((v10 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v10 = v41;
    v11 = v42;
    v12 = v43;
    v13 = v44;
    v14 = v45;
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v10 + 56);
  }

  v33[1] = v12;
  v18 = (v12 + 64) >> 6;
  v33[3] = v34 + 16;
  while (v10 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24 || (v39 = v24, swift_dynamicCast(), v23 = v40, v21 = v13, v22 = v14, !v40))
    {
LABEL_24:
      sub_100059150();
      return;
    }

LABEL_19:
    v33[4] = v14;
    v33[5] = v13;
    v25 = v38;
    sub_10007E198(v36, v38);
    v26 = type metadata accessor for UUID();
    v27 = *(v26 - 8);
    isa = 0;
    if ((*(v27 + 48))(v25, 1, v26) != 1)
    {
      v29 = v38;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v27 + 8))(v29, v26);
    }

    v30 = [v37 serviceLikeItemWithItem:v23 itemManager:v35 withID:isa];

    if (v30)
    {
      if ((*(v34 + 16))(v34, v30))
      {
        v31 = [v30 accessories];
        sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
        sub_100057D7C(&qword_1000D9E70, &unk_1000DA2C0, HMAccessory_ptr);
        v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000773E4(v32, &unk_1000DA2C0, HMAccessory_ptr);
        sub_100059150();

        return;
      }
    }

    v13 = v21;
    v14 = v22;
  }

  v19 = v13;
  v20 = v14;
  v21 = v13;
  if (v14)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_24;
    }

    v20 = *(v11 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_10007E698()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007E6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007E6E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10007E76C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_100079FA8(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_10007E790(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10007E804(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10007E8E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005A7A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007E938(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_10007E954(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10007E970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007E9AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_10007E9FC(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_10007EAE4()
{
  result = qword_1000DA8C0;
  if (!qword_1000DA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA8C0);
  }

  return result;
}

unint64_t sub_10007EB3C()
{
  result = qword_1000DA8C8;
  if (!qword_1000DA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA8C8);
  }

  return result;
}

unint64_t sub_10007EBFC()
{
  result = qword_1000DA8D0;
  if (!qword_1000DA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA8D0);
  }

  return result;
}

uint64_t sub_10007EC50()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10006E590(v0, qword_1000DB8A8);
  sub_10006AF58(v0, qword_1000DB8A8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10007ECB4()
{
  v0 = sub_1000578B4(&qword_1000DA9A0, &qword_100093B28);
  sub_10006E590(v0, qword_1000DB8C0);
  v1 = sub_10006AF58(v0, qword_1000DB8C0);
  IntentDescription.init(stringLiteral:)();
  v2 = type metadata accessor for IntentDescription();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10007ED74(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10007EE34, 0, 0);
}

uint64_t sub_10007EE34()
{
  v43 = v0;
  if (qword_1000D97F8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10006AF58(v2, qword_1000DB8D8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10006B744(0x286D726F66726570, 0xE900000000000029, &v42);
    *(v9 + 12) = 2080;
    IntentParameter.wrappedValue.getter();
    sub_1000769F4();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v5 + 8))(v6, v8);
    v13 = sub_10006B744(v10, v12, &v42);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "OpenURLInHomeIntent %s - url is %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[3];
  v17 = v0[4];
  IntentParameter.wrappedValue.getter();
  v18 = URL.scheme.getter();
  v20 = v19;
  v21 = *(v15 + 8);
  v21(v14, v17);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v20)
  {
    if (v18 == v22 && v20 == v23)
    {
      goto LABEL_13;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
LABEL_14:

LABEL_15:
      v27 = v0[6];
      v28 = v0[3];
      v29 = v0[4];
      v30 = [objc_opt_self() sharedInstance];
      IntentParameter.wrappedValue.getter();
      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      v21(v27, v29);
      v34 = [v30 openURL:v33];

      goto LABEL_19;
    }

    if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v26)
    {
LABEL_13:

      goto LABEL_14;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_15;
    }
  }

  else
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v33 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v33, v35, "OpenURLInHomeIntent - URL does not appear to be a Home app URL", v36, 2u);
  }

LABEL_19:
  v37 = v0[6];
  v38 = v0[2];

  static IntentResult.result<>()();

  v39 = v0[1];

  return v39();
}

uint64_t sub_10007F26C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10006AF58(v2, qword_1000DB8A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10007F320@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000D97F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000578B4(&qword_1000DA9A0, &qword_100093B28);
  v3 = sub_10006AF58(v2, qword_1000DB8C0);

  return sub_10007F858(v3, a1);
}

uint64_t sub_10007F3A4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006BDE0;

  return sub_10007ED74(a1, v4);
}

uint64_t sub_10007F444@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000578B4(&qword_1000DA980, &qword_100093B00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_1000578B4(&qword_1000DA988, &qword_100093B08);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_1000578B4(&qword_1000DA990, &qword_100093B10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = type metadata accessor for LocalizedStringResource();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_1000578B4(&qword_1000DA998, &qword_100093B18);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v1);
  result = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  *v25 = result;
  return result;
}

uint64_t sub_10007F780(uint64_t a1)
{
  v2 = sub_10007EBFC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10007F7F4()
{
  result = qword_1000DA970;
  if (!qword_1000DA970)
  {
    sub_10005A7A0(&qword_1000DA978, &qword_100093AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA970);
  }

  return result;
}

uint64_t sub_10007F858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000578B4(&qword_1000DA9A0, &qword_100093B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007F8C8()
{
  v0 = type metadata accessor for Logger();
  sub_10006E590(v0, qword_1000DB8D8);
  sub_10006AF58(v0, qword_1000DB8D8);
  return Logger.init(subsystem:category:)();
}

void sub_10007F988(void *a1, NSObject *a2)
{
  v4 = [a1 topViewController];
  v5 = [a1 onboardingViewControllers];
  v6 = [a1 onboardingStates];
  v7 = [HOOnboardingRootNavigationController stringForOnboardingStates:v6];
  v8 = 136315906;
  v9 = "[HOOnboardingRootNavigationController activeOnboardingState]";
  v10 = 2112;
  v11 = v4;
  v12 = 2112;
  v13 = v5;
  v14 = 2112;
  v15 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "(%s) Unable to find state index for topViewController %@ among onboardingViewControllers %@ | onboardingStates = %@", &v8, 0x2Au);
}

void sub_10007FAA0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HOOnboardingSegmentViewController.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

void sub_10007FB30(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[HODiscoverWebKitContentController parseURLForThemeType:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "(%s) error = %@", &v2, 0x16u);
}

void sub_10007FBBC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  [v4 handleFailureInFunction:v3 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", a2, objc_opt_class()}];
}

void sub_10007FC64(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  sub_10000B338();
  sub_10000B350(&_mh_execute_header, v4, v5, "Action set not found for action set shortcut item: %@. Action set identifier: %@");
}

void sub_10007FCD4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  sub_10000B338();
  sub_10000B350(&_mh_execute_header, v4, v5, "Home not found for action set shortcut item: %@. Home identifier: %@");
}

void sub_10007FD6C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  v2 = objc_opt_class();
  sub_10000F9E4(v2, v3, v4, @"NSObject+NAAdditions.h");
}

void sub_10007FF7C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to open URL: %@", &v2, 0xCu);
}

void sub_10007FFF4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to open URL: %@", &v3, 0xCu);
}

void sub_1000800A4(void *a1)
{
  v6 = [a1 tableView];
  sub_100023090();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100080134()
{
  sub_1000230A0();
  v6 = [v0 topViewController];
  sub_100023090();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000801D8()
{
  sub_1000230A0();
  v2 = [*v1 topViewController];
  v3 = [*v0 topViewController];
  v9 = [v3 presentedViewController];
  sub_100023090();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1000802EC()
{
  sub_1000230A0();
  v10 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  v1 = objc_opt_class();
  sub_1000230AC(v1, v2, v3, @"NSObject+NAAdditions.h", v4, @"Expected class of %@ but was %@", v5, v6, v7, v8, v9, v10);
}

void sub_100080380(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HOAppDelegate+PerformanceTests.m" lineNumber:162 description:@"Oops - Expected a scroll view"];
}

void sub_10008048C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PPT - Cannot find created room %@", &v2, 0xCu);
}

void sub_100080538(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PPT - Error cleaning up after creating a room: %@", &v2, 0xCu);
}

void sub_100080640()
{
  v2[0] = 136315394;
  sub_10002D474();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "(%s) error = %@", v2, 0x16u);
}

void sub_1000806C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10002D474();
  sub_10002D464();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100080748()
{
  sub_10001932C();
  sub_10002D464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000807C4()
{
  sub_1000230A0();
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = *(v1 + 32);
  v5 = 136315650;
  v6 = "[HOAppNavigator showHH2OnboardingFlowForHomeIfMigrationAvailable:]_block_invoke_2";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Failed to fetch owner devices for homeManager: %@ and home: %@", &v5, 0x20u);
}

void sub_10008089C()
{
  v2[0] = 136315394;
  sub_10002D474();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "(%s) error = %@", v2, 0x16u);
}

void sub_100080964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_10001932C();
  sub_10002D464();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000809E4()
{
  sub_1000230A0();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HOAppNavigator.m" lineNumber:814 description:{@"Invalid parameter not satisfying: %@", @"home"}];
}

void sub_100080A5C()
{
  sub_1000230A0();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HOAppNavigator.m" lineNumber:823 description:{@"Invalid parameter not satisfying: %@", @"home"}];
}

void sub_100080AD4()
{
  sub_1000230A0();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HOAppNavigator.m" lineNumber:833 description:{@"Invalid parameter not satisfying: %@", @"home"}];
}

void sub_100080B4C()
{
  sub_1000230A0();
  v10 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10002D484();
  sub_1000230AC(v1, v2, v3, @"NSObject+NAAdditions.h", v4, @"Expected class of %@ but was %@", v5, v6, v7, v8, v9, v10);
}

void sub_100080CB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10002D474();
  sub_10002D464();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100080DFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100030FE0();
  sub_10000B350(&_mh_execute_header, v2, v3, "Trigger name lookup failed for trigger with identifier %@ received error: %@");
}

void sub_100080E68(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100030FE0();
  sub_10000B350(&_mh_execute_header, v2, v3, "User confirmation of trigger with identifier %@ received error: %@");
}

void sub_100080ED4(void *a1, uint64_t a2, NSObject *a3)
{
  v6[0] = 67109376;
  v6[1] = [a1 userHasValidHMSettings];
  v7 = 1024;
  v8 = [a1 _areHMSettingsValidForHome:a2];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Got settings update - but not a settings validity transition - ignoring: userHasValidHMSettings = %{BOOL}d _areHMSettingsValidForHome] = %{BOOL}d ", v6, 0xEu);
}

void sub_100080FB4(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[HOManagedConfigurationUtilities popProfileDataFromHeadOfInstallationQueue]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "(%s) popped profile data is nil", &v1, 0xCu);
}

void sub_100081088(uint64_t a1, uint64_t a2)
{
  v3 = +[NSAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  [v3 handleFailureInFunction:v4 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", a2, objc_opt_class()}];
}

void sub_100081134(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_1000812A8(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  sub_10001932C();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[HODataSyncingViewController-_resetButtonConfirmed] Error erasing Home data: %@", v4, 0xCu);
}

void sub_10008133C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_10001932C();
  sub_10000B350(&_mh_execute_header, v3, v4, "[HODataSyncingViewController-startCDPRepair] CDPUIDeviceToDeviceEncryption repair failed. Error: %@ primaryAccountAltDSID: %@");
}

void sub_1000813B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_10001932C();
  sub_10000B350(&_mh_execute_header, v3, v4, "[HODataSyncingViewController-startCDPRepair] CDPUIDeviceToDeviceEncryption encountered error: %@ primaryAccountAltDSID: %@");
}

void sub_100081454()
{
  v2 = 136315650;
  sub_10004305C();
  sub_100043070(&_mh_execute_header, v0, v1, "(%s) error occurred opening url %@ : %@", v2);
}

void sub_1000814D0()
{
  v2 = 136315650;
  sub_10004305C();
  sub_100043070(&_mh_execute_header, v0, v1, "(%s) error occurred opening sensitive url %@: %@", v2);
}

void sub_10008154C()
{
  v1[0] = 136315394;
  sub_10004305C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "failure: (%s) could not open sensitive url %@", v1, 0x16u);
}

void sub_1000815CC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HOProfileInstaller openSenderURL]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "(%s) senderURLStr is empty string", &v1, 0xCu);
}

void sub_100081650(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) senderURLString];
  v4[0] = 136315394;
  sub_10004305C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "(%s) url %@ could not be opened", v4, 0x16u);
}

void sub_100081708(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HOHomePodProfileInstaller deviceProfileCompletedNotification:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "(%s) profile installation failed", &v1, 0xCu);
}

void sub_10008178C()
{
  v1 = 136315394;
  v2 = "[HOHomePodProfileInstaller deviceProfileCompletedNotification:]";
  sub_100045300();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "(%s) error occurred when created MCProfile object with NSData: %@", &v1, 0x16u);
}

void sub_100081810(uint64_t a1, uint64_t *a2)
{
  v8 = [*(a1 + 40) hf_prettyDescription];
  v9 = *a2;
  sub_100023090();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000818C0(id *a1)
{
  [*a1 count];
  v2 = [*a1 hf_prettyDescription];
  sub_100045300();
  sub_100023090();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100081970(uint64_t a1)
{
  v1 = [*(a1 + 48) home];
  v7 = [v1 hf_prettyDescription];
  sub_100023090();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100081A1C()
{
  v1 = 136315394;
  v2 = "[HOHomePodProfileInstaller _presentManagedConfigurationProfileInstallation]_block_invoke";
  sub_100045300();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "(%s) error occurred: %@", &v1, 0x16u);
}