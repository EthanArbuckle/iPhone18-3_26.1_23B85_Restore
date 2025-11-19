__n128 sub_1000340D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100034104(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_10003414C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000341E8()
{
  v1 = v0;
  v13 = *v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v2 - 8);
  v15 = v2;
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *(v0 + 80) = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[11] = 0;
  v7 = sub_10000F974(&qword_1004A2890);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v7 + 272);
  swift_retain_n();
  v1[14] = v10(KeyPath, v9);
  sub_10000F974(&qword_1004A2898);
  swift_getKeyPath();
  v1[15] = MutableStateValue.__allocating_init(_:_:)();
  v16 = 0;
  sub_10000F974(&qword_1004A28A0);
  swift_allocObject();
  v1[16] = Synchronized.init(wrappedValue:)();
  swift_unknownObjectUnownedInit();
  v1[18] = _swiftEmptyArrayStorage;
  v11 = swift_getKeyPath();
  v12 = sub_10000F974(&qword_1004A7530);
  v1[19] = (*(v12 + 272))(v11, v9);
  swift_unknownObjectWeakInit();
  sub_100018630(0, &qword_1004A3F00);
  static DispatchQoS.userInitiated.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100038BFC(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0);
  sub_100038C44(&qword_1004A4030, &qword_1004ABEE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  v1[21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003460C()
{

  StateValue.ifUpdated(_:)();
}

void sub_100034668()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 80);
  if (v11 <= 4)
  {
    if (*(v0 + 80) <= 1u)
    {
      if (!*(v0 + 80))
      {
        return;
      }

      v28 = *(v0 + 72);
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = (v28 + 40);
        do
        {
          v31 = *v30;
          ObjectType = swift_getObjectType();
          v33 = *(v31 + 8);
          swift_unknownObjectRetain();
          v33(ObjectType, v31);
          swift_unknownObjectRelease();
          v30 += 2;
          --v29;
        }

        while (v29);
      }

      v24 = 2;
    }

    else
    {
      if (v11 == 2)
      {
        v34 = *(v0 + 72);
        v35 = (v34 + 40);
        v36 = -*(v34 + 16);
        v37 = -1;
        while (1)
        {
          if (v36 + v37 == -1)
          {
            v24 = 3;
            goto LABEL_40;
          }

          if (++v37 >= *(v34 + 16))
          {
            break;
          }

          v38 = v35 + 2;
          v39 = *v35;
          v40 = swift_getObjectType();
          v41 = *(v39 + 24);
          swift_unknownObjectRetain();
          LOBYTE(v39) = v41(v40, v39);
          swift_unknownObjectRelease();
          v35 = v38;
          if ((v39 & 1) == 0)
          {
            return;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (v11 != 3)
      {
        *(v0 + 80) = 5;
        v56 = v8;
        sub_100018630(0, &qword_1004A3F00);
        v55 = static OS_dispatch_queue.main.getter();
        v62 = sub_100038D00;
        v63 = v0;
        aBlock = _NSConcreteStackBlock;
        v59 = 1107296256;
        v60 = sub_100041180;
        v61 = &unk_100468A40;
        v42 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80);
        sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v43 = v55;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v42);

        (*(v3 + 8))(v5, v2);
        (*(v7 + 8))(v10, v56);
        return;
      }

      v24 = 4;
    }
  }

  else
  {
    if (*(v0 + 80) <= 7u)
    {
      if (v11 == 5)
      {
        return;
      }

      if (v11 == 6)
      {
        v53 = v7;
        v54 = v3;
        v55 = v2;
        v56 = v8;
        v12 = *(v0 + 72);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = (v12 + 40);
          do
          {
            v15 = *v14;
            v16 = swift_getObjectType();
            v17 = *(v15 + 16);
            swift_unknownObjectRetain();
            v17(v16, v15);
            swift_unknownObjectRelease();
            v14 += 2;
            --v13;
          }

          while (v13);
        }

        if ([objc_opt_self() jasperAvailable])
        {

          Synchronized.wrappedValue.getter();

          v18 = aBlock;
          if (aBlock)
          {
            v19 = *(v1 + 168);
            v20 = swift_allocObject();
            *(v20 + 16) = v1;
            *(v20 + 24) = v18;
            v62 = sub_100038CD8;
            v63 = v20;
            aBlock = _NSConcreteStackBlock;
            v59 = 1107296256;
            v60 = sub_100041180;
            v61 = &unk_100468A18;
            v21 = _Block_copy(&aBlock);

            v22 = v19;
            v52 = v18;
            static DispatchQoS.unspecified.getter();
            v57 = _swiftEmptyArrayStorage;
            sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
            sub_10000F974(&unk_1004A3D80);
            sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
            v23 = v55;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v21);

            (*(v54 + 8))(v5, v23);
            (*(v53 + 8))(v10, v56);
          }

          aBlock = 0;

          Synchronized.wrappedValue.setter();
        }

        v24 = 7;
      }

      else
      {
        v44 = *(v0 + 72);
        v45 = (v44 + 40);
        v46 = -*(v44 + 16);
        v47 = -1;
        while (v46 + v47 != -1)
        {
          if (++v47 >= *(v44 + 16))
          {
            goto LABEL_43;
          }

          v48 = v45 + 2;
          v49 = *v45;
          v50 = swift_getObjectType();
          v51 = *(v49 + 32);
          swift_unknownObjectRetain();
          LOBYTE(v49) = v51(v50, v49);
          swift_unknownObjectRelease();
          v45 = v48;
          if ((v49 & 1) == 0)
          {
            return;
          }
        }

        v24 = 8;
      }

      goto LABEL_40;
    }

    if (v11 != 8)
    {
      if (v11 != 9)
      {
        return;
      }

      *(v0 + 80) = 10;
      v56 = v8;
      sub_100018630(0, &qword_1004A3F00);
      v55 = static OS_dispatch_queue.main.getter();
      v62 = sub_100038BDC;
      v63 = v0;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100041180;
      v61 = &unk_1004689C8;
      v25 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80);
      sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v55;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v10, v56);
      if (qword_1004A02A8 == -1)
      {
LABEL_20:
        v27._object = 0x8000000100400CE0;
        v27._countAndFlagsBits = 0xD000000000000016;
        Log.default(_:isPrivate:)(v27, 0);
        return;
      }

LABEL_44:
      swift_once();
      goto LABEL_20;
    }

    v24 = 9;
  }

LABEL_40:
  *(v1 + 80) = v24;
}

uint64_t sub_100034F84(uint64_t result, uint64_t a2)
{
  if (!*(v2 + 80))
  {
    v4 = result;
    v5 = *(v2 + 64);
    v6 = [v5 snapshotViewAfterScreenUpdates:0];
    if (v6)
    {
      v7 = v6;
      [v5 bounds];
      [v7 setFrame:?];
      v8 = [v5 superview];
      [v8 addSubview:v7];

      v9 = *(v2 + 88);
      *(v2 + 88) = v7;
    }

    v10 = *(v2 + 96);
    *(v2 + 96) = v4;
    *(v2 + 104) = a2;
    sub_1000223C4(v10);
    *(v2 + 80) = 1;
  }

  return result;
}

void sub_100035080()
{

  sub_1000223C4(*(v0 + 96));

  swift_unknownObjectUnownedDestroy();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 168);
}

uint64_t sub_100035100()
{
  v0 = StateObserver.deinit();

  sub_1000223C4(*(v0 + 96));

  swift_unknownObjectUnownedDestroy();

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100035188()
{
  sub_100035100();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CaptureController()
{
  result = qword_1004A2720;
  if (!qword_1004A2720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CaptureController.CaptureState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CaptureController.CaptureState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000353F0()
{
  result = qword_1004A2888;
  if (!qword_1004A2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A2888);
  }

  return result;
}

uint64_t sub_100035444()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018630(0, &qword_1004A3F00);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = _dispatchPreconditionTest(_:)();
  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v9(v6, v3);
  if (v7)
  {
    v228 = _swiftEmptyArrayStorage;
    v8 = *(v2 + 64);
    v10 = [v8 subviews];
    sub_100018630(0, &qword_1004A7550);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v3 >> 62))
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
LABEL_4:
  v222 = v2;
  if (v11)
  {
    if (v11 < 1)
    {
      __break(1u);
      goto LABEL_78;
    }

    v12 = 0;
    v221 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v3 + 8 * v12 + 32);
      }

      v13 = v14;
      if (([v14 isHidden] & 1) == 0)
      {
        swift_getObjectType();
        if (!swift_conformsToProtocol2() || !v13)
        {
          v13 = v13;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v228 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v228 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v221 = *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v221 = v228;
          [v13 setHidden:1];
        }
      }

      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    v221 = _swiftEmptyArrayStorage;
  }

  sub_100018630(0, &qword_1004A28A8);
  v15 = [swift_getObjCClassFromMetadata() preferredFormat];
  [v8 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = objc_allocWithZone(UIGraphicsImageRenderer);
  v206 = v15;
  v25 = [v24 initWithBounds:v15 format:{v17, v19, v21, v23}];
  v26 = swift_allocObject();
  v11 = v222;
  *(v26 + 16) = sub_100038D04;
  *(v26 + 24) = v11;
  v227[4] = sub_100038D64;
  v227[5] = v26;
  v227[0] = _NSConcreteStackBlock;
  v227[1] = 1107296256;
  v227[2] = sub_1001C5E40;
  v227[3] = &unk_100468A90;
  v27 = _Block_copy(v227);

  v205 = v25;
  v28 = [v25 imageWithActions:v27];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
    goto LABEL_76;
  }

  if (qword_1004A04D8 != -1)
  {
LABEL_76:
    swift_once();
  }

  PublishedValue.wrappedValue.getter();

  if (!v28 || (v29 = v227[0], v30 = UIImage.rotated(to:)(), v31 = v30, v28, !v30))
  {
    v1 = v221;
    if (!(v221 >> 62))
    {
      v103 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v104 = &selRef_setFrame_;
      if (!v103)
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    }

LABEL_78:
    v103 = _CocoaArrayWrapper.endIndex.getter();
    v104 = &selRef_setFrame_;
    if (!v103)
    {
      goto LABEL_79;
    }

LABEL_67:
    if (v103 < 1)
    {
      goto LABEL_81;
    }

    for (i = 0; i != v103; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v106 = *(v1 + 8 * i + 32);
      }

      v107 = v106;
      [v106 v104[1]];
    }

LABEL_79:
    v109 = v205;
    v108 = v206;
    goto LABEL_162;
  }

  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_145;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_145;
  }

  v199 = v31;
  v200 = v29;
  v198 = v30;
  swift_beginAccess();
  *(v11 + 144) = _swiftEmptyArrayStorage;

  v32 = *(**(v11 + 152) + 144);

  v32(v227, v33);

  *&v226[0] = v227[0];

  v34 = sub_10000F974(&qword_1004A1648);
  sub_10000F974(&qword_1004A1650);
  result = swift_dynamicCast();
  v11 = v227[0];
  v213 = v34;
  if (v227[0] >> 62)
  {
    goto LABEL_82;
  }

  v36 = *((v227[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
    do
    {
      if (v36 < 1)
      {
        __break(1u);
LABEL_166:
        __break(1u);
        return result;
      }

      v37 = 0;
      v38 = v11 & 0xC000000000000001;
      v214 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v38)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v39 = *(v11 + 8 * v37 + 32);
        }

        v40 = v39;
        v41 = *((swift_isaMask & *v39) + 0x250);
        v42 = v41();
        if (v42 >> 62)
        {
          v43 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v43 < 2 || ((*((swift_isaMask & *v40) + 0x2C8))(v44) & 1) == 0)
        {

          goto LABEL_30;
        }

        v45 = [Strong frame];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v54 = (v41)(v45);
        if ((v54 & 0xC000000000000001) != 0)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_41;
        }

        if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v55 = *(v54 + 32);
LABEL_41:
        v56 = v55;

        *&v58 = (*((swift_isaMask & *v56) + 0x2B0))(v57);
        v219 = v59;
        v220 = v58;
        v217 = v61;
        v218 = v60;

        simd_float4x4.position.getter();
        v220 = v62;
        type metadata accessor for MeasureCamera();

        StateValue.wrappedValue.getter();

        memcpy(v226, v225, 0x1F8uLL);
        sub_100038ECC(v226);
        v218 = v226[11];
        v219 = v226[10];
        v216 = v226[13];
        v217 = v226[12];

        StateValue.wrappedValue.getter();

        memcpy(v227, v225, sizeof(v227));
        sub_100038ECC(v227);
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        if (v64 < 0.0)
        {
          goto LABEL_48;
        }

        if (v64 > 1.0)
        {
          goto LABEL_48;
        }

        v65 = vcvtq_f64_f32(v63);
        y = v65.y;
        v229.origin.x = v47;
        v229.origin.y = v49;
        v229.size.width = v51;
        v229.size.height = v53;
        if (!CGRectContainsPoint(v229, v65))
        {
          goto LABEL_48;
        }

        result = v41();
        if ((result & 0xC000000000000001) != 0)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_166;
          }

          v67 = *(result + 40);
        }

        v68 = v67;

        *&v70 = (*((swift_isaMask & *v68) + 0x2B0))(v69);
        v219 = v71;
        v220 = v70;
        v217 = v73;
        v218 = v72;

        simd_float4x4.position.getter();
        v75 = sub_1000385F0(v74, v47, v49, v51, v53);
        if ((v76 & 1) == 0)
        {
          v77 = (*((swift_isaMask & *v40) + 0x268))(v75);
          *&v78 = (*((swift_isaMask & *v77) + 0x2B0))();
          v219 = v79;
          v220 = v78;
          v217 = v81;
          v218 = v80;

          simd_float4x4.position.getter();
          v220 = v82;

          StateValue.wrappedValue.getter();

          memcpy(v224, v225, 0x1F8uLL);
          sub_100038ECC(v224);
          v218 = v224[11];
          v219 = v224[10];
          v216 = v224[13];
          v217 = v224[12];

          StateValue.wrappedValue.getter();

          memcpy(v225, v223, 0x1F8uLL);
          sub_100038ECC(v225);
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          v84 = *&v83;
          v85 = *(&v83 + 1);
          if (v200 == 2)
          {
            v89 = Strong;
            [Strong frame];
            v87 = v90 - v84;
            [v89 frame];
            v84 = v91 - v85;
          }

          else if (v200 == 4)
          {
            [Strong frame];
            v87 = v88 - v85;
          }

          else if (v200 == 3)
          {
            [Strong frame];
            v84 = v86 - v84;
            v87 = v85;
          }

          else
          {
            v87 = *&v83;
            v84 = *(&v83 + 1);
          }

          v92 = *((swift_isaMask & *v40) + 0xB8);
          v93 = v40;
          v94 = v92();
          v96 = v95;

          v97 = v222;
          swift_beginAccess();
          v98 = *(v97 + 144);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v97 + 144) = v98;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v98 = sub_100067788(0, v98[2] + 1, 1, v98);
            *(v222 + 144) = v98;
          }

          v101 = v98[2];
          v100 = v98[3];
          if (v101 >= v100 >> 1)
          {
            v98 = sub_100067788((v100 > 1), v101 + 1, 1, v98);
          }

          v98[2] = v101 + 1;
          v102 = &v98[4 * v101];
          v102[4] = v87;
          v102[5] = v84;
          *(v102 + 6) = v94;
          *(v102 + 7) = v96;
          *(v222 + 144) = v98;
          swift_endAccess();
        }

        else
        {
LABEL_48:
        }

        v38 = v214;
LABEL_30:
        if (v36 == ++v37)
        {
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      result = _CocoaArrayWrapper.endIndex.getter();
      v36 = result;
    }

    while (result);
  }

LABEL_83:

  v110 = *(**(v222 + 152) + 144);

  v110(v227, v111);

  *&v226[0] = v227[1];

  sub_10000F974(&qword_1004A28B0);
  swift_dynamicCast();
  v31 = v227[0];
  if (v227[0] >> 62)
  {
    goto LABEL_164;
  }

  for (j = *((v227[0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = &swift_isaMask;
    if (j)
    {
      v113 = 0;
      v207 = v31 & 0xC000000000000001;
      v201 = v31 + 32;
      v202 = v31 & 0xFFFFFFFFFFFFFF8;
      v203 = v31;
      v204 = j;
      while (1)
      {
        if (v207)
        {
          v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v113 >= *(v202 + 16))
          {
            goto LABEL_158;
          }

          v114 = *(v201 + 8 * v113);
        }

        v115 = v114;
        if (__OFADD__(v113++, 1))
        {
          break;
        }

        v117 = *((swift_isaMask & *v114) + 0x230);
        v209 = (swift_isaMask & *v114) + 560;
        v210 = v117;
        v118 = v117();
        if (v118 >> 62)
        {
          v119 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v119 < 4)
        {
        }

        else
        {
          v121 = (v210)(v120);
          v122 = v121;
          if (v121 >> 62)
          {
            v123 = _CocoaArrayWrapper.endIndex.getter();
            if (v123)
            {
LABEL_99:
              j = 0;
              v213 = v122 & 0xFFFFFFFFFFFFFF8;
              v214 = v122 & 0xC000000000000001;
              v211 = v122;
              v212 = v115;
              v208 = v123;
              while (1)
              {
                if (v214)
                {
                  v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (j >= *(v213 + 16))
                  {
                    goto LABEL_154;
                  }

                  v124 = *(v122 + 8 * j + 32);
                }

                v125 = v124;
                v31 = j + 1;
                if (__OFADD__(j, 1))
                {
                  break;
                }

                v126 = *((swift_isaMask & *v124) + 0x250);
                v127 = v126();
                if (v127 >> 62)
                {
                  v128 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v128 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v128 <= 1)
                {
                  goto LABEL_128;
                }

                (*((swift_isaMask & *v125) + 0x2C8))(v129);
                v130 = [Strong frame];
                v132 = v131;
                v134 = v133;
                v136 = v135;
                v138 = v137;
                v139 = (v126)(v130);
                if ((v139 & 0xC000000000000001) != 0)
                {
                  v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_155;
                  }

                  v140 = *(v139 + 32);
                }

                v141 = v140;

                *&v143 = (*((swift_isaMask & *v141) + 0x2B0))(v142);
                v219 = v144;
                v220 = v143;
                v217 = v146;
                v218 = v145;

                simd_float4x4.position.getter();
                v220 = v147;
                type metadata accessor for MeasureCamera();

                StateValue.wrappedValue.getter();

                memcpy(v226, v225, 0x1F8uLL);
                sub_100038ECC(v226);
                v218 = v226[11];
                v219 = v226[10];
                v216 = v226[13];
                v217 = v226[12];

                StateValue.wrappedValue.getter();

                memcpy(v227, v225, sizeof(v227));
                sub_100038ECC(v227);
                static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
                v150 = v149 < 0.0 || v149 > 1.0;
                if (v150 || (v151 = vcvtq_f64_f32(v148), v152 = v151.y, v230.origin.x = v132, v230.origin.y = v134, v230.size.width = v136, v230.size.height = v138, !CGRectContainsPoint(v230, v151)))
                {

                  v11 = &swift_isaMask;
LABEL_130:
                  v31 = v203;
                  j = v204;
                  goto LABEL_88;
                }

                v153 = v126();
                if ((v153 & 0xC000000000000001) != 0)
                {
                  v154 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v11 = &swift_isaMask;
                }

                else
                {
                  v11 = &swift_isaMask;
                  if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                  {
                    goto LABEL_156;
                  }

                  v154 = *(v153 + 40);
                }

                *&v156 = (*((swift_isaMask & *v154) + 0x2B0))(v155);
                v219 = v157;
                v220 = v156;
                v217 = v159;
                v218 = v158;

                simd_float4x4.position.getter();
                v220 = v160;

                StateValue.wrappedValue.getter();

                memcpy(v224, v223, 0x1F8uLL);
                sub_100038ECC(v224);
                v218 = v224[11];
                v219 = v224[10];
                v216 = v224[13];
                v217 = v224[12];

                StateValue.wrappedValue.getter();

                memcpy(v225, v223, 0x1F8uLL);
                sub_100038ECC(v225);
                static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
                if (v162 < 0.0 || (v122 = v211, v162 > 1.0))
                {
LABEL_128:

                  goto LABEL_130;
                }

                v163 = vcvtq_f64_f32(v161);
                v164 = v163.y;
                v231.origin.x = v132;
                v231.origin.y = v134;
                v231.size.width = v136;
                v231.size.height = v138;
                v165 = CGRectContainsPoint(v231, v163);

                if (!v165)
                {

                  goto LABEL_130;
                }

                ++j;
                v115 = v212;
                if (v31 == v208)
                {
                  goto LABEL_133;
                }
              }

              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
              break;
            }
          }

          else
          {
            v123 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v123)
            {
              goto LABEL_99;
            }
          }

LABEL_133:

          v167 = (v210)(v166);
          if ((v167 & 0xC000000000000001) != 0)
          {
            v168 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            j = v204;
          }

          else
          {
            j = v204;
            if (!*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_159;
            }

            v168 = *(v167 + 32);
          }

          type metadata accessor for MeasureCamera();
          v169 = (*((swift_isaMask & *v168) + 0x268))();

          *&v170 = (*((swift_isaMask & *v169) + 0x2B0))();
          v219 = v171;
          v220 = v170;
          v217 = v173;
          v218 = v172;

          simd_float4x4.position.getter();
          v220 = v174;
          v175 = v222;

          StateValue.wrappedValue.getter();

          memcpy(v226, v227, 0x1F8uLL);
          sub_100038ECC(v226);
          v218 = v226[11];
          v219 = v226[10];
          v216 = v226[13];
          v217 = v226[12];

          StateValue.wrappedValue.getter();

          memcpy(v227, v225, sizeof(v227));
          sub_100038ECC(v227);
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          sub_100038538(v200, Strong);
          v177 = v176;
          v179 = v178;
          v180 = *((swift_isaMask & *v115) + 0xB8);
          v181 = v115;
          v182 = v180();
          v184 = v183;

          swift_beginAccess();
          v185 = *(v175 + 144);
          v186 = swift_isUniquelyReferenced_nonNull_native();
          *(v175 + 144) = v185;
          if ((v186 & 1) == 0)
          {
            v185 = sub_100067788(0, v185[2] + 1, 1, v185);
            *(v222 + 144) = v185;
          }

          v188 = v185[2];
          v187 = v185[3];
          if (v188 >= v187 >> 1)
          {
            v185 = sub_100067788((v187 > 1), v188 + 1, 1, v185);
          }

          v185[2] = v188 + 1;
          v189 = &v185[4 * v188];
          v189[4] = v177;
          v189[5] = v179;
          v189[6] = v182;
          v189[7] = v184;
          *(v222 + 144) = v185;
          swift_endAccess();

          v11 = &swift_isaMask;
          v31 = v203;
        }

LABEL_88:
        if (v113 == j)
        {
          goto LABEL_142;
        }
      }

      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
    }

    else
    {
LABEL_142:

      v11 = v222;
      if (*(*(v222 + 144) + 16))
      {
        v31 = v199;
        v227[0] = v198;
        v190 = v199;

        Synchronized.wrappedValue.setter();
      }

      else
      {

        v31 = v199;
      }

LABEL_145:
      v191 = *(v11 + 96);
      v192 = *(v11 + 104);
      sub_100038EBC(v191);
      sub_100038D6C(v31, v191, v192);
      sub_1000223C4(v191);
      j = v31;

      v113 = v221;
      if (!(v221 >> 62))
      {
        v193 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v194 = &selRef_setFrame_;
        if (!v193)
        {
          goto LABEL_161;
        }

        goto LABEL_147;
      }
    }

    v193 = _CocoaArrayWrapper.endIndex.getter();
    v194 = &selRef_setFrame_;
    if (!v193)
    {
      goto LABEL_161;
    }

LABEL_147:
    if (v193 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_164:
    ;
  }

  for (k = 0; k != v193; ++k)
  {
    if ((v113 & 0xC000000000000001) != 0)
    {
      v196 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v196 = *(v113 + 8 * k + 32);
    }

    v197 = v196;
    [v196 v194[1]];
  }

LABEL_161:

  v108 = v205;
  v109 = v206;
LABEL_162:

  *(v11 + 80) = 6;
}

