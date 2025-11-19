unint64_t sub_1000AA608()
{
  result = qword_1001D90B0;
  if (!qword_1001D90B0)
  {
    sub_10001276C(&qword_1001D90B8);
    sub_100013608(&qword_1001D90C0, &qword_1001D90C8);
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D90B0);
  }

  return result;
}

unint64_t sub_1000AA6EC()
{
  result = qword_1001D90D0;
  if (!qword_1001D90D0)
  {
    sub_10001276C(&qword_1001D9050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D90D0);
  }

  return result;
}

uint64_t sub_1000AA7A4(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_1000AA8E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AA928()
{
  sub_10001276C(&qword_1001D8E30);
  sub_1000A4F0C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AA9A0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AADC0()
{
  v1 = sub_1000033A8(&qword_1001D6B70);
  v84 = *(v1 - 8);
  v85 = v1;
  __chkstk_darwin(v1);
  v83 = &v64 - v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v81 = *(v3 - 8);
  *&v82 = v3;
  __chkstk_darwin(v3);
  v80 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchTimeInterval();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v11 - 8);
  v13 = &v64 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v68 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    sub_1000AE5B8(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_stillFrameURL, v13);
    v24 = v14;
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_10001370C(v13, &qword_1001D8020);
      v25 = v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
      v26 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
      v27 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
      v82 = xmmword_100178480;
      *v25 = xmmword_100178480;
      v28 = *(v25 + 16);
      *(v25 + 16) = 2;
      sub_1000616E4(v26, v27, v28);
      aBlock = v82;
      LOBYTE(v87) = 2;
      sub_1000033A8(&qword_1001D6B78);
      v29 = v83;
      AsyncStream.Continuation.yield(_:)();
      return (*(v84 + 8))(v29, v85);
    }

    else
    {
      v30 = v17;
      (*(v15 + 32))(v17, v13, v24);
      v31 = sub_1000B510C(v17, 0x4096800000000000, 0x409E000000000000, 0);
      v32 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming;
      v33 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming);
      *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming) = v31;

      if (*(v0 + v32))
      {
        sub_10005BBC4(0, &qword_1001D94F0);
        *&aBlock = &_swiftEmptyArrayStorage;
        sub_1000AE544(&qword_1001D94F8, &type metadata accessor for OS_dispatch_source.TimerFlags);
        v67 = v24;
        v66 = v15;
        sub_1000033A8(&qword_1001D9500);
        v65 = v0;
        sub_1000618FC(&qword_1001D9508, &qword_1001D9500);
        v34 = v70;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v35 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
        (*(v69 + 8))(v10, v34);
        ObjectType = swift_getObjectType();
        v37 = v71;
        static DispatchTime.now()();
        v38 = v73;
        *v73 = 1;
        v39 = v75;
        v40 = v76;
        (v75[13])(v38, enum case for DispatchTimeInterval.milliseconds(_:), v76);
        OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
        (v39[1])(v38, v40);
        (*(v72 + 8))(v37, v74);
        v41 = swift_allocObject();
        v76 = v30;
        v42 = v41;
        swift_weakInit();
        v43 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v44 = swift_allocObject();
        v44[2] = v42;
        v44[3] = v43;
        v44[4] = 0x4024000000000000;
        v89 = sub_1000B533C;
        v90 = v44;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v75 = &v87;
        v87 = sub_1000B5F04;
        v88 = &unk_1001C3298;
        v45 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        v46 = v77;
        static DispatchQoS.unspecified.getter();
        v47 = v80;
        v70 = ObjectType;
        sub_1000AC4A0();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v45);
        v81 = *(v81 + 8);
        (v81)(v47, v82);
        v48 = v79;
        v78 = *(v78 + 8);
        (v78)(v46, v79);

        v49 = swift_allocObject();
        v50 = v65;
        swift_weakInit();
        v89 = sub_1000B5348;
        v90 = v49;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v87 = sub_1000B5F04;
        v88 = &unk_1001C32C0;
        v51 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        sub_1000AC4A0();
        OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
        _Block_release(v51);
        (v81)(v47, v82);
        (v78)(v46, v48);

        v52 = v50 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
        v53 = *(v50 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
        v54 = *(v50 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
        *v52 = 0;
        *(v52 + 8) = 0;
        v55 = *(v52 + 16);
        *(v52 + 16) = 1;
        sub_1000616E4(v53, v54, v55);
        aBlock = 0uLL;
        LOBYTE(v87) = 1;
        sub_1000033A8(&qword_1001D6B78);
        v56 = v83;
        AsyncStream.Continuation.yield(_:)();
        (*(v84 + 8))(v56, v85);
        *(v50 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameTimer) = v35;
        swift_unknownObjectRelease();
        OS_dispatch_source.resume()();
        swift_unknownObjectRelease();
        return (*(v66 + 8))(v76, v67);
      }

      else
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        *&aBlock = 0xD000000000000022;
        *(&aBlock + 1) = 0x800000010016DBE0;
        sub_1000AE544(&qword_1001D57A8, &type metadata accessor for URL);
        v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v57);

        v58 = aBlock;
        v59 = v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
        v60 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
        v61 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
        *v59 = aBlock;
        v62 = *(v59 + 16);
        *(v59 + 16) = 2;
        sub_1000616E4(v60, v61, v62);
        aBlock = v58;
        LOBYTE(v87) = 2;

        sub_1000033A8(&qword_1001D6B78);
        v63 = v83;
        AsyncStream.Continuation.yield(_:)();
        (*(v84 + 8))(v63, v85);
        return (*(v15 + 8))(v17, v24);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000ABA4C(double a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v4 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D6B70);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v40 = v8;
    v20 = v7;
    v21 = *&result[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue];
    *v17 = v21;
    (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    (*(v15 + 8))(v17, v14);
    if (v21)
    {
      v23 = &v19[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState];
      if (v19[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16] > 1u)
      {
        v28 = *v23;
        v27 = *(v23 + 1);
        if (v19[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16] == 2)
        {
          *&v43 = *v23;
          *(&v43 + 1) = v27;
          v44 = 2;

          sub_1000033A8(&qword_1001D6B78);
          AsyncStream.Continuation.yield(_:)();

          return (*(v11 + 8))(v13, v10);
        }

        v29 = v41;
        if (v28 | v27)
        {
          v30 = v11;
          v31 = v10;
          if (v28 ^ 1 | v27)
          {
            *v23 = xmmword_100176B30;
            v23[16] = 3;
            v43 = xmmword_100176B30;
            v44 = 3;
            sub_1000033A8(&qword_1001D6B78);
            AsyncStream.Continuation.yield(_:)();

            return (*(v30 + 8))(v13, v10);
          }

          v32 = v20;
          sub_1000AE5B8(&v19[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_stillFrameURL], v6);
          v33 = v40;
          if ((*(v40 + 48))(v6, 1, v32) != 1)
          {
            (*(v33 + 32))(v29, v6, v32);
            result = sub_1000B5350(0.75);
            if (result)
            {
              v34 = *&v19[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality];
              *&v19[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality] = result;
              v35 = result;

              sub_1000AC010(v35);
              v36 = *v23;
              v37 = *(v23 + 1);
              *v23 = 0;
              *(v23 + 1) = 0;
              v38 = v23[16];
              v23[16] = 3;
              sub_1000616E4(v36, v37, v38);
              v43 = 0uLL;
              v44 = 3;
              sub_1000033A8(&qword_1001D6B78);
              AsyncStream.Continuation.yield(_:)();

              (*(v30 + 8))(v13, v31);
              return (*(v33 + 8))(v29, v32);
            }

            goto LABEL_22;
          }

LABEL_21:
          result = sub_10001370C(v6, &qword_1001D8020);
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }
      }

      else if (v19[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16])
      {
        v24 = *&v19[OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming];
        if (v24)
        {
          v25 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_timestamp;
          v26 = v24;
          sub_1000AC010(v26);

          *&v19[v25] = 1.0 / a1 + *&v19[v25];
        }

        goto LABEL_20;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        OS_dispatch_source.cancel()();

        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1000AC010(uint64_t a1)
{
  ObjectType = a1;
  v2 = sub_1000033A8(&unk_1001D9540);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for InProcessMediaFrame();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_synchronizer;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v17 = *(v16 + 8);
      static InProcessMediaFrame.fromPbuf(_:timestamp:highResStill:)();
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        swift_unknownObjectRelease();
        return sub_10001370C(v4, &unk_1001D9540);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        ObjectType = swift_getObjectType();
        v24[0] = 0;
        v18 = *(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
        v19 = *(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
        v24[1] = 0;
        v25 = 0;
        v26 = v18;
        v27 = v19;
        v20 = *(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16);
        v28 = v20;
        v22 = *(v17 + 8);
        sub_100060424(v18, v19, v20);
        v21 = sub_1000AE544(&unk_1001D9440, &type metadata accessor for InProcessMediaFrame);
        v22(v8, v24, v5, v21, ObjectType, v17);
        sub_1000616E4(v18, v19, v20);
        swift_unknownObjectRelease();
        return (*(v6 + 8))(v8, v5);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AC388(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000AC3CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming);
    *(Strong + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming) = 0;
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality);
    *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameTimer) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000AC4A0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000AE544(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_1000618FC(&qword_1001D6B20, &unk_1001D8010);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000AC5B8(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  v6 = a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
  v7 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
  v8 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
  v11[0] = xmmword_100176B30;
  *v6 = xmmword_100176B30;
  v9 = *(v6 + 16);
  *(v6 + 16) = 3;
  sub_1000616E4(v7, v8, v9);
  v11[1] = v11[0];
  v12 = 3;
  sub_1000033A8(&qword_1001D6B78);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000AC708()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runStateStreamInternal;
  v3 = sub_1000033A8(&qword_1001D6AF0);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runStateStreamContinuation;
  v5 = sub_1000033A8(&qword_1001D6B78);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  sub_1000616E4(*(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState), *(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8), *(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16));

  sub_10001370C(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_stillFrameURL, &qword_1001D8020);
  swift_unknownObjectRelease();
  sub_100061BBC(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_synchronizer);
  sub_1000B5E3C(*(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource____lazy_storage___trackManagerSupporting));
  return v1;
}

uint64_t sub_1000AC890()
{
  sub_1000AC708();

  return swift_deallocClassInstance();
}

void sub_1000AC910()
{
  sub_10005FAB0(319, &unk_1001D6940, &type metadata accessor for AsyncStream);
  if (v0 <= 0x3F)
  {
    sub_10005FAB0(319, &qword_1001D7630, &type metadata accessor for AsyncStream.Continuation);
    if (v1 <= 0x3F)
    {
      sub_1000AE398(319, &qword_1001D5398, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000ACAD8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_1000AE544(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_1000618FC(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

void sub_1000ACD70(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  v6 = a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
  v7 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
  v8 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
  *v6 = 0;
  *(v6 + 8) = 0;
  v9 = *(v6 + 16);
  *(v6 + 16) = 0;
  sub_1000616E4(v7, v8, v9);
  v12[1] = 0;
  v12[2] = 0;
  v13 = 0;
  sub_1000033A8(&qword_1001D6B78);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v5, v2);
  v10 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming);
  *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming) = 0;

  v11 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality);
  *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality) = 0;
}

uint64_t sub_1000ACEC0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource____lazy_storage___trackManagerSupporting;
  v3 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource____lazy_storage___trackManagerSupporting);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for SimulatorCameraSource.Tracker(0);
    swift_allocObject();

    v4 = sub_1000B4C44(v5);

    v6 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1000B5E3C(v6);
  }

  sub_1000B5E4C(v3);
  return v4;
}

uint64_t sub_1000ACF78()
{
  sub_10006043C();
  swift_allocError();
  *v1 = 0xD000000000000032;
  v1[1] = 0x800000010016DC10;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000AD01C()
{
  v1 = *v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
  v2 = *v1;
  sub_100060424(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_1000AD074@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runStateStreamInternal;
  v5 = sub_1000033A8(&qword_1001D6AF0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000AD1BC(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for CVTrackSnapshot();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_registeredTrackIds;
  swift_beginAccess();
  v30 = v9;
  v10 = *(v1 + v9);
  v11 = *(a1 + 16);
  if (v11)
  {
    v29 = v1;
    v37 = &_swiftEmptyArrayStorage;
    v28 = v10;

    sub_1000596D8(0, v11, 0);
    v12 = v37;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v32 = *(v13 + 56);
    v33 = v14;
    v16 = (v13 - 8);
    v31 = v6 + 32;
    do
    {
      v17 = v34;
      v18 = v36;
      v19 = v13;
      v33(v34, v15, v36);
      CVTrackSnapshot.id.getter();
      (*v16)(v17, v18);
      v37 = v12;
      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000596D8(v20 > 1, v21 + 1, 1);
        v12 = v37;
      }

      v12[2] = v21 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v8, v35);
      v15 += v32;
      --v11;
      v13 = v19;
    }

    while (v11);
    v10 = v28;
    v2 = v29;
  }

  else
  {

    v12 = &_swiftEmptyArrayStorage;
  }

  v22 = sub_1000B3030(v12, v10);

  v23 = v30;
  v24 = *(v2 + v30);
  if (*(v22 + 16) <= v24[2] >> 3)
  {
    v37 = *(v2 + v30);

    sub_1000B31D0(v22);

    v25 = v37;
  }

  else
  {

    v25 = sub_1000B33EC(v22, v24);
  }

  *(v2 + v23) = v25;
}

uint64_t sub_1000AD4E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&unk_1001D9590);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_trackIdToPredictionStreamContinuation;
  swift_beginAccess();
  v8 = sub_100095B4C(a1);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + v7);
    v20 = *(v2 + v7);
    *(v2 + v7) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000C22D4();
      v12 = v20;
    }

    v13 = *(v12 + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);
    v15 = *(v12 + 56);
    v16 = sub_1000033A8(&unk_1001D8190);
    v17 = *(v16 - 8);
    (*(v17 + 32))(v6, v15 + *(v17 + 72) * v10, v16);
    sub_1000C0560(v10, v12);
    *(v2 + v7) = v12;

    (*(v17 + 56))(v6, 0, 1, v16);
  }

  else
  {
    v18 = sub_1000033A8(&unk_1001D8190);
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  }

  sub_10001370C(v6, &unk_1001D9590);
  return swift_endAccess();
}