uint64_t sub_100036C04(UIImage *a1)
{
  v142 = a1;
  v135 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DispatchQoS();
  v4 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for UUID();
  v6 = *(v156 - 8);
  __chkstk_darwin(v156);
  v147 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000F974(&unk_1004ABAD0);
  v9 = __chkstk_darwin(v8 - 8);
  v158 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v144 = &v119 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v146 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v154 = &v119 - v17;
  __chkstk_darwin(v16);
  v153 = &v119 - v18;
  v161 = type metadata accessor for MeasurementCapture();
  v19 = *(v161 - 8);
  v20 = __chkstk_darwin(v161);
  v129 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v131 = &v119 - v23;
  v24 = __chkstk_darwin(v22);
  v123 = &v119 - v25;
  v26 = __chkstk_darwin(v24);
  v145 = &v119 - v27;
  v28 = __chkstk_darwin(v26);
  v128 = &v119 - v29;
  v130 = v30;
  __chkstk_darwin(v28);
  v148 = &v119 - v31;
  v32 = type metadata accessor for MeasurementHistoryItem();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32 - 8);
  v35 = (&v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for MeasurementsHistory();
  __chkstk_darwin(v36 - 8);
  v166 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10000F974(&qword_1004A28B8);
  v39 = __chkstk_darwin(v38 - 8);
  v152 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = *(v13 + 56);
  v157 = &v119 - v42;
  v162 = v12;
  v122 = v13 + 56;
  v121 = v41;
  v41();
  swift_beginAccess();
  v168 = v1;
  v43 = *(v1 + 144);
  v44 = &unk_1003D5000;
  v165 = *(v43 + 16);
  if (!v165)
  {
    goto LABEL_47;
  }

  v164 = v43 + 32;
  v151 = (v13 + 48);
  v136 = (v13 + 32);
  v137 = (v13 + 16);
  v155 = (v6 + 8);
  v159 = (v13 + 8);
  v150 = (v19 + 56);
  v127 = v19;
  v143 = (v19 + 48);
  v126 = &v172;
  v120 = v2;
  v125 = (v2 + 8);
  v124 = (v4 + 8);
  v167 = v43;

  result = v167;
  v46 = 0;
  v160 = 0;
  v47 = v158;
  v163 = v4;
  while (1)
  {
    if (v46 >= *(result + 16))
    {
      goto LABEL_49;
    }

    v48 = v164 + 32 * v46;
    v50 = *(v48 + 16);
    v49 = *(v48 + 24);
    v51 = *(**(v168 + 120) + 144);

    v53 = v166;
    v51(v52);

    v54 = *v53;

    result = sub_100039090(v53, type metadata accessor for MeasurementsHistory);
    v55 = *(v54 + 16);
    if (!v55)
    {
LABEL_3:

      goto LABEL_4;
    }

    v56 = 0;
    while (1)
    {
      if (v56 >= *(v54 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      sub_100039028(v54 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v56, v35, type metadata accessor for MeasurementHistoryItem);
      if (*v35 == v50 && v35[1] == v49)
      {
        break;
      }

      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = sub_100039090(v35, type metadata accessor for MeasurementHistoryItem);
      if (v58)
      {
        goto LABEL_19;
      }

      if (v55 == ++v56)
      {
        goto LABEL_3;
      }
    }

    sub_100039090(v35, type metadata accessor for MeasurementHistoryItem);
LABEL_19:

    v59 = v152;
    sub_100038F20(v157, v152);
    v60 = v162;
    if ((*v151)(v59, 1, v162) == 1)
    {
      break;
    }

    v74 = v153;
    (*v136)(v153, v59, v60);
    v75 = *v137;
    v76 = v154;
    (*v137)(v154, v74, v60);
    v77 = v145;
    v149 = *(v161 + 20);
    v75((v145 + v149), v76, v60);
    if (qword_1004A01C8 != -1)
    {
      swift_once();
    }

    sub_10001D4C4(v60, qword_1004D4B68);
    v78 = v147;
    UUID.init()();
    UUID.uuidString.getter();
    (*v155)(v78, v156);
    v79 = v146;
    v80 = v162;
    URL.appendingPathComponent(_:)();

    URL.appendingPathExtension(_:)();
    v81 = *v159;
    (*v159)(v79, v80);
    v82 = v160;
    v83 = Data.init(contentsOf:options:)();
    if (v82)
    {
      sub_100039090(v77, type metadata accessor for MeasurementCapture);
      v81(v154, v80);
      v81(v153, v80);

      v160 = 0;
      v85 = 1;
      v47 = v158;
    }

    else
    {
      v160 = 0;
      v86 = v83;
      v149 = v84;
      v87 = sub_10017A6A8(v83, v84, 0);
      v88 = v162;
      sub_100038FD4(v86, v149);
      v81(v154, v88);
      v81(v153, v88);
      v47 = v158;
      if (v87)
      {
        sub_1000390F0(v145, v144);
        v85 = 0;
      }

      else
      {
        sub_100039090(v145, type metadata accessor for MeasurementCapture);
        v85 = 1;
      }
    }

    v92 = v144;
    v93 = v161;
    (*v150)(v144, v85, 1, v161);
    if ((*v143)(v92, 1, v93) != 1)
    {
      v94 = v92;
      v95 = v128;
      sub_1000390F0(v94, v128);
      result = sub_1000390F0(v95, v148);
      goto LABEL_41;
    }

    sub_100018F04(v92, &unk_1004ABAD0);
LABEL_4:
    v4 = v163;
LABEL_5:
    v44 = &unk_1003D5000;
LABEL_6:
    ++v46;
    result = v167;
    if (v46 == v165)
    {

      v2 = v120;
LABEL_47:
      sub_100018630(0, &qword_1004A3F00);
      v112 = v2;
      v113 = static OS_dispatch_queue.main.getter();
      v174 = sub_100038F90;
      v175 = v168;
      aBlock = _NSConcreteStackBlock;
      v171 = v44[72];
      v172 = sub_100041180;
      v173 = &unk_100468AE0;
      v114 = _Block_copy(&aBlock);

      v115 = v132;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
      v116 = v4;
      sub_10000F974(&unk_1004A3D80);
      sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
      v117 = v134;
      v118 = v135;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v114);

      (*(v112 + 8))(v117, v118);
      (*(v116 + 8))(v115, v133);
      return sub_100018F04(v157, &qword_1004A28B8);
    }
  }

  sub_100018F04(v59, &qword_1004A28B8);
  v61 = UIImageJPEGRepresentation(v142, 1.0);
  if (!v61)
  {
LABEL_35:
    v4 = v163;
    (*v150)(v47, 1, 1, v161);
    goto LABEL_36;
  }

  v62 = v61;
  v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v140 = v63;

  if (qword_1004A01C8 != -1)
  {
    swift_once();
  }

  v138 = sub_10001D4C4(v60, qword_1004D4B68);
  v64 = v147;
  UUID.init()();
  UUID.uuidString.getter();
  v139 = *v155;
  v139(v64, v156);
  v65 = v146;
  URL.appendingPathComponent(_:)();

  v149 = *(v161 + 20);
  v66 = v131;
  URL.appendingPathExtension(_:)();
  v67 = *v159;
  (*v159)(v65, v162);
  UUID.init()();
  UUID.uuidString.getter();
  v68 = v64;
  v69 = v66;
  v139(v68, v156);
  v70 = v162;
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v139 = v67;
  v67(v65, v70);
  v71 = v141;
  v72 = v140;
  v73 = v160;
  Data.write(to:options:)();
  if (v73)
  {
    sub_10017AD48();

    sub_100038FD4(v71, v72);
    v160 = 0;
    v47 = v158;
    goto LABEL_34;
  }

  v160 = 0;
  v89 = sub_10017A6A8(v71, v72, 1);
  sub_100038FD4(v71, v72);
  v47 = v158;
  if ((v89 & 1) == 0)
  {
LABEL_34:
    v91 = v139;
    v139(v69, v70);
    v91((v69 + v149), v70);
    goto LABEL_35;
  }

  sub_100039028(v69, v158, type metadata accessor for MeasurementCapture);
  v90 = v161;
  (*v150)(v47, 0, 1, v161);
  sub_100039090(v69, type metadata accessor for MeasurementCapture);
  if ((*v143)(v47, 1, v90) == 1)
  {
    v4 = v163;
LABEL_36:
    v44 = &unk_1003D5000;
    sub_100018F04(v47, &unk_1004ABAD0);
    goto LABEL_6;
  }

  v107 = v157;
  sub_100018F04(v157, &qword_1004A28B8);
  v108 = v47;
  v109 = v123;
  sub_1000390F0(v108, v123);
  v110 = v109;
  v111 = v148;
  sub_1000390F0(v110, v148);
  (*v137)(v107, (v111 + *(v90 + 20)), v70);
  result = (v121)(v107, 0, 1, v70);
LABEL_41:
  v96 = v127;
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  v97 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v149 = Contexts.PrivateQueue.init(_:)();
    v98 = v129;
    sub_100039028(v148, v129, type metadata accessor for MeasurementCapture);
    v99 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v100 = swift_allocObject();
    *(v100 + 16) = v168;
    *(v100 + 24) = v56;
    sub_1000390F0(v98, v100 + v99);
    v174 = sub_100039264;
    v175 = v100;
    aBlock = _NSConcreteStackBlock;
    v171 = 1107296256;
    v172 = sub_100041180;
    v173 = &unk_100468B30;
    v101 = _Block_copy(&aBlock);
    v102 = v97;
    v103 = v149;

    v104 = v132;
    static DispatchQoS.unspecified.getter();
    v169 = _swiftEmptyArrayStorage;
    sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
    v105 = v134;
    v106 = v135;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v101);

    (*v125)(v105, v106);
    (*v124)(v104, v133);
    sub_100039090(v148, type metadata accessor for MeasurementCapture);

    v4 = v163;
    v47 = v158;
    goto LABEL_5;
  }

LABEL_50:
  __break(1u);
  return result;
}

void sub_100038130(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(a1 + 88);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 88) = 0;

  *(a1 + 80) = 0;
}

uint64_t sub_10003817C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MeasurementCapture();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *(**(a1 + 120) + 200);

  v11 = v9(v10);

  sub_100039028(a3, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeasurementCapture);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  sub_1000390F0(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  (*(*v11 + 416))(sub_1000393D0, v13);
}

uint64_t sub_100038324(char *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10000F974(&unk_1004ABAD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_100039028(a3, &v16 - v7, type metadata accessor for MeasurementCapture);
  v9 = type metadata accessor for MeasurementCapture();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = sub_10006B7A4(v10);
  v10 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v10[2] <= a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = type metadata accessor for MeasurementHistoryItem();
  v13 = *(v12 - 8);
  v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a2;
  sub_100039444(v8, v14 + *(v12 + 24));
  *a1 = v10;
  v15 = *(type metadata accessor for MeasurementsHistory() + 24);
  result = sub_100018F04(&a1[v15], &qword_1004A28C0);
  if (v10[2] > a2)
  {
    sub_100039028(v14, &a1[v15], type metadata accessor for MeasurementHistoryItem);
    return (*(v13 + 56))(&a1[v15], 0, 1, v12);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_100038538(id result, id a2)
{
  if (result == 2)
  {
    [a2 frame];
    return [a2 frame];
  }

  else if (result == 4 || result == 3)
  {
    return [a2 frame];
  }

  return result;
}

double sub_1000385F0(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  type metadata accessor for MeasureCamera();

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, 0x1F8uLL);
  sub_100038ECC(__dst);

  StateValue.wrappedValue.getter();

  memcpy(__src, v18, 0x1F8uLL);
  sub_100038ECC(__src);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  if (v10 < 0.0 || v10 > 1.0)
  {
    return 0.0;
  }

  v13 = vcvtq_f64_f32(v9);
  v17 = v13;
  y = v13.y;
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  if (CGRectContainsPoint(v21, v13))
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  *&result = vandq_s8(v17, vdupq_n_s64(v16)).u64[0];
  return result;
}

uint64_t sub_100038744(void *a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  v21 = *v2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *(v2 + 80) = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[11] = 0;
  v9 = sub_10000F974(&qword_1004A2890);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1004D5058;
  v12 = *(v9 + 272);
  swift_retain_n();
  v3[14] = v12(KeyPath, v11);
  sub_10000F974(&qword_1004A2898);
  swift_getKeyPath();
  v3[15] = MutableStateValue.__allocating_init(_:_:)();
  v26 = 0;
  sub_10000F974(&qword_1004A28A0);
  swift_allocObject();
  v3[16] = Synchronized.init(wrappedValue:)();
  swift_unknownObjectUnownedInit();
  v3[18] = _swiftEmptyArrayStorage;
  v13 = swift_getKeyPath();
  v14 = sub_10000F974(&qword_1004A7530);
  v3[19] = (*(v14 + 272))(v13, v11);
  swift_unknownObjectWeakInit();
  sub_100018630(0, &qword_1004A3F00);
  static DispatchQoS.userInitiated.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100038BFC(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0);
  sub_100038C44(&qword_1004A4030, &qword_1004ABEE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v3[21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v24;
  v3[8] = v24;
  v16 = objc_opt_self();
  v17 = v15;
  if ([v16 jasperAvailable])
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v17;
    }

    swift_unknownObjectWeakAssign();
  }

  v3[9] = v25;
  v27 = &type metadata for Configurations.Default;
  v28 = &protocol witness table for Configurations.Default;
  return StateObserver.init(configuration:)();
}

uint64_t sub_100038BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100038BFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100038C44(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100013BB0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100038C98()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100038D04()
{
  v1 = *(v0 + 64);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

void sub_100038D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SSUIServiceOptions) init];
  [v6 setFlashStyle:0];
  [v6 setSaveLocation:1];
  v7 = [objc_allocWithZone(SSUIService) init];
  if (a2)
  {
    v11[4] = a2;
    v11[5] = a3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100041180;
    v11[3] = &unk_100468AB8;
    v8 = _Block_copy(v11);
    v9 = v6;
    sub_100038EBC(a2);
  }

  else
  {
    v10 = v6;
    v8 = 0;
  }

  [v7 showScreenshotUIForImage:a1 options:v6 withCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_100038EBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100038F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A28B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038F90()
{
  swift_beginAccess();
  *(v0 + 144) = _swiftEmptyArrayStorage;
}

uint64_t sub_100038FD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100039028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000390F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeasurementCapture();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039154()
{
  v1 = (type metadata accessor for MeasurementCapture() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100039264()
{
  v1 = *(type metadata accessor for MeasurementCapture() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10003817C(v2, v3, v4);
}

uint64_t sub_1000392C8()
{
  v1 = (type metadata accessor for MeasurementCapture() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000393D0(char *a1)
{
  v3 = *(type metadata accessor for MeasurementCapture() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100038324(a1, v4, v5);
}

uint64_t sub_100039444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004ABAD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000394E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100039514()
{
  v1 = v0;
  v2 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeGeometry, sub_100039D44);
  v3 = objc_opt_self();
  v4 = [v3 nodeWithGeometry:v2];

  v5 = String._bridgeToObjectiveC()();
  [v4 setName:v5];

  v6 = *&v1[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_detector];
  v7 = (*(*v6 + 544))();
  if ((*LocalPlaneDetector.DebugOptions.showPlane.unsafeMutableAddressor() & ~v7) != 0)
  {
    v8 = 1;
  }

  else
  {
    (*(*v6 + 496))(v37);
    v8 = v38;
  }

  [v4 setHidden:v8 & 1];
  v9 = [objc_opt_self() whiteColor];
  v10 = sub_10003AFF0(v9, 0.001);

  [v4 addChildNode:v10];
  v11 = objc_opt_self();
  v12 = [v11 planeWithWidth:0.1 height:0.005];
  v13 = [v3 nodeWithGeometry:v12];

  v14 = String._bridgeToObjectiveC()();
  [v13 setName:v14];

  v15 = [v13 geometry];
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v15 materials];

  sub_100018630(0, &qword_1004AF720);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  [v21 setColorBufferWriteMask:8];

LABEL_13:
  [v4 addChildNode:v13];
  v22 = [v11 planeWithWidth:0.005 height:0.1];
  v23 = [v3 nodeWithGeometry:v22];

  v24 = String._bridgeToObjectiveC()();
  [v23 setName:v24];

  v25 = [v23 geometry];
  if (!v25)
  {
LABEL_22:
    [v4 addChildNode:v23];
    v31 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v32 = [objc_opt_self() textWithString:v31 extrusionDepth:{0.01, 0, 0xE000000000000000}];
    swift_unknownObjectRelease();
    v33 = String._bridgeToObjectiveC()();
    v34 = [objc_opt_self() fontWithName:v33 size:1.0];

    [v32 setFont:v34];
    v35 = [v3 nodeWithGeometry:v32];
    v36 = String._bridgeToObjectiveC()();
    [v35 setName:v36];

    [v35 position];
    [v35 setPosition:?];
    v39 = SCNVector3.init(_:_:_:)(0.02, 0.02, 0.02);
    [v35 setScale:{*&v39.x, *&v39.y, *&v39.z}];
    [v4 addChildNode:v35];
    [v1 addChildNode:v4];

    return v4;
  }

  v26 = v25;
  v27 = [v25 materials];

  sub_100018630(0, &qword_1004AF720);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_16;
    }

LABEL_21:

    goto LABEL_22;
  }

  result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v28 + 32);
LABEL_19:
    v30 = v29;

    [v30 setColorBufferWriteMask:8];

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100039B90()
{
  v1 = [objc_opt_self() sphereWithRadius:0.005];
  v2 = [v1 materials];
  sub_100018630(0, &qword_1004AF720);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = v5;

    [v6 setColorBufferWriteMask:8];

LABEL_9:
    v7 = [objc_opt_self() nodeWithGeometry:v1];

    v8 = String._bridgeToObjectiveC()();
    [v7 setName:v8];

    [v7 setHidden:1];
    [v0 addChildNode:v7];

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100039D44()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_detector);
  v2 = (*v1 + 280);
  v3 = *v2;
  v4 = (*v2)();
  v3();
  v6 = [objc_opt_self() planeWithWidth:v4 height:v5];
  [v6 setCornerRadius:v1[6]];
  v7 = [v6 materials];
  sub_100018630(0, &qword_1004AF720);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return v6;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_6:
    v11 = v10;

    v12 = [v11 diffuse];
    sub_100018630(0, &qword_1004A2930);
    isa = UIColor.init(argb:)(0xFF3333FF).super.isa;
    [v12 setContents:isa];

    [v11 setBlendMode:4];
    return v6;
  }

  __break(1u);
  return result;
}

id sub_100039F34()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SCNNode) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];

  v4 = (*(**&v1[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_detector] + 544))();
  [v2 setHidden:(*LocalPlaneDetector.DebugOptions.showPoints.unsafeMutableAddressor() & ~v4) != 0];
  [v1 addChildNode:v2];
  return v2;
}