uint64_t sub_1000AD73C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v1 - 8);
  v36 = &v27 - v2;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  v33 = *(v3 + 64);
  v4 = __chkstk_darwin(v34);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_1000033A8(&unk_1001D9570);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v30 = sub_1000033A8(&unk_1001D8190);
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v30);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  sub_1000033A8(&unk_1001D9580);
  (*(v9 + 104))(v11, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  v27 = v16;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v9 + 8))(v11, v8);
  v28 = v7;
  UUID.init()();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v36, 1, 1, v17);
  v18 = v31;
  v19 = v34;
  (*(v3 + 16))(v31, v7, v34);
  v20 = v29;
  v21 = v16;
  v22 = v30;
  (*(v12 + 16))(v29, v21, v30);
  v23 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v24 = (v33 + *(v12 + 80) + v23) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v35;
  (*(v3 + 32))(&v25[v23], v18, v19);
  (*(v12 + 32))(&v25[v24], v20, v22);

  sub_1000154EC(0, 0, v36, &unk_100178648, v25);

  (*(v3 + 8))(v28, v19);
  return (*(v12 + 8))(v27, v22);
}

uint64_t sub_1000ADB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1000033A8(&unk_1001D81A0);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_1000033A8(&unk_1001D9590);
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000ADD08, 0, 0);
}

uint64_t sub_1000ADD08()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  v5 = v0[8];
  v15 = v0[7];
  v6 = v0[6];
  v14 = *(v2 + 16);
  v14(v1);
  v7 = sub_1000033A8(&unk_1001D8190);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, v5, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  swift_beginAccess();
  sub_1000B7B68(v4, v1);
  swift_endAccess();
  v9 = swift_allocObject();
  swift_weakInit();
  (v14)(v1, v15, v3);
  v10 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v2 + 32))(v11 + v10, v1, v3);
  AsyncStream.Continuation.onTermination.setter();
  v0[5] = *(v6 + OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_trackIdToPrediction);

  AsyncStream.Continuation.yield(_:)();
  (*(v17 + 8))(v16, v18);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000ADF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 4) = v11;
    (*(v5 + 32))(&v14[v13], &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_1000154EC(0, 0, v9, &unk_100178658, v14);
  }

  return result;
}

uint64_t sub_1000AE17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000AE19C, 0, 0);
}

uint64_t sub_1000AE19C()
{
  sub_1000AD4E8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AE1FC()
{
  sub_100005640(*(v0 + 16));
  sub_10001370C(v0 + OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_latestFrame, &unk_1001D9540);

  return swift_deallocClassInstance();
}

void sub_1000AE2D0()
{
  sub_1000AE398(319, &unk_1001D92E0, &type metadata accessor for InProcessMediaFrame);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000AE398(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000AE3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CVTrackSnapshot();
  v8 = sub_1000AE544(&qword_1001D7FA0, &type metadata accessor for CVTrackSnapshot);

  return sub_1000B56A4(a1, v7, a3, v8, a4);
}

uint64_t sub_1000AE4A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100005640(v3);
}

uint64_t sub_1000AE544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AE594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AE5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CVPixelBufferRef sub_1000AE628(uint64_t a1, uint64_t a2, char a3)
{
  v53 = [objc_allocWithZone(CIContext) init];
  pixelBufferOut = 0;
  sub_1000033A8(&qword_1001D9518);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100178490;
  v8 = kCVPixelBufferCGImageCompatibilityKey;
  *(inited + 32) = kCVPixelBufferCGImageCompatibilityKey;
  v9 = sub_1000033A8(&qword_1001D9520);
  *(inited + 40) = kCFBooleanTrue;
  v10 = kCVPixelBufferCGBitmapContextCompatibilityKey;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = kCFBooleanTrue;
  v11 = kCVPixelBufferIOSurfacePropertiesKey;
  *(inited + 104) = v9;
  *(inited + 112) = v11;
  v12 = kCFBooleanTrue;
  v13 = v8;
  v14 = v10;
  v15 = v11;
  v16 = sub_100097980(&_swiftEmptyArrayStorage);
  *(inited + 144) = sub_1000033A8(&qword_1001D9528);
  *(inited + 120) = v16;
  sub_100097ABC(inited);
  swift_setDeallocating();
  sub_1000033A8(&unk_1001D9530);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1000AE544(&qword_1001D3518, type metadata accessor for CFString);
  v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a3)
  {
    [v3 extent];
    Width = CGRectGetWidth(v58);
    [v3 extent];
    Height = CGRectGetHeight(v59);
  }

  else
  {
    Width = *&a1;
    Height = *&a2;
  }

  if (Width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_24;
  }

  v20 = 0;
  if (!CVPixelBufferCreate(kCFAllocatorDefault, Width, Height, 0x42475241u, v17.super.isa, &pixelBufferOut))
  {
    v21 = pixelBufferOut;
    if (pixelBufferOut)
    {
      v22 = pixelBufferOut;
      [v3 extent];
      v23 = CGRectGetWidth(v60);
      [v3 extent];
      v24 = CGRectGetHeight(v61);
      if (a3)
      {
        v25 = *&CGAffineTransformIdentity.a;
        v26 = *&CGAffineTransformIdentity.c;
        v27 = *&CGAffineTransformIdentity.tx;
      }

      else
      {
        v28 = v23 / v24;
        [v3 extent];
        if (v28 >= *&a1 / *&a2)
        {
          v33 = *&a2 / CGRectGetHeight(*&v29);
        }

        else
        {
          v33 = *&a1 / CGRectGetWidth(*&v29);
        }

        [v3 extent];
        v34 = CGRectGetWidth(v62) * -0.5;
        [v3 extent];
        v35 = CGRectGetHeight(v63);
        CGAffineTransformMakeTranslation(&t1, v34, v35 * -0.5);
        tx = t1.tx;
        ty = t1.ty;
        v47 = *&t1.c;
        v48 = *&t1.a;
        CGAffineTransformMakeScale(&t1, v33, v33);
        v38 = t1.tx;
        v39 = t1.ty;
        v49 = *&t1.c;
        v50 = *&t1.a;
        CGAffineTransformMakeTranslation(&t1, *&a1 * 0.5, *&a2 * 0.5);
        v40 = t1.tx;
        v41 = t1.ty;
        v51 = *&t1.c;
        v52 = *&t1.a;
        v42 = *&CGAffineTransformIdentity.c;
        *&t1.a = *&CGAffineTransformIdentity.a;
        *&t1.c = v42;
        *&t1.tx = *&CGAffineTransformIdentity.tx;
        *&t2.a = v48;
        *&t2.c = v47;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v54, &t1, &t2);
        t1 = v54;
        *&t2.a = v50;
        *&t2.c = v49;
        t2.tx = v38;
        t2.ty = v39;
        CGAffineTransformConcat(&v54, &t1, &t2);
        t1 = v54;
        *&t2.a = v52;
        *&t2.c = v51;
        t2.tx = v40;
        t2.ty = v41;
        CGAffineTransformConcat(&v54, &t1, &t2);
        v25 = *&v54.a;
        v26 = *&v54.c;
        v27 = *&v54.tx;
      }

      *&t1.a = v25;
      *&t1.c = v26;
      *&t1.tx = v27;
      v43 = [v3 imageByApplyingTransform:{&t1, v47, v48}];
      v44 = [v43 imageByCroppingToRect:{0.0, 0.0, Width, Height}];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      [v53 render:v44 toCVPixelBuffer:v22 bounds:DeviceRGB colorSpace:{0.0, 0.0, Width, Height}];

      v20 = v21;
    }
  }

  return v20;
}