id sub_10003A030(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10003A090()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SCNNode) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];

  v4 = *&v1[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_detector];
  v5 = (*(*v4 + 544))();
  if ((*LocalPlaneDetector.DebugOptions.showPlane.unsafeMutableAddressor() & ~v5) != 0)
  {
    v6 = 1;
  }

  else
  {
    (*(*v4 + 496))(v10);
    v6 = v11;
  }

  [v2 setHidden:v6 & 1];
  v7 = [objc_opt_self() yellowColor];
  v8 = sub_10003AFF0(v7, 0.0005);

  [v2 addChildNode:v8];
  [v1 addChildNode:v2];
  return v2;
}

uint64_t sub_10003A228()
{
  v1 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointPool;
  if (*&v0[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointPool])
  {
    v2 = *&v0[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointPool];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10003BE70;
    *(v4 + 24) = v3;
    sub_10000F974(&qword_1004A1400);
    swift_allocObject();
    v5 = v0;
    v2 = ObjectPool.init(allocator:deallocator:synchronized:)();
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_10003A328()
{
  v0 = [objc_opt_self() sphereWithRadius:0.001];
  v1 = [objc_opt_self() nodeWithGeometry:v0];
  v2 = String._bridgeToObjectiveC()();
  [v1 setName:v2];

  return v1;
}

id sub_10003A40C(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode;
  *&v3[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode] = 0;
  v8 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___intersectionNode;
  *&v3[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___intersectionNode] = 0;
  v9 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeGeometry;
  *&v3[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeGeometry] = 0;
  v10 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointContainerNode;
  *&v3[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointContainerNode] = 0;
  v11 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___mlNode;
  *&v3[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___mlNode] = 0;
  *&v3[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointPool] = 0;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    *&v3[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_sceneView] = v12;
    *&v3[OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_detector] = a3;
    v21.receiver = v3;
    v21.super_class = ObjectType;
    v13 = v12;
    v14 = a1;

    v15 = objc_msgSendSuper2(&v21, "init");
    v16 = String._bridgeToObjectiveC()();
    [v15 setName:{v16, v21.receiver, v21.super_class}];

    v17 = objc_opt_self();
    [v17 begin];
    v18 = [v13 scene];
    v19 = [v18 rootNode];

    [v19 addChildNode:v15];
    [v17 commit];
    sub_100018630(0, &unk_1004A7540);
    LocalPlaneDetector.DebugOptions.keys.unsafeMutableAddressor();

    static NSUserDefaults.observe(observer:keys:)();
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

void sub_10003A78C()
{
  v1 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode, sub_100039514);
  v2 = String._bridgeToObjectiveC()();
  v20 = [v1 childNodeWithName:v2 recursively:0];

  if (!v20)
  {
    return;
  }

  v3 = [v20 geometry];
  if (v3)
  {
    v19 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_detector);
      (*(*v6 + 496))(v24);
      if (v26)
      {
        v7.i32[0] = v6[6];
      }

      else
      {
        v7.i32[0] = v25;
      }

      *v7.i32 = *v7.i32 / 2.5;
      [v20 setSimdScale:{*vdupq_lane_s32(v7, 0).i64}];
      v9 = String._bridgeToObjectiveC()();
      [v5 setString:v9];

      sub_100018630(0, &qword_1004A1318);
      SCNBoundingVolume.boundingBox.getter();
      SCNNode.boundingSize.getter();
      v11 = v10 * -0.5;
      [v20 position];
      *&v12 = v11;
      [v20 setPosition:v12];
      [v20 position];
      [v20 setPosition:?];
      [v20 scale];
      [v20 position];
      v21 = v13;
      v22 = v14;
      v23 = v15;
      *= infix(_:_:)();
      LODWORD(v16) = v21;
      LODWORD(v17) = v22;
      LODWORD(v18) = v23;
      [v20 setPosition:{v16, v17, v18}];

      return;
    }

    v8 = v19;
  }

  else
  {
    v8 = v20;
  }
}

void sub_10003AA4C(uint64_t a1, float32x4_t *a2)
{
  v3 = v2;
  v6 = sub_10003A228();
  v7 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointContainerNode, sub_100039F34);
  v8 = [v7 childNodes];

  sub_100018630(0, &qword_1004A1318);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*(*v6 + 216))(v9);

  v10 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointContainerNode;
  v11 = *(v3 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointContainerNode);
  SCNNode.removeAllChildren()();

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a2[1].i64[0];
    v15 = a1 + 32;
    v34 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointPool;
    v35 = a2 + 2;
    v33 = v3;
    do
    {
      v16 = v35;
      v17 = v14;
      v36 = *(v15 + 16 * v13);
      if (v14)
      {
        while (1)
        {
          v19 = vmovn_s32(vmvnq_s8(vceqq_f32(*v16, *(v15 + 16 * v13))));
          if ((v19.i8[0] & 1) == 0 && (v19.i8[2] & 1) == 0 && (v19.i8[4] & 1) == 0)
          {
            break;
          }

          ++v16;
          if (!--v17)
          {
            goto LABEL_6;
          }
        }

        v18 = &selRef_greenColor;
      }

      else
      {
LABEL_6:
        v18 = &selRef_redColor;
      }

      v20 = *(**(v3 + v34) + 200);

      v20(&v37, v21);

      v22 = v37;
      v23 = [v37 geometry];
      if (v23)
      {
        v24 = v23;
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = [v25 firstMaterial];
          if (v26)
          {
            v27 = v26;
            v28 = v12;
            v29 = v15;
            v30 = v10;
            v31 = [v26 diffuse];

            v32 = [objc_opt_self() *v18];
            [v31 setContents:v32];

            v10 = v30;
            v15 = v29;
            v12 = v28;
            v3 = v33;
          }
        }
      }

      ++v13;
      [v22 setSimdPosition:*&v36];
      [*(v3 + v10) addChildNode:v22];
    }

    while (v13 != v12);
  }
}

id sub_10003AE40@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(v3);
  result = sub_10003A40C(a1, v8, a2);
  *a3 = result;
  return result;
}

void sub_10003AEC8(char a1)
{
  v2 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode, sub_100039514);
  [v2 setHidden:(a1 & 1) == 0];
}

void sub_10003AF40(char a1, __int128 *a2)
{
  v5 = *v2;
  v6 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___intersectionNode, sub_100039B90);
  [v6 setHidden:(a1 & 1) == 0];

  if ((a2[4] & 1) == 0)
  {
    v7 = *(v5 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___intersectionNode);
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];

    [v7 setSimdWorldTransform:{*&v8, *&v9, *&v10, *&v11}];
  }
}

uint64_t sub_10003AFF0(uint64_t a1, double a2)
{
  v3 = [objc_opt_self() boxWithWidth:a2 height:a2 length:0.1 chamferRadius:0.0];
  v4 = [objc_opt_self() nodeWithGeometry:v3];

  v5 = String._bridgeToObjectiveC()();
  [v4 setName:v5];

  [v4 position];
  [v4 setPosition:?];
  v6 = [v4 geometry];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 materials];

  sub_100018630(0, &qword_1004AF720);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;

  [v12 setBlendMode:4];

LABEL_10:
  v13 = [v4 geometry];
  if (!v13)
  {
    return v4;
  }

  v14 = v13;
  v15 = [v13 materials];

  sub_100018630(0, &qword_1004AF720);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_13;
    }

LABEL_18:

    return v4;
  }

  result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_16:
    v18 = v17;

    v19 = [v18 diffuse];

    [v19 setContents:a1];
    return v4;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_10003B2F4()
{
  *(v0 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___intersectionNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeGeometry) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointContainerNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___mlNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointPool) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10003B398(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = LocalPlaneDetector.DebugOptions.keyForFeature.unsafeMutableAddressor();
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_100198230(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_100018630(0, &unk_1004A7540);
        v11 = *(v3 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_detector);
        v17 = v10;
        v12 = (*(*v11 + 560))(v16);
        sub_10003BEE0();
        v13 = static NSUserDefaults.update<A>(_:key:feature:)();
        v12(v16, 0);
        if (*LocalPlaneDetector.DebugOptions.showPlane.unsafeMutableAddressor() == v10)
        {
          v14 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode, sub_100039514);
          [v14 setHidden:(v13 & 1) == 0];

          v15 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___mlNode, sub_10003A090);
          [v15 setHidden:(v13 & 1) == 0];
        }

        else
        {
          if (*LocalPlaneDetector.DebugOptions.showPoints.unsafeMutableAddressor() != v10)
          {
            return;
          }

          v15 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___pointContainerNode, sub_100039F34);
          [v15 setHidden:(v13 & 1) == 0];
        }
      }

      else
      {
      }
    }
  }
}

void sub_10003B5D4(double a1, float a2, float a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v11 = (**(v7 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger_detector) + 544);
  v12 = *v11;
  v13 = (*v11)();
  v14 = LocalPlaneDetector.DebugOptions.showPlane.unsafeMutableAddressor();
  if ((*v14 & ~v13) == 0)
  {
    v15 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode, sub_100039514);
    [v15 setSimdWorldTransform:{a4, a5, a6, a7}];

    v16 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode;
    [*(v8 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeNode) setHidden:0];
    v17 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeGeometry, sub_100039D44);
    [v17 setWidth:(a2 + a2)];

    v18 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeGeometry;
    [*(v8 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___planeGeometry) setHeight:(a2 + a2)];
    v19 = a2;
    [*(v8 + v18) setCornerRadius:a2];
    v20 = *(v8 + v16);
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 childNodeWithName:v21 recursively:0];

    if (v22)
    {
      v23 = [v22 geometry];
      if (v23)
      {
        v24 = v23;
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = v25;
          [v25 setLength:v19 + v19];
          [v26 length];
          [v22 position];
          [v22 setPosition:?];
        }
      }

      else
      {
        v24 = v22;
      }
    }

    v27 = *(v8 + v16);
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 childNodeWithName:v28 recursively:0];

    if (v29)
    {
      v30 = [v29 geometry];
      if (v30)
      {
        v31 = v30;
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          [v32 setWidth:v19 + v19];
        }
      }

      else
      {
        v31 = v29;
      }
    }

    v33 = *(v8 + v16);
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 childNodeWithName:v34 recursively:0];

    if (v35)
    {
      v36 = [v35 geometry];
      if (v36)
      {
        v37 = v36;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          [v38 setHeight:v19 + v19];
        }
      }

      else
      {
        v37 = v35;
      }
    }

    MeasureCore.shared.unsafeMutableAddressor();
    v39 = *(v8 + v16);

    [v39 simdWorldTransform];
    simd_float4x4.position.getter();
    v40 = MeasureCore.mlNormal(of:)();
    v42 = v41;
    v44 = v43;

    if (v44 & 1) != 0 || (v45.i64[0] = v40, v45.i64[1] = v42, v71 = v45, v46 = *SIMD3<>.zero.unsafeMutableAddressor(), v46.f32[0] == *&v40) && (v47 = vmovn_s32(vceqq_f32(v46, v71)), (v47.i16[1] & v47.i16[2]))
    {
      v48 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___mlNode, sub_10003A090);
      [v48 setHidden:1];
    }

    else
    {
      v59 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___mlNode, sub_10003A090);
      static simd_float4x4.make(position:normalizedForward:)();
      [v59 setSimdWorldTransform:?];

      v60 = OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___mlNode;
      [*(v8 + OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___mlNode) setHidden:0];
      v61 = *(v8 + v60);
      v62 = String._bridgeToObjectiveC()();
      v63 = [v61 childNodeWithName:v62 recursively:0];

      if (!v63)
      {
        goto LABEL_28;
      }

      v64 = [v63 geometry];
      if (v64)
      {
        v48 = v64;
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v66 = v65;
          [v65 setLength:v19 + v19];
          [v66 length];
          [v63 position];
          [v63 setPosition:?];
        }
      }

      else
      {
        v48 = v63;
      }
    }

LABEL_28:
    sub_10000F974(&unk_1004AF710);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1003D5360;
    *(v49 + 56) = &type metadata for Float;
    *(v49 + 64) = &protocol witness table for Float;
    *(v49 + 32) = a3;
    String.init(format:_:)();
    sub_10003A78C();
  }

  v50 = (v12)(v14);
  if ((*LocalPlaneDetector.DebugOptions.showPoints.unsafeMutableAddressor() & ~v50) == 0)
  {
    v51 = LocalPlaneDetector.getPointsForDebug()();
    sub_10003AA4C(v51.actualPoints._rawValue, v51.bestPoints._rawValue);

    v52 = sub_10003A030(&OBJC_IVAR____TtC7Measure21SCNLocalPlaneDebugger____lazy_storage___intersectionNode, sub_100039B90);
    v53 = String._bridgeToObjectiveC()();
    v54 = [v52 childNodeWithName:v53 recursively:0];

    if (v54)
    {
      v55 = [v54 geometry];
      if (v55)
      {
        v72 = v55;
        objc_opt_self();
        v56 = swift_dynamicCastObjCClass();
        if (v56)
        {
          v57 = v56;
          [v56 setLength:a2 + a2];
          [v57 length];
          [v54 position];
          [v54 setPosition:?];
        }

        v58 = v72;
      }

      else
      {
        v58 = v54;
      }
    }
  }
}

uint64_t sub_10003BE38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BE78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BEB0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_10003BEE0()
{
  result = qword_1004A2938;
  if (!qword_1004A2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A2938);
  }

  return result;
}

id sub_10003BFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonWithCustomBackgroundColor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10003C018(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v35 = a3;
  v33 = a2;
  v14 = sub_10000F974(&qword_1004A2968);
  __chkstk_darwin(v14 - 8);
  v34 = &v31 - v15;
  v32 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v16 = *(v32 - 8);
  __chkstk_darwin(v32);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UIButton.Configuration.Size();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UIButton.Configuration();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ButtonWithCustomBackgroundColor();
  v37.receiver = v8;
  v37.super_class = v27;
  v28 = objc_msgSendSuper2(&v37, "initWithFrame:", a4, a5, a6, a7);
  v36 = a1;
  if (a1)
  {
    static UIButton.Configuration.prominentGlass()();
  }

  else
  {
    static UIButton.Configuration.glass()();
  }

  (*(v20 + 104))(v22, enum case for UIButton.Configuration.Size.large(_:), v19);
  UIButton.Configuration.buttonSize.setter();
  (*(v16 + 104))(v18, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v32);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.title.setter();
  v29 = v34;
  (*(v24 + 16))(v34, v26, v23);
  (*(v24 + 56))(v29, 0, 1, v23);
  UIButton.configuration.setter();
  [v28 setTintColor:v36];

  (*(v24 + 8))(v26, v23);
  return v28;
}

uint64_t sub_10003C37C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003C39C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10003C3D4()
{
  result = Contexts.UIKit.init()();
  qword_1004D4A38 = result;
  return result;
}

id sub_10003C3F4@<X0>(void *a1@<X8>)
{
  if (qword_1004A00D8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A38;
  *a1 = qword_1004D4A38;

  return v2;
}

BOOL sub_10003C464()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  v2 = v1;
  if (Strong)
  {
    if (v1)
    {
      type metadata accessor for CardContainerView();
      v3 = static NSObject.== infix(_:_:)();

      return (v3 & 1) != 0;
    }

    v2 = Strong;
  }

  else if (!v1)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10003C4EC(uint64_t a1)
{
  result = sub_10003C514();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003C514()
{
  result = qword_1004A2998;
  if (!qword_1004A2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A2998);
  }

  return result;
}

id sub_10003C5F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurredButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CaptureState(unsigned __int8 *a1, unsigned int a2)
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

id sub_10003C6FC()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4A40 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003C77C@<X0>(void *a1@<X8>)
{
  if (qword_1004A00E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A40;
  *a1 = qword_1004D4A40;

  return v2;
}

unint64_t sub_10003C804(uint64_t a1)
{
  result = sub_10003C82C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003C82C()
{
  result = qword_1004A29F0;
  if (!qword_1004A29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A29F0);
  }

  return result;
}

void sub_10003C8A8()
{
  v1 = v0;
  v2 = sub_10000F974(&qword_1004A3F50);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 64) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&unk_1004A2520) + 272);

  *(v1 + 72) = v7(v6, v4);
  v8 = sub_10000F974(&qword_1004A1638);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  *(v1 + 80) = v10(v9, v4);
  v11 = sub_10000F974(&qword_1004A2C58);
  v12 = swift_getKeyPath();
  v13 = *(v11 + 272);

  *(v1 + 88) = v13(v12, v4);
  v14 = sub_10000F974(&qword_1004A2C60);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v1 + 96) = v16(v15, v4);
  v17 = sub_10000F974(&qword_1004A2C68);
  v18 = swift_getKeyPath();
  v19 = *(v17 + 272);

  *(v1 + 104) = v19(v18, v4);
  v20 = sub_10000F974(&qword_1004A2C70);
  v21 = swift_getKeyPath();
  v22 = *(v20 + 272);

  *(v1 + 112) = v22(v21, v4);
  v23 = swift_getKeyPath();
  v24 = *(sub_10000F974(&unk_1004A3F40) + 272);

  *(v1 + 120) = v24(v23, v4);
  v25 = swift_getKeyPath();
  v26 = *(sub_10000F974(&qword_1004A2C78) + 272);

  *(v1 + 128) = v26(v25, v4);
  v27 = sub_10000F974(&qword_1004A2C80);
  v28 = swift_getKeyPath();
  *(v1 + 136) = (*(v27 + 272))(v28, v4);
  v29 = swift_getKeyPath();
  v30 = sub_10000F974(&qword_1004A2C88);
  *(v1 + 144) = (*(v30 + 272))(v29, v4);
  *(v1 + 160) = _swiftEmptyArrayStorage;
  *(v1 + 168) = 0x1000000;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  v31 = qword_1004A29F8;
  v32 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  *(v1 + qword_1004A2A00) = 0;
  *(v1 + qword_1004A2A08) = 0;
  *(v1 + qword_1004A2A10) = 0;
  *(v1 + qword_1004A2A18) = 0;
  *(v1 + qword_1004A2A20) = 0;
  *(v1 + qword_1004A2A28) = 0;
  *(v1 + qword_1004A2A30) = 1;
  v33 = qword_1004A2A38;
  static Date.timeIntervalSinceReferenceDate.getter();
  *(v1 + v33) = v34;
  v35 = qword_1004A2A40;
  static Date.timeIntervalSinceReferenceDate.getter();
  *(v1 + v35) = v36;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10003CD90()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  result = [objc_opt_self() jasperAvailable];
  if (result)
  {

    StateValue.ifUpdated(_:)();
  }

  return result;
}

uint64_t sub_10003CF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1980);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v20[-v9];
  result = __chkstk_darwin(v8);
  v13 = &v20[-v12];
  v14 = *(a1 + 4);
  *(a2 + 184) = v14;
  if ((v14 & 1) == 0)
  {
    v15 = qword_1004A29F8;
    swift_beginAccess();
    sub_10002620C(a2 + v15, v13);
    v16 = type metadata accessor for ARCamera.TrackingState();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v18(v13, 1, v16);
    result = sub_1000403BC(v13);
    if (v19 != 1)
    {
      sub_10002620C(a2 + v15, v10);
      result = v18(v10, 1, v16);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        sub_10004046C(v10, v7);
        (*(v17 + 56))(v7, 0, 1, v16);
        swift_beginAccess();
        sub_1000404D0(v7, a2 + v15);
        swift_endAccess();
        sub_10003EE98();
        return sub_10002627C(v10);
      }
    }
  }

  return result;
}

void sub_10003D13C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_10008D4F0();
  v4 = [v3 lightEstimate];

  sub_10003D230(v4);
  v5 = *(**(a2 + 72) + 144);

  v5(&v7, v6);

  if ((v7 >> 62) > 1)
  {
    if ((__ROR8__(v7 ^ 0x8000000000000000, 3) & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      *(a2 + 168) = 1;
    }
  }

  else
  {
    sub_10001B360(v7);
  }
}

uint64_t sub_10003D230(void *a1)
{
  v2 = v1;
  v4 = sub_10000F974(&qword_1004A1980);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-v5];
  v7 = type metadata accessor for ARCamera.TrackingState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1004A0290 != -1)
  {
    swift_once();
  }

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v11._object = 0x8000000100401250;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  if (a1)
  {
    [a1 ambientIntensity];
  }

  Float.write<A>(to:)();
  Log.debug(_:isPrivate:)(v26, 0);

  v12 = *(v1 + qword_1004A2A00);
  *(v2 + qword_1004A2A00) = a1;
  v13 = a1;

  v14 = qword_1004A29F8;
  swift_beginAccess();
  sub_10002620C(v2 + v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000403BC(v6);
    return sub_10003EE98();
  }

  sub_100040540(v6, v10);
  v15 = [objc_opt_self() standardUserDefaults];
  Defaults.showLightIntensityDebugInfo.unsafeMutableAddressor();

  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 BOOLForKey:v16];

  if (!v17)
  {
    goto LABEL_20;
  }

  result = swift_beginAccess();
  v19 = *(v2 + 160);
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_20:
    sub_10002627C(v10);
    return sub_10003EE98();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v20 = result;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v20 >= 1)
  {

    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v19 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v24 + 24);
        ObjectType = swift_getObjectType();
        (*(v22 + 144))(v10, a1, ObjectType, v22);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003D60C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1980);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for SessionState();
  sub_10004046C(a1 + *(v7 + 20), v6);
  v8 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = qword_1004A29F8;
  swift_beginAccess();
  sub_1000404D0(v6, a2 + v9);
  swift_endAccess();
  return sub_10003EE98();
}

void sub_10003D718(uint64_t a1)
{
  v5 = v2;
  v6 = qword_1004A2A30;
  *(v2 + qword_1004A2A30) = a1 == 0;
  if (*(v2 + 184) == 1)
  {
    swift_beginAccess();
    v1 = *(v2 + 160);
    if (v1 >> 62)
    {
      goto LABEL_44;
    }

    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

    return;
  }

  if (*(v2 + 170))
  {
    return;
  }

  v7 = a1;
  swift_beginAccess();
  v3 = *(v2 + 160);
  if (v3 >> 62)
  {
    goto LABEL_47;
  }

  v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v100 = v6;
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (v12 >= 1)
  {
    v13 = v5;

    for (i = 0; i != v12; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v3 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v17 + 24);
        ObjectType = swift_getObjectType();
        (*(v15 + 128))(v7 != 0, ObjectType, v15);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v5 = v13;
    v6 = v100;
    goto LABEL_26;
  }

  __break(1u);
LABEL_50:
  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (v21)
  {
    while (1)
    {
      v98 = v4;
      v99 = v5;
      v5 = v3 & 0xC000000000000001;
      v4 = v3 & 0xFFFFFFF8;

      v22 = 0;
      if ((v3 & 0xC000000000000001) != 0)
      {
        break;
      }

      while (v22 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v3 + 8 * v22 + 32);

        v1 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_42;
        }

LABEL_35:
        if (swift_unknownObjectWeakLoadStrong())
        {
          v6 = *(v23 + 24);
          v24 = swift_getObjectType();
          (*(v6 + 80))(v24, v6);

          swift_unknownObjectRelease();
          if (v1 == v21)
          {
            goto LABEL_41;
          }
        }

        else
        {

          if (v1 == v21)
          {
LABEL_41:

            v25 = 1;
            v5 = v99;
            v6 = v100;
            v4 = v98;
            goto LABEL_52;
          }
        }

        ++v22;
        if (v5)
        {
          goto LABEL_30;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
        return;
      }

LABEL_4:
      if (v7 >= 1)
      {

        for (j = 0; j != v7; ++j)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v11 = *(v1 + 8 * j + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = *(v11 + 24);
            v10 = swift_getObjectType();
            (*(v9 + 48))(v10, v9);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_194;
      }

      __break(1u);
LABEL_47:
      v12 = _CocoaArrayWrapper.endIndex.getter();
      v100 = v6;
      if (v12)
      {
        goto LABEL_16;
      }

LABEL_26:
      v18 = *(**(v5 + 144) + 144);

      v18(__dst, v19);

      v4 = LOBYTE(__dst[0]);
      v1 = *(**(v5 + 144) + 144);

      (v1)(__dst, v20);

      if (LOBYTE(__dst[0]) != 4)
      {
        goto LABEL_51;
      }

      v3 = *(v5 + 160);
      if (v3 >> 62)
      {
        goto LABEL_50;
      }

      v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_51;
      }
    }

LABEL_30:
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v1 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      goto LABEL_35;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_51:
  v25 = 0;
LABEL_52:
  LOBYTE(v26) = v4 == 1;
  v27 = *(**(v5 + 72) + 144);

  v27(__dst, v28);

  if (*&__dst[0] >> 62 == 1)
  {
    sub_10001B360(*&__dst[0]);
LABEL_61:
    v34 = *(**(v5 + 144) + 144);

    v34(__dst, v35);

    v36 = LOBYTE(__dst[0]);
    v37 = *(**(v5 + 144) + 144);

    v37(__dst, v38);

    if (v25)
    {
      return;
    }

    v39 = v36 == 2;
    if (LOBYTE(__dst[0]) != 3)
    {
      goto LABEL_83;
    }

    v40 = *(v5 + 160);
    if (v40 >> 62)
    {
      goto LABEL_201;
    }

    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_83;
    }

LABEL_65:
    v6 = v40 & 0xFFFFFFFFFFFFFF8;

    v42 = 0;
    if ((v40 & 0xC000000000000001) == 0)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      while (1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v39 = Strong;
          v44 = *(v26 + 24);
          v45 = swift_getObjectType();
          (*(v44 + 72))(v45, v44);

          swift_unknownObjectRelease();
          if (v5 == v41)
          {
            goto LABEL_194;
          }
        }

        else
        {

          if (v5 == v41)
          {
            goto LABEL_194;
          }
        }

        ++v42;
        if ((v40 & 0xC000000000000001) != 0)
        {
          break;
        }

LABEL_69:
        if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_197;
        }

        v26 = *(v40 + 8 * v42 + 32);

        v5 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_196;
        }
      }
    }

LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (!v40)
    {
      return;
    }

    while (1)
    {
      if (v40 >= 1)
      {

        for (k = 0; k != v40; ++k)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v52 = *(v42 + 8 * k + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v50 = *(v52 + 24);
            v51 = swift_getObjectType();
            (*(v50 + 56))(v51, v50);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_194;
      }

      __break(1u);
LABEL_201:
      v41 = _CocoaArrayWrapper.endIndex.getter();
      if (v41)
      {
        goto LABEL_65;
      }

LABEL_83:
      if (*(v5 + v6) != 1)
      {
        break;
      }

      v42 = *(v5 + 160);
      if (v42 >> 62)
      {
        goto LABEL_198;
      }

      v40 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        return;
      }
    }

    if (v39)
    {
      v53 = *(v5 + 160);
      if (v53 >> 62)
      {
        v54 = _CocoaArrayWrapper.endIndex.getter();
        if (v54)
        {
          goto LABEL_98;
        }

        return;
      }

      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v54)
      {
        return;
      }

LABEL_98:
      if (v54 >= 1)
      {

        for (m = 0; m != v54; ++m)
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v58 = *(v53 + 8 * m + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v56 = *(v58 + 24);
            v57 = swift_getObjectType();
            (*(v56 + 16))(v57, v56);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

LABEL_194:

        return;
      }

      __break(1u);
      goto LABEL_206;
    }

    if (v26)
    {
      v53 = *(v5 + 160);
      if (!(v53 >> 62))
      {
        v59 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v59)
        {
          return;
        }

LABEL_110:
        if (v59 >= 1)
        {

          for (n = 0; n != v59; ++n)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v63 = *(v53 + 8 * n + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v61 = *(v63 + 24);
              v62 = swift_getObjectType();
              (*(v61 + 24))(v62, v61);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          goto LABEL_194;
        }

        __break(1u);
        goto LABEL_209;
      }

LABEL_206:
      v59 = _CocoaArrayWrapper.endIndex.getter();
      if (!v59)
      {
        return;
      }

      goto LABEL_110;
    }

    v53 = *(**(v5 + 120) + 144);

    (v53)(__src, v64);

    __dst[4] = __src[4];
    __dst[5] = __src[5];
    __dst[6] = __src[6];
    LOBYTE(__dst[7]) = __src[7];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    if (sub_100077EAC())
    {
      v59 = *(v5 + 160);
      if (!(v59 >> 62))
      {
        v65 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v65)
        {
LABEL_137:
          static Date.timeIntervalSinceReferenceDate.getter();
          *(v5 + qword_1004A2A40) = v72;
          return;
        }

        goto LABEL_124;
      }

LABEL_209:
      v65 = _CocoaArrayWrapper.endIndex.getter();
      if (!v65)
      {
        goto LABEL_137;
      }