uint64_t sub_1000AEB98(double *a1, double a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1000B0968(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000AEC8C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000B0A94(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000AEDDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10005BBC4(0, &qword_1001D95A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000AF5E4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1000AFC9C(v20 + 1, &qword_1001D95A8);
    }

    v18 = v8;
    sub_1000B08E4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10005BBC4(0, &qword_1001D95A0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1000B0C14(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1000AF024(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000B0D94(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000AF304(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DetectionRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000AE544(&qword_1001D8240, &type metadata accessor for DetectionRequest);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000AE544(&qword_1001D95D0, &type metadata accessor for DetectionRequest);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000B105C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_1000AF5E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000033A8(&qword_1001D95A8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10005BBC4(0, &qword_1001D95A0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000AFC9C(v9 + 1, &qword_1001D95A8);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1000AF7F4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000033A8(&unk_1001D95C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000AFA28()
{
  v1 = v0;
  v2 = *v0;
  sub_1000033A8(&qword_1001D95B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000AFC9C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000033A8(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1000AFEBC()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000033A8(&unk_1001D9560);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1000B0218()
{
  v1 = v0;
  v35 = type metadata accessor for DetectionRequest();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000033A8(&qword_1001D95D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1000AE544(&qword_1001D8240, &type metadata accessor for DetectionRequest);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1000B0574()
{
  v1 = v0;
  v2 = *v0;
  sub_1000033A8(&unk_1001D95E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v37 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_66;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v36 = 1 << *(v2 + 32);
        if (v36 >= 64)
        {
          bzero(v6, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v36;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        goto LABEL_64;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 24);
      v38 = *(v17 + 16);
      v39 = *(v17 + 8);
      v20 = *(v17 + 32);
      Hasher.init(_seed:)();
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v21 = 9;
LABEL_21:
        Hasher._combine(_:)(v21);
        String.hash(into:)();
        String.hash(into:)();
        goto LABEL_51;
      }

      if (v38 | v39 | v18 | v19)
      {
        v22 = v38 | v39 | v19;
        if (v18 == 1 && v22 == 0)
        {
          v28 = 1;
        }

        else if (v18 == 2 && v22 == 0)
        {
          v28 = 2;
        }

        else if (v18 == 3 && v22 == 0)
        {
          v28 = 5;
        }

        else if (v18 == 4 && v22 == 0)
        {
          v28 = 6;
        }

        else if (v18 == 5 && v22 == 0)
        {
          v28 = 7;
        }

        else
        {
          v28 = 8;
        }
      }

      else
      {
        v28 = 0;
      }

      Hasher._combine(_:)(v28);
LABEL_51:
      result = Hasher._finalize()();
      v29 = -1 << *(v4 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v11 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v11 + 8 * v31);
          if (v35 != -1)
          {
            v12 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_66:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v30) & ~*(v11 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v18;
      *(v13 + 8) = v39;
      *(v13 + 16) = v38;
      *(v13 + 24) = v19;
      *(v13 + 32) = v20;
      ++*(v4 + 16);
      v2 = v37;
    }

    if (v20)
    {
      v21 = 4;
    }

    else
    {
      v21 = 3;
    }

    goto LABEL_21;
  }

LABEL_64:

  *v1 = v4;
  return result;
}

unint64_t sub_1000B08E4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_1000B0968(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1000AF7F4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1000B1324();
      result = v7;
      goto LABEL_12;
    }

    sub_1000B1AB8();
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000B0A94(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000AFA28();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000B1464();
      goto LABEL_16;
    }

    sub_1000B1CB8();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000B0C14(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000AFC9C(v6 + 1, &qword_1001D95A8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000B15C0();
      goto LABEL_12;
    }

    sub_1000B1EF0();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10005BBC4(0, &qword_1001D95A0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000B0D94(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000AFEBC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000B1710(&type metadata accessor for UUID, &unk_1001D9560);
      goto LABEL_12;
    }

    sub_1000B2104();
  }

  v12 = *v3;
  sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000B105C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for DetectionRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000B0218();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000B1710(&type metadata accessor for DetectionRequest, &qword_1001D95D8);
      goto LABEL_12;
    }

    sub_1000B2420();
  }

  v12 = *v3;
  sub_1000AE544(&qword_1001D8240, &type metadata accessor for DetectionRequest);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000AE544(&qword_1001D95D0, &type metadata accessor for DetectionRequest);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000B1324()
{
  v1 = v0;
  sub_1000033A8(&unk_1001D95C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000B1464()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D95B8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1000B15C0()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D95A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000B1710(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000033A8(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_1000B1948()
{
  v1 = v0;
  sub_1000033A8(&unk_1001D95E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        result = sub_100007F40(v19, v20, v21, v22, v24);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1000B1AB8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000033A8(&unk_1001D95C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000B1CB8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000033A8(&qword_1001D95B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000B1EF0()
{
  v1 = v0;
  v2 = *v0;
  sub_1000033A8(&qword_1001D95A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000B2104()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000033A8(&unk_1001D9560);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1000B2420()
{
  v1 = v0;
  v32 = type metadata accessor for DetectionRequest();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000033A8(&qword_1001D95D8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1000AE544(&qword_1001D8240, &type metadata accessor for DetectionRequest);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1000B273C()
{
  v1 = v0;
  v2 = *v0;
  sub_1000033A8(&unk_1001D95E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v41 = v0;
    v42 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 24);
      v44 = *(v17 + 16);
      v21 = *(v17 + 32);
      Hasher.init(_seed:)();
      v22 = v21;
      v43 = v21;
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          Hasher._combine(_:)(9uLL);

          v23 = v18;
          v25 = v19;
          String.hash(into:)();
          v26 = v44;
          String.hash(into:)();
        }

        else
        {
          if (v44 | v19 | v18 | v20)
          {
            v27 = v44 | v19 | v20;
            if (v18 == 1 && v27 == 0)
            {
              v23 = v18;
              v33 = 1;
            }

            else if (v18 == 2 && v27 == 0)
            {
              v23 = v18;
              v33 = 2;
            }

            else if (v18 == 3 && v27 == 0)
            {
              v23 = v18;
              v33 = 5;
            }

            else if (v18 == 4 && v27 == 0)
            {
              v23 = v18;
              v33 = 6;
            }

            else
            {
              v23 = v18;
              if (v18 == 5 && v27 == 0)
              {
                v33 = 7;
              }

              else
              {
                v33 = 8;
              }
            }
          }

          else
          {
            v23 = v18;
            v33 = 0;
          }

          Hasher._combine(_:)(v33);
          v25 = v19;
          v26 = v44;
        }
      }

      else
      {
        v23 = v18;
        if (v22)
        {
          v24 = 4;
        }

        else
        {
          v24 = 3;
        }

        Hasher._combine(_:)(v24);
        v25 = v19;

        String.hash(into:)();
        v26 = v44;
        String.hash(into:)();
      }

      result = Hasher._finalize()();
      v34 = -1 << *(v4 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v11 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v11 + 8 * v36);
          if (v40 != -1)
          {
            v12 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_64;
      }

      v12 = __clz(__rbit64((-1 << v35) & ~*(v11 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v23;
      *(v13 + 8) = v25;
      *(v13 + 16) = v26;
      *(v13 + 24) = v20;
      *(v13 + 32) = v43;
      ++*(v4 + 16);
      v2 = v42;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v41;
        goto LABEL_62;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {

LABEL_62:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000B2B14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000033A8(&qword_1001D95B0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B2D08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000033A8(&unk_1001D9560);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B3030(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000B48F8(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1000B5E08(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_1000B31D0(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_10001370C(v5, &qword_1001D44B0))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1000B3E50(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1000B33EC(uint64_t a1, void *a2)
{
  v5 = sub_1000033A8(&qword_1001D44B0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for UUID();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_10001370C(v30, &qword_1001D44B0);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_10001370C(v24, &qword_1001D44B0);
        a2 = sub_1000B2D08(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_1000B411C(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_100037980();
  return a2;
}

uint64_t sub_1000B3E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000B1710(&type metadata accessor for UUID, &unk_1001D9560);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1000B45F0(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_1000B411C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10001370C(v11, &qword_1001D44B0);
          v45 = v61;

          return sub_1000B2D08(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_1000B45F0(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_1000B48F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v10 + 16);
    v38 = v10 + 16;
    v31 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v10 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6);
      sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        v37(v9, *(v34 + 48) + v19 * v36, v6);
        sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = *v14;
        (*v14)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_1000B2D08(v29, v27, v28, a4);
}

uint64_t sub_1000B4C44(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_latestFrame;
  v4 = type metadata accessor for InProcessMediaFrame();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_registeredTrackIds) = &_swiftEmptySetSingleton;
  v5 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_trackIdToPrediction;
  *(v1 + v5) = sub_100096F20(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_trackIdToPredictionStreamContinuation) = &_swiftEmptyDictionarySingleton;
  v6 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v1;
  v7[4] = &off_1001C3180;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000B5EC4;
  *(v8 + 24) = v7;
  v11[4] = sub_10006180C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100071D78;
  v11[3] = &unk_1001C33D8;
  v9 = _Block_copy(v11);
  swift_retain_n();

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B4E58(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000033A8(&unk_1001D9540);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - v10;
  v12 = *(a2 - 8);
  __chkstk_darwin(v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InProcessMediaFrame();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, a2);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v11, 0, 1, v15);
    v21 = *(v16 + 32);
    v21(v18, v11, v15);
    v21(v8, v18, v15);
    v20(v8, 0, 1, v15);
    v22 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_latestFrame;
    swift_beginAccess();
    sub_1000B57CC(v8, v2 + v22);
    return swift_endAccess();
  }

  else
  {
    v20(v11, 1, 1, v15);
    return sub_10001370C(v11, &unk_1001D9540);
  }
}

CVPixelBufferRef sub_1000B510C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1000033A8(&qword_1001D9510);
  inited = swift_initStackObject();
  *(inited + 32) = kCIImageApplyOrientationProperty;
  *(inited + 16) = xmmword_100171DA0;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 1;
  v8 = kCIImageApplyOrientationProperty;
  sub_100096DF8(inited);
  swift_setDeallocating();
  sub_10001370C(inited + 32, &qword_1001D8320);
  v9 = objc_allocWithZone(CIImage);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  type metadata accessor for CIImageOption(0);
  sub_1000AE544(&qword_1001D3550, type metadata accessor for CIImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v9 initWithContentsOfURL:v12 options:isa];

  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = sub_1000AE628(a2, a3, a4 & 1);

  return v16;
}

uint64_t sub_1000B52B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000B52EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

CVPixelBufferRef sub_1000B5350(double a1)
{
  sub_1000033A8(&qword_1001D9510);
  inited = swift_initStackObject();
  *(inited + 32) = kCIImageApplyOrientationProperty;
  *(inited + 16) = xmmword_100171DA0;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 1;
  v3 = kCIImageApplyOrientationProperty;
  sub_100096DF8(inited);
  swift_setDeallocating();
  sub_10001370C(inited + 32, &qword_1001D8320);
  v4 = objc_allocWithZone(CIImage);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  type metadata accessor for CIImageOption(0);
  sub_1000AE544(&qword_1001D3550, type metadata accessor for CIImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v4 initWithContentsOfURL:v7 options:isa];

  if (!v9)
  {
    return 0;
  }

  [v9 extent];
  Width = CGRectGetWidth(v20);
  [v9 extent];
  v11 = Width / CGRectGetHeight(v21);
  [v9 extent];
  if (v11 >= a1)
  {
    v16 = CGRectGetHeight(*&v12) * a1;
    [v9 extent];
    Height = CGRectGetHeight(v23);
  }

  else
  {
    v16 = CGRectGetWidth(*&v12);
    [v9 extent];
    Height = CGRectGetWidth(v22) / a1;
  }

  v18 = sub_1000AE628(*&v16, *&Height, 0);

  return v18;
}

uint64_t sub_1000B555C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1000AF024(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1000B56A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[5] = a5;
  v11[6] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v5 = type metadata accessor for Array();
  v6 = type metadata accessor for UUID();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1000AA9A0(sub_1000B5790, v11, v5, v6, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);
  swift_beginAccess();
  sub_1000B555C(v9);
  swift_endAccess();
}

uint64_t sub_1000B57CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&unk_1001D9540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B583C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1000033A8(&unk_1001D8190);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000B59A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000033A8(&unk_1001D8190) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100019340;

  return sub_1000ADB9C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1000B5B0C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000B5BD0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000ADF7C(a1, v4, v5);
}

uint64_t sub_1000B5C44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000B5D10(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_1000AE17C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000B5E08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1000B48F8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000B5E3C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000B5E4C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000B5E74(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

id sub_1000B5F20(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          v7 = [objc_opt_self() sharedShimmeringLight];
LABEL_25:
          v8 = v7;
          v9 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v8];

          [v9 setActivationTransitionDirection:0];
LABEL_29:
          [v9 setDeactivationTransitionDirection:0];
          return v9;
        }

        v2 = [objc_opt_self() sharedShimmeringLight];
        v3 = [objc_allocWithZone(_UIIntelligenceEdgeLightEffect) initWithLightSource:v2 radius:1 region:8.0];
LABEL_28:
        v9 = v3;

        [v9 setActivationTransitionDirection:2];
        goto LABEL_29;
      }

      v2 = [objc_opt_self() sharedShimmeringLight];
      v4 = objc_allocWithZone(_UIIntelligenceEdgeLightEffect);
      v5 = 2.0;
LABEL_27:
      v3 = [v4 initWithLightSource:v2 radius:0 region:v5];
      goto LABEL_28;
    }

    if (a1)
    {
      v2 = [objc_opt_self() sharedShimmeringLight];
      v4 = objc_allocWithZone(_UIIntelligenceEdgeLightEffect);
      v5 = 5.0;
      goto LABEL_27;
    }

    v6 = objc_allocWithZone(_UIIntelligenceLatencyEffect);

    return [v6 initWithMode:0];
  }

  else
  {
    if (a1 <= 7u)
    {
      if (a1 != 5)
      {
        if (a1 == 6)
        {

          return sub_1000B73E4();
        }

        else
        {
          sub_10005BBC4(0, &qword_1001D96B8);
          v10 = [objc_opt_self() textAssistantReplacementBuildInPalette];
          v11 = _UIDirectionalLightConfiguration.init(colorPalette:direction:reverse:duration:)();
          [v11 setDuration:4.0];
          [v11 setDirection:2];
          v12 = [objc_opt_self() directionalLightWithConfiguration:v11];
          v13 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v12];

          return v13;
        }
      }

      v7 = [objc_opt_self() sharedLight];
      goto LABEL_25;
    }

    if (a1 == 8)
    {

      return sub_1000B74FC();
    }

    else
    {
      if (a1 == 9)
      {
        v2 = [objc_opt_self() sharedShimmeringLight];
        v4 = objc_allocWithZone(_UIIntelligenceEdgeLightEffect);
        v5 = 3.0;
        goto LABEL_27;
      }

      return sub_1000B7620();
    }
  }
}

uint64_t sub_1000B62B8()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TamaleVisualEffect(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TamaleVisualEffect(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000B6468()
{
  result = qword_1001D9698;
  if (!qword_1001D9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9698);
  }

  return result;
}

id sub_1000B64CC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1000033A8(&qword_1001D96A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - v8;
  if ([objc_opt_self() isMainThread])
  {

    return sub_1000B679C(a3, a1, a2);
  }

  else
  {
    v20 = 0;
    sub_10005BBC4(0, &qword_1001D6B40);
    v11 = static OS_dispatch_queue.main.getter();
    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = &v20;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    (*(v7 + 32))(v13 + v12, v9, v6);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000B77F0;
    *(v14 + 24) = v13;
    aBlock[4] = sub_10006180C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100071D78;
    aBlock[3] = &unk_1001C3650;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v11, v15);

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v17 = v20;
      if (v20)
      {

        return v17;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1000B679C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(UIVisualEffectView) init];
  [v5 _setContinuousCornerRadius:a1];
  v6 = *(a3 + 16);
  if (v6)
  {
    v11 = &_swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a3 + 32);
    do
    {
      v8 = *v7++;
      sub_1000B5F20(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  sub_10005BBC4(0, &qword_1001D96B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setBackgroundEffects:isa];

  sub_1000033A8(&qword_1001D96A8);
  UIViewRepresentableContext.coordinator.getter();
  v11[2] = a3;

  return v5;
}

uint64_t sub_1000B6928(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v28 = a3;
  v29 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000033A8(&qword_1001D96A8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_10005BBC4(0, &qword_1001D6B40);
  v27 = static OS_dispatch_queue.main.getter();
  (*(v13 + 16))(v16, a2, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  v20 = v19 + v18;
  v21 = v29;
  *v20 = v28;
  *(v20 + 8) = a4;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_1000B72A8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C3538;
  v22 = _Block_copy(aBlock);

  v23 = v21;
  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_100015060();
  sub_1000033A8(&unk_1001D8010);
  sub_1000150B8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v32 + 8))(v8, v6);
  (*(v30 + 8))(v11, v31);
}

uint64_t sub_1000B6CC4(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000033A8(&qword_1001D96A8);
  UIViewRepresentableContext.coordinator.getter();
  v7 = v21[2];

  v8 = sub_100059444(v7, a3);

  if (v8)
  {
  }

  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (v10)
  {
    v21 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = (a3 + 32);
    do
    {
      v13 = *v12++;
      sub_1000B5F20(v13);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v10;
    }

    while (v10);
    v11 = v21;
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = v11;
  v25 = sub_1000B7374;
  v26 = v15;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000B5F04;
  v24 = &unk_1001C3588;
  v16 = _Block_copy(&v21);
  v17 = a4;

  [v14 animateWithDuration:v16 animations:0.9];
  _Block_release(v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  *(v18 + 32) = a1;
  v25 = sub_1000B73D0;
  v26 = v18;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000B5F04;
  v24 = &unk_1001C35D8;
  v19 = _Block_copy(&v21);

  v20 = v17;

  [v14 animateWithDuration:v19 animations:0.05];
  _Block_release(v19);
  UIViewRepresentableContext.coordinator.getter();
  v21[2] = a3;

  UIViewRepresentableContext.coordinator.getter();
  *(v21 + 3) = a1;
}

void sub_1000B6FAC(void *a1)
{
  sub_10005BBC4(0, &qword_1001D96B0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setBackgroundEffects:isa];
}

uint64_t sub_1000B7040@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for VisualEffectView.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = v5;
}

uint64_t sub_1000B70A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B7888();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000B710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B7888();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000B7170()
{
  sub_1000B7888();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000B719C()
{
  result = qword_1001D96A0;
  if (!qword_1001D96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D96A0);
  }

  return result;
}

uint64_t sub_1000B71F0()
{
  v1 = sub_1000033A8(&qword_1001D96A8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000B72A8()
{
  v1 = *(sub_1000033A8(&qword_1001D96A8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v0 + v4);

  return sub_1000B6CC4(v7, v0 + v2, v6, v8);
}

uint64_t sub_1000B7354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B7384()
{

  return swift_deallocObject();
}

id sub_1000B73E4()
{
  v0 = [objc_opt_self() sharedLight];
  v1 = [objc_opt_self() mainBundle];
  v2 = objc_allocWithZone(_UIIntelligenceContentLightEffect);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithLightSource:v0 lightMaterial:v3 darkMaterial:v4 bundle:v1];

  [v5 setActivationTransitionDirection:0];
  [v5 setDeactivationTransitionDirection:0];
  return v5;
}

id sub_1000B74FC()
{
  sub_10005BBC4(0, &qword_1001D96B8);
  v0 = [objc_opt_self() textAssistantPonderingFillPalette];
  v1 = _UIDirectionalLightConfiguration.init(colorPalette:direction:reverse:duration:)();
  [v1 setDirection:1];
  [v1 setReverse:1];
  [v1 setDuration:4.0];
  v2 = [objc_opt_self() directionalLightWithConfiguration:v1];
  v3 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v2];
  [v3 setActivationTransitionDirection:2];
  [v3 setDeactivationTransitionDirection:0];

  return v3;
}

id sub_1000B7620()
{
  sub_10005BBC4(0, &qword_1001D96B8);
  v0 = [objc_opt_self() textAssistantPonderingFillPalette];
  v1 = _UIDirectionalLightConfiguration.init(colorPalette:direction:reverse:duration:)();
  [v1 setDuration:2.5];
  [v1 setDirection:1];
  [v1 setReverse:1];
  v2 = [objc_opt_self() directionalLightWithConfiguration:v1];
  v3 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v2];

  return v3;
}

uint64_t sub_1000B7720()
{
  v1 = sub_1000033A8(&qword_1001D96A8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000B77F0()
{
  v1 = *(sub_1000033A8(&qword_1001D96A8) - 8);
  v2 = *(v0 + 16);
  *v2 = sub_1000B679C(*(v0 + 32), v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)), *(v0 + 24));

  return _objc_release_x1();
}

unint64_t sub_1000B7888()
{
  result = qword_1001D96C0;
  if (!qword_1001D96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D96C0);
  }

  return result;
}

void *sub_1000B78F4(void *result)
{
  v1 = result[3];
  v2 = result[4] >> 1;
  v3 = v2 - v1;
  if (!__OFSUB__(v2, v1))
  {
    v29 = result[4] >> 1;
    v27 = result[3];
    v28 = result[1];
    v30 = *result;
    v25 = *(*result + 16);
    v26 = result[2];
    if (v3 >= v25)
    {
      v4 = *(*result + 16);
    }

    else
    {
      v4 = v2 - v1;
    }

    result = sub_10005971C(0, v4 & ~(v4 >> 63), 0);
    if (v3 < 0)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v5 = v29;
      v6 = v27;
      if (v27 > v29)
      {
        v5 = v27;
      }

      v7 = v5 - v27;

      result = swift_unknownObjectRetain();
      v8 = 0;
      v10 = v25;
      v9 = v26;
      do
      {
        if (v10 == v8)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (!(v27 - v29 + v8))
        {
          goto LABEL_30;
        }

        if (v7 == v8)
        {
          goto LABEL_31;
        }

        v11 = *(v30 + 32 + 8 * v8);
        v12 = *(v26 + 8 * v27 + 8 * v8);
        v14 = *(&_swiftEmptyArrayStorage + 2);
        v13 = *(&_swiftEmptyArrayStorage + 3);
        if (v14 >= v13 >> 1)
        {
          sub_10005971C((v13 > 1), v14 + 1, 1);
          v10 = v25;
          v9 = v26;
          v6 = v27;
          result = v28;
        }

        ++v8;
        *(&_swiftEmptyArrayStorage + 2) = v14 + 1;
        v15 = (&_swiftEmptyArrayStorage + 16 * v14);
        v15[4] = v12;
        v15[5] = v12 - v11;
      }

      while (v4 != v8);
      v16 = v6 + v8;
      if (v10 > v3)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }

    result = swift_unknownObjectRetain();
    v9 = v26;
    v6 = v27;
    v16 = v27;
    v10 = v25;
    if (v25 <= v3)
    {
LABEL_28:
      swift_unknownObjectRelease();

      return &_swiftEmptyArrayStorage;
    }

LABEL_19:
    v17 = v29;
    v18 = v16;
    while (v4 < v10)
    {
      v19 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_33;
      }

      if (v17 != v18)
      {
        if (v16 < v6 || v18 >= v17)
        {
          goto LABEL_34;
        }

        v20 = *(v30 + 32 + 8 * v4);
        v21 = *(v9 + 8 * v18);
        v23 = *(&_swiftEmptyArrayStorage + 2);
        v22 = *(&_swiftEmptyArrayStorage + 3);
        if (v23 >= v22 >> 1)
        {
          sub_10005971C((v22 > 1), v23 + 1, 1);
          v10 = v25;
          v9 = v26;
          result = v28;
          v17 = v29;
          v6 = v27;
        }

        *(&_swiftEmptyArrayStorage + 2) = v23 + 1;
        v24 = (&_swiftEmptyArrayStorage + 16 * v23);
        v24[4] = v21;
        v24[5] = v21 - v20;
        ++v4;
        ++v18;
        if (v19 != v10)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000B7B68(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000033A8(&unk_1001D9590);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000033A8(&unk_1001D8190);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1000C532C(a1);
    sub_1000BD6E0(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1000C532C(v7);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1000C0D64(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

unint64_t sub_1000B7D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1000C15D8(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_100096048(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1000C3404();
        v11 = v13;
      }

      swift_unknownObjectRelease();
      result = sub_1000C0BF4(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

NSString sub_1000B7EA0()
{
  result = String._bridgeToObjectiveC()();
  qword_1001EB5D0 = result;
  return result;
}

NSString sub_1000B7ED8()
{
  result = String._bridgeToObjectiveC()();
  qword_1001EB5D8 = result;
  return result;
}

uint64_t sub_1000B7F10(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC6Tamale12PreviewLayer__layerIsSafeInternal;
  if (*(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerIsSafeInternal) != v3)
  {
    v19 = v10;
    v20 = result;
    v21 = OBJC_IVAR____TtC6Tamale12PreviewLayer__layerIsSafeInternal;
    sub_10005BBC4(0, &qword_1001D6B40);
    v18 = v5;
    v17 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = a1;
    aBlock[4] = sub_1000C4F94;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C3978;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1000C55A8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010);
    sub_1000618FC(&qword_1001D6B20, &unk_1001D8010);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v17;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v18 + 8))(v7, v4);
    (*(v19 + 8))(v12, v20);

    v13 = v21;
  }

  *(a1 + v13) = v3;
  return result;
}

uint64_t sub_1000B821C(char a1)
{
  if (a1)
  {
    if (qword_1001D3140 != -1)
    {
      swift_once();
    }

    sub_1000149C8();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      LODWORD(v2) = 1.0;
      v3 = Strong;
      [Strong setOpacity:v2];
    }

    static LoggingSignposter.previewLayerBecameSafe.getter();
  }

  else
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v4 setOpacity:0.0];
    }

    static LoggingSignposter.previewLayerBecameUnsafe.getter();
  }

  default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
  return LoggingSignposter.emitEvent(_:shouldLog:)();
}

uint64_t sub_1000B8328(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Logger();
  __chkstk_darwin(v8 - 8);
  static Log.cameraPreview.getter();
  static Log.cameraPreview.getter();
  LoggingSignposter.init(logger:)();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers) = &_swiftEmptyDictionarySingleton;
  v9 = OBJC_IVAR____TtC6Tamale12PreviewLayer_candidateDisplayIntervals;
  v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v10 + 16) = 5;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes) = &_swiftEmptyArrayStorage;
  v11 = v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_queueWrapper;
  *v11 = 0;
  *(v11 + 8) = 0;
  v12 = OBJC_IVAR____TtC6Tamale12PreviewLayer_cleaning;
  sub_1000033A8(&unk_1001D9C90);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v1 + v12) = v13;
  v14 = OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue;
  sub_10005BBC4(0, &qword_1001D6B40);
  static DispatchQoS.unspecified.getter();
  v31 = &_swiftEmptyArrayStorage;
  sub_1000C55A8(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50);
  sub_1000618FC(&unk_1001D8050, &unk_1001D6B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v15 = v30;
  *(v1 + v14) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerNeedsUpdateInternal) = 0;
  *(v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerIsSafeInternal) = 0;
  v16 = (v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewLayerInvalidatedCallback);
  v18 = type metadata accessor for CameraControllerConfiguration(0);
  *v17 = 0;
  v17[1] = 0;
  v19 = 0.0333333333;
  if (*(v15 + *(v18 + 64)))
  {
    v19 = 0.0166666667;
  }

  *(v2 + OBJC_IVAR____TtC6Tamale12PreviewLayer_targetFrameInterval) = v19;
  v20 = objc_opt_self();
  v21 = [v20 defaultCenter];
  v22 = qword_1001D31A8;

  if (v22 != -1)
  {
    swift_once();
  }

  [v21 addObserver:v2 selector:"invalidate" name:qword_1001EB5D0 object:0];

  v23 = [v20 defaultCenter];
  v24 = qword_1001D31B0;

  if (v24 != -1)
  {
    swift_once();
  }

  [v23 addObserver:v2 selector:"sendAccessibilityNotifications" name:qword_1001EB5D8 object:0];

  sub_10002005C(v15);
  return v2;
}

atomic_ullong *sub_1000B88E0()
{
  v2 = sub_1000B7E3C();
  if (!v3 && !v1)
  {
    return (v2)(aBlock, 0);
  }

  v5 = (v2)(aBlock, 0);
  v23 = *(**(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_cleaning) + 136);
  atomic_fetch_add(v23(v5), 1uLL);
  CAImageQueueFlush();
  v6 = OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v0 + v6) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v9 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      do
      {
LABEL_12:
        v13 &= v13 - 1;
        result = CAImageQueueUnregisterBuffer();
      }

      while (v13);
      continue;
    }
  }

  CAImageQueueInvalidate();
  *(v0 + v6) = &_swiftEmptyDictionarySingleton;

  *(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes) = &_swiftEmptyArrayStorage;

  v17 = v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_queueWrapper;
  swift_beginAccess();
  if (*v17)
  {
    sub_1000C4EE0(*v17);
  }

  *v17 = 0;
  *(v17 + 8) = 0;
  swift_endAccess();
  v18 = *(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000C563C;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1000C5638;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C3A68;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    result = v23(result);
    atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL);
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000B8C2C()
{
  v0 = type metadata accessor for AccessibilityNotification.Announcement();
  v1 = *(v0 - 8);
  v20 = v0;
  v21 = v1;
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v11 + 16))(v14, v16, v10);
  String.init(localized:)();
  AccessibilityNotification.Announcement.init(_:)();
  v17 = v20;
  _AccessibilityNotifications.post()();
  (*(v21 + 8))(v3, v17);
  return (*(v11 + 8))(v16, v10);
}

void sub_1000B8F84(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = Strong;
  if (!a1)
  {
    if (!Strong)
    {
      return;
    }

LABEL_7:
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12 || (v12, !a1))
    {
      swift_unknownObjectWeakAssign();
      sub_10005BBC4(0, &qword_1001D6B40);
      *v7 = static OS_dispatch_queue.main.getter();
      (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
      v13 = _dispatchPreconditionTest(_:)();
      (*(v5 + 8))(v7, v4);
      if (v13)
      {
        v14 = *(a2 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
        v15 = swift_allocObject();
        *(v15 + 16) = a2;
        *(v15 + 24) = 1;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_1000BCCF8;
        *(v16 + 24) = v15;
        aBlock[4] = sub_10006180C;
        aBlock[5] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100071D78;
        aBlock[3] = &unk_1001C3748;
        v17 = _Block_copy(aBlock);

        dispatch_sync(v14, v17);
        _Block_release(v17);
        LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

        if ((v14 & 1) == 0)
        {
          static LoggingSignposter.previewLayerCALayerUpdated.getter();
          default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
          LoggingSignposter.emitEvent(_:shouldLog:)();
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (!Strong)
  {
    goto LABEL_7;
  }

  sub_10005BBC4(0, &qword_1001D9BE0);
  v10 = a1;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1000B92F8()
{
  v1 = v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_queueWrapper;
  swift_beginAccess();
  if (*v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 8) == 0;
  }

  if (v2)
  {
LABEL_16:
    v12 = OBJC_IVAR____TtC6Tamale12PreviewLayer_logger;
    v13 = type metadata accessor for Logger();
    (*(*(v13 - 8) + 8))(v0 + v12, v13);
    v14 = OBJC_IVAR____TtC6Tamale12PreviewLayer_signposter;
    v15 = type metadata accessor for LoggingSignposter();
    (*(*(v15 - 8) + 8))(v0 + v14, v15);
    swift_unknownObjectWeakDestroy();

    if (*v1)
    {
      sub_1000C4EE0(*v1);
    }

    sub_100005640(*(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback));
    sub_100005640(*(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewLayerInvalidatedCallback));
    return v0;
  }

  else
  {
    v3 = OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        goto LABEL_16;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        do
        {
LABEL_13:
          v7 &= v7 - 1;
          result = CAImageQueueUnregisterBuffer();
        }

        while (v7);
        continue;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B9594()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LoggingSignposter();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

char *sub_1000B96C4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000033A8(&qword_1001D9978);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000B96F4(double a1)
{
  v2 = v1;
  v5 = sub_1000B7E3C();
  if (!v6 && !v4)
  {
    (v5)(v40, 0);
    return 0;
  }

  (v5)(v40, 0);
  v7 = OBJC_IVAR____TtC6Tamale12PreviewLayer_candidateDisplayIntervals;
  swift_beginAccess();
  v8 = *(v1 + v7);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_54:
    v8 = sub_1000C36E4(v8);
    *(v2 + v7) = v8;
  }

  Times = CAImageQueueGetTimes();
  *(v2 + v7) = v8;
  swift_endAccess();
  if ((Times & 0x8000000000000000) != 0)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v11 = *(v8 + 2);
  if (v11 >= Times)
  {
    v11 = Times;
  }

  if (Times)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || *(*(v2 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes) + 16) < 2uLL)
  {
LABEL_51:
    sub_1000B9B3C(v2);
    return 0;
  }

  v13 = *&v8[8 * v11 + 24];
  if (v13 <= a1)
  {
    sub_1000033A8(&qword_1001D7FE0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100171DA0;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 32) = 0xD000000000000030;
    *(v27 + 40) = 0x800000010016DF40;

    print(_:separator:terminator:)();
    swift_unknownObjectRelease();

    goto LABEL_51;
  }

  v40[0] = *(v2 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes);
  swift_bridgeObjectRetain_n();

  sub_1000BCDBC(v40);

  v14 = *(v40[0] + 2);
  v40[1] = v40[0];
  v40[2] = v40[0] + 32;
  v40[3] = (v14 != 0);
  v40[4] = ((2 * v14) | 1);

  v15 = sub_1000B78F4(v40);

  v16 = 0;
  v17 = v15[2];
  v7 = OBJC_IVAR____TtC6Tamale12PreviewLayer_targetFrameInterval;
LABEL_15:
  v18 = 16 * v16 + 40;
  while (v17 != v16)
  {
    if (v16 >= v15[2])
    {
      __break(1u);
      goto LABEL_54;
    }

    ++v16;
    v19 = *(v15 + v18);
    v20 = v18 + 16;
    v21 = *(v2 + v7);
    v18 += 16;
    if (v21 + -0.001 < v19)
    {
      v18 = v20;
      if (v19 < v21 + 0.001)
      {
        v22 = *(v15 + v20 - 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005971C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v23 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        v25 = v23 + 1;
        if (v23 >= v24 >> 1)
        {
          v38 = _swiftEmptyArrayStorage[2];
          v39 = v23 + 1;
          sub_10005971C((v24 > 1), v23 + 1, 1);
          v23 = v38;
          v25 = v39;
        }

        _swiftEmptyArrayStorage[2] = v25;
        v26 = &_swiftEmptyArrayStorage[2 * v23];
        *(v26 + 4) = v22;
        v26[5] = v19;
        goto LABEL_15;
      }
    }
  }

  v28 = _swiftEmptyArrayStorage[2];
  if (!v28)
  {

    swift_unknownObjectRelease();
    goto LABEL_51;
  }

  v29 = *&_swiftEmptyArrayStorage[2 * v28 + 2];

  v30 = *(v2 + v7);
  swift_unknownObjectRelease();
  v31 = v29 + v30;
  v32 = v29 + v30 <= a1 || v31 > v13;
  if (v32 && ((v31 = v29 + v30 + v30, v31 > a1) ? (v33 = v31 > v13) : (v33 = 1), v33 && ((v31 = v29 + v30 * 3.0, v31 > a1) ? (v34 = v31 > v13) : (v34 = 1), v34 && ((v31 = v29 + v30 * 4.0, v31 > a1) ? (v35 = v31 > v13) : (v35 = 1), v35))))
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v31;
  }

  sub_1000B9B3C(v2);
  return *&v36;
}

unint64_t sub_1000B9B3C(uint64_t a1)
{
  v2 = *(*(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes) + 16);
  v3 = OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers;
  result = swift_beginAccess();
  v5 = v2 - *(*(a1 + v3) + 16);
  if (v5 >= 1)
  {
    return sub_1000C41B0(0, v5);
  }

  return result;
}

id sub_1000B9BB8(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions:1];
  [a1 setContents:a2];

  return [v4 commit];
}

uint64_t sub_1000B9C44()
{
  v0 = type metadata accessor for Angle();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  CameraSourceFrameMetadata.rotationAngle.getter();
  static Angle.degrees(_:)();
  sub_1000C55A8(&qword_1001D9BF8, &type metadata accessor for Angle);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  if (v7)
  {
    v9 = 0;
LABEL_9:
    v8(v6, v0);
    return v9;
  }

  static Angle.degrees(_:)();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8(v4, v0);
  if (v10)
  {
    v9 = 4;
    goto LABEL_9;
  }

  static Angle.degrees(_:)();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8(v4, v0);
  if (v11)
  {
    v9 = 3;
    goto LABEL_9;
  }

  static Angle.degrees(_:)();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (v8)(v4, v0);
  if (v12)
  {
    v9 = 7;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_1000B9EB0()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    result = [result newCommandQueue];
    if (result)
    {
      v1 = result;
      result = swift_unknownObjectRelease();
      qword_1001D96D0 = v1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000B9F04(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v68 = a2;
  v86 = a1;
  v69 = *v4;
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v7 = __chkstk_darwin(v73);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a3;
  v67 = *(a3 - 8);
  __chkstk_darwin(v7);
  v65 = v9;
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for CameraImage();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000033A8(&unk_1001D9BE8);
  v79 = *(v80 - 8);
  v11 = __chkstk_darwin(v80);
  v76 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v12;
  __chkstk_darwin(v11);
  v78 = &v63 - v13;
  v85 = type metadata accessor for CameraSourceFrameMetadata();
  v14 = *(v85 - 8);
  __chkstk_darwin(v85);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v63 - v22;
  v84 = static LoggingSignposter.previewLayerConsumeFrameInternal.getter();
  v25 = v24;
  static OSSignpostID.exclusive.getter();
  v66 = v4;
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_10;
  }

  v63 = v16;
  if (v25)
  {
LABEL_5:
    if (HIDWORD(v84))
    {
      __break(1u);
    }

    else
    {
      if ((v84 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        return;
      }

      if (v84 >> 16 <= 0x10)
      {
        v28 = &v89;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v28 = v84;
  if (!v84)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v29 = swift_slowAlloc();
  *v29 = 0;
  v30 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v30, v28, "", v29, 2u);

  v16 = v63;
LABEL_10:

  (*(v18 + 16))(v21, v23, v17);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v18 + 8))(v23, v17);
  v32 = v86;
  v33 = v87;
  dispatch thunk of CameraSourceFrame.metadata.getter();
  v34 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
  (*(v14 + 8))(v16, v85);
  if (v34)
  {
LABEL_11:

    return;
  }

  v35 = v32;
  v36 = v81;
  dispatch thunk of CameraSourceFrame.cameraImage.getter();
  v37 = v82;
  v38 = v83;
  if ((*(v82 + 88))(v36, v83) == enum case for CameraImage.pixelBuffer(_:))
  {
    v85 = v31;
    v39 = v35;
    (*(v37 + 96))(v36, v38);
    v40 = v79;
    v41 = *(v79 + 32);
    v42 = v78;
    v43 = v36;
    v44 = v80;
    v41(v78, v43, v80);
    SendableTransfer.wrappedValue.getter();
    v45 = aBlock[0];
    IOSurface = CVPixelBufferGetIOSurface(aBlock[0]);

    if (!IOSurface)
    {
      (*(v40 + 8))(v42, v44);
      goto LABEL_11;
    }

    v84 = IOSurface;
    if (!IOSurfaceLock(v84, 0, 0))
    {
      v82 = *(v66 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapesMutex);
      v83 = swift_allocObject();
      swift_weakInit();
      v47 = v68;
      v94 = *v68;
      v92 = *(v68 + 24);
      v93 = *(v68 + 40);
      (*(v40 + 16))(v76, v42, v44);
      v48 = v67;
      (*(v67 + 16))(v77, v39, v33);
      v49 = (*(v40 + 80) + 97) & ~*(v40 + 80);
      v50 = (v64 + *(v48 + 80) + v49) & ~*(v48 + 80);
      v51 = v33;
      v52 = (v65 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      v54 = v88;
      *(v53 + 16) = v51;
      *(v53 + 24) = v54;
      v55 = v84;
      v56 = v83;
      *(v53 + 32) = v84;
      *(v53 + 40) = v56;
      *(v53 + 48) = v85;
      v57 = v47[1];
      *(v53 + 56) = *v47;
      *(v53 + 72) = v57;
      *(v53 + 81) = *(v47 + 25);
      v41((v53 + v49), v76, v80);
      (*(v48 + 32))(v53 + v50, v77, v51);
      *(v53 + v52) = v69;
      aBlock[4] = sub_1000C5164;
      aBlock[5] = v53;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000B5F04;
      aBlock[3] = &unk_1001C39F0;
      v58 = _Block_copy(aBlock);
      v59 = v55;

      sub_1000C5274(&v94, v90);
      sub_1000C52D0(&v92, v90);
      v60 = v70;
      static DispatchQoS.unspecified.getter();
      v90[0] = &_swiftEmptyArrayStorage;
      sub_1000C55A8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000033A8(&unk_1001D8010);
      sub_1000618FC(&qword_1001D6B20, &unk_1001D8010);
      v61 = v72;
      v62 = v75;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v58);

      (*(v74 + 8))(v61, v62);
      (*(v71 + 8))(v60, v73);
      (*(v79 + 8))(v78, v80);

      goto LABEL_11;
    }

    (*(v40 + 8))(v42, v44);
  }

  else
  {

    (*(v37 + 8))(v36, v38);
  }
}

uint64_t sub_1000BAA24(__IOSurface *a1, uint64_t a2, uint64_t a3, __int128 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a6;
  v51.n128_u64[0] = a5;
  v11 = type metadata accessor for Angle();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Corners();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CameraSourceFrameMetadata();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (qword_1001D31B8 != -1)
    {
      swift_once();
    }

    v21 = [qword_1001D96D0 commandBuffer];
    if (v21)
    {
      v22 = v21;
      v44 = v16;
      v43 = v11;
      v45 = a3;
      v42 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer;
      *(v20 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer) = v21;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v20 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_systemPressureLevel) = *(a4 + 16);
      v56 = *a4;
      v23 = *(v20 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState);
      v24 = *(v20 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState + 8);
      *(v20 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState) = v56;
      sub_1000C5274(&v56, v55);
      sub_100092274(v23, v24);
      v46 = a1;
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      v26 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_textures;
      swift_beginAccess();
      v27 = *(v20 + v26);
      if (*(v27 + 16) && (v28 = sub_100096048(BaseAddress), (v29 & 1) != 0))
      {
        v30 = *(*(v27 + 56) + 8 * v28);
        swift_unknownObjectRetain();
      }

      else
      {
        v31 = *(v20 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes);
        sub_1000033A8(&unk_1001D9BE8);
        SendableTransfer.wrappedValue.getter();
        v32 = v54;
        v30 = [v31 bindPixelBufferAsTexture:v54];
      }

      swift_beginAccess();
      v33 = swift_unknownObjectRetain();
      sub_1000B7D7C(v33, BaseAddress);
      swift_endAccess();
      dispatch thunk of CameraSourceFrame.metadata.getter();
      CameraSourceFrameMetadata.safeArea.getter();
      v35 = v34;
      (*(v44 + 8))(v18, v15);
      if (v30)
      {
        CGRect.corners.getter();
        v36 = static Color.purple.getter();
        v51 = sub_1000BC768(v36);

        v37 = Corners.clockwiseLoop.getter();
        sub_1000BB7B8(v37, v30);

        (*(v47 + 8))(v14, v48);
        v38 = v49;
        CameraSourceFrame.rotationAngle.getter();
        sub_1000BB230(v30, v38);
        v39 = (*(v50 + 8))(v38, v43);
        sub_1000BB9C0(v30, v39, v35);
        [v22 commit];
        swift_unknownObjectRelease();
        *(v20 + v42) = 0;
        swift_unknownObjectRelease();
      }

      sub_1000BAF88();

      swift_unknownObjectRelease();
      a1 = v46;
    }

    else
    {
    }
  }

  return IOSurfaceUnlock(a1, 0, 0);
}

uint64_t sub_1000BAF88()
{
  v0 = type metadata accessor for OSSignpostError();
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = static LoggingSignposter.previewLayerConsumeFrameInternal.getter();
  v9 = v8;
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v17 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v4 + 8))(v6, v3);
  }

  if ((v9 & 1) == 0)
  {
    if (v7)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v12 = v18;
      if ((*(v18 + 88))(v2, v0) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v12 + 8))(v2, v0);
        v13 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v17, v15, v7, v13, v14, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (HIDWORD(v7))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 & 0xFFFFF800) != 0xD800)
  {
    if (v7 >> 16 <= 0x10)
    {
      v7 = &v19;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_1000BB230(void *a1, unint64_t a2)
{
  v62.n128_u64[0] = a2;
  v59 = a1;
  v3 = type metadata accessor for Corners();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Angle();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleSelector.Configuration.RankingAlgorithmPreset();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BundleSelector.Configuration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BundleRankerConfiguration();
  v54 = *(v16 - 8);
  v55 = v16;
  __chkstk_darwin(v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  SaliencyStreamConfiguration.bundleSelectorConfiguration.getter();
  BundleSelector.Configuration.streamingRankingAlgorithm.getter();
  v19 = v12;
  v20 = v59;
  (*(v13 + 8))(v15, v19);
  v21 = v58;
  BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter();
  (*(v9 + 8))(v11, v8);
  [v20 width];
  [v20 height];
  BundleRankerConfiguration.regionOfInterestSize.getter();
  BundleRankerConfiguration.regionOfInterestCenter.getter();
  CGRect.init(centeredAt:size:)();
  static Angle.degrees(_:)();
  CGRect.normalizedRotateToOrientation(_:sourceOrientation:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v60 + 8))(v7, v61);
  CGRect.corners.getter();
  v30 = *(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes);
  LODWORD(v31) = 2.0;
  [v30 setStrokeWidth:v31];
  LODWORD(v32) = 0.75;
  [v30 setAlpha:v32];
  Corners.topLeft.getter();
  v34 = v33;
  v36 = v35;
  Corners.bottomRight.getter();
  v38 = v37;
  v40 = v39;
  v41 = static Color.green.getter();
  v62 = sub_1000BC768(v41);

  [v30 addLineFrom:v34 to:v36 color:{v38, v40, v62.n128_f64[0]}];
  Corners.topRight.getter();
  v43 = v42;
  v45 = v44;
  Corners.bottomLeft.getter();
  v47 = v46;
  v49 = v48;
  v50 = static Color.green.getter();
  v62 = sub_1000BC768(v50);

  result = [v30 addLineFrom:v43 to:v45 color:{v47, v49, v62.n128_f64[0]}];
  v52 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer;
  if (*(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer))
  {
    [v30 drawLinesOnTexture:v20 commandBuffer:?];
    v53 = static Color.green.getter();
    v62 = sub_1000BC768(v53);

    result = [v30 addRectangle:v23 color:{v25, v27, v29, v62.n128_f64[0]}];
    if (*(v2 + v52))
    {
      [v30 drawRectanglesOnTexture:v20 commandBuffer:?];
      (*(v56 + 8))(v21, v57);
      return (*(v54 + 8))(v18, v55);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000BB7B8(id result, uint64_t a2)
{
  v3 = *(result + 2);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 4);
  v6 = *(result + 5);
  if (v5 >= 1.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = *(result + 4);
  }

  v8 = v5 < 1.0;
  v9 = fmin(v6, 1.0);
  v10 = 0.0;
  if (v9 < 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v9;
  }

  v12 = (*(result + 4) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL && v8;
  if (v7 < 0.0)
  {
    v12 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v10 <= -1.0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v10 >= 4294967300.0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v13 = v9 >= 0.0;
  if (v6 >= 1.0 || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  if (v12 || v13)
  {
    goto LABEL_35;
  }

  if (v11 <= -1.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v11 >= 4294967300.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v16 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes;
  v17 = v10;
  v18 = v11;
  v19 = v11;
  LODWORD(v20) = v10;
  HIDWORD(v20) = v19;
  result = [*(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes) setInitialPosition:v20];
  v21 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

  v22 = v4 + 3;
  __asm { FMOV            V0.2D, #1.0 }

  v33 = _Q0;
  v28 = v18;
  v29 = v17;
  do
  {
    v30 = *v22++;
    v31 = vminnmq_f64(v30, v33);
    v34 = vandq_s8(v31, vcgezq_f64(v31));
    result = [*(v2 + v16) addLineFrom:v29 to:v28 color:*&v33];
    v28 = *&v34.i64[1];
    v29 = *v34.i64;
    --v21;
  }

  while (v21);
  if (!*(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer))
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v32 = *(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes);

  return [v32 drawLinesOnTexture:a2 commandBuffer:*&v34];
}

id sub_1000BB9C0(void *a1, double a2, double a3)
{
  v4 = v3;
  v101 = type metadata accessor for SPRTTrigger.State();
  v7 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Corners();
  v116.n128_u64[0] = *(v9 - 8);
  __chkstk_darwin(v9);
  v110 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for CVDetection();
  v114 = *(v109 - 8);
  __chkstk_darwin(v109);
  v112 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CVTrackSnapshot();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v111 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes);
  LODWORD(v16) = 4.0;
  [v15 setStrokeWidth:v16];
  LODWORD(v17) = 1.0;
  [v15 setAlpha:v17];
  v18 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksLock;
  v19 = *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksLock);

  os_unfair_lock_lock(v19 + 4);

  v20 = *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksInternal);
  v21 = *(v4 + v18);

  os_unfair_lock_unlock(v21 + 4);

  if (*(v20 + 16))
  {
    v115 = *(v20 + 16);
    v96 = a3;
    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v95 = v20;
    v23 = v20 + v22;
    v113 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_colors;
    swift_beginAccess();
    v24 = v23;
    v26 = *(v13 + 16);
    v25 = v13 + 16;
    v108 = v26;
    v104 = *(v25 + 56);
    v107 = (v116.n128_u64[0] + 8);
    v98 = (v7 + 8);
    v103 = (v114 + 8);
    v102 = (v25 - 8);
    v97 = xmmword_100171DA0;
    v105 = v25;
    v27 = v111;
    v99 = v9;
    v106 = v12;
    while (1)
    {
      v114 = v24;
      v108(v27);
      CVTrackSnapshot.latestEstimate.getter();
      v28 = CVDetection.backgroundColor(isEnabled:)();
      v29 = *(v4 + v113);
      if (*(v29 + 16))
      {

        v30 = sub_10009608C(v28);
        if (v31)
        {
          v116 = *(*(v29 + 56) + 16 * v30);

          goto LABEL_9;
        }
      }

      v32.n128_f64[0] = sub_1000BC858();
      v116 = v32;
      v33 = v113;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *(v4 + v33);
      *(v4 + v33) = 0x8000000000000000;
      sub_1000C1484(v28, isUniquelyReferenced_nonNull_native, v116);
      *(v4 + v33) = v117;
      swift_endAccess();

LABEL_9:
      v35 = v110;
      CVDetection.corners.getter();
      Corners.bounds.getter();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = *v107;
      (*v107)(v35, v9);
      CVDetection.corners.getter();
      v45 = Corners.clockwiseLoop.getter();
      v44(v35, v9);
      sub_1000BB7B8(v45, a1);

      v46 = v39 + v43;
      if (v37 <= 0.9)
      {
        v47 = v37;
      }

      else
      {
        v47 = 0.9;
      }

      if (v37 > 0.0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0.0;
      }

      v49 = v48 * [a1 width] + 15.0;
      v50 = 1.0;
      if (v46 <= 1.0)
      {
        v50 = v46;
      }

      if (v46 > 0.1)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0.1;
      }

      result = [a1 height];
      if (v49 <= -1.0)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v49 >= 4294967300.0)
      {
        goto LABEL_64;
      }

      v53 = v51 * result + -75.0 + -15.0;
      v54 = COERCE__INT64(fabs(v53)) > 0x7FEFFFFFFFFFFFFFLL;
      if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v54)
      {
        goto LABEL_65;
      }

      if (v53 <= -1.0)
      {
        goto LABEL_66;
      }

      if (v53 >= 4294967300.0)
      {
        goto LABEL_67;
      }

      v55 = v53;
      LODWORD(v56) = v49;
      HIDWORD(v56) = v55;
      [v15 setInitialPosition:v56];
      if (v41 > 0.1 && v43 > 0.1)
      {
        v119[0] = 40;
        v119[1] = 0xE100000000000000;
        sub_1000033A8(&qword_1001D58A0);
        v57 = swift_allocObject();
        *(v57 + 16) = v97;
        CVTrackSnapshot.score.getter();
        *(v57 + 56) = &type metadata for Float;
        *(v57 + 64) = &protocol witness table for Float;
        *(v57 + 32) = v58;
        v59._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v59);

        v60._countAndFlagsBits = 32;
        v60._object = 0xE100000000000000;
        String.append(_:)(v60);
        v61 = v100;
        CVTrackSnapshot.lifeCycleState.getter();
        sub_1000C55A8(&qword_1001D9C20, &type metadata accessor for SPRTTrigger.State);
        v62 = v101;
        v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v63);

        (*v98)(v61, v62);
        v64._countAndFlagsBits = 32;
        v64._object = 0xE100000000000000;
        String.append(_:)(v64);
        CVDetection.label.getter();
        sub_1000C3828(10);

        v65 = static String._fromSubstring(_:)();
        v67 = v66;
        v9 = v99;

        v68._countAndFlagsBits = v65;
        v68._object = v67;
        String.append(_:)(v68);

        v69 = String._bridgeToObjectiveC()();

        LODWORD(v70) = 1.0;
        [v15 addTextLine:v69 color:v116.n128_f64[0] scale:v70];

        [v15 drawEnqueuedTextOnTexture:a1];
      }

      (*v103)(v112, v109);
      v27 = v111;
      (*v102)(v111, v106);
      v24 = v114 + v104;
      if (!--v115)
      {

        a3 = v96;
        goto LABEL_31;
      }
    }
  }

LABEL_31:
  if (!*(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer))
  {
    goto LABEL_75;
  }

  result = [v15 drawRectanglesOnTexture:a1 commandBuffer:?];
  v71 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_systemPressureLevel;
  if (*(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_systemPressureLevel))
  {
    v72 = 0xD000000000000010;
    v119[0] = 0;
    v119[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v119[0] = 0xD000000000000028;
    v119[1] = 0x800000010016DF80;
    if (*(v4 + v71) > 1u)
    {
      if (*(v4 + v71) == 2)
      {
        v73 = 0x800000010016DFD0;
      }

      else
      {
        v73 = 0x800000010016DFB0;
        v72 = 0xD000000000000013;
      }
    }

    else if (*(v4 + v71))
    {
      v73 = 0xED00002972696166;
      v72 = 0x2820797473616F74;
    }

    else
    {
      v73 = 0xEF296C616E696D6FLL;
      v72 = 0x6E2820796D6C6162;
    }

    v74._countAndFlagsBits = v72;
    v74._object = v73;
    String.append(_:)(v74);

    result = [a1 height];
    v75 = result * a3;
    if (COERCE__INT64(fabs(v75)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_68;
    }

    if (v75 <= -1.0)
    {
LABEL_69:
      __break(1u);
    }

    else if (v75 < 4294967300.0)
    {
      v76 = v75;
      LODWORD(v77) = 250;
      HIDWORD(v77) = v76;
      [v15 setInitialPosition:v77];
      v78 = String._bridgeToObjectiveC()();

      v79 = static Color.red.getter();
      v116 = sub_1000BC768(v79);

      LODWORD(v80) = 0.75;
      [v15 addTextLine:v78 color:v116.n128_f64[0] scale:v80];

      result = [v15 drawEnqueuedTextOnTexture:a1];
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_44:
  v81 = (v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState);
  if ((*(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState + 8) - 1) < 2)
  {
    return result;
  }

  v119[0] = 0;
  v119[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v119, "Motion State: ");
  HIBYTE(v119[1]) = -18;
  v82 = v81[1];
  if (v82 <= 1)
  {
    if (!v82)
    {
      v83 = 0xEC000000676E697ALL;
      v84 = 0x696C616974696E69;
      goto LABEL_57;
    }

    if (v82 == 1)
    {
      v83 = 0xE500000000000000;
      v84 = 0x6465786966;
      goto LABEL_57;
    }
  }

  else
  {
    switch(v82)
    {
      case 2:
        v83 = 0xE600000000000000;
        v84 = 0x796461657473;
        goto LABEL_57;
      case 3:
        v83 = 0xEA00000000006E6FLL;
        v84 = 0x69746F6D20776F6CLL;
        goto LABEL_57;
      case 4:
        v83 = 0xEB000000006E6F69;
        v84 = 0x746F6D2068676968;
        goto LABEL_57;
    }
  }

  v85 = *v81;
  v117 = 0x206E776F6E6B6E75;
  v118 = 0xE900000000000028;
  sub_100092260(v85, v82);
  v86._countAndFlagsBits = v85;
  v86._object = v82;
  String.append(_:)(v86);
  v87._countAndFlagsBits = 41;
  v87._object = 0xE100000000000000;
  String.append(_:)(v87);
  sub_100092274(v85, v82);
  v84 = v117;
  v83 = v118;
LABEL_57:
  v88 = v83;
  String.append(_:)(*&v84);

  result = [a1 height];
  v89 = result * a3;
  if (COERCE__INT64(fabs(v89)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v89 <= -1.0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v89 >= 4294967300.0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v90 = v89 + 150;
  if (v89 >= 0xFFFFFF6A)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return result;
  }

  LODWORD(v91) = 250;
  HIDWORD(v91) = v90;
  [v15 setInitialPosition:v91];
  v92 = String._bridgeToObjectiveC()();

  v93 = static Color.yellow.getter();
  v116 = sub_1000BC768(v93);

  LODWORD(v94) = 0.75;
  [v15 addTextLine:v92 color:v116.n128_f64[0] scale:v94];

  return [v15 drawEnqueuedTextOnTexture:a1];
}

__n128 sub_1000BC768(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_colors;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_10009608C(a1);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v8.n128_f64[0] = sub_1000BC858();
    v11 = v8;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    sub_1000C1484(a1, isUniquelyReferenced_nonNull_native, v11);
    *(v2 + v4) = v12;
    swift_endAccess();
    return v11;
  }

  v11 = *(*(v5 + 56) + 16 * v6);

  return v11;
}

double sub_1000BC858()
{
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0;
  v6 = 0;
  sub_10005BBC4(0, &unk_1001D9C10);

  v0 = UIColor.init(_:)();
  v1 = [v0 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];

  result = 0.0;
  if (v1)
  {
    *&v3 = v8;
    *&v4 = v7;
    return COERCE_DOUBLE(__PAIR64__(v4, v3));
  }

  return result;
}

uint64_t sub_1000BC930()
{
  sub_10002005C(v0 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_configuration);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_signposter;
  v2 = type metadata accessor for OSSignposter();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100092274(*(v0 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState), *(v0 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState + 8));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000BCA3C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BCAC0()
{
  result = type metadata accessor for CameraControllerConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OSSignposter();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000BCC04(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1000BCC18(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1000BCC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 12))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1000BCC70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1000BCCC0()
{

  return swift_deallocObject();
}

uint64_t sub_1000BCD10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BCD28@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1000BCDBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000C3734(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000BCEF0(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000BCEF0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000BD6CC(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1000BD44C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100094DE4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_100094DE4((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = v73[1];
        sub_1000BD44C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        v8[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000BD44C(double *__dst, double *__src, double *a3, double *a4)
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
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1000BD640(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000BD6CC(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000BD6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100095B4C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000C22D4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1000033A8(&unk_1001D8190);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1000C0560(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1000033A8(&unk_1001D8190);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1000BD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100095B4C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000C2630();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
    v20 = *(v13 - 8);
    sub_1000C54DC(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ARCameraSource.Tracker.TrackState);
    sub_1000C08B0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1000BDA48(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = type metadata accessor for Corners();
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RaycastAccuracy(0);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = __chkstk_darwin(v7);
  v55 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v12 = *v2;
  sub_1000033A8(&unk_1001D9C70);
  v53 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v45 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v47 = (v5 + 32);
    v46 = (v5 + 8);
    v21 = result + 64;
    v48 = v12;
    v56 = v11;
    while (1)
    {
      if (!v19)
      {
        v24 = v15;
        while (1)
        {
          v15 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v15 >= v20)
          {
            break;
          }

          v25 = v16[v15];
          ++v24;
          if (v25)
          {
            v23 = __clz(__rbit64(v25));
            v19 = (v25 - 1) & v25;
            goto LABEL_15;
          }
        }

        if ((v53 & 1) == 0)
        {

          v3 = v45;
          goto LABEL_45;
        }

        v44 = 1 << *(v12 + 32);
        v3 = v45;
        if (v44 >= 64)
        {
          bzero(v16, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v16 = -1 << v44;
        }

        *(v12 + 16) = 0;
        break;
      }

      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v51 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      v29 = v56;
      if (v53)
      {
        sub_1000C54DC(v28, v56, type metadata accessor for RaycastAccuracy);
      }

      else
      {
        sub_1000C5474(v28, v56, type metadata accessor for RaycastAccuracy);
      }

      v54 = *(*(v12 + 56) + 8 * v26);
      Hasher.init(_seed:)();
      sub_1000C5474(v29, v55, type metadata accessor for RaycastAccuracy);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v34 = v49;
          v33 = v50;
          (*v47)(v49, v55, v50);
          v35 = 3;
LABEL_27:
          Hasher._combine(_:)(v35);
          sub_1000C55A8(&qword_1001D7FB0, &type metadata accessor for Corners);
          dispatch thunk of Hashable.hash(into:)();
          v36 = v33;
          v12 = v48;
          (*v46)(v34, v36);
          goto LABEL_29;
        }

        Hasher._combine(_:)(0);
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v34 = v49;
          v33 = v50;
          (*v47)(v49, v55, v50);
          v35 = 2;
          goto LABEL_27;
        }

        v31 = *v55;
        Hasher._combine(_:)(1uLL);
        if (v31 == 0.0)
        {
          v32 = 0.0;
        }

        else
        {
          v32 = v31;
        }

        Hasher._combine(_:)(*&v32);
      }

LABEL_29:
      result = Hasher._finalize()();
      v37 = -1 << *(v14 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v21 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v21 + 8 * v39);
          if (v43 != -1)
          {
            v22 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v38) & ~*(v21 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_1000C54DC(v56, *(v14 + 48) + v27 * v22, type metadata accessor for RaycastAccuracy);
      *(*(v14 + 56) + 8 * v22) = v54;
      ++*(v14 + 16);
    }
  }

LABEL_45:
  *v3 = v14;
  return result;
}

uint64_t sub_1000BDFCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D8368);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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

LABEL_33:
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000BE24C(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_1000033A8(&unk_1001D8190);
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000033A8(&unk_1001D9C30);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}