LABEL_124:
      if (v65 >= 1)
      {

        for (ii = 0; ii != v65; ++ii)
        {
          if ((v59 & 0xC000000000000001) != 0)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v69 = *(v59 + 8 * ii + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v67 = *(v69 + 24);
            v68 = swift_getObjectType();
            (*(v67 + 64))(v68, v67);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_137;
      }

      __break(1u);
      goto LABEL_212;
    }

    v70 = *(**(v5 + 72) + 144);

    v70(__src, v71);

    if (*&__src[0] >> 62)
    {
      if (*&__src[0] >> 62 == 1)
      {
        sub_10001B360(*&__src[0]);
LABEL_142:
        v73 = 0;
        v74 = 0;
        *(v5 + qword_1004A2A18) = 0;
        goto LABEL_143;
      }

      if (__ROR8__(*&__src[0] ^ 0x8000000000000000, 3) >= 4uLL)
      {
        goto LABEL_142;
      }

      v73 = 0;
    }

    else
    {
      sub_10001B360(*&__src[0]);
      v73 = 1;
    }

    v74 = 1;
LABEL_143:
    v75 = qword_1004A2A18;
    *(v5 + qword_1004A2A18) = v74 & *(v5 + qword_1004A2A28);
    if ((*(v5 + v6) & 1) == 0)
    {

      StateValue.wrappedValue.getter();

      if ((BYTE3(__src[0]) & 1) == 0 && (*(v5 + v75) & 1) == 0)
      {
        v76 = qword_1004A2A20;
        if (!*(v5 + qword_1004A2A20))
        {
          v77 = objc_opt_self();
          *&__src[2] = sub_1000405E0;
          *(&__src[2] + 1) = v5;
          *&__src[0] = _NSConcreteStackBlock;
          *(&__src[0] + 1) = 1107296256;
          *&__src[1] = sub_1000508F8;
          *(&__src[1] + 1) = &unk_100468DA8;
          v78 = _Block_copy(__src);

          v79 = [v77 scheduledTimerWithTimeInterval:0 repeats:v78 block:5.0];
          _Block_release(v78);
          v80 = *(v5 + v76);
          *(v5 + v76) = v79;
        }
      }
    }

    static Date.timeIntervalSinceReferenceDate.getter();
    if (v81 - *(v5 + qword_1004A2A38) <= 1.0)
    {
      v83 = 0;
    }

    else
    {
      static Date.timeIntervalSinceReferenceDate.getter();
      v83 = v82 - *(v5 + qword_1004A2A40) > 1.0;
    }

    if ((*(v5 + v6) & 1) == 0)
    {
      if ((*(v5 + 169) & 1) == 0 && (v73 & *(v5 + v75)) == 1)
      {
        v53 = *(v5 + 160);
        if (!(v53 >> 62))
        {
          v83 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v83)
          {
            return;
          }

LABEL_156:
          if (v83 >= 1)
          {

            for (jj = 0; jj != v83; ++jj)
            {
              if ((v53 & 0xC000000000000001) != 0)
              {
                v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v87 = *(v53 + 8 * jj + 32);
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v85 = *(v87 + 24);
                v86 = swift_getObjectType();
                (*(v85 + 40))(v86, v85);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            goto LABEL_194;
          }

          __break(1u);
          goto LABEL_218;
        }

LABEL_215:
        v83 = _CocoaArrayWrapper.endIndex.getter();
        if (!v83)
        {
          return;
        }

        goto LABEL_156;
      }

      if ((*(v5 + 168) & 1) == 0 && !(v73 & 1 | ((*(v5 + v75) & 1) == 0)))
      {
        if (qword_1004A0180 != -1)
        {
          swift_once();
        }

        if (!qword_1004D4B08 || *(qword_1004D4B08 + 544))
        {
          v53 = *(v5 + 160);
          if (!(v53 >> 62))
          {
            v93 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v93)
            {
              return;
            }

LABEL_185:
            if (v93 < 1)
            {
              __break(1u);
              return;
            }

            for (kk = 0; kk != v93; ++kk)
            {
              if ((v53 & 0xC000000000000001) != 0)
              {
                v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v97 = *(v53 + 8 * kk + 32);
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v95 = *(v97 + 24);
                v96 = swift_getObjectType();
                (*(v95 + 32))(v83, v96, v95);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            goto LABEL_194;
          }

LABEL_218:
          v93 = _CocoaArrayWrapper.endIndex.getter();
          if (!v93)
          {
            return;
          }

          goto LABEL_185;
        }
      }
    }

    if (!v83)
    {
      return;
    }

    v53 = *(v5 + 160);
    if (!(v53 >> 62))
    {
      v88 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v88)
      {
        return;
      }

LABEL_170:
      if (v88 >= 1)
      {

        for (mm = 0; mm != v88; ++mm)
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v92 = *(v53 + 8 * mm + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v90 = *(v92 + 24);
            v91 = swift_getObjectType();
            (*(v90 + 48))(v91, v90);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_194;
      }

      __break(1u);
      goto LABEL_215;
    }

LABEL_212:
    v88 = _CocoaArrayWrapper.endIndex.getter();
    if (!v88)
    {
      return;
    }

    goto LABEL_170;
  }

  if (*&__dst[0] >> 62 == 2 && *&__dst[0] == 0x8000000000000020)
  {
    goto LABEL_61;
  }

  sub_10001B360(*&__dst[0]);
  if (v7)
  {
    v29 = objc_opt_self();
    v30 = v7;
    v31 = [v29 standardUserDefaults];
    Defaults.coachingCalloutEnabled.unsafeMutableAddressor();

    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 BOOLForKey:v32];

    if (!v33 || (v4 != 1 && (type metadata accessor for MeasureCamera(), , StateValue.wrappedValue.getter(), , memcpy(__dst, __src, sizeof(__dst)), sub_100013C4C(__dst), (static MeasureCamera.planeTooClose(for:transform:)() & 1) == 0) ? (LOBYTE(v26) = sub_10003FCA0()) : (LOBYTE(v26) = 1), v46 = *(**(v5 + 72) + 144), v47 = , v46(__dst, v47), , v48 = *&__dst[0], sub_10001B360(*&__dst[0]), v48 == 0x8000000000000010))
    {

      goto LABEL_81;
    }

    type metadata accessor for MeasureCamera();

    StateValue.wrappedValue.getter();

    memcpy(__dst, __src, sizeof(__dst));
    sub_100013C4C(__dst);
    v39 = static MeasureCamera.planeTooFar(for:transform:)();

    if ((v25 & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
LABEL_81:
    if ((v25 & 1) == 0)
    {
      v39 = 0;
      goto LABEL_83;
    }
  }
}

uint64_t sub_10003E7F4(uint64_t result, uint64_t a2)
{
  if (!*(result + 8))
  {
    result = swift_beginAccess();
    v3 = *(a2 + 160);
    if (v3 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
      if (result)
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
        if (v4 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v7 = *(v6 + 24);
            ObjectType = swift_getObjectType();
            (*(v7 + 136))(ObjectType, v7);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }

    result = static Date.timeIntervalSinceReferenceDate.getter();
    *(a2 + qword_1004A2A38) = v9;
  }

  return result;
}

uint64_t sub_10003E93C(char *a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1980);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v20[-v9];
  result = __chkstk_darwin(v8);
  v13 = &v20[-v12];
  v14 = *a1;
  *(a2 + 184) = *a1;
  if ((v14 & 1) == 0)
  {
    v15 = qword_1004A29F8;
    swift_beginAccess();
    sub_10002620C(a2 + v15, v13);
    v16 = type metadata accessor for ARCamera.TrackingState();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v18(v13, 1, v16);
    result = sub_1000403BC(v13);
    if (v19 != 1)
    {
      sub_10002620C(a2 + v15, v10);
      result = v18(v10, 1, v16);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        sub_10004046C(v10, v7);
        (*(v17 + 56))(v7, 0, 1, v16);
        swift_beginAccess();
        sub_1000404D0(v7, a2 + v15);
        swift_endAccess();
        sub_10003EE98();
        return sub_10002627C(v10);
      }
    }
  }

  return result;
}

void sub_10003EB44()
{

  sub_1000403BC(v0 + qword_1004A29F8);

  v1 = *(v0 + qword_1004A2A20);
}

uint64_t sub_10003EC14()
{
  v0 = StateObserver.deinit();

  sub_1000403BC(v0 + qword_1004A29F8);

  return v0;
}

uint64_t sub_10003ECEC()
{
  sub_10003EC14();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoachingController()
{
  result = qword_1004A2A70;
  if (!qword_1004A2A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003ED8C()
{
  sub_100025890();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_10003EE98()
{
  v1 = v0;
  v2 = type metadata accessor for ARCamera.TrackingState.Reason();
  v51 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v50 - v6;
  v8 = sub_10000F974(&qword_1004A1980);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for ARCamera.TrackingState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  result = sub_10003F6D4();
  if ((result & 1) == 0 && !*(v0 + qword_1004A2A08))
  {
    v19 = qword_1004A29F8;
    swift_beginAccess();
    sub_10002620C(v1 + v19, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      return sub_1000403BC(v10);
    }

    sub_100040540(v10, v17);
    sub_10004046C(v17, v15);
    v20 = v51;
    if ((*(v51 + 48))(v15, 2, v2))
    {
      if ((*(v1 + 170) & 1) == 0)
      {
        swift_beginAccess();
        v2 = *(v1 + 160);
        if (v2 >> 62)
        {
          v7 = _CocoaArrayWrapper.endIndex.getter();
          if (v7)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7)
          {
LABEL_9:
            if (v7 >= 1)
            {

              for (i = 0; i != v7; ++i)
              {
                if ((v2 & 0xC000000000000001) != 0)
                {
                  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v22 = *(v2 + 8 * i + 32);
                }

                Strong = swift_unknownObjectWeakLoadStrong();
                v24 = *(v22 + 24);

                if (Strong)
                {
                  ObjectType = swift_getObjectType();
                  (*(v24 + 120))(ObjectType, v24);
                  swift_unknownObjectRelease();
                }
              }

              goto LABEL_30;
            }

            __break(1u);
LABEL_73:
            v27 = _CocoaArrayWrapper.endIndex.getter();
            if (!v27)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }
        }
      }

LABEL_30:
      sub_10002627C(v17);
      *(v1 + 170) = 0;
      v32 = v15;
      return sub_10002627C(v32);
    }

    (*(v20 + 32))(v7, v15, v2);
    *(v1 + 170) = 1;
    (*(v20 + 16))(v5, v7, v2);
    v26 = (*(v20 + 88))(v5, v2);
    if (v26 == enum case for ARCamera.TrackingState.Reason.initializing(_:))
    {
      swift_beginAccess();
      v1 = *(v1 + 160);
      if (v1 >> 62)
      {
        goto LABEL_73;
      }

      v27 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_20:
        if (v27 >= 1)
        {

          for (j = 0; j != v27; ++j)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v31 = *(v1 + 8 * j + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v29 = *(v31 + 24);
              v30 = swift_getObjectType();
              (*(v29 + 104))(v30, v29);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

LABEL_66:

          goto LABEL_67;
        }

        __break(1u);
        goto LABEL_76;
      }
    }

    else if (v26 == enum case for ARCamera.TrackingState.Reason.excessiveMotion(_:))
    {
      swift_beginAccess();
      v1 = *(v1 + 160);
      if (v1 >> 62)
      {
LABEL_76:
        v33 = _CocoaArrayWrapper.endIndex.getter();
        if (!v33)
        {
          goto LABEL_67;
        }

        goto LABEL_34;
      }

      v33 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
LABEL_34:
        if (v33 >= 1)
        {

          for (k = 0; k != v33; ++k)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v37 = *(v1 + 8 * k + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v35 = *(v37 + 24);
              v36 = swift_getObjectType();
              (*(v35 + 64))(v36, v35);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_79;
      }
    }

    else
    {
      if (v26 != enum case for ARCamera.TrackingState.Reason.insufficientFeatures(_:))
      {
        if (v26 != enum case for ARCamera.TrackingState.Reason.relocalizing(_:))
        {
LABEL_85:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        swift_beginAccess();
        v44 = *(v1 + 160);
        if (v44 >> 62)
        {
          v45 = _CocoaArrayWrapper.endIndex.getter();
          if (!v45)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v45)
          {
            goto LABEL_67;
          }
        }

        if (v45 >= 1)
        {

          for (m = 0; m != v45; ++m)
          {
            if ((v44 & 0xC000000000000001) != 0)
            {
              v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v49 = *(v44 + 8 * m + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v47 = *(v49 + 24);
              v48 = swift_getObjectType();
              (*(v47 + 112))(v48, v47);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          goto LABEL_66;
        }

        goto LABEL_84;
      }

      swift_beginAccess();
      v1 = *(v1 + 160);
      if (v1 >> 62)
      {
LABEL_79:
        v38 = _CocoaArrayWrapper.endIndex.getter();
        if (!v38)
        {
          goto LABEL_67;
        }

        goto LABEL_46;
      }

      v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
LABEL_46:
        if (v38 >= 1)
        {

          for (n = 0; n != v38; ++n)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v40 = *(v1 + 8 * n + 32);
            }

            v41 = swift_unknownObjectWeakLoadStrong();
            v42 = *(v40 + 24);

            if (v41)
            {
              v43 = swift_getObjectType();
              (*(v42 + 8))(v43, v42);
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_66;
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

LABEL_67:
    (*(v51 + 8))(v7, v2);
    v32 = v17;
    return sub_10002627C(v32);
  }

  return result;
}

uint64_t sub_10003F6D4()
{
  v1 = type metadata accessor for ARCamera.TrackingState.Reason();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000F974(&qword_1004A1980);
  __chkstk_darwin(v5 - 8);
  v7 = &aBlock[-1] - v6;
  v8 = type metadata accessor for ARCamera.TrackingState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &aBlock[-1] - v13;
  v15 = *(v0 + qword_1004A2A00);
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = v15;
  [v16 ambientIntensity];
  if (v17 >= 500.0)
  {
    goto LABEL_29;
  }

  v37 = v16;
  v18 = qword_1004A29F8;
  swift_beginAccess();
  sub_10002620C(v0 + v18, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1000403BC(v7);
LABEL_30:
    v32 = *(v0 + qword_1004A2A08);
    *(v0 + qword_1004A2A08) = 0;

    result = 0;
    *(v0 + qword_1004A2A10) = 0;
    return result;
  }

  sub_100040540(v7, v14);
  sub_10004046C(v14, v12);
  v19 = (*(v2 + 48))(v12, 2, v1);
  v16 = v37;
  if (!v19)
  {
    sub_10002627C(v14);
    (*(v2 + 32))(v4, v12, v1);
    v20 = &off_100494000;
    if ((*(v2 + 88))(v4, v1) == enum case for ARCamera.TrackingState.Reason.insufficientFeatures(_:))
    {
      goto LABEL_12;
    }

    (*(v2 + 8))(v4, v1);
    goto LABEL_29;
  }

  v20 = &off_100494000;
  if (v19 == 1)
  {
    sub_10002627C(v14);
    goto LABEL_12;
  }

  if (*(v0 + qword_1004A2A30) != 1)
  {
    sub_10002627C(v14);
    goto LABEL_29;
  }

  v21 = *(**(v0 + 72) + 144);

  v21(aBlock, v22);
  v16 = v37;

  v23 = aBlock[0];
  sub_10001B360(aBlock[0]);
  sub_10002627C(v14);
  if (v23 == 0x8000000000000010)
  {
LABEL_29:

    goto LABEL_30;
  }

LABEL_12:
  if (*(v0 + qword_1004A2A10) != 1)
  {
    v31 = qword_1004A2A08;
    if (*(v0 + qword_1004A2A08))
    {
    }

    else
    {
      v33 = objc_opt_self();
      aBlock[4] = sub_1000405A4;
      aBlock[5] = v0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000508F8;
      aBlock[3] = &unk_100468D80;
      v34 = _Block_copy(aBlock);

      v35 = [v33 scheduledTimerWithTimeInterval:0 repeats:v34 block:1.5];

      _Block_release(v34);
      v36 = *(v0 + v31);
      *(v0 + v31) = v35;
    }

    return 0;
  }

  result = swift_beginAccess();
  v25 = *(v0 + 160);
  if (v25 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v26 = result;
    if (result)
    {
      goto LABEL_15;
    }

LABEL_27:

    return 1;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_27;
  }

LABEL_15:
  if (v26 >= 1)
  {

    for (i = 0; i != v26; ++i)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v25 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v28 + 24);
        ObjectType = swift_getObjectType();
        [v16 v20[242]];
        (*(v29 + 96))(ObjectType, v29);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

BOOL sub_10003FCA0()
{
  v1 = *(v0 + 176);
  if (!v1)
  {
    return 0;
  }

  v2 = *(**(v0 + 128) + 144);
  v3 = v1;

  v2((&v15 + 4), v4);

  v5 = *(&v15 + 1);
  [v3 bounds];
  v7 = v6;
  if (v5 <= v7)
  {
    v9 = *(**(v0 + 128) + 144);

    v9(&v15, v10);

    v11 = *&v15;
    [v3 bounds];
    v13 = v12;

    v14 = v13;
    return v11 > v14;
  }

  else
  {

    return 1;
  }
}

double sub_10003FE28(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000F974(&qword_1004A3F50);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v6 + 272);
  swift_retain_n();
  *(v3 + 64) = v9(KeyPath, v8);
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&unk_1004A2520) + 272);

  *(v3 + 72) = v11(v10, v8);
  v12 = sub_10000F974(&qword_1004A1638);
  v13 = swift_getKeyPath();
  v14 = *(v12 + 272);

  *(v3 + 80) = v14(v13, v8);
  v15 = sub_10000F974(&qword_1004A2C58);
  v16 = swift_getKeyPath();
  v17 = *(v15 + 272);

  *(v3 + 88) = v17(v16, v8);
  v18 = sub_10000F974(&qword_1004A2C60);
  v19 = swift_getKeyPath();
  v20 = *(v18 + 272);

  *(v3 + 96) = v20(v19, v8);
  v21 = sub_10000F974(&qword_1004A2C68);
  v22 = swift_getKeyPath();
  v23 = *(v21 + 272);

  *(v3 + 104) = v23(v22, v8);
  v24 = sub_10000F974(&qword_1004A2C70);
  v25 = swift_getKeyPath();
  v26 = *(v24 + 272);

  *(v3 + 112) = v26(v25, v8);
  v27 = swift_getKeyPath();
  v28 = *(sub_10000F974(&unk_1004A3F40) + 272);

  *(v3 + 120) = v28(v27, v8);
  v29 = swift_getKeyPath();
  v30 = *(sub_10000F974(&qword_1004A2C78) + 272);

  *(v3 + 128) = v30(v29, v8);
  v31 = sub_10000F974(&qword_1004A2C80);
  v32 = swift_getKeyPath();
  *(v3 + 136) = (*(v31 + 272))(v32, v8);
  v33 = swift_getKeyPath();
  v34 = sub_10000F974(&qword_1004A2C88);
  *(v3 + 144) = (*(v34 + 272))(v33, v8);
  *(v3 + 160) = _swiftEmptyArrayStorage;
  *(v3 + 168) = 0x1000000;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  v35 = qword_1004A29F8;
  v36 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v36 - 8) + 56))(v3 + v35, 1, 1, v36);
  *(v3 + qword_1004A2A00) = 0;
  *(v3 + qword_1004A2A08) = 0;
  *(v3 + qword_1004A2A10) = 0;
  *(v3 + qword_1004A2A18) = 0;
  *(v3 + qword_1004A2A20) = 0;
  *(v3 + qword_1004A2A28) = 0;
  *(v3 + qword_1004A2A30) = 1;
  v37 = qword_1004A2A38;
  static Date.timeIntervalSinceReferenceDate.getter();
  *(v3 + v37) = v38;
  v39 = qword_1004A2A40;
  static Date.timeIntervalSinceReferenceDate.getter();
  *(v3 + v39) = v40;
  v41 = *(v3 + 176);
  *(v3 + 176) = a1;
  v42 = a1;

  *(v3 + 152) = a2;
  v43 = StateObserver.init(configuration:)();
  *(v43 + qword_1004A2A38) = *(v43 + qword_1004A2A38) + -1.0;
  result = *(v43 + qword_1004A2A40) + -1.0;
  *(v43 + qword_1004A2A40) = result;
  return result;
}

uint64_t sub_1000403BC(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A1980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_100040444(_BYTE *result)
{
  if (*result == 2)
  {
    *(v1 + 169) = 1;
  }

  return result;
}

uint64_t sub_10004046C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000404D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000405A4()
{
  *(v0 + qword_1004A2A10) = 1;
  v1 = *(v0 + qword_1004A2A08);
  *(v0 + qword_1004A2A08) = 0;
}

uint64_t sub_1000405C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004060C()
{
  result = Contexts.UIKit.init()();
  qword_1004D4A48 = result;
  return result;
}

id sub_10004062C@<X0>(void *a1@<X8>)
{
  if (qword_1004A00E8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A48;
  *a1 = qword_1004D4A48;

  return v2;
}

unint64_t sub_1000406A8(uint64_t a1)
{
  result = sub_1000406D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000406D0()
{
  result = qword_1004A2CB8;
  if (!qword_1004A2CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A2CB8);
  }

  return result;
}

uint64_t sub_100040724(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_100040AD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure13HistoryButton_button);
  if (v1)
  {
    v4 = v1;
    if ([v4 isEnabled] && (v2 = *(v0 + OBJC_IVAR____TtC7Measure13HistoryButton_tapHandler)) != 0)
    {

      v2(v3);

      sub_1000223C4(v2);
    }

    else
    {
    }
  }
}

uint64_t sub_100040B98()
{
  v1 = sub_10000F974(&qword_1004A2D60);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  [v0 bounds];
  CGRect.center.getter();
  [v0 bounds];
  CGRect.init(centerPoint:size:)();
  v13 = [objc_opt_self() bezierPathWithOvalInRect:{v9, v10, v11, v12}];
  [v8 setVisiblePath:v13];

  sub_100040E00();
  *v7 = [objc_allocWithZone(UITargetedPreview) initWithView:v0 parameters:v8];
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v14 = type metadata accessor for UIPointerShape();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = UIPointerStyle.init(effect:shape:)();

  return v15;
}

unint64_t sub_100040E00()
{
  result = qword_1004AF060;
  if (!qword_1004AF060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AF060);
  }

  return result;
}

uint64_t sub_100040E5C()
{
  result = Contexts.UIKit.init()();
  qword_1004D4A50 = result;
  return result;
}

id sub_100040E7C@<X0>(void *a1@<X8>)
{
  if (qword_1004A00F0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A50;
  *a1 = qword_1004D4A50;

  return v2;
}

unint64_t sub_100040EEC(uint64_t a1)
{
  result = sub_100040F14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100040F14()
{
  result = qword_1004A2D90;
  if (!qword_1004A2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A2D90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionResetEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionResetEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000410C4()
{
  result = qword_1004A2D98;
  if (!qword_1004A2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A2D98);
  }

  return result;
}

uint64_t sub_100041124()
{
  sub_10001B9D0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100041180(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000411C4(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    Date.init(timeIntervalSince1970:)();
    goto LABEL_5;
  }

  if (*(v1 + qword_1004A2EC0) != a1)
  {
    Date.init()();
LABEL_5:
    v8 = qword_1004A2EB8;
    swift_beginAccess();
    (*(v4 + 40))(v1 + v8, v7, v3);
    result = swift_endAccess();
  }

  *(v1 + qword_1004A2EC0) = a1;
  return result;
}

void sub_1000412F4(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[qword_1004A2E68] = 0;
  *&v5[qword_1004A2E70] = 0;
  *&v5[qword_1004A2E78] = 0;
  v13 = qword_1004A2E80;
  sub_10000F974(&unk_1004A30E0);
  swift_getKeyPath();
  *&v5[v13] = MutableStateBinding.__allocating_init(_:_:)();
  v14 = qword_1004A2E88;
  v15 = sub_10000F974(&qword_1004A11D8);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v17 = qword_1004D5058;
  v18 = *(v15 + 272);
  swift_retain_n();
  *&v6[v14] = v18(KeyPath, v17);
  v19 = qword_1004A2E90;
  sub_10000F974(&unk_1004A30F0);
  swift_getKeyPath();
  *&v6[v19] = MutableStateValue.__allocating_init(_:_:)();
  v20 = qword_1004A2E98;
  v21 = sub_10000F974(&unk_1004A6950);
  v22 = swift_getKeyPath();
  *&v6[v20] = (*(v21 + 272))(v22, v17);
  *&v6[qword_1004A2EB0] = 0x3FE3333333333333;
  Date.init()();
  *&v6[qword_1004A2EC0] = 0;
  CGRect.center.getter();
  static CGSize.* infix(_:_:)();
  CGRect.init(centerPoint:size:)();
  v27 = [objc_allocWithZone(ARCoachingOverlayView) initWithFrame:{v23, v24, v25, v26}];
  v28 = qword_1004A2E60;
  *&v6[qword_1004A2E60] = v27;
  [v27 setSession:a1];
  v29 = *&v6[v28];
  v30 = objc_opt_self();
  v31 = v29;
  if ([v30 jasperAvailable])
  {
    v32 = 0;
  }

  else
  {
    v32 = 3;
  }

  [v31 setGoal:v32];

  v33 = a5;
  if (qword_1004A0790 != -1)
  {
    swift_once();
  }

  *&v6[qword_1004A2EA0] = *&dword_1004D5310 + v33;
  v34 = a5 - a4;
  v35 = (v34 * 0.5) + v33;
  if (qword_1004A0798 != -1)
  {
    swift_once();
  }

  *&v6[qword_1004A2EA8] = v35 + *&dword_1004D5314;
  v65.receiver = v6;
  v65.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v65, "initWithFrame:", a2, a3, a4, a5);
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 standardUserDefaults];
  Defaults.showLightIntensityDebugInfo.unsafeMutableAddressor();

  v40 = String._bridgeToObjectiveC()();

  v41 = [v39 BOOLForKey:v40];

  if (!v41)
  {
    goto LABEL_18;
  }

  v42 = [objc_allocWithZone(UILabel) init];
  v43 = qword_1004A2E78;
  v44 = *&v38[qword_1004A2E78];
  *&v38[qword_1004A2E78] = v42;
  v45 = v42;

  if (!v45)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v45 setFrame:{a2, a3, a4, a5}];

  v46 = *&v38[v43];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v46 setTextAlignment:1];
  v47 = *&v38[v43];
  if (!v47)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = objc_opt_self();
  v49 = v47;
  v50 = [v48 yellowColor];
  [v49 setTextColor:v50];

  v51 = *&v38[v43];
  if (!v51)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = v51;
  v53 = [v48 blackColor];
  [v52 setShadowColor:v53];

  v54 = *&v38[v43];
  if (!v54)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v54 setNumberOfLines:0];
  if (*&v38[v43])
  {
    [v38 addSubview:?];
LABEL_18:
    v55 = qword_1004A2E60;
    v56 = *&v38[qword_1004A2E60];
    v57 = v38;
    [v56 setDelegate:v57];
    v58 = *&v38[v55];
    v59 = v57;
    [v59 addSubview:v58];
    v60 = objc_opt_self();
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_100043F54;
    *(v62 + 24) = v61;
    v64[4] = sub_100031688;
    v64[5] = v62;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 1107296256;
    v64[2] = sub_1000DC708;
    v64[3] = &unk_100469450;
    v63 = _Block_copy(v64);

    [v60 performWithoutAnimation:v63];
    _Block_release(v63);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if ((v60 & 1) == 0)
    {
      [v59 setUserInteractionEnabled:0];

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void sub_100041A28()
{

  StateValue.wrappedValue.getter();

  sub_100041A80(v0);
}

void sub_100041A80(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v3 = 3.14159265;
      break;
    case 4:
      v3 = -*CGFloat.piDiv2.unsafeMutableAddressor();
      break;
    case 3:
      v3 = *CGFloat.piDiv2.unsafeMutableAddressor();
      break;
    default:
      v3 = 0.0;
      break;
  }

  CGAffineTransformMakeRotation(&v16, v3);
  *&v15.a = *&v16.m11;
  *&v15.c = *&v16.m13;
  *&v15.tx = *&v16.m21;
  CATransform3DMakeAffineTransform(&v16, &v15);
  v4 = sub_100043F6C(a1);
  v5 = &qword_1004A2EA8;
  if (!v4)
  {
    v5 = &qword_1004A2EA0;
  }

  v6 = *&v1[*v5];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v9 = *&v16.m33;
  *(v8 + 88) = *&v16.m31;
  *(v8 + 104) = v9;
  v10 = *&v16.m43;
  *(v8 + 120) = *&v16.m41;
  *(v8 + 136) = v10;
  v11 = *&v16.m13;
  *(v8 + 24) = *&v16.m11;
  *(v8 + 40) = v11;
  v12 = *&v16.m23;
  *(v8 + 56) = *&v16.m21;
  *(v8 + 16) = v1;
  *(v8 + 72) = v12;
  *(v8 + 152) = v6;
  *&v15.tx = sub_100043FB4;
  *&v15.ty = v8;
  *&v15.a = _NSConcreteStackBlock;
  *&v15.b = 1107296256;
  *&v15.c = sub_100041180;
  *&v15.d = &unk_1004694A0;
  v13 = _Block_copy(&v15);
  v14 = v1;

  [v7 animateWithDuration:0 delay:v13 options:0 animations:0.25 completion:0.25];
  _Block_release(v13);
}

uint64_t sub_100041C44()
{

  StateValue.ifUpdated(_:)();

  *(swift_allocObject() + 16) = v0;

  v1 = v0;
  StateValue.ifUpdated(_:)();
}

void sub_100041D24(unint64_t *a1)
{
  v1 = *a1;

  StateValue.previous.getter();

  sub_100041D98(v2, v1);
  sub_1000446D0(v2);
}

uint64_t sub_100041D98(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~a1 & 0xF000000000000007) != 0 && (a1 >> 62) > 1)
  {
    v19 = __ROR8__(a1 ^ 0x8000000000000000, 3);
    if (v19 <= 1)
    {
      if (!v19)
      {
        if (a2 < 0x8000000000000001)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (a2 == 0x8000000000000008)
      {
        return result;
      }
    }

    else if (v19 == 2)
    {
      if (a2 == 0x8000000000000010)
      {
        return result;
      }
    }

    else if (v19 == 3)
    {
      if (a2 == 0x8000000000000018)
      {
        return result;
      }
    }

    else if (a2 == 0x8000000000000020)
    {
      return result;
    }
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return result;
  }

LABEL_4:
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) == 0x18)
  {
    v14 = result;
    sub_100018630(0, &qword_1004A3F00);
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    aBlock[4] = sub_1000446E4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_100469518;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80);
    sub_100031864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v13, v14);
  }

  return result;
}

id sub_1000420F0(uint64_t a1, void *a2, float a3)
{
  v5 = qword_1004A2E60;
  v6 = [*(a1 + qword_1004A2E60) layer];
  [v6 setTransform:&v10];

  *&v7 = a3;
  [*(a1 + v5) setResetButtonPortraitVerticalOffset:v7];
  *&v8 = a3;
  [*(a1 + v5) setResetButtonLandscapeVerticalOffset:v8];
  [*(a1 + v5) updateConstraintsIfNeeded];
  return [*(a1 + v5) layoutIfNeeded];
}

void sub_1000421CC()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = qword_1004A2E68;
    if (!*&v0[qword_1004A2E68])
    {
      v12 = v2;
      v4 = objc_allocWithZone(type metadata accessor for CalloutViewRegular());
      sub_10002EA40(v0, 0, 0);
      v5 = *&v0[v3];
      *&v0[v3] = v6;

      v2 = v12;
    }

    v7 = qword_1004A2E70;
    if (!*&v0[qword_1004A2E70])
    {
      v13 = v2;
      if ([objc_opt_self() jasperAvailable] && (sub_100018630(0, &qword_1004A1930), (static UIDevice.isIPad()() & 1) != 0))
      {
        v8 = objc_allocWithZone(type metadata accessor for CalloutViewSpatial());
        v9 = sub_1000DCC2C(v0, 1);
      }

      else
      {
        v10 = objc_allocWithZone(type metadata accessor for CalloutViewRegular());
        sub_10002EA40(v0, 0, 1);
      }

      v11 = v9;

      v2 = *&v1[v7];
      *&v1[v7] = v11;
    }
  }
}

void sub_100042328(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10004252C(a3))
  {
    if ((a2 & 1) == 0 || *(v4 + qword_1004A2EC0) == a1 || (v12 = qword_1004A2EB8, swift_beginAccess(), (*(v9 + 16))(v11, v4 + v12, v8), Date.timeIntervalSinceNow.getter(), v14 = v13, (*(v9 + 8))(v11, v8), v14 < -0.6))
    {
      v15 = *(v4 + qword_1004A2E70);
      if (v15)
      {
        v16 = *((swift_isaMask & *v15) + 0xF8);
        v17 = v15;
        v16(0, 0, 1);
      }

      if (a2)
      {
        v18 = a1;
      }

      else
      {
        v18 = 0;
      }

      sub_1000411C4(v18);
      sub_1000421CC();
      v19 = *(v4 + qword_1004A2E68);
      if (v19)
      {
        v20 = v19;
        sub_10002FCDC(a2 & 1, a1, 0);
      }
    }
  }
}

uint64_t sub_10004252C(char a1)
{
  if (a1 != 2 && (a1 & 1) != 0)
  {
    if ([*(v1 + qword_1004A2E60) isActive])
    {
      v2 = *(**(v1 + qword_1004A2E80) + 144);

      v2(&v7, v3);

      if (BYTE4(v7) != 1)
      {
        return 1;
      }
    }
  }

  v4 = *(**(v1 + qword_1004A2E80) + 144);

  v4((&v7 + 5), v5);

  if (v8)
  {
    return 0;
  }

  else
  {
    return [*(v1 + qword_1004A2E60) isActive] ^ 1;
  }
}

void sub_100042654(uint64_t a1, char a2)
{
  v5 = *(**(v2 + qword_1004A2E80) + 144);

  v5(&v10, v6);

  if ((v10 & 0x100000000) == 0 && ([*(v2 + qword_1004A2E60) isActive] & 1) == 0)
  {
    sub_1000421CC();
    v7 = *(v2 + qword_1004A2E70);
    if (v7)
    {
      v8 = *((swift_isaMask & *v7) + 0xF8);
      v9 = v7;
      v8(a2 & 1, a1, 0);
    }
  }
}

uint64_t sub_1000427B8()
{

  v1 = qword_1004A2EB8;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1000428A0(uint64_t a1)
{

  v2 = qword_1004A2EB8;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for CoachingView()
{
  result = qword_1004A2EF0;
  if (!qword_1004A2EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000429D8()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_100042BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_100042E64(uint64_t a1)
{
  sub_1000411C4(0);
  v2 = *(a1 + qword_1004A2E70);
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0xF8);
    v4 = v2;
    v3(0, 0, 1);
  }

  v5 = *(a1 + qword_1004A2E68);
  if (v5)
  {
    v6 = v5;
    sub_10002FCDC(0, 0, 1);
  }
}

void sub_100042F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + qword_1004A2E68);
  if (v3)
  {
    v4 = v3;
    sub_10002FCDC(0, 0, 1);
  }

  sub_100042654(a2, 1);
}

void sub_100042FBC(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + qword_1004A2EC0) || (v6 = qword_1004A2EB8, swift_beginAccess(), (*(v3 + 16))(v5, a1 + v6, v2), Date.timeIntervalSinceNow.getter(), v8 = v7, (*(v3 + 8))(v5, v2), v8 < -0.6))
  {
    sub_1000411C4(0);
    v9 = *(a1 + qword_1004A2E70);
    if (v9)
    {
      v10 = *((swift_isaMask & *v9) + 0xF8);
      v11 = v9;
      v10(0, 0, 1);
    }

    v12 = *(a1 + qword_1004A2E68);
    if (v12)
    {
      v13 = v12;
      sub_10002FCDC(0, 0, 1);
    }
  }
}

void sub_100043188(char a1)
{
  v3 = [objc_opt_self() currentThread];
  v4 = [v3 isMainThread];

  if (v4)
  {
    if (a1)
    {
      v5 = qword_1004A2E60;
      [*&v1[qword_1004A2E60] setGoal:0];
      if ([*&v1[v5] isActive])
      {
        [*&v1[v5] setActive:0 animated:1];

        [v1 setUserInteractionEnabled:0];
      }
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000432C0(uint64_t a1, void *a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ARCamera.TrackingState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12 - 8);
  v16 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[qword_1004A2E78])
  {
    sub_100018630(0, &qword_1004A3F00);
    v26 = v8;
    v25 = static OS_dispatch_queue.main.getter();
    sub_10004046C(v27, &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    sub_100040540(v16, v19 + v17);
    v20 = v28;
    *(v19 + v18) = v28;
    aBlock[4] = sub_100043CB8;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_100468FC8;
    v21 = _Block_copy(aBlock);
    v22 = v20;
    v23 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80);
    sub_100031864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v26);
  }

  return result;
}

void sub_10004361C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = qword_1004A2E78;
  v4 = *(a1 + qword_1004A2E78);
  if (!v4)
  {
    goto LABEL_15;
  }

  v7 = v4;
  _StringGuts.grow(_:)(17);

  v8._countAndFlagsBits = ARCamera.TrackingState.description.getter();
  String.append(_:)(v8);

  v9 = String._bridgeToObjectiveC()();

  [v7 setText:v9];

  v10 = *(a1 + v3);
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  _StringGuts.grow(_:)(20);

  if (!a3)
  {
    goto LABEL_8;
  }

  [a3 ambientIntensity];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 >= 9.22337204e18)
  {
    __break(1u);
  }

LABEL_8:
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = [v11 text];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v15 = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = 0xD000000000000012;
  v18._object = 0x8000000100401450;
  String.append(_:)(v18);

  if (v17)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v11 setText:v19];
}

uint64_t sub_100043B90()
{
  v1 = *(type metadata accessor for ARCamera.TrackingState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for ARCamera.TrackingState.Reason();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 2, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

void sub_100043CB8()
{
  v1 = *(type metadata accessor for ARCamera.TrackingState() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10004361C(v3, v0 + v2, v4);
}

uint64_t sub_100043D48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100043F7C()
{

  return _swift_deallocObject(v0, 156, 7);
}

void sub_100043FC4()
{
  v1 = v0;
  swift_getObjectType();
  *(v0 + qword_1004A2E68) = 0;
  *(v0 + qword_1004A2E70) = 0;
  *(v0 + qword_1004A2E78) = 0;
  v2 = qword_1004A2E80;
  sub_10000F974(&unk_1004A30E0);
  swift_getKeyPath();
  *(v0 + v2) = MutableStateBinding.__allocating_init(_:_:)();
  v3 = qword_1004A2E88;
  v4 = sub_10000F974(&qword_1004A11D8);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  *(v1 + v3) = v7(KeyPath, v6);
  v8 = qword_1004A2E90;
  sub_10000F974(&unk_1004A30F0);
  swift_getKeyPath();
  *(v1 + v8) = MutableStateValue.__allocating_init(_:_:)();
  v9 = qword_1004A2E98;
  v10 = sub_10000F974(&unk_1004A6950);
  v11 = swift_getKeyPath();
  *(v1 + v9) = (*(v10 + 272))(v11, v6);
  *(v1 + qword_1004A2EB0) = 0x3FE3333333333333;
  Date.init()();
  *(v1 + qword_1004A2EC0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000441DC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  Defaults.disableAllCoaching.unsafeMutableAddressor();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 BOOLForKey:v2];

  if ((v3 & 1) == 0)
  {
    v4 = *(**&v0[qword_1004A2E80] + 400);

    v5 = v4(v9);
    *(v6 + 3) = 1;
    v5(v9, 0);

    [v0 setUserInteractionEnabled:1];
    v7 = [objc_opt_self() sharedMenuController];
    [v7 hideMenu];

    if (qword_1004A0298 != -1)
    {
      swift_once();
    }

    v8._object = 0x8000000100401500;
    v8._countAndFlagsBits = 0xD00000000000001CLL;
    Log.default(_:isPrivate:)(v8, 0);
  }
}

void sub_1000443A0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  Defaults.disableAllCoaching.unsafeMutableAddressor();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 BOOLForKey:v2];

  if ((v3 & 1) == 0)
  {
    v4 = *(**&v0[qword_1004A2E80] + 400);

    v5 = v4(v8);
    *(v6 + 3) = 0;
    v5(v8, 0);

    [v0 setUserInteractionEnabled:0];
    if (qword_1004A0298 != -1)
    {
      swift_once();
    }

    v7._object = 0x80000001004014E0;
    v7._countAndFlagsBits = 0xD00000000000001DLL;
    Log.default(_:isPrivate:)(v7, 0);
  }
}

void sub_10004452C()
{
  v1 = *(v0 + qword_1004A2E90);
  v5 = 3;
  v2 = *(*v1 + 392);

  v2(&v5);

  v3 = [objc_opt_self() sharedMenuController];
  [v3 hideMenu];

  if (qword_1004A0298 != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001004014C0;
  v4._countAndFlagsBits = 0x100000000000001CLL;
  Log.default(_:isPrivate:)(v4, 0);
}

uint64_t sub_100044648()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000446D0(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_10001B360(a1);
  }
}

id sub_1000447C0()
{
  v0 = objc_allocWithZone(UISwitch);

  return [v0 init];
}

id sub_100044810@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  result = [swift_dynamicCastObjCClassUnconditional() isOn];
  *(a1 + 24) = &type metadata for Bool;
  *a1 = result;
  return result;
}

void sub_100044874()
{
  v9 = sub_100044BF0();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  v2 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def);
    v4 = v1;
    v5 = objc_opt_self();
    sub_100046520(v3, v2);

    v6 = [v5 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    sub_1000464DC(v3, v2);

    v1 = v4;
  }

  else
  {
    v8 = 0;
  }

  [v1 setOn:v8];
}

id sub_100044A1C()
{
  v1 = OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___stack;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___stack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___stack);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setAxis:0];
    [v4 setAlignment:3];
    [v4 setDistribution:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100044AE4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UILabel) init];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor:v6];

    v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v5 setFont:v7];

    [v5 setNumberOfLines:1];
    v8 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

id sub_100044BF0()
{
  v1 = OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___control;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___control);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___control);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x120))();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100044C88()
{
  v1 = sub_100044ACC();
  v2 = (v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def);
  v3 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8);
  if (v3 && (v4 = v2[3], v5 = *v2, sub_100046520(*v2, *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8)), , sub_1000464DC(v5, v3), v4))
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v1 setText:v6];

  (*((swift_isaMask & *v0) + 0x130))();
  v7 = sub_100044AD8();
  (*((swift_isaMask & *v0) + 0x138))();
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];
}

uint64_t sub_100044E3C()
{
  v1 = sub_10000F974(&qword_1004A3250);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v9 - v4;
  v9[1] = (*((swift_isaMask & *v0) + 0x128))(v3);
  *(swift_allocObject() + 16) = v0;
  v6 = v0;
  sub_10000F974(&qword_1004A3258);
  sub_10001D47C(&qword_1004A3260, &qword_1004A3258);
  Publisher.filter(_:)();

  *(swift_allocObject() + 16) = v6;
  sub_10001D47C(&qword_1004A3268, &qword_1004A3250);
  v7 = v6;
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  sub_10000F974(&qword_1004A3270);
  sub_10001D47C(&qword_1004A3278, &qword_1004A3270);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

id sub_10004512C()
{
  v0 = objc_allocWithZone(UISlider);

  return [v0 init];
}

uint64_t sub_10004517C()
{
  v0 = sub_10000F974(&qword_1004A3230);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = sub_100044BF0();
  v7[0] = v4;
  v7[1] = 4096;
  sub_10000F974(&qword_1004A3238);
  sub_10001D47C(&qword_1004A3240, &qword_1004A3238);
  Publisher.map<A>(_:)();

  sub_10001D47C(&qword_1004A3248, &qword_1004A3230);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v5;
}

id sub_100045328@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  result = [swift_dynamicCastObjCClassUnconditional() value];
  *(a1 + 24) = &type metadata for Float;
  *a1 = v3;
  return result;
}

void sub_10004538C()
{
  v11 = sub_100044BF0();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  v3 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def);
    v5 = v1;
    v6 = objc_opt_self();
    sub_100046520(v4, v3);

    v7 = [v6 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    [v7 floatForKey:v8];
    v10 = v9;

    sub_1000464DC(v4, v3);

    v1 = v5;
  }

  else
  {
    v10 = 0;
  }

  LODWORD(v2) = v10;
  [v1 setValue:v2];
}

uint64_t sub_100045518()
{
  sub_10000F974(&unk_1004AF710);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1003D5360;
  v1 = sub_100044BF0();
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() value];
  v3 = v2;

  *(v0 + 56) = &type metadata for Float;
  *(v0 + 64) = &protocol witness table for Float;
  *(v0 + 32) = v3;

  return String.init(format:_:)();
}

void sub_1000455E4()
{
  v1 = sub_100044BF0();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def;
    v4 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8);
    if (v4)
    {
      v5 = v2;
      v6 = *(v3 + 32);
      v7 = *v3;
      v8 = *(v3 + 40);

      sub_1000464DC(v7, v4);
      if ((v8 & 1) == 0)
      {
        LODWORD(v9) = v6;
        [v5 setMinimumValue:v9];
        LODWORD(v10) = HIDWORD(v6);
        [v5 setMaximumValue:v10];
      }
    }
  }

  sub_100044C88();
}

id sub_100045718()
{
  type metadata accessor for ColorPicker();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_10004576C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ColorPicker();
  result = swift_dynamicCastClassUnconditional();
  v3 = *(result + OBJC_IVAR____TtC7Measure11ColorPicker_value);
  a1[3] = &type metadata for Int;
  *a1 = v3;
  return result;
}

void sub_1000457D0()
{
  v9 = sub_100044BF0();
  type metadata accessor for ColorPicker();
  v1 = swift_dynamicCastClassUnconditional();
  v3 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def);
    v5 = objc_opt_self();
    sub_100046520(v4, v3);

    v6 = [v5 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 integerForKey:v7];

    sub_1000464DC(v4, v3);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + OBJC_IVAR____TtC7Measure11ColorPicker_value) = v8;
  sub_10012D1D8(v2);
}

uint64_t sub_100045950()
{
  v0 = sub_100044BF0();
  type metadata accessor for ColorPicker();
  v1 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Measure11ColorPicker_value);

  *&v2 = sub_10012D2D4(v1);
  v5 = v2;
  sub_10000F974(&unk_1004AF710);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D5230;
  *(v3 + 56) = &type metadata for Float;
  *(v3 + 64) = &protocol witness table for Float;
  *(v3 + 32) = v5;
  *(v3 + 96) = &type metadata for Float;
  *(v3 + 104) = &protocol witness table for Float;
  *(v3 + 72) = DWORD1(v5);
  *(v3 + 136) = &type metadata for Float;
  *(v3 + 144) = &protocol witness table for Float;
  *(v3 + 112) = DWORD2(v5);
  *(v3 + 176) = &type metadata for Float;
  *(v3 + 184) = &protocol witness table for Float;
  *(v3 + 152) = HIDWORD(v5);

  return String.init(format:_:)();
}

id sub_100045A54(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = String._bridgeToObjectiveC()();
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a3, a4);

  return v8;
}

id sub_100045AE4(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

void sub_100045BF0(void *a1, void *a2)
{
  v4 = sub_100044AD8();
  (*((swift_isaMask & *a2) + 0x138))();
  v5 = String._bridgeToObjectiveC()();

  [v4 setText:v5];

  v6 = [objc_opt_self() standardUserDefaults];
  sub_10000FEBC(a1, a1[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  if (*(a2 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8))
  {
    v8 = v7;

    v9 = String._bridgeToObjectiveC()();

    [v6 setObject:v8 forKey:v9];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_100045E68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100045F5C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___stack] = 0;
  *&v2[OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___valueLabel] = 0;
  *&v2[OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___control] = 0;
  *&v2[OBJC_IVAR____TtC7Measure11DefaultCell_cancellables] = _swiftEmptyArrayStorage;
  v3 = &v2[OBJC_IVAR____TtC7Measure11DefaultCell_def];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 25) = 0u;
  if (!a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v4 = String._bridgeToObjectiveC()();

  v38.receiver = v2;
  v38.super_class = type metadata accessor for DefaultCell();
  v5 = objc_msgSendSuper2(&v38, "initWithStyle:reuseIdentifier:", 0, v4);

  sub_10000F974(&unk_1004A3F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D6290;
  v7 = v5;
  *(inited + 32) = sub_100044ACC();
  *(inited + 40) = sub_100044BF0();
  *(inited + 48) = sub_100044AD8();
  v8 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  for (i = *(inited + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v10 = i;
    v11 = sub_100044A1C();
    [v11 addArrangedSubview:v10];

    if (v8)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_12;
      }

      v12 = *(inited + 40);
    }

    v13 = v12;
    v14 = sub_100044A1C();
    [v14 addArrangedSubview:v13];

    if (v8)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v15 = *(inited + 48);
      goto LABEL_11;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v16 = v15;
  v17 = sub_100044A1C();
  [v17 addArrangedSubview:v16];

  swift_setDeallocating();
  swift_arrayDestroy();
  v18 = v7;
  v19 = [v18 contentView];
  v20 = sub_100044A1C();
  [v19 addSubview:v20];

  v21 = OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___stack;
  [*&v18[OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___stack] setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1003D6240;
  v24 = [*&v18[v21] leftAnchor];
  v25 = [v18 leftAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:16.0];

  *(v23 + 32) = v26;
  v27 = [*&v18[v21] rightAnchor];
  v28 = [v18 rightAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-16.0];

  *(v23 + 40) = v29;
  v30 = [*&v18[v21] topAnchor];
  v31 = [v18 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v23 + 48) = v32;
  v33 = [*&v18[v21] bottomAnchor];
  v34 = [v18 bottomAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v23 + 56) = v35;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];

  sub_100044E3C();
  return v18;
}

void sub_100046424()
{
  *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___stack) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell____lazy_storage___control) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure11DefaultCell_cancellables) = _swiftEmptyArrayStorage;
  v1 = (v0 + OBJC_IVAR____TtC7Measure11DefaultCell_def);
  *v1 = 0u;
  v1[1] = 0u;
  *(v1 + 25) = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000464DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100046520(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100046564()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000465E4(uint64_t a1, uint64_t *a2, double a3, double a4, float a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = a1 + 64;
  do
  {
    v10 = *(v9 - 8);
    v11 = *a2;
    if (*(v9 + 58) == 1)
    {
      static CGPoint.distanceSq(_:_:)();
      v13 = v12;
      v14 = *(v11 + 112);
      v15 = objc_opt_self();

      v16 = [v15 mainScreen];
      [v16 scale];
      v18 = v17;

      v19 = v18;
      if (v13 >= ((v14 * v19) * (v14 * v19)))
      {
      }

      else
      {
        v20 = *(v11 + 116);

        if (fabsf(fabsf(v10 / a5) + -1.0) < v20)
        {
          return v8;
        }
      }
    }

    else
    {
      static CGPoint.distanceSq(_:_:)();
      if (v21 < (*(v11 + 112) * *(v11 + 112)) && fabsf(fabsf(v10 / a5) + -1.0) < *(v11 + 116))
      {
        return v8;
      }
    }

    ++v8;
    v9 += 96;
  }

  while (v5 != v8);
  return 0;
}

uint64_t sub_1000467C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v52 = result;
  v6 = v5[1];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v5;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_53:
      result = sub_10006B7F0(v6);
      v6 = result;
    }

    v9 = 0;
    v10 = 0;
    v48 = ") past frame time: ";
    v50 = v8;
    while (1)
    {
      if (v7 == v10)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v11 = *(v6 + 16);
      if (v10 >= v11)
      {
        goto LABEL_48;
      }

      if (*(v6 + v9 + 120) == 1)
      {
        break;
      }

LABEL_5:
      ++v10;
      v9 += 96;
      if (v7 == v10)
      {
        v8[1] = v6;
        return result;
      }
    }

    if (*(v6 + v9 + 121) == 1 && (a5 & 1) != 0)
    {
      v12 = *(v52 + 16);
      if (v12 && (v13 = (*(*v12 + 112))()) != 0)
      {
      }

      else
      {
        if (qword_1004A0260 != -1)
        {
          swift_once();
        }

        v8 = unk_1004D4D30;
        *&v54 = 0;
        *(&v54 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        v22._countAndFlagsBits = 0xD000000000000027;
        v22._object = 0x80000001004016C0;
        String.append(_:)(v22);
        v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v23);

        v24._object = 0x80000001004016F0;
        v24._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v24);
        sub_100046EB0();
        v25._countAndFlagsBits = static NSThread.prettyPrintCallStack(toDepth:)();
        String.append(_:)(v25);

        Log.error(_:isPrivate:)(v54, 0);

        if (!v12)
        {
LABEL_54:
          __break(1u);
          return result;
        }
      }

      result = (*(*v12 + 112))();
      if (!result)
      {
        goto LABEL_54;
      }

      if (v10 >= *(v6 + 16))
      {
        goto LABEL_50;
      }

      v26 = result;
      v27 = v6 + v9;
      v29 = *(v6 + v9 + 80);
      v28 = *(v6 + v9 + 88);
      v30 = *(v6 + v9 + 96);
      ARFrame.viewToCamera(screenPoint:sceneView:orientation:)();
      SIMD2<>.init(_:)();
      if (a4)
      {
        (*(*a4 + 312))(&v62, v26, 7);
        if (*(&v68 + 1))
        {
          simd_float4x4.position.getter();
          v31 = 0;
          v28 = v32;
          v61 = v69;
          v29 = v33;
          v58 = v66;
          v59 = v67;
          v60 = v68;
          v54 = v62;
          v55 = v63;
          v34 = v64;
          v35 = v65;
        }

        else
        {
          v58 = v66;
          v59 = v67;
          v60 = v68;
          v61 = v69;
          v54 = v62;
          v55 = v63;
          v34 = v64;
          v35 = v65;
          v31 = v30;
        }

        v56 = v34;
        v57 = v35;
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v31 = v30;
        v54 = 0u;
      }

      *(v27 + 80) = v29;
      *(v27 + 88) = v28;
      *(v27 + 96) = v31;
      [v26 timestamp];
      *(v6 + v9 + 104) = v36;
      if ((v31 & 1) != 0 || (v30 & 1) == 0)
      {

        sub_100046EFC(&v54);
      }

      else
      {
        if (qword_1004A02B0 != -1)
        {
          swift_once();
        }

        _StringGuts.grow(_:)(69);
        v37._countAndFlagsBits = 0xD000000000000022;
        v37._object = (v48 | 0x8000000000000000);
        String.append(_:)(v37);
        v38._countAndFlagsBits = CGPoint.debugDescription.getter();
        String.append(_:)(v38);

        v39._countAndFlagsBits = 0x65726373206F7420;
        v39._object = 0xEF20736F70206E65;
        String.append(_:)(v39);
        v40._countAndFlagsBits = CGPoint.debugDescription.getter();
        String.append(_:)(v40);

        v41._countAndFlagsBits = 0x6C726F77206F7420;
        v41._object = 0xEE0020736F702064;
        String.append(_:)(v41);
        sub_10000F974(&qword_1004A3EF0);
        v42._countAndFlagsBits = SIMD3.debugDescription.getter();
        String.append(_:)(v42);

        v43._countAndFlagsBits = 0;
        v43._object = 0xE000000000000000;
        Log.debug(_:isPrivate:)(v43, 0);

        sub_100046EFC(&v54);
      }

      v11 = *(v6 + 16);
      v8 = v50;
    }

    else
    {
      v14 = v6 + v9;
      if ((*(v6 + v9 + 96) & 1) == 0)
      {
        type metadata accessor for MeasureCamera();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        CGPoint.init(xy:)();
        v16 = v15;
        v18 = v17;
        v19 = *(v52 + 8);
        v20 = *(v14 + 104);
        if ((static MeasureCamera.isOnScreen(screenPoint:viewRect:)() & 1) != 0 && *(*v8 + 104) >= v19 - v20)
        {
          v21 = *(v6 + 16);
          if (v10 >= v21)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v21 = *(v6 + 16);
          if (v10 >= v21)
          {
            goto LABEL_52;
          }

          *(v14 + 80) = 0;
          *(v14 + 88) = 0;
          *(v14 + 96) = 1;
        }

        v47 = v6 + v9;
        *(v47 + 64) = v16;
        *(v47 + 72) = v18;
        if (v10 >= v21)
        {
          goto LABEL_49;
        }

        goto LABEL_38;
      }
    }

    if (v10 >= v11)
    {
      goto LABEL_49;
    }

LABEL_38:
    v53 = *(v6 + v9 + 64);
    v44 = v8[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100067A00(0, *(v44 + 16) + 1, 1, v44);
      v44 = result;
    }

    v46 = *(v44 + 16);
    v45 = *(v44 + 24);
    if (v46 >= v45 >> 1)
    {
      result = sub_100067A00((v45 > 1), v46 + 1, 1, v44);
      v44 = result;
    }

    *(v44 + 16) = v46 + 1;
    *(v44 + 16 * v46 + 32) = v53;
    v8[2] = v44;
    goto LABEL_5;
  }

  return result;
}

unint64_t sub_100046EB0()
{
  result = qword_1004A3280;
  if (!qword_1004A3280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A3280);
  }

  return result;
}

uint64_t sub_100046EFC(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A3E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046F64(uint64_t a1, void *a2, __int128 *a3)
{
  v68 = a3[1];
  v69 = *a3;
  v67 = a3[2];
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v84 = _swiftEmptyArrayStorage;
    result = sub_1000A24D0(0, v5, 0);
    v9 = *(a1 + 48);
    v10 = *(a1 + 80);
    *&v81.tx = *(a1 + 64);
    v82 = v10;
    v11 = *(a1 + 80);
    *v83 = *(a1 + 96);
    *&v83[11] = *(a1 + 107);
    v12 = *(a1 + 48);
    *&v81.a = *(a1 + 32);
    *&v81.c = v12;
    v78 = *&v81.tx;
    v79 = v11;
    v80 = *(a1 + 96);
    v6 = _swiftEmptyArrayStorage;
    v76 = *&v81.a;
    v77 = v9;
    v13 = *&v83[16] - 1;
    if (__OFSUB__(*&v83[16], 1))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v14 = v83[24];
    v15 = (a1 + 128);
    while (1)
    {
      if (v13 <= ((v83[0] & 1) == 0))
      {
        v16 = (v83[0] & 1) == 0;
      }

      else
      {
        v16 = v13;
      }

      v17 = v83[25];
      v73 = v78;
      v74 = v79;
      v75 = v80;
      v71 = v76;
      v72 = v77;
      result = sub_1000474C0(&v81, v70);
      v84 = v6;
      v19 = *(v6 + 2);
      v18 = *(v6 + 3);
      if (v19 >= v18 >> 1)
      {
        result = sub_1000A24D0((v18 > 1), v19 + 1, 1);
        v6 = v84;
      }

      *(v6 + 2) = v19 + 1;
      v20 = &v6[12 * v19];
      *(v20 + 2) = v71;
      v21 = v72;
      v22 = v73;
      v23 = v75;
      *(v20 + 5) = v74;
      *(v20 + 6) = v23;
      *(v20 + 3) = v21;
      *(v20 + 4) = v22;
      *(v20 + 14) = v16;
      *(v20 + 120) = v14;
      *(v20 + 121) = 0;
      *(v20 + 122) = v17;
      if (!--v5)
      {
        break;
      }

      v24 = v15[1];
      v25 = v15[3];
      *&v81.tx = v15[2];
      v82 = v25;
      v26 = v15[3];
      *v83 = v15[4];
      *&v83[11] = *(v15 + 75);
      v27 = v15[1];
      *&v81.a = *v15;
      *&v81.c = v27;
      v78 = *&v81.tx;
      v79 = v26;
      v80 = v15[4];
      v15 += 6;
      v76 = *&v81.a;
      v77 = v24;
      v14 = v83[24];
      v13 = *&v83[16] - 1;
      if (__OFSUB__(*&v83[16], 1))
      {
        goto LABEL_49;
      }
    }

    v28 = v66;
  }

  else
  {
    v28 = v3;
  }

  v28[1] = v6;
  result = [a2 getCornerCount];
  if (result)
  {
    v29 = 0;
    do
    {
      result = [a2 getCornerAtIndex:v29];
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_50;
      }

      a = v81.a;
      b = v81.b;
      v35 = *&v81.c;
      *&v81.a = v69;
      *&v81.c = v68;
      *&v81.tx = v67;
      v85.x = a;
      v85.y = b;
      v36 = CGPointApplyAffineTransform(v85, &v81);

      v38 = sub_1000465E4(v37, v28, a, b, v35);
      v40 = v39;

      if (v40)
      {
        v41 = *v28;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000678E4(0, *(v6 + 2) + 1, 1, v6);
        }

        v43 = *(v6 + 2);
        v42 = *(v6 + 3);
        if (v43 >= v42 >> 1)
        {
          v6 = sub_1000678E4((v42 > 1), v43 + 1, 1, v6);
        }

        *(v6 + 2) = v43 + 1;
        v30 = &v6[12 * v43];
        *(v30 + 4) = v41;
        v30[5] = a;
        v30[6] = b;
        *(v30 + 14) = v35;
        *(v30 + 4) = v36;
        v30[10] = 0.0;
        v30[11] = 0.0;
        *(v30 + 96) = 1;
        v31 = *(&v81.a + 3);
        *(v30 + 97) = LODWORD(v81.a);
        *(v30 + 25) = v31;
        v30[13] = 0.0;
        *(v30 + 14) = 1;
        *(v30 + 60) = 256;
        *(v30 + 122) = 0;
        v28 = v66;
      }

      else
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          result = sub_10006B7F0(v6);
          v6 = result;
          if ((v38 & 0x8000000000000000) != 0)
          {
LABEL_33:
            __break(1u);
            break;
          }
        }

        if (v38 >= *(v6 + 2))
        {
          goto LABEL_52;
        }

        v44 = &v6[12 * v38];
        v44[5] = a;
        v44[6] = b;
        *(v44 + 14) = v35;
        *(v44 + 4) = v36;
        v45 = *(v44 + 14);
        v46 = __OFADD__(v45, 2);
        v47 = v45 + 2;
        if (v46)
        {
          goto LABEL_53;
        }

        v48 = *(*(v44 + 4) + 96);
        v49 = v47 >= v48;
        if (v47 >= v48)
        {
          v47 = *(*(v44 + 4) + 96);
        }

        *(v44 + 14) = v47;
        *(v44 + 120) = (*(v44 + 120) | v49) & 1;
        *(v44 + 121) = 1;
      }

      result = [a2 getCornerCount];
      ++v29;
    }

    while (v32 != result);
  }

  v28[1] = v6;
  v50 = *(v6 + 2);
  if (!v50)
  {
    v52 = _swiftEmptyArrayStorage;
LABEL_48:

    v28[1] = v52;
    return result;
  }

  v51 = 0;
  v52 = _swiftEmptyArrayStorage;
LABEL_36:
  v53 = &v6[12 * v51 + 4];
  v54 = v51;
  while (v54 < *(v6 + 2))
  {
    v55 = *(v53 + 2);
    v56 = *(v53 + 3);
    v57 = *(v53 + 4);
    *&v83[11] = *(v53 + 75);
    v58 = *(v53 + 1);
    *&v81.a = *v53;
    *&v81.c = v58;
    v82 = v56;
    *v83 = v57;
    *&v81.tx = v55;
    v51 = v54 + 1;
    if (*&v83[16] > 0)
    {
      sub_1000474C0(&v81, v70);
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v76 = v52;
      if ((result & 1) == 0)
      {
        result = sub_1000A24D0(0, *(v52 + 2) + 1, 1);
        v52 = v76;
      }

      v60 = *(v52 + 2);
      v59 = *(v52 + 3);
      if (v60 >= v59 >> 1)
      {
        result = sub_1000A24D0((v59 > 1), v60 + 1, 1);
        v52 = v76;
      }

      *(v52 + 2) = v60 + 1;
      v61 = &v52[12 * v60];
      v62 = *&v81.c;
      *(v61 + 2) = *&v81.a;
      *(v61 + 3) = v62;
      v63 = *&v81.tx;
      v64 = v82;
      v65 = *v83;
      *(v61 + 107) = *&v83[11];
      *(v61 + 5) = v64;
      *(v61 + 6) = v65;
      *(v61 + 4) = v63;
      v28 = v66;
      if (v50 - 1 != v54)
      {
        goto LABEL_36;
      }

      goto LABEL_48;
    }

    v53 += 12;
    ++v54;
    if (v50 == v51)
    {
      goto LABEL_48;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

__n128 sub_1000474F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10004751C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
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

uint64_t sub_100047564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000475D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100047618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100047668(double a1, double a2)
{
  v3 = v2;
  if (a2 <= a1)
  {
    v5 = a1 / a2 * 104.0 + 8.0;
    if (a2 > 0.0)
    {
      v4 = v5;
    }

    else
    {
      v4 = 187.92;
    }
  }

  else
  {
    v4 = 112.0;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v2[OBJC_IVAR____TtC7Measure13SketchSurface_surfaceView];
  [v2 addSubview:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v62._object = 0x8000000100401820;
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x80000001004017F0;
  v62._countAndFlagsBits = 0xD000000000000022;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v62);

  v12 = type metadata accessor for SketchLabel();
  v13 = objc_allocWithZone(v12);
  v60 = sub_100136FE0(v11._countAndFlagsBits, v11._object);
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v60];
  v14 = [v7 mainBundle];
  v63._object = 0x8000000100401880;
  v15._object = 0x8000000100401850;
  v15._countAndFlagsBits = 0xD000000000000021;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0xD000000000000021;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v63);

  v18 = objc_allocWithZone(v12);
  v55 = sub_100136FE0(v17._countAndFlagsBits, v17._object);
  [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v55];
  v19 = [v6 widthAnchor];
  v20 = [v19 constraintEqualToConstant:v4];

  LODWORD(v21) = 1148813312;
  [v20 setPriority:v21];
  v22 = String._bridgeToObjectiveC()();
  [v20 setIdentifier:v22];

  v23 = [v6 centerYAnchor];
  v24 = [v3 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  LODWORD(v26) = 1148764160;
  [v25 setPriority:v26];
  v27 = String._bridgeToObjectiveC()();
  [v25 setIdentifier:v27];

  v58 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1003D61E0;
  *(v28 + 32) = v25;
  v57 = v25;
  v29 = [v6 centerXAnchor];
  v30 = [v3 centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v28 + 40) = v31;
  v32 = [v6 bottomAnchor];
  v33 = [v3 bottomAnchor];
  v34 = [v32 constraintLessThanOrEqualToAnchor:v33];

  *(v28 + 48) = v34;
  *(v28 + 56) = v20;
  v56 = v20;
  v35 = [v6 heightAnchor];
  v36 = [v35 constraintEqualToConstant:112.0];

  *(v28 + 64) = v36;
  v37 = [v60 topAnchor];
  v38 = [v3 topAnchor];
  v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38 constant:10.0];

  *(v28 + 72) = v39;
  v40 = [v60 bottomAnchor];
  v41 = [v6 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-7.0];

  *(v28 + 80) = v42;
  v43 = [v60 centerXAnchor];

  v44 = [v6 centerXAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v28 + 88) = v45;
  v46 = [v55 rightAnchor];
  v47 = [v6 leftAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-7.0];

  *(v28 + 96) = v48;
  v49 = [v55 centerYAnchor];
  v50 = [v6 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v28 + 104) = v51;
  v52 = [v55 leftAnchor];

  v53 = [v3 leftAnchor];
  v54 = [v52 constraintGreaterThanOrEqualToAnchor:v53 constant:10.0];

  *(v28 + 112) = v54;
  sub_100018630(0, &qword_1004A1838);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v58 activateConstraints:isa];
}

id sub_100047E1C()
{
  v1 = v0;
  v56.receiver = v0;
  v56.super_class = type metadata accessor for SketchSurface();
  objc_msgSendSuper2(&v56, "layoutSubviews");
  v54 = OBJC_IVAR____TtC7Measure13SketchSurface_rectSublayer;
  v2 = *&v0[OBJC_IVAR____TtC7Measure13SketchSurface_rectSublayer];
  v3 = &off_100494000;
  if (v2)
  {
    [v2 removeFromSuperlayer];
  }

  v53 = OBJC_IVAR____TtC7Measure13SketchSurface_horizontalLineSublayer;
  v4 = *&v0[OBJC_IVAR____TtC7Measure13SketchSurface_horizontalLineSublayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
  }

  v52 = OBJC_IVAR____TtC7Measure13SketchSurface_verticalLineSublayer;
  v5 = *&v0[OBJC_IVAR____TtC7Measure13SketchSurface_verticalLineSublayer];
  if (v5)
  {
    [v5 removeFromSuperlayer];
  }

  v6 = OBJC_IVAR____TtC7Measure13SketchSurface_dotLayers;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        [v10 v3[284]];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_18:

    v13 = *(v1 + OBJC_IVAR____TtC7Measure13SketchSurface_surfaceView);
    [v13 bounds];
    Width = CGRectGetWidth(v57);
    [v13 bounds];
    Height = CGRectGetHeight(v58);
    v16 = Height + -8.0;
    v17 = [objc_allocWithZone(UIBezierPath) init];
    [v17 moveToPoint:{4.0, 4.0}];
    [v17 addLineToPoint:{Width + -8.0 + 4.0, 4.0}];
    [v17 addLineToPoint:{Width + -8.0 + 4.0, Height + -8.0 + 4.0}];
    [v17 addLineToPoint:{4.0, Height + -8.0 + 4.0}];
    [v17 addLineToPoint:{4.0, 4.0}];
    v18 = [objc_allocWithZone(CAShapeLayer) init];
    v19 = [v17 CGPath];
    [v18 setPath:v19];

    v20 = objc_opt_self();
    v21 = [v20 clearColor];
    v22 = [v21 CGColor];

    [v18 setFillColor:v22];
    if (qword_1004A0080 != -1)
    {
      swift_once();
    }

    v55 = v13;
    v23 = [qword_1004D49C0 CGColor];
    [v18 setStrokeColor:v23];

    [v18 setLineWidth:2.0];
    v24 = *(v1 + v54);
    *(v1 + v54) = v18;

    v25 = (Width + -8.0) * 0.5 + 4.0;
    v26 = [objc_allocWithZone(UIBezierPath) init];
    [v26 moveToPoint:{v25, 4.0}];
    [v26 addLineToPoint:{v25, v16 + 4.0}];
    v27 = [objc_allocWithZone(CAShapeLayer) init];
    v28 = [v26 CGPath];
    [v27 setPath:v28];

    v29 = [v20 clearColor];
    v30 = [v29 CGColor];

    [v27 setFillColor:v30];
    if (qword_1004A0088 != -1)
    {
      swift_once();
    }

    v31 = qword_1004D49C8;
    v32 = [qword_1004D49C8 CGColor];
    [v27 setStrokeColor:v32];

    [v27 setLineWidth:2.0];
    LODWORD(v33) = 1.0;
    [v27 setOpacity:v33];

    v34 = *(v1 + v53);
    *(v1 + v53) = v27;

    v35 = [objc_allocWithZone(UIBezierPath) init];
    [v35 moveToPoint:{4.0, v16 * 0.5 + 4.0}];
    [v35 addLineToPoint:{Width + -8.0 + 4.0, v16 * 0.5 + 4.0}];
    v3 = [objc_allocWithZone(CAShapeLayer) init];
    v36 = [v35 CGPath];
    [(SEL *)v3 setPath:v36];

    v37 = [v20 clearColor];
    v38 = [v37 CGColor];

    [(SEL *)v3 setFillColor:v38];
    v39 = [v31 CGColor];
    [(SEL *)v3 setStrokeColor:v39];

    [(SEL *)v3 setLineWidth:2.0];
    LODWORD(v40) = 1.0;
    [(SEL *)v3 setOpacity:v40];

    v41 = *(v1 + v52);
    *(v1 + v52) = v3;

    sub_100013DA0(0, 4.0, 4.0);
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v42 = Width + -4.0;
    sub_100013DA0(0, v42, 4.0);
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v43 = Height + -4.0;
    sub_100013DA0(0, v42, v43);
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_100013DA0(0, 4.0, v43);
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    result = [v13 layer];
    if (!*(v1 + v54))
    {
      break;
    }

    v45 = result;
    [result addSublayer:?];

    result = [v13 layer];
    if (!*(v1 + v53))
    {
      goto LABEL_52;
    }

    v46 = result;
    [result addSublayer:?];

    result = [v13 layer];
    if (!*(v1 + v52))
    {
      goto LABEL_53;
    }

    v47 = result;
    [result addSublayer:?];

    v1 = *(v1 + v6);
    if (v1 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
    }

    v48 = 0;
    v6 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v49 = *(v1 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v3 = [v55 layer];
      [(SEL *)v3 addSublayer:v50];

      ++v48;
      if (v51 == v7)
      {
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

id sub_100048944(void *a1)
{
  v3 = OBJC_IVAR____TtC7Measure13SketchSurface_surfaceView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC7Measure13SketchSurface_rectSublayer] = 0;
  *&v1[OBJC_IVAR____TtC7Measure13SketchSurface_horizontalLineSublayer] = 0;
  *&v1[OBJC_IVAR____TtC7Measure13SketchSurface_verticalLineSublayer] = 0;
  *&v1[OBJC_IVAR____TtC7Measure13SketchSurface_dotLayers] = _swiftEmptyArrayStorage;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SketchSurface();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_100048AE8(double a1, double a2)
{
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (a2 > a1)
  {
    v5 = 32.0;
  }

  else
  {
    v5 = 48.0;
  }

  if (a2 > a1)
  {
    v6 = 48.0;
  }

  else
  {
    v6 = 32.0;
  }

  v7 = *&v2[OBJC_IVAR____TtC7Measure20SketchSurfaceHistory_surfaceView];
  v8 = [v7 layer];
  v9 = [(objc_class *)v8 sublayers];
  if (v9)
  {
    v10 = v9;
    sub_100018630(0, &qword_1004A3308);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [(objc_class *)v8 setSublayers:isa];

    v8 = isa;
  }

  else
  {
    [(objc_class *)v8 setSublayers:0];
  }

  [v7 removeFromSuperview];
  [v2 addSubview:v7];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = String._bridgeToObjectiveC()();
  [v7 setAccessibilityIdentifier:v12];

  v13 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003D6240;
  v15 = [v7 widthAnchor];
  v16 = [v15 constraintEqualToConstant:v5 + 8.0];

  *(v14 + 32) = v16;
  v17 = [v7 heightAnchor];
  v18 = [v17 constraintEqualToConstant:v6 + 8.0];

  *(v14 + 40) = v18;
  v19 = [v7 centerXAnchor];
  v20 = [v2 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v14 + 48) = v21;
  v22 = [v7 topAnchor];
  v23 = [v2 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v14 + 56) = v24;
  sub_100018630(0, &qword_1004A1838);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:v25];

  v26 = [v7 layer];
  v27 = [objc_allocWithZone(UIBezierPath) init];
  [v27 moveToPoint:{4.0, 4.0}];
  [v27 addLineToPoint:{v5 + 4.0, 4.0}];
  v28 = v6 + 4.0;
  [v27 addLineToPoint:{v5 + 4.0, v6 + 4.0}];
  [v27 addLineToPoint:{4.0, v6 + 4.0}];
  [v27 addLineToPoint:{4.0, 4.0}];
  v29 = [objc_allocWithZone(CAShapeLayer) init];
  v30 = [v27 CGPath];
  [v29 setPath:v30];

  v31 = objc_opt_self();
  v32 = [v31 clearColor];
  v33 = [v32 CGColor];

  [v29 setFillColor:v33];
  if (qword_1004A0080 != -1)
  {
    swift_once();
  }

  v34 = qword_1004D49C0;
  v35 = [qword_1004D49C0 CGColor];
  [v29 setStrokeColor:v35];

  [v29 setLineWidth:2.0];
  [v26 addSublayer:v29];

  v36 = objc_opt_self();
  v37 = [v7 layer];
  v38 = [objc_allocWithZone(CAShapeLayer) init];
  v39 = [v36 bezierPathWithArcCenter:1 radius:4.0 startAngle:4.0 endAngle:4.0 clockwise:{0.0, 6.28318531}];
  v40 = [v39 CGPath];

  [v38 setPath:v40];
  v41 = [v34 CGColor];
  [v38 setFillColor:v41];

  v42 = [v31 clearColor];
  v43 = [v42 CGColor];

  [v38 setStrokeColor:v43];
  [v37 addSublayer:v38];

  v44 = [v7 layer];
  v45 = [objc_allocWithZone(CAShapeLayer) init];
  v46 = [v36 bezierPathWithArcCenter:1 radius:4.0 startAngle:v28 endAngle:4.0 clockwise:{0.0, 6.28318531}];
  v47 = [v46 CGPath];

  [v45 setPath:v47];
  v48 = [v34 CGColor];
  [v45 setFillColor:v48];

  v49 = [v31 clearColor];
  v50 = [v49 CGColor];

  [v45 setStrokeColor:v50];
  [v44 addSublayer:v45];

  v51 = [v7 layer];
  v52 = [objc_allocWithZone(CAShapeLayer) init];
  v53 = [v36 bezierPathWithArcCenter:1 radius:v5 + 4.0 startAngle:4.0 endAngle:4.0 clockwise:{0.0, 6.28318531}];
  v54 = [v53 CGPath];

  [v52 setPath:v54];
  v55 = [v34 CGColor];
  [v52 setFillColor:v55];

  v56 = [v31 clearColor];
  v57 = [v56 CGColor];

  [v52 setStrokeColor:v57];
  [v51 addSublayer:v52];

  v58 = [v7 layer];
  v64 = [objc_allocWithZone(CAShapeLayer) init];
  v59 = [v36 bezierPathWithArcCenter:1 radius:v5 + 4.0 startAngle:v28 endAngle:4.0 clockwise:{0.0, 6.28318531}];
  v60 = [v59 CGPath];

  [v64 setPath:v60];
  v61 = [v34 CGColor];
  [v64 setFillColor:v61];

  v62 = [v31 clearColor];
  v63 = [v62 CGColor];

  [v64 setStrokeColor:v63];
  [v58 addSublayer:v64];
}

id sub_1000496FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100049768()
{
  v0 = type metadata accessor for DispatchQoS();
  sub_10001D4FC(v0, qword_1004D4A58);
  sub_10001D4C4(v0, qword_1004D4A58);
  return static DispatchQoS.userInitiated.getter();
}

BOOL sub_1000497B4(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0)
  {
    return a1[1] == a2[1];
  }

  return result;
}

uint64_t sub_1000497F0()
{
  [*(v0 + 40) frame];
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 232) = v4;
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  *(v0 + 240) = qword_1004D4AE0;
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(37);

  v5 = *(v0 + 240);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = 0x8000000100401A80;
      v6 = 0xD000000000000012;
      goto LABEL_16;
    }

    v6 = 0x70616373646E616CLL;
    if (v5 == 4)
    {
      v7 = 0xED00007466654C65;
      goto LABEL_16;
    }

    if (v5 == 3)
    {
      v7 = 0xEE00746867695265;
      goto LABEL_16;
    }

LABEL_25:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!v5)
  {
    v7 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    goto LABEL_16;
  }

  if (v5 != 1)
  {
    goto LABEL_25;
  }

  v7 = 0xE800000000000000;
  v6 = 0x7469617274726F70;
LABEL_16:
  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0xD000000000000023;
  v9._object = 0x80000001004019F0;
  Log.default(_:isPrivate:)(v9, 0);

  _StringGuts.grow(_:)(37);

  v10 = objc_opt_self();
  v11 = [v10 currentDevice];
  [v11 orientation];

  v12._countAndFlagsBits = UIDeviceOrientation.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD000000000000023;
  v13._object = 0x8000000100401A50;
  Log.default(_:isPrivate:)(v13, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v14 = qword_1004D4F08;
  v15 = [v10 currentDevice];
  v16 = [v15 orientation];

  sub_100018630(0, &qword_1004A1930);
  result = static UIDevice.isIPad()();
  if (result)
  {
    if (v16 - 1 >= 4)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v16 <= 4 && ((1 << v16) & 0x1A) != 0)
  {
LABEL_23:
    *(v14 + 24) = v16;
  }

  return result;
}

void sub_100049B7C(__int16 a1, double a2)
{
  v3 = v2;
  v5 = a1;
  v6 = a1 & 0x100;
  if (*(v2 + 248) == 1)
  {
    if (*(v2 + 24) == (a1 & 1) && (((v6 != 0) ^ *(v2 + 25)) & 1) == 0 && *(v2 + 32) == a2)
    {
      if (qword_1004A0250 != -1)
      {
        swift_once();
      }

      v7 = 0xD000000000000047;
      v8 = 0x8000000100401B80;

      Log.debug(_:isPrivate:)(*&v7, 0);
      return;
    }

    if (qword_1004A0250 != -1)
    {
      swift_once();
    }

    *(&v21[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v9._countAndFlagsBits = 0xD000000000000052;
    v9._object = 0x8000000100401B20;
    String.append(_:)(v9);
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    Log.debug(_:isPrivate:)(v10, 0);

    sub_100049F50();
  }

  if (qword_1004A0250 != -1)
  {
    swift_once();
  }

  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(50);
  v11._countAndFlagsBits = 0xD000000000000030;
  v11._object = 0x8000000100401AA0;
  String.append(_:)(v11);
  _print_unlocked<A, B>(_:_:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  Log.debug(_:isPrivate:)(v12, 0);

  *(v2 + 24) = v5 & 1;
  *(v2 + 25) = BYTE1(v6);
  *(v2 + 32) = a2;
  if (v6)
  {
    v13._object = 0x8000000100401B00;
    v13._countAndFlagsBits = 0xD000000000000015;
    Log.debug(_:isPrivate:)(v13, 0);
    v14 = *(v2 + 232);
    type metadata accessor for EdgeDetector();
    v15 = swift_allocObject();
    *(v15 + 16) = 984861703;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 1;
    v16 = v14;
    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    sub_10007A350(v21, v16 * 0.0013717);
    v17 = v21[5];
    *(v15 + 144) = v21[4];
    *(v15 + 160) = v17;
    *(v15 + 176) = v22[0];
    *(v15 + 187) = *(v22 + 11);
    v18 = v21[1];
    *(v15 + 80) = v21[0];
    *(v15 + 96) = v18;
    v19 = v21[3];
    *(v15 + 112) = v21[2];
    *(v15 + 128) = v19;
  }

  else
  {
    v20._countAndFlagsBits = 0xD000000000000018;
    v20._object = 0x8000000100401AE0;
    Log.debug(_:isPrivate:)(v20, 0);
    v15 = 0;
  }

  *(v3 + 48) = v15;

  *(v3 + 248) = 1;
}

void sub_100049F50()
{
  if (*(v0 + 248) == 1)
  {
    if (qword_1004A0250 != -1)
    {
      swift_once();
    }

    v1._object = 0x80000001004019C0;
    v1._countAndFlagsBits = 0xD000000000000021;
    Log.debug(_:isPrivate:)(v1, 0);
    *(v0 + 48) = 0;

    *(v0 + 248) = 0;
  }

  else
  {
    if (qword_1004A0250 != -1)
    {
      swift_once();
    }

    v2 = 0xD000000000000037;
    v3 = 0x8000000100401980;

    Log.debug(_:isPrivate:)(*&v2, 0);
  }
}

__n128 sub_10004A05C@<Q0>(uint64_t a1@<X8>)
{
  ariadne_trace(_:_:_:_:_:)();
  v3 = sub_10008D4F0();
  if (v3)
  {
    v4 = v3;
    if (!ARFrame.isVIOTrackingUnacceptable()())
    {
      v5 = *(**(v1 + 16) + 144);

      v5(&v21, v6);

      if ((BYTE3(v21) & 1) == 0)
      {
        __chkstk_darwin(v7);
        sub_10000F974(&qword_1004A33F0);
        OS_dispatch_queue.sync<A>(execute:)();

        v27 = v18;
        v28 = v19;
        v29 = v20;
        v23 = v14;
        v24 = v15;
        v25 = v16;
        v26 = v17;
        v21 = v12;
        v22 = v13;
        ariadne_trace(_:_:_:_:_:)();
        goto LABEL_6;
      }
    }
  }

  sub_10004B268(&v12);
  ariadne_trace(_:_:_:_:_:)();
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v21 = v12;
  v22 = v13;
LABEL_6:
  v8 = v28;
  *(a1 + 96) = v27;
  *(a1 + 112) = v8;
  *(a1 + 128) = v29;
  v9 = v24;
  *(a1 + 32) = v23;
  *(a1 + 48) = v9;
  v10 = v26;
  *(a1 + 64) = v25;
  *(a1 + 80) = v10;
  result = v22;
  *a1 = v21;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10004A278@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v10 = *(a1 + 48);
  if (!v10)
  {
LABEL_8:
    sub_10004B268(&t1);
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v162 = 0u;
    goto LABEL_15;
  }

  v13 = *(a1 + 224);
  v12 = *(a1 + 232);
  v14 = *(a1 + 240);
  *v104 = sub_10007A4AC(a6, a7, *(a1 + 32), v13, v12);
  *&v104[8] = v15;
  *&v104[16] = v16;
  v168 = v17;

  v18 = [a2 capturedImage];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v18, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v18, 0);
  CGAffineTransformMakeScale(&t1, 1.0 / v13, 1.0 / v12);
  tx = t1.tx;
  ty = t1.ty;
  v99 = *&t1.c;
  v101 = *&t1.a;
  v92 = v13;
  v91 = v14;
  ARViewToCameraImageTransform();
  v23 = *&t1.a;
  v24 = *&t1.c;
  v25 = *&t1.tx;
  *&t1.c = v99;
  *&t1.a = v101;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v23;
  *&t2.c = v24;
  *&t2.tx = v25;
  CGAffineTransformConcat(&v127, &t1, &t2);
  v26 = v127.tx;
  v27 = v127.ty;
  v100 = *&v127.c;
  v102 = *&v127.a;
  CGAffineTransformMakeScale(&t1, WidthOfPlane, HeightOfPlane);
  v28 = *&t1.a;
  v29 = *&t1.c;
  v30 = *&t1.tx;
  *&t1.c = v100;
  *&t1.a = v102;
  t1.tx = v26;
  t1.ty = v27;
  *&t2.a = v28;
  *&t2.c = v29;
  *&t2.tx = v30;
  CGAffineTransformConcat(&v127, &t1, &t2);
  d = v127.d;
  c = v127.c;
  v95 = v127.tx;
  v93 = v127.ty;
  t1 = v127;
  a = v127.a;
  b = v127.b;
  v97 = v127.a;
  v33 = v127.b;
  v34 = CGPointApplyAffineTransform(*v104, &t1);
  v171.origin.x = *v104;
  *&v171.origin.y = *&v104[8];
  v35 = v168;
  v171.size.height = v168;
  MidX = CGRectGetMidX(v171);
  v172.origin.x = *v104;
  *&v172.origin.y = *&v104[8];
  v172.size.height = v35;
  v169.y = CGRectGetMidY(v172);
  t1.a = a;
  t1.b = v33;
  t1.c = c;
  t1.d = d;
  t1.tx = v95;
  t1.ty = v93;
  v169.x = MidX;
  CGPointApplyAffineTransform(v169, &t1);
  CGPoint.init(_:)();
  static CGPoint.+ infix(_:_:)();
  t1.a = v97;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v95;
  t1.ty = v93;
  v37 = CGPointApplyAffineTransform(v170, &t1);
  v38 = vabdd_f64(v37.x, v34.x);
  v39 = vabdd_f64(v37.y, v34.y);
  static CGSize.* infix(_:_:)();
  CGPoint.init(_:)();
  static CGPoint.- infix(_:_:)();
  v41 = v40;
  v43 = v42;
  v150 = v40;
  v151 = v42;
  v152 = v38;
  v153 = v39;
  v154 = 0;
  static vImage_Buffer.wrap(pixelBuffer:planeIndex:srcRect:)();
  if ((v123 & 1) == 0)
  {
    swift_beginAccess();
    v44 = *(v10 + 40);
    v147 = *(v10 + 24);
    v148 = v44;
    v149 = *(v10 + 56);
    static vImage_Buffer.scalePlanar8(srcImageBuffer:dstImageBuffer:scaleFactor:flags:tempBuffer:)();
    v45 = v125;
    *(v10 + 24) = v124;
    *(v10 + 40) = v45;
    *(v10 + 56) = v126;
  }

  result = swift_beginAccess();
  if (*(v10 + 56) == 1)
  {
    if (qword_1004A02B0 != -1)
    {
      swift_once();
    }

    v47._object = 0x8000000100401950;
    v47._countAndFlagsBits = 0xD000000000000029;
    Log.error(_:isPrivate:)(v47, 0);

    goto LABEL_8;
  }

  v49 = *(v10 + 32);
  v48 = *(v10 + 40);
  if ((v48 | v49) >> 31)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v98 = a3;
  v50 = *(v10 + 24);
  if (!v50)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v51 = *(v10 + 48);
  v52 = objc_allocWithZone(OpenCVWrapperImage);
  LODWORD(v53) = 1.0;
  v54 = [v52 initWithWidth:v48 height:v49 pixelFormat:0 pixelData:v50 bytesPerRow:v51 scaleFactor:v53];

  v134[0] = v54;
  v134[1] = v41;
  v134[2] = v43;
  v134[3] = *&v38;
  v134[4] = *&v39;
  v134[5] = *v104;
  v135 = *&v104[8];
  v55 = v168;
  v136 = v168;
  v137 = v92;
  v138 = v12;
  v139 = v91;
  if (*(a1 + 48))
  {
    swift_beginAccess();
    v56 = *(a1 + 176);
    v144 = *(a1 + 160);
    v145 = v56;
    v146 = *(a1 + 192);
    v57 = *(a1 + 112);
    *&t2.tx = *(a1 + 96);
    v141 = v57;
    v58 = *(a1 + 144);
    v142 = *(a1 + 128);
    v143 = v58;
    v59 = *(a1 + 80);
    *&t2.a = *(a1 + 64);
    *&t2.c = v59;
    v60 = v54;

    sub_10004B6E4(&t2, &t1);
    sub_100079408(v134, &t2, &v116);

    sub_100018F04(&t2, &qword_1004A33F0);

    v131 = v120;
    v132 = v121;
    v133 = v122;
    v127 = v116;
    v128 = v117;
    v129 = v118;
    v130 = v119;
    nullsub_1(&v127);
    v158 = v130;
    v159 = v131;
    v160 = v132;
    t1 = v127;
    v156 = v128;
    v157 = v129;
    v161 = v133;
    *&v162 = v60;
  }

  else
  {
    sub_10004B268(&t1);
    *&v162 = v54;
  }

  *(&v162 + 1) = v41;
  *&v163 = v43;
  *(&v163 + 1) = v38;
  *&v164 = v39;
  *(&v164 + 1) = *v104;
  v165 = *&v104[8];
  *&v166 = v55;
  *(&v166 + 1) = v92;
  *&v167 = v12;
  *(&v167 + 1) = v91;
  a3 = v98;
LABEL_15:
  swift_beginAccess();
  v61 = *(a1 + 176);
  v114[6] = *(a1 + 160);
  v114[7] = v61;
  v115 = *(a1 + 192);
  v62 = *(a1 + 112);
  v114[2] = *(a1 + 96);
  v114[3] = v62;
  v63 = *(a1 + 144);
  v114[4] = *(a1 + 128);
  v114[5] = v63;
  v64 = *(a1 + 80);
  v114[0] = *(a1 + 64);
  v114[1] = v64;
  v65 = v158;
  *(a1 + 128) = v157;
  *(a1 + 144) = v65;
  v66 = v160;
  *(a1 + 160) = v159;
  *(a1 + 176) = v66;
  *(a1 + 192) = v161;
  v67 = *&t1.c;
  v68 = v156;
  *(a1 + 96) = *&t1.tx;
  *(a1 + 112) = v68;
  *(a1 + 64) = *&t1.a;
  *(a1 + 80) = v67;
  sub_100018F04(v114, &qword_1004A33F0);
  swift_beginAccess();
  v69 = *(a1 + 176);
  v120 = *(a1 + 160);
  v121 = v69;
  v122 = *(a1 + 192);
  v70 = *(a1 + 112);
  *&v116.tx = *(a1 + 96);
  v117 = v70;
  v71 = *(a1 + 144);
  v118 = *(a1 + 128);
  v119 = v71;
  v72 = *(a1 + 80);
  *&v116.a = *(a1 + 64);
  *&v116.c = v72;
  if (sub_10001376C(&v116) != 1)
  {
    sub_1000467C8(a3, *(a1 + 40), *(a1 + 240), a4, *(*(a1 + 64) + 202));
  }

  result = swift_endAccess();
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (!qword_1004D4AC8)
  {
    goto LABEL_25;
  }

  v73 = *(qword_1004D4AC8 + 72);
  if (v73)
  {
    v74 = *(a1 + 176);
    v131 = *(a1 + 160);
    v132 = v74;
    v133 = *(a1 + 192);
    v75 = *(a1 + 112);
    *&v127.tx = *(a1 + 96);
    v128 = v75;
    v76 = *(a1 + 144);
    v129 = *(a1 + 128);
    v130 = v76;
    v77 = *(a1 + 80);
    *&v127.a = *(a1 + 64);
    *&v127.c = v77;
    v78 = *(a1 + 240);
    v79 = v73;
    sub_10004B6E4(&v127, v106);
    sub_10008096C(&v127, v78);
    sub_100018F04(&v162, &qword_1004A33F8);
    sub_100018F04(&v127, &qword_1004A33F0);
  }

  else
  {
    sub_100018F04(&v162, &qword_1004A33F8);
  }

  v80 = *(a1 + 144);
  v81 = *(a1 + 176);
  v111 = *(a1 + 160);
  v112 = v81;
  v82 = *(a1 + 80);
  v83 = *(a1 + 112);
  v107 = *(a1 + 96);
  v84 = v107;
  v108 = v83;
  v85 = *(a1 + 112);
  v86 = *(a1 + 144);
  v109 = *(a1 + 128);
  v87 = v109;
  v110 = v86;
  v88 = *(a1 + 80);
  v106[0] = *(a1 + 64);
  v89 = v106[0];
  v106[1] = v88;
  v90 = *(a1 + 176);
  *(a5 + 96) = v111;
  *(a5 + 112) = v90;
  *(a5 + 32) = v84;
  *(a5 + 48) = v85;
  *(a5 + 64) = v87;
  *(a5 + 80) = v80;
  v113 = *(a1 + 192);
  *(a5 + 128) = *(a1 + 192);
  *a5 = v89;
  *(a5 + 16) = v82;
  return sub_10004B6E4(v106, v105);
}