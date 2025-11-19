uint64_t sub_1000777C4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_10007786C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v20 = v5;
    sub_1000033A8(&qword_1001D8208);
    NSKeyValueObservedChange.newValue.getter();
    v10 = aBlock[0];
    if (aBlock[0])
    {
      v19 = *&v9[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
      v11 = swift_allocObject();
      v18 = v1;
      v12 = v11;
      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = v10;
      aBlock[4] = sub_10009300C;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000B5F04;
      aBlock[3] = &unk_1001C2898;
      v15 = _Block_copy(aBlock);

      v17 = v10;
      static DispatchQoS.unspecified.getter();
      v21 = &_swiftEmptyArrayStorage;
      sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
      v16 = v4;
      sub_1000033A8(&unk_1001D8010);
      sub_100013608(&qword_1001D6B20, &unk_1001D8010);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v15);

      (*(v18 + 8))(v3, v0);
      (*(v20 + 8))(v7, v16);
    }

    else
    {
    }
  }
}

void sub_100077C14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevel) = sub_100077C78();
  }
}

uint64_t sub_100077C78()
{
  v1 = [v0 level];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {

    return 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    return 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {

    return 1;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    return 2;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {

    return 2;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_23;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {

    return 3;
  }

  else
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
LABEL_23:

      return 3;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

void sub_100077F4C()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *&v5[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
      *v3 = v8;
      (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
      v9 = v8;
      LOBYTE(v8) = _dispatchPreconditionTest(_:)();
      (*(v1 + 8))(v3, v0);
      if ((v8 & 1) == 0)
      {
        __break(1u);
        return;
      }

      [v7 runDeferredStartWhenNeeded];

      v5 = v7;
    }
  }
}

void sub_1000780CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_sensorOrientedBufferDimensions) = a2;
    if ((*(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeAreaStrategy + 8) & 1) == 0)
    {
      type metadata accessor for CVCoordinator();
      static CVCoordinator.rectWithAspectRatioInsideDimensions(boundingDimensions:cropAspectRatio:)();
      static CVCoordinator.normalizedLocationOfRect(innerRect:outerRect:)();
      v9 = &v8[OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea];
      *v9 = v10;
      *(v9 + 1) = v11;
      *(v9 + 2) = v12;
      *(v9 + 3) = v13;
    }

    v14 = &v8[OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 1);
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 24);

      v17(a3, a4, ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }
}

id sub_10007822C(id a1, id a2)
{
  v99 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 outputs];
  sub_10005BBC4(0, &qword_1001D81E0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v103 = v7;
  if (v7 >> 62)
  {
LABEL_73:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = &swift_getGenericMetadata_ptr;
  v104 = a1;
  v110 = a2;
  if (!v8)
  {
LABEL_37:

    goto LABEL_41;
  }

  v10 = 0;
  v11 = v103 & 0xC000000000000001;
  v109 = v103 & 0xFFFFFFFFFFFFFF8;
  v108 = v103 + 32;
  v106 = AVMediaTypeMetadataObject;
  v101 = v103 & 0xC000000000000001;
  v102 = v8;
  while (1)
  {
    if (v11)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v109 + 16))
      {
        goto LABEL_71;
      }

      v13 = *(v108 + 8 * v10);
    }

    v12 = v13;
    if (__OFADD__(v10++, 1))
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = [v12 connectionWithMediaType:v106];
      if (v15)
      {
        break;
      }
    }

LABEL_6:

    if (v10 == v8)
    {
      goto LABEL_37;
    }
  }

  v16 = v15;
  v17 = [v15 inputPorts];

  sub_10005BBC4(0, &qword_1001D81E8);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v105 = v10;
  v107 = v12;
  if (!(v18 >> 62))
  {
    a1 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (!a1)
  {
LABEL_5:

    a1 = v104;
    v10 = v105;
    v9 = &swift_getGenericMetadata_ptr;
    v11 = v101;
    v8 = v102;
    v12 = v107;
    goto LABEL_6;
  }

LABEL_15:
  v19 = 0;
  v111 = v18 & 0xFFFFFFFFFFFFFF8;
  v112 = (v18 & 0xC000000000000001);
  while (1)
  {
    if (v112)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v111 + 16))
      {
        goto LABEL_69;
      }

      v20 = *(v18 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v23 = [v20 sourceDeviceType];
    v24 = [a2 deviceType];
    v25 = v24;
    if (!v23)
    {

      goto LABEL_17;
    }

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
    {
      break;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v110;
    if (v31)
    {
      goto LABEL_31;
    }

LABEL_17:

LABEL_18:
    ++v19;
    if (v22 == a1)
    {
      goto LABEL_5;
    }
  }

  a2 = v110;
LABEL_31:
  v32 = [v21 sourceDevicePosition];
  v33 = [a2 position];

  if (v32 != v33)
  {
    goto LABEL_18;
  }

  v9 = &swift_getGenericMetadata_ptr;
  objc_opt_self();
  v34 = v107;
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    v37 = v34;
    v108 = 0;
    v38 = v36;
    goto LABEL_77;
  }

  a1 = v104;
LABEL_41:
  v36 = [objc_allocWithZone(v9[381]) init];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_65:
    [a1 addOutput:v36];
    v38 = 0;
    v108 = 0;
    goto LABEL_77;
  }

  v39 = v36;
  [a1 addOutputWithNoConnections:v39];
  v40 = [a1 inputs];
  sub_10005BBC4(0, &qword_1001D81F0);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = sub_100079024(v41);
  v108 = 0;

  v107 = v39;
  if (!(v42 >> 62))
  {
    v36 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_44;
    }

LABEL_75:

    v36 = v107;

    goto LABEL_76;
  }

  v36 = _CocoaArrayWrapper.endIndex.getter();
  if (!v36)
  {
    goto LABEL_75;
  }

LABEL_44:
  v43 = 0;
  v111 = v42 & 0xFFFFFFFFFFFFFF8;
  v112 = (v42 & 0xC000000000000001);
  v109 = AVMediaTypeMetadataObject;
  while (2)
  {
    if (v112)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a1 = v110;
      a2 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
        goto LABEL_64;
      }
    }

    else
    {
      a1 = v110;
      if (v43 >= *(v111 + 16))
      {
        goto LABEL_72;
      }

      v44 = *(v42 + 8 * v43 + 32);
      a2 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v45 = [v44 sourceDeviceType];
    v46 = [a1 deviceType];
    v47 = v46;
    if (!v45)
    {

      goto LABEL_46;
    }

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    if (v48 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v50 != v51)
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v53)
      {
        goto LABEL_58;
      }

LABEL_46:

      ++v43;
      if (a2 == v36)
      {
        goto LABEL_75;
      }

      continue;
    }

    break;
  }

LABEL_58:
  v54 = [v44 mediaType];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v57 != v58)
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v59)
    {
      goto LABEL_67;
    }

    goto LABEL_46;
  }

LABEL_67:

  sub_1000033A8(&qword_1001D5248);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100176B10;
  *(v60 + 32) = v44;
  v61 = objc_allocWithZone(AVCaptureConnection);
  sub_10005BBC4(0, &qword_1001D81E8);
  v62 = v44;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v36 = v107;
  v64 = [v61 initWithInputPorts:isa output:v107];

  [v104 addConnection:v64];
LABEL_76:
  v38 = 0;
LABEL_77:
  result = [v36 metadataObjectTypes];
  if (result)
  {
    v66 = result;
    type metadata accessor for ObjectType(0);
    v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = [v36 availableMetadataObjectTypes];
    v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock[0] = AVMetadataObjectTypeQRCode;
    __chkstk_darwin(v70);
    *(&v94 - 2) = aBlock;
    LOBYTE(v68) = sub_1000777C4(sub_100092E48, (&v94 - 4), v69);

    if (v68)
    {
      v71 = AVMetadataObjectTypeQRCode;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_100094F60(0, v67[2] + 1, 1, v67);
      }

      v72 = v36;
      v74 = v67[2];
      v73 = v67[3];
      if (v74 >= v73 >> 1)
      {
        v67 = sub_100094F60((v73 > 1), v74 + 1, 1, v67);
      }

      v67[2] = v74 + 1;
      v67[v74 + 4] = v71;
    }

    else
    {
      v72 = v36;
    }

    if ([v72 isAppClipCodeMetadataSupported])
    {
      [v72 setAppClipCodeMetadataObjectTypeAvailable:1];
      v75 = AVMetadataObjectTypeAppClipCode;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_100094F60(0, v67[2] + 1, 1, v67);
      }

      v77 = v67[2];
      v76 = v67[3];
      if (v77 >= v76 >> 1)
      {
        v67 = sub_100094F60((v76 > 1), v77 + 1, 1, v67);
      }

      v67[2] = v77 + 1;
      v67[v77 + 4] = v75;
    }

    if ([v72 isSceneClassificationMetadataSupported])
    {
      [v72 setSceneClassificationMetadataObjectTypeAvailable:1];
      v78 = AVMetadataObjectTypeSceneClassification;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_100094F60(0, v67[2] + 1, 1, v67);
      }

      v80 = v67[2];
      v79 = v67[3];
      v81 = v100;
      if (v80 >= v79 >> 1)
      {
        v93 = sub_100094F60((v79 > 1), v80 + 1, 1, v67);
        v81 = v100;
        v67 = v93;
      }

      v67[2] = v80 + 1;
      v67[v80 + 4] = v78;
    }

    else
    {
      v81 = v100;
    }

    v112 = v38;
    v82 = v81;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = Strong;
      [v72 setMetadataObjectsDelegate:Strong queue:*(v82 + OBJC_IVAR____TtC6Tamale14ARCameraSource_metadataQueue)];
    }

    v85 = Array._bridgeToObjectiveC()().super.isa;

    [v72 setMetadataObjectTypes:v85];

    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v72;
    aBlock[4] = sub_100092E68;
    aBlock[5] = v87;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C2758;
    v88 = _Block_copy(aBlock);

    v89 = v72;
    v90 = v94;
    static DispatchQoS.unspecified.getter();
    v113 = &_swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010);
    v91 = v96;
    v92 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v88);

    (*(v98 + 8))(v91, v92);
    (*(v95 + 8))(v90, v97);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100079024(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = &_swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject ports];
      sub_10005BBC4(0, &qword_1001D81E8);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_100013608(&qword_1001D8200, &qword_1001D81F8);
            for (i = 0; i != v16; ++i)
            {
              sub_1000033A8(&qword_1001D81F8);
              v19 = sub_1000907D4(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_1000793B8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_72;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = &_swiftEmptyArrayStorage;
    v31 = v1;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = __OFADD__(v2, 1);
        v5 = v2 + 1;
        if (v4)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v2 >= *(v32 + 16))
        {
          goto LABEL_66;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v4 = __OFADD__(v2, 1);
        v5 = v2 + 1;
        if (v4)
        {
          goto LABEL_65;
        }
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        swift_unknownObjectRetain();
        v8 = [v7 sensors];
        sub_10005BBC4(0, &qword_1001D95A0);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = v9 & 0xFFFFFFFFFFFFFF8;
        if (!(v9 >> 62))
        {
          goto LABEL_11;
        }

        v25 = _CocoaArrayWrapper.endIndex.getter();
        if (v25)
        {
          v26 = v25;
          v10 = sub_1000356C0(v25, 0);
          sub_1000908DC(v10 + 32, v26, v9);
          v28 = v27;

          if (v28 != v26)
          {
            __break(1u);
            return result;
          }

LABEL_11:
          swift_unknownObjectRelease_n();
          if (v10 < 0)
          {
            goto LABEL_54;
          }

          goto LABEL_18;
        }

        swift_unknownObjectRelease_n();
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          sub_1000033A8(&qword_1001D5248);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_100176B10;
          *(v10 + 32) = v12;
          if (v10 < 0)
          {
            goto LABEL_54;
          }

          goto LABEL_18;
        }

        swift_unknownObjectRelease();
      }

      v10 = &_swiftEmptyArrayStorage;
      if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

LABEL_18:
      if ((v10 & 0x4000000000000000) != 0)
      {
LABEL_54:
        v14 = _CocoaArrayWrapper.endIndex.getter();
        v13 = 1;
        if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_56;
      }

      v13 = 0;
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
LABEL_21:
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_67;
        }

        goto LABEL_22;
      }

LABEL_56:
      isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
      v15 = isUniquelyReferenced_nonNull_bridgeObject + v14;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
      {
        goto LABEL_67;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v5;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
        {
          v16 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
        goto LABEL_30;
      }

      _CocoaArrayWrapper.endIndex.getter();
LABEL_30:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_31:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v13)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
LABEL_4:

          if (v14 > 0)
          {
            goto LABEL_68;
          }

          goto LABEL_5;
        }
      }

      if (((v18 >> 1) - v17) < v14)
      {
        goto LABEL_69;
      }

      v20 = (v16 + 8 * v17 + 32);
      if (v13)
      {
        break;
      }

      sub_10005BBC4(0, &qword_1001D95A0);
      swift_arrayInitWithCopy();

      if (v14 < 1)
      {
        goto LABEL_5;
      }

LABEL_49:
      v23 = *(v16 + 16);
      v4 = __OFADD__(v23, v14);
      v24 = v23 + v14;
      if (v4)
      {
        goto LABEL_70;
      }

      *(v16 + 16) = v24;
LABEL_5:
      v2 = v34;
      if (v34 == v1)
      {
        return v3;
      }
    }

    if (v19 < 1)
    {
      goto LABEL_71;
    }

    v21 = 0;
    if ((v10 & 0xC000000000000001) != 0)
    {
LABEL_39:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      ++v21;
      *v20 = isUniquelyReferenced_nonNull_bridgeObject;
      if (v21 != v19)
      {
        goto LABEL_44;
      }

LABEL_48:

      v1 = v31;
      if (v14 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }

    while ((v21 & 0x8000000000000000) == 0)
    {
      if (v21 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v22 = *(v10 + 32 + 8 * v21++);
      *v20 = v22;
      isUniquelyReferenced_nonNull_bridgeObject = v22;
      if (v21 == v19)
      {
        goto LABEL_48;
      }

LABEL_44:
      ++v20;
      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_39;
      }
    }

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
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return &_swiftEmptyArrayStorage;
}

void sub_100079864(uint64_t a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a3;
    v7 = *(Strong + *a3);
    *(Strong + v6) = a2;
    v8 = Strong;
    v9 = a2;
  }
}

uint64_t sub_1000798D8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for CameraControllerConfiguration(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_1000033A8(&qword_1001D8020);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000799B0, 0, 0);
}

uint64_t sub_1000799B0()
{
  v1 = v0[9];
  if (*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay))
  {
    v2 = v0[13];
    sub_1000138BC(v0[8] + *(v0[10] + 68), v2, &qword_1001D8020);
    v3 = type metadata accessor for URL();
    v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
    sub_10001370C(v2, &qword_1001D8020);
    if (v4 == 1)
    {
      sub_10006043C();
      swift_allocError();
      *v5 = xmmword_100176B20;
LABEL_18:
      swift_willThrow();
      goto LABEL_20;
    }

    v1 = v0[9];
  }

  v6 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
  v7 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
  v8 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16);
  if (v8 == 1 || (v8 == 3 ? (v9 = v6 == 2) : (v9 = 0), v9 ? (v10 = v7 == 0) : (v10 = 0), v10))
  {
    sub_100060424(v6, v7, v8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Reconfigure unsupported when running.", v20, 2u);
    }

    sub_10006043C();
    swift_allocError();
    *v21 = 0xD000000000000020;
    v21[1] = 0x800000010016D2C0;
    goto LABEL_18;
  }

  v11 = v0[12];
  v12 = v0[10];
  v13 = v0[8];
  v14 = OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
  swift_beginAccess();
  sub_10009237C(v1 + v14, v11, type metadata accessor for CameraControllerConfiguration);
  *(v11 + v12[6]) = *(v13 + v12[6]);
  sub_100092D70(v13 + v12[21], v11 + v12[21]);
  sub_100092D70(v13 + v12[17], v11 + v12[17]);
  *(v11 + v12[13]) = *(v13 + v12[13]);
  *(v11 + v12[15]) = *(v13 + v12[15]);
  *(v11 + v12[19]) = *(v13 + v12[19]);
  *(v11 + v12[9]) = *(v13 + v12[9]);
  if (sub_10004B234(v11, v13))
  {
    v15 = v0[12];
    v16 = v0[11];
    sub_10009237C(v0[8], v16, type metadata accessor for CameraControllerConfiguration);
    swift_beginAccess();
    sub_100092DE0(v16, v1 + v14, type metadata accessor for CameraControllerConfiguration);
    swift_endAccess();
    sub_100073560();
    sub_100092314(v15, type metadata accessor for CameraControllerConfiguration);

    v17 = v0[1];
    goto LABEL_21;
  }

  v22 = v0[12];
  sub_10006043C();
  swift_allocError();
  *v23 = 0xD000000000000039;
  v23[1] = 0x800000010016D280;
  swift_willThrow();
  sub_100092314(v22, type metadata accessor for CameraControllerConfiguration);
LABEL_20:

  v17 = v0[1];
LABEL_21:

  return v17();
}

void sub_100079DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer + 8) = a3;
    v5 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

id sub_100079E48(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakAssign();
  result = *(a1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_metadataOutput);
  if (result)
  {
    v5 = *(a1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_metadataQueue);

    return [result setMetadataObjectsDelegate:a2 queue:v5];
  }

  return result;
}

void sub_100079EC0()
{
  v1 = v0;
  v2 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v12 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16);
    if (v12 != 1)
    {
      if (v12 != 3 || (!*(v11 + 8) ? (v13 = *v11 == 2) : (v13 = 0), !v13))
      {
        v14 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration);
        if (v14)
        {
          if (*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting))
          {
            v15 = v14;

            sub_10008028C();
          }

          else
          {
            v24 = v14;
          }

          sub_10009DDBC();

          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v25 = sub_100072B00();
            v26 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_100092CBC;
            aBlock[5] = v26;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10002C13C;
            aBlock[3] = &unk_1001C26E0;
            v27 = _Block_copy(aBlock);

            [v25 setBeforeRunningAVCaptureSession:v27];
            _Block_release(v27);
          }

          if (*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay))
          {
            v28 = type metadata accessor for TaskPriority();
            (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
            type metadata accessor for MainActor();
            v29 = static MainActor.shared.getter();
            v30 = swift_allocObject();
            *(v30 + 16) = v29;
            *(v30 + 24) = &protocol witness table for MainActor;
            sub_1000154EC(0, 0, v4, &unk_100177230, v30);
          }

          v31 = sub_100072B00();
          [v31 runWithConfiguration:v14 options:7];

          v32 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session);
          LOBYTE(v31) = sub_1000733F4(v32);

          *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_localizationState) = v31;
          v33 = *v11;
          v34 = *(v11 + 8);
          *v11 = v31;
          *(v11 + 8) = 0;
          v35 = *(v11 + 16);
          *(v11 + 16) = 1;
          sub_1000616E4(v33, v34, v35);
          sub_1000731B8();
        }

        else
        {
          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v16, v17, "AR configuration was not ready!", v18, 2u);
          }

          LOBYTE(aBlock[0]) = 0;
          sub_100092C68();
          v19 = Error.localizedDescription.getter();
          v20 = *v11;
          v21 = *(v11 + 8);
          *v11 = v19;
          *(v11 + 8) = v22;
          v23 = *(v11 + 16);
          *(v11 + 16) = 2;
          sub_1000616E4(v20, v21, v23);
          sub_1000731B8();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10007A378(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10007655C(a1);
  }
}

uint64_t sub_10007A3D4()
{
  v1 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-v2];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v11 = sub_100092BE8;
  v12 = v4;
  v5 = v0;
  OS_dispatch_queue.sync<A>(execute:)();

  if (v13 == 1)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v5;
    v9 = v5;
    sub_1000154EC(0, 0, v3, &unk_100177220, v8);
  }

  return result;
}

BOOL sub_10007A56C(char *a1)
{
  v2 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = &a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration];
  swift_beginAccess();
  v6 = type metadata accessor for CameraControllerConfiguration(0);
  sub_1000138BC(&v5[*(v6 + 68)], v4, &qword_1001D8020);
  v7 = type metadata accessor for URL();
  LODWORD(v5) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_10001370C(v4, &qword_1001D8020);
  if (v5 != 1)
  {
    v8 = &a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
    v9 = *&a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
    v10 = *&a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8];
    *v8 = xmmword_100176B30;
    v11 = v8[16];
    v8[16] = 3;
    sub_1000616E4(v9, v10, v11);
    sub_1000731B8();
  }

  v12 = &a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
  v13 = a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16];
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  if (v13 >= 3)
  {
    if (v17)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315138;
      v30 = *(v12 + 1);
      v31 = v12[16];
      v37 = *v12;
      v38 = v30;
      v39 = v31;
      sub_100060424(v37, v30, v31);
      v32 = String.init<A>(describing:)();
      v34 = sub_1000E0FE0(v32, v33, &v40);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v15, v16, "pause: already in pause state (%s, ignoring", v28, 0xCu);
      sub_100006B44(v29);
    }
  }

  else
  {
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      v20 = *(v12 + 1);
      v21 = v12[16];
      v37 = *v12;
      v38 = v20;
      v39 = v21;
      sub_100060424(v37, v20, v21);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000E0FE0(v22, v23, &v40);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "pause: transitioning from %s to .pauseRequested", v18, 0xCu);
      sub_100006B44(v19);
    }

    v25 = *v12;
    v26 = *(v12 + 1);
    *v12 = xmmword_100176B40;
    v27 = v12[16];
    v12[16] = 3;
    sub_1000616E4(v25, v26, v27);
    sub_1000731B8();
  }

  return v13 < 3;
}

uint64_t sub_10007A8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_10007AA20;

  return sub_100071E98();
}

uint64_t sub_10007AA20(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10007AB20, 0, 0);
}

uint64_t sub_10007AB20()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v13 = v0[14];
  v14 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v4 = sub_100072B00();
  [v4 pause];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_100092258;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000B5F04;
  v0[5] = &unk_1001C2230;
  v7 = _Block_copy(v0 + 2);
  v10 = v1;

  static DispatchQoS.unspecified.getter();
  v0[8] = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v12 + 8))(v3, v11);
  (*(v13 + 8))(v2, v14);

  v8 = v0[1];

  return v8();
}

void sub_10007ADC4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v6 = *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v7 = *(v5 + 8);
    *v5 = 0;
    *(v5 + 8) = 0;
    v8 = *(v5 + 16);
    *(v5 + 16) = 3;
    sub_1000616E4(v6, v7, v8);
    sub_1000731B8();
    v9 = &v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (a2)
      {
        v10 = *(v9 + 1);
        v11 = *&v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_motionMonitor];
        v12 = *(v11 + 40);
        v13 = *(v11 + 48);
        v14 = v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevel];
        ObjectType = swift_getObjectType();
        v24 = a2;
        v16 = *v5;
        v15 = *(v5 + 8);
        v25[0] = v12;
        v25[1] = v13;
        v26 = v14;
        v27 = v16;
        v28 = v15;
        v17 = v15;
        v29 = *(v5 + 16);
        v21 = v29;
        v20 = *(v10 + 8);
        v23 = a2;
        sub_100092260(v12, v13);
        sub_100060424(v16, v17, v29);
        v18 = sub_10005BBC4(0, &qword_1001D7430);
        v19 = sub_10008BB9C(&qword_1001D7438, &qword_1001D7430);
        v20(&v24, v25, v18, v19, ObjectType, v10);

        swift_unknownObjectRelease();
        sub_100092274(v12, v13);
        sub_1000616E4(v16, v17, v21);

        return;
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10007AFB4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    if (*(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16))
    {
      v15 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording);
      if (v15)
      {

        v16 = dispatch_semaphore_create(0);
        v17 = *(v15 + 16);
        if (v17)
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          aBlock[4] = sub_100092BE0;
          aBlock[5] = v18;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10008DBBC;
          aBlock[3] = &unk_1001C2668;
          v19 = _Block_copy(aBlock);
          v20 = v17;
          v21 = v16;

          [v20 finishRecordingWithHandler:v19];
          _Block_release(v19);
        }

        [*(v15 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_session) pause];
        OS_dispatch_semaphore.wait()();
      }

      else
      {
        v16 = sub_100072B00();
        [v16 pause];
      }

      if (*(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay))
      {
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
        type metadata accessor for MainActor();
        v23 = static MainActor.shared.getter();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = &protocol witness table for MainActor;
        sub_1000154EC(0, 0, v6, &unk_100177218, v24);
      }

      v25 = *v14;
      v26 = *(v14 + 8);
      *v14 = a1;
      *(v14 + 8) = 0;
      v27 = *(v14 + 16);
      *(v14 + 16) = 0;
      sub_1000616E4(v25, v26, v27);
      return sub_1000731B8();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10007B334()
{
  v1 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC6Tamale14ARCameraSource_shutterSoundTask;

  Task.cancel()();

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = *&v0[v4];
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;

  sub_1000154EC(0, 0, v3, &unk_1001772D0, v7);

  v8 = *&v0[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000941F4;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100094180;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C2C30;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v14 = type metadata accessor for ARCameraSource(0);
    v15.receiver = v12;
    v15.super_class = v14;
    return objc_msgSendSuper2(&v15, "dealloc");
  }

  return result;
}

uint64_t sub_10007B5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10007B66C;

  return Task<>.value.getter(v4 + 24, a4, &type metadata for UInt32);
}

uint64_t sub_10007B66C()
{

  return _swift_task_switch(sub_10007B768, 0, 0);
}

uint64_t sub_10007B768()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    AudioServicesDisposeSystemSoundID(v1);
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_10007BD28(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 supportsControls] && !*(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemZoomSlider))
  {
    v30 = OBJC_IVAR____TtC6Tamale14ARCameraSource_systemZoomSlider;
    v28 = v6;
    sub_10005BBC4(0, &qword_1001D6B40);
    v31 = v2;
    v9 = static OS_dispatch_queue.main.getter();
    v10 = v31;
    v11 = v9;
    [a1 setControlsDelegate:v31 queue:v9];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = objc_allocWithZone(AVCaptureSystemZoomSlider);
    aBlock[4] = sub_100092AF4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100090780;
    aBlock[3] = &unk_1001C25F0;
    v14 = _Block_copy(aBlock);

    v29 = [v13 initWithDevice:a2 action:v14];
    _Block_release(v14);

    sub_1000033A8(&qword_1001D81B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100170800;
    v16 = OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor;
    *(inited + 32) = [objc_allocWithZone(NSNumber) initWithDouble:*(v10 + OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor)];
    *(inited + 40) = [objc_allocWithZone(NSNumber) initWithDouble:1.0];
    v17 = OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithDouble:*(v10 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor)];
    v18 = *(v10 + v17) / *(v10 + v16);
    v19 = objc_allocWithZone(NSNumber);
    v20 = v29;
    *(inited + 56) = [v19 initWithDouble:v18];
    sub_100097458(inited);
    swift_setDeallocating();
    sub_1000033A8(&qword_1001D81B8);
    swift_arrayDestroy();
    sub_10005BBC4(0, &qword_1001D81C0);
    sub_10008BB9C(&qword_1001D81C8, &qword_1001D81C0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 setDisplayValuesByZoomFactorValue:isa];

    [v20 setMaxVideoZoomFactor:*(v10 + v17)];
    if ([a1 canAddControl:v20])
    {
      [a1 addControl:v20];
    }

    else
    {
      static Log.zoom.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Could not add zoom slider control to capture session", v24, 2u);
      }

      (*(v28 + 8))(v8, v5);
      v10 = v31;
    }

    v25 = *(v10 + v30);
    *(v10 + v30) = v20;
    v26 = v20;

    [v26 setEnabled:(*(v10 + OBJC_IVAR____TtC6Tamale14ARCameraSource_cameraControlsDisabled) & 1) == 0];
  }
}

void sub_10007C1DC(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10007C244(2, a1);
  }
}

uint64_t sub_10007C244(int a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v48 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor);
  if (v17 <= a2)
  {
    v17 = a2;
  }

  if (*(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor) >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor);
  }

  v19 = OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor;
  if (v18 != *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor))
  {
    v46 = a1;
    v44 = v10;
    v45 = v7;
    static Log.zoom.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v43 = v9;
    if (v22)
    {
      v42 = v6;
      v23 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v23 = 134218242;
      *(v23 + 4) = v18;
      *(v23 + 12) = 2080;
      v24 = 0xE500000000000000;
      v25 = 0x7465736572;
      v26 = 0x800000010016D200;
      v27 = 0x65727574736567;
      if (v46 == 2)
      {
        v27 = 0xD000000000000013;
      }

      else
      {
        v26 = 0xE700000000000000;
      }

      if (!v46)
      {
        v25 = 0xD000000000000014;
        v24 = 0x800000010016D220;
      }

      if (v46 <= 1u)
      {
        v28 = v25;
      }

      else
      {
        v28 = v27;
      }

      if (v46 <= 1u)
      {
        v29 = v24;
      }

      else
      {
        v29 = v26;
      }

      v30 = sub_1000E0FE0(v28, v29, aBlock);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "Setting zoom factor %f for %s", v23, 0x16u);
      sub_100006B44(v41);

      result = (*(v13 + 8))(v16, v12);
      v6 = v42;
    }

    else
    {

      result = (*(v13 + 8))(v16, v12);
    }

    *(v3 + v19) = v18;
    v31 = v45;
    if (v46 >= 2u)
    {
      if (v46 == 2)
      {
        return result;
      }

      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    v33 = sub_100072B00();
    v34 = [v33 stateQueue];

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v18;
    *(v36 + 32) = v32;
    aBlock[4] = sub_100092AE4;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C25C8;
    v37 = _Block_copy(aBlock);

    v38 = v47;
    static DispatchQoS.unspecified.getter();
    v49 = &_swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010);
    v39 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v31 + 8))(v39, v6);
    (*(v48 + 8))(v38, v44);
  }

  return result;
}

void sub_10007C804(double a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10007C870(a3 & 1, a1);
  }
}

void sub_10007C870(char a1, double a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v38[-v11];
  v13 = __chkstk_darwin(v10);
  v15 = &v38[-v14];
  __chkstk_darwin(v13);
  v17 = &v38[-v16];
  v18 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice);
  if (v18)
  {
    v19 = v18;
    [v19 maxAvailableVideoZoomFactor];
    if (v20 <= 1.0)
    {
      static Log.zoom.getter();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Zoom not supported", v30, 2u);
      }

      (*(v6 + 8))(v15, v5);
    }

    else
    {
      v39 = 0;
      if ([v19 lockForConfiguration:&v39])
      {
        v21 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor);
        if (v21 <= a2)
        {
          v21 = a2;
        }

        if (*(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor) >= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor);
        }

        v23 = v39;
        if (v22 == a2)
        {
          if (a1)
          {
LABEL_11:
            *&v24 = v22;
            [v19 rampToVideoZoomFactor:1 withTuning:v24];
LABEL_25:
            [v19 unlockForConfiguration];

            return;
          }
        }

        else
        {
          static Log.zoom.getter();
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 134218240;
            *(v37 + 4) = a2;
            *(v37 + 12) = 2048;
            *(v37 + 14) = v22;
            _os_log_impl(&_mh_execute_header, v35, v36, "Clamped desired zoom factor %f to allowed range: %f", v37, 0x16u);
          }

          (*(v6 + 8))(v17, v5);
          if (a1)
          {
            goto LABEL_11;
          }
        }

        [v19 setVideoZoomFactor:v22];
        goto LABEL_25;
      }

      v31 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Log.zoom.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to lock device for zoom", v34, 2u);
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    static Log.zoom.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to get AVCaptureDevice for zoom", v27, 2u);
    }

    (*(v6 + 8))(v12, v5);
  }
}

uint64_t sub_10007CD04(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureState];
  if (v2[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureState + 8])
  {
    if (a2)
    {
      return result;
    }

    v11 = result;
    static Log.zoom.getter();
    v12 = v2;
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = &qword_1001D7000;
    if (os_log_type_enabled(v14, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *&v13[OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor];
      _os_log_impl(&_mh_execute_header, v14, v15, "Starting zoom gesture with initial factor %f", v17, 0xCu);
      v16 = &qword_1001D7000;
    }

    (*(v6 + 8))(v9, v11);
    *&v13[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureInitialZoomFactor] = *&v13[v16[173]];
    v18 = *&a1;
    v2 = v12;
LABEL_9:
    *v10 = *&a1;
    *(v10 + 8) = 0;
    return sub_10007C244(3, *&v2[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureInitialZoomFactor] * v18);
  }

  if (a2)
  {
    *v10 = *&a1;
    *(v10 + 8) = 1;
    return result;
  }

  v18 = *&a1;
  if (*v10 != *&a1)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10007CF00(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100072B00();
  v14 = [v8 stateQueue];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100092AA0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2578;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = v14;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
}

void sub_10007D228(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_cameraControlsDisabled) = a2 & 1;
    v5 = *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemZoomSlider);
    if (v5)
    {
      v6 = v5;
      [v6 setEnabled:(a2 & 1) == 0];
    }
  }
}

uint64_t sub_10007D2F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019340;

  return sub_1000798D8(a1);
}

uint64_t sub_10007D38C()
{
  v1 = *v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
  v2 = *v1;
  sub_100060424(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_10007D3E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC6Tamale14ARCameraSource_runStateStreamInternal;
  v5 = sub_1000033A8(&qword_1001D6AF0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10007D46C()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10009075C;
  *(v4 + 24) = v3;
  v8[4] = sub_100094180;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100071D78;
  v8[3] = &unk_1001C2140;
  v5 = _Block_copy(v8);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007D5E8()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000906E4;
  *(v4 + 24) = v3;
  v8[4] = sub_10009071C;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100071D78;
  v8[3] = &unk_1001C20C8;
  v5 = _Block_copy(v8);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007D7D0()
{
  v1 = v0;
  v2 = type metadata accessor for Corners();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RaycastAccuracy(0);
  __chkstk_darwin(v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009237C(v1, v8, type metadata accessor for RaycastAccuracy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0x756363416C6C7566;
    }

    (*(v3 + 32))(v5, v8, v2);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v14[0] = 0xD000000000000016;
    v14[1] = 0x800000010016D0D0;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v14, "finalPosition ");
    HIBYTE(v14[1]) = -18;
LABEL_7:
    sub_100090580(&qword_1001D7FB8, &type metadata accessor for Corners);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v11 = v14[0];
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v10._countAndFlagsBits = 0x5064656D75737361;
  v10._object = 0xED000020656E616CLL;
  String.append(_:)(v10);
  Double.write<A>(to:)();
  return v14[0];
}

void sub_10007DAC4()
{
  v1 = type metadata accessor for Corners();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RaycastAccuracy(0);
  __chkstk_darwin(v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10009237C(v0, v7, type metadata accessor for RaycastAccuracy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    (*(v2 + 32))(v4, v7, v1);
    v11 = 3;
LABEL_9:
    Hasher._combine(_:)(v11);
    sub_100090580(&qword_1001D7FB0, &type metadata accessor for Corners);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v2 + 32))(v4, v7, v1);
    v11 = 2;
    goto LABEL_9;
  }

  v9 = *v7;
  Hasher._combine(_:)(1uLL);
  v10 = 0.0;
  if (v9 != 0.0)
  {
    v10 = v9;
  }

  Hasher._combine(_:)(*&v10);
}

Swift::Int sub_10007DCF4()
{
  Hasher.init(_seed:)();
  sub_10007DAC4();
  return Hasher._finalize()();
}

Swift::Int sub_10007DD38()
{
  Hasher.init(_seed:)();
  sub_10007DAC4();
  return Hasher._finalize()();
}

uint64_t sub_10007DD78(char a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1000033A8(&qword_1001D8138);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for RaycastAccuracy(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v42 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v43 = v17;
  v18 = sub_100095E6C(a1);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v3) = v19;
  if (v17[3] < v23)
  {
    sub_1000BDFCC(v23, isUniquelyReferenced_nonNull_native);
    v17 = v43;
    v18 = sub_100095E6C(a1);
    if ((v3 & 1) == (v24 & 1))
    {
      goto LABEL_6;
    }

    v18 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_6:
  *v4 = v17;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v3 = v18;
  sub_1000C1940(v18, a1, 0, v17);
  v18 = v3;
LABEL_8:
  while (1)
  {
    v25 = v17[7];
    v26 = *(v25 + 8 * v18);
    v22 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v22)
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    v41 = v18;
    sub_1000C2188();
    v18 = v41;
    v17 = v43;
    *v4 = v43;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v25 + 8 * v18) = v27;
  sub_1000138BC(a2, v9, &qword_1001D8138);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10001370C(v9, &qword_1001D8138);
  }

  sub_1000923E4(v9, v15, type metadata accessor for RaycastAccuracy);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v4[1];
  v30 = v43;
  v32 = sub_100095E00(v15);
  v33 = v30[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(a2) = v31;
  if (v30[3] >= v35)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_28;
    }

    v4[1] = v30;
    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000BDA48(v35, v29);
    v30 = v43;
    v36 = sub_100095E00(v15);
    if ((a2 & 1) != (v37 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v32 = v36;
    v4[1] = v30;
    if ((a2 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  while (1)
  {
    v38 = v30[7];
    v39 = *(v38 + 8 * v32);
    v22 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (!v22)
    {
      break;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    sub_1000C1F44();
    v30 = v43;
    v4[1] = v43;
    if ((a2 & 1) == 0)
    {
LABEL_18:
      v4 = v42;
      sub_10009237C(v15, v42, type metadata accessor for RaycastAccuracy);
      sub_1000C188C(v32, v4, 0, v30);
    }
  }

  *(v38 + 8 * v32) = v40;
  return sub_100092314(v15, type metadata accessor for RaycastAccuracy);
}

uint64_t sub_10007E124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v5 = type metadata accessor for RaycastAccuracy(0);
  v108 = *(v5 - 8);
  v109 = v5;
  __chkstk_darwin(v5);
  v113 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000033A8(&unk_1001D8150);
  v7 = __chkstk_darwin(v107);
  v114 = v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = v101 - v9;
  v10 = *(a1 + 16);
  v11 = &_swiftEmptyArrayStorage;
  v110 = a2;
  if (v10)
  {
    v119 = &_swiftEmptyArrayStorage;
    sub_1000595D0(0, v10, 0);
    v12 = v119;
    v13 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v15 = result;
    v16 = 0;
    v17 = *(a1 + 36);
    v104 = 0x800000010016D1E0;
    v105 = a1 + 72;
    v111 = v10;
    v112 = v17;
    *&v115 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_76;
      }

      if (v17 != *(a1 + 36))
      {
        goto LABEL_77;
      }

      v20 = *(*(a1 + 48) + v15);
      v116 = *(*(a1 + 56) + 8 * v15);
      v117 = dispatch thunk of CustomStringConvertible.description.getter();
      v118 = v21;
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      if (v20 <= 2)
      {
        if (v20)
        {
          if (v20 == 1)
          {
            v24 = 0xD000000000000010;
            v23 = v104;
          }

          else
          {
            v23 = 0xE700000000000000;
            v24 = 0x64657461657263;
          }
        }

        else
        {
          v23 = 0xEA00000000006B6FLL;
          v24 = 0x5F74736163796172;
        }
      }

      else if (v20 > 4)
      {
        if (v20 == 5)
        {
          v23 = 0xE800000000000000;
          v24 = 0x6465737361707962;
        }

        else
        {
          v24 = 0x726F68636E616E75;
          v23 = 0xEA00000000006465;
        }
      }

      else if (v20 == 3)
      {
        v23 = 0xE800000000000000;
        v24 = 0x646563616C706572;
      }

      else
      {
        v23 = 0xE700000000000000;
        v24 = 0x6465766F6D6572;
      }

      v25 = v23;
      String.append(_:)(*&v24);

      v26 = v117;
      v27 = v118;
      v28 = v12;
      v119 = v12;
      v29 = v12[2];
      v30 = v28[3];
      if (v29 >= v30 >> 1)
      {
        result = sub_1000595D0((v30 > 1), v29 + 1, 1);
        v28 = v119;
      }

      v28[2] = v29 + 1;
      v31 = &v28[2 * v29];
      *(v31 + 4) = v26;
      *(v31 + 5) = v27;
      v18 = 1 << *(a1 + 32);
      if (v15 >= v18)
      {
        goto LABEL_78;
      }

      v13 = v115;
      v32 = *(v115 + 8 * v19);
      if ((v32 & (1 << v15)) == 0)
      {
        goto LABEL_79;
      }

      v12 = v28;
      LODWORD(v17) = v112;
      if (v112 != *(a1 + 36))
      {
        goto LABEL_80;
      }

      v33 = v32 & (-2 << (v15 & 0x3F));
      if (v33)
      {
        v18 = __clz(__rbit64(v33)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v19 << 6;
        v35 = v19 + 1;
        v36 = (v105 + 8 * v19);
        while (v35 < (v18 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_10009257C(v15, v112, 0);
            v18 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        result = sub_10009257C(v15, v112, 0);
      }

LABEL_4:
      ++v16;
      v15 = v18;
      if (v16 == v111)
      {
        a2 = v110;
        v11 = v12;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_34:
  v117 = v11;
  v39 = sub_1000033A8(&unk_1001D6300);
  v40 = sub_100013608(&unk_1001D8160, &unk_1001D6300);
  v104 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  v43 = *(a2 + 16);
  v44 = &_swiftEmptyArrayStorage;
  if (!v43)
  {
LABEL_61:
    v117 = v44;
    v74 = BidirectionalCollection<>.joined(separator:)();
    v76 = v75;

    v77 = *(v103 + 16);
    if (!v77)
    {
      v80 = 0;
      v81 = 0xE000000000000000;
LABEL_74:
      v117 = 0;
      v118 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v117 = 91;
      v118 = 0xE100000000000000;
      v96._countAndFlagsBits = v104;
      v96._object = v42;
      String.append(_:)(v96);

      v97._countAndFlagsBits = 0x617275636361205DLL;
      v97._object = 0xED00005B203A7963;
      String.append(_:)(v97);
      v98._countAndFlagsBits = v74;
      v98._object = v76;
      String.append(_:)(v98);

      v99._countAndFlagsBits = 93;
      v99._object = 0xE100000000000000;
      String.append(_:)(v99);
      v100._countAndFlagsBits = v80;
      v100._object = v81;
      String.append(_:)(v100);

      return v117;
    }

    if (v77 > 7)
    {
      v78 = v77 & 0x7FFFFFFFFFFFFFF8;
      v82 = v103 + 48;
      v79 = 0.0;
      v83 = v77 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v79 = (((((((v79 + COERCE_FLOAT(*(v82 - 16))) + COERCE_FLOAT(HIDWORD(*(v82 - 16)))) + COERCE_FLOAT(*(v82 - 8))) + COERCE_FLOAT(HIDWORD(*(v82 - 16)))) + COERCE_FLOAT(*v82)) + COERCE_FLOAT(HIDWORD(*v82))) + COERCE_FLOAT(*(v82 + 8))) + COERCE_FLOAT(HIDWORD(*v82));
        v82 += 32;
        v83 -= 8;
      }

      while (v83);
      if (v77 == v78)
      {
LABEL_70:
        v87 = v79 / v77;
        v88 = sub_10009CBC8(v103);
        if ((v88 & &_mh_execute_header) != 0)
        {
          v89 = 0.0;
        }

        else
        {
          v89 = *&v88;
        }

        v117 = 0;
        v118 = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        v117 = 0x203A6776612820;
        v118 = 0xE700000000000000;
        sub_1000033A8(&qword_1001D58A0);
        v90 = swift_allocObject();
        v115 = xmmword_100171DA0;
        *(v90 + 16) = xmmword_100171DA0;
        *(v90 + 56) = &type metadata for Float;
        *(v90 + 64) = &protocol witness table for Float;
        *(v90 + 32) = v87;
        v91._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v91);

        v92._countAndFlagsBits = 0x203A78616D202C6DLL;
        v92._object = 0xE800000000000000;
        String.append(_:)(v92);
        v93 = swift_allocObject();
        *(v93 + 16) = v115;
        *(v93 + 56) = &type metadata for Float;
        *(v93 + 64) = &protocol witness table for Float;
        *(v93 + 32) = v89;
        v94._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v94);

        v95._countAndFlagsBits = 10605;
        v95._object = 0xE200000000000000;
        String.append(_:)(v95);
        v80 = v117;
        v81 = v118;
        goto LABEL_74;
      }
    }

    else
    {
      v78 = 0;
      v79 = 0.0;
    }

    v84 = v77 - v78;
    v85 = (v103 + 4 * v78 + 32);
    do
    {
      v86 = *v85++;
      v79 = v79 + v86;
      --v84;
    }

    while (v84);
    goto LABEL_70;
  }

  v101[1] = v40;
  v101[2] = v39;
  v102 = v42;
  v119 = &_swiftEmptyArrayStorage;
  sub_1000595D0(0, v43, 0);
  v44 = v119;
  v45 = a2 + 64;
  result = _HashTable.startBucket.getter();
  v46 = result;
  v47 = 0;
  v105 = a2 + 72;
  *&v115 = *(a2 + 36);
  v111 = v43;
  v112 = a2 + 64;
  while ((v46 & 0x8000000000000000) == 0 && v46 < 1 << *(a2 + 32))
  {
    v49 = v46 >> 6;
    if ((*(v45 + 8 * (v46 >> 6)) & (1 << v46)) == 0)
    {
      goto LABEL_82;
    }

    if (v115 != *(a2 + 36))
    {
      goto LABEL_83;
    }

    v50 = v106;
    sub_10009237C(*(a2 + 48) + *(v108 + 72) * v46, v106, type metadata accessor for RaycastAccuracy);
    v51 = *(*(a2 + 56) + 8 * v46);
    v52 = v50;
    v53 = v114;
    sub_1000923E4(v52, v114, type metadata accessor for RaycastAccuracy);
    *(v53 + *(v107 + 48)) = v51;
    v116 = v51;
    v117 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v54;
    v55._countAndFlagsBits = 32;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    sub_10009237C(v53, v113, type metadata accessor for RaycastAccuracy);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v59 = type metadata accessor for Corners();
        (*(*(v59 - 8) + 8))(v113, v59);
        v57 = 0xE800000000000000;
        v58 = 0x656C626174736E75;
      }

      else
      {
        v57 = 0xE400000000000000;
        v58 = 1819047270;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v60 = type metadata accessor for Corners();
      (*(*(v60 - 8) + 8))(v113, v60);
      v57 = 0xE500000000000000;
      v58 = 0x6C616E6966;
    }

    else
    {
      v57 = 0xE500000000000000;
      v58 = 0x656E616C70;
    }

    v61 = v57;
    String.append(_:)(*&v58);

    v63 = v117;
    v62 = v118;
    result = sub_10001370C(v114, &unk_1001D8150);
    v119 = v44;
    v65 = v44[2];
    v64 = v44[3];
    if (v65 >= v64 >> 1)
    {
      result = sub_1000595D0((v64 > 1), v65 + 1, 1);
      v44 = v119;
    }

    v44[2] = v65 + 1;
    v66 = &v44[2 * v65];
    v66[4] = v63;
    v66[5] = v62;
    a2 = v110;
    v48 = 1 << *(v110 + 32);
    if (v46 >= v48)
    {
      goto LABEL_84;
    }

    v45 = v112;
    v67 = *(v112 + 8 * v49);
    if ((v67 & (1 << v46)) == 0)
    {
      goto LABEL_85;
    }

    if (v115 != *(v110 + 36))
    {
      goto LABEL_86;
    }

    v68 = v67 & (-2 << (v46 & 0x3F));
    if (v68)
    {
      v48 = __clz(__rbit64(v68)) | v46 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v69 = v49 << 6;
      v70 = v49 + 1;
      v71 = (v105 + 8 * v49);
      while (v70 < (v48 + 63) >> 6)
      {
        v73 = *v71++;
        v72 = v73;
        v69 += 64;
        ++v70;
        if (v73)
        {
          result = sub_10009257C(v46, v115, 0);
          v48 = __clz(__rbit64(v72)) + v69;
          goto LABEL_37;
        }
      }

      result = sub_10009257C(v46, v115, 0);
    }

LABEL_37:
    ++v47;
    v46 = v48;
    if (v47 == v111)
    {
      v42 = v102;
      goto LABEL_61;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_10007EC5C(uint64_t a1)
{
  v2 = v1;
  v32 = sub_1000033A8(&unk_1001D81A0);
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v28 - v5;
  v30 = sub_1000033A8(&unk_1001D8190);
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = v28 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + 64) = a1;

  v13 = *(v2 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (a1)
  {
    v16 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_predictionsStreamContinuations;
    swift_beginAccess();
    v29 = v2;
    v17 = *(v2 + v16);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = (v4 + 8);
    v28[0] = v6 + 8;
    v28[1] = v6 + 16;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v20; result = (*(v6 + 8))(v8, v26))
    {
      v24 = i;
LABEL_10:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v30;
      (*(v6 + 16))(v8, *(v17 + 56) + *(v6 + 72) * (v25 | (v24 << 6)), v30);
      v33 = *(v29 + 64);

      v27 = v31;
      AsyncStream.Continuation.yield(_:)();
      (*v22)(v27, v32);
    }

    while (1)
    {
      v24 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
      }

      v20 = *(v17 + 64 + 8 * v24);
      ++i;
      if (v20)
      {
        i = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007EFEC@<X0>(uint64_t a1@<X8>)
{
  v22[0] = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&unk_1001D9570);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_1000033A8(&unk_1001D8190);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v22 - v13;
  sub_1000033A8(&unk_1001D9580);
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  v22[0] = *(v22[1] + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = sub_100092858;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C24B0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  v19 = v23;
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v27 + 8))(v19, v20);
  (*(v24 + 8))(v3, v26);
  (*(v9 + 8))(v14, v8);
}

uint64_t sub_10007F508(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&unk_1001D81A0);
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v25 - v4;
  v5 = sub_1000033A8(&unk_1001D9590);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    UUID.init()();
    v25 = v8;
    v26 = *(v9 + 16);
    v27 = a2;
    v26(v12, v14, v8);
    v17 = sub_1000033A8(&unk_1001D8190);
    v18 = *(v17 - 8);
    v28 = v3;
    v19 = v18;
    (*(v18 + 16))(v7, a2, v17);
    (*(v19 + 56))(v7, 0, 1, v17);
    swift_beginAccess();
    sub_1000B7B68(v7, v12);
    swift_endAccess();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = v25;
    v26(v12, v14, v25);
    v22 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    (*(v9 + 32))(v23 + v22, v12, v21);
    AsyncStream.Continuation.onTermination.setter();
    v31 = *(v16 + 64);

    v24 = v29;
    AsyncStream.Continuation.yield(_:)();

    (*(v30 + 8))(v24, v28);
    return (*(v9 + 8))(v14, v21);
  }

  return result;
}

uint64_t sub_10007F8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
    v23 = result;
    v15 = swift_allocObject();
    v21 = v5;
    v16 = v15;
    swift_weakInit();
    (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
    v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    (*(v12 + 32))(v18 + v17, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    aBlock[4] = sub_100092A04;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C2528;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = &_swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v21 + 8))(v7, v4);
    (*(v24 + 8))(v10, v25);
  }

  return result;
}

uint64_t sub_10007FCD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&unk_1001D9590);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 16))(v9, a2, v6);
    v11 = sub_1000033A8(&unk_1001D8190);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    swift_beginAccess();
    sub_1000B7B68(v5, v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10007FE9C(uint64_t a1)
{
  v2 = v1;
  v14 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v3 - 8);
  v13 = v3;
  __chkstk_darwin(v3);
  v11 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1000033A8(&qword_1001D80D8);
  default argument 0 of CircularBuffer.init(data:index:sizeMax:)();
  default argument 1 of CircularBuffer.init(data:index:sizeMax:)();
  *(v1 + 56) = TimestampDataBuffer.__allocating_init(data:index:sizeMax:)();
  *(v1 + 64) = sub_100096F20(&_swiftEmptyArrayStorage);
  *(v1 + 72) = 1084227584;
  *(v1 + 80) = 3;
  static Log.arKit.getter();
  *(v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_predictionsStreamContinuations) = &_swiftEmptyDictionarySingleton;
  v10 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue;
  sub_10005BBC4(0, &qword_1001D6B40);
  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_100090580(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50);
  sub_100013608(&unk_1001D8050, &unk_1001D6B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v1 + v10) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = v14;
  sub_10009237C(v14, v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration, type metadata accessor for CameraControllerConfiguration);
  *(v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_lastAnchoredTracksUpdateFrameTime) = 0xFFF0000000000000;
  type metadata accessor for UUID();
  type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  sub_100090580(&unk_1001D9550, &type metadata accessor for UUID);
  v8 = Dictionary.init(minimumCapacity:)();
  sub_100092314(v7, type metadata accessor for CameraControllerConfiguration);
  *(v2 + 48) = v8;
  return v2;
}

uint64_t sub_10008028C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  aBlock[4] = sub_100092780;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2460;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

void sub_1000805C0()
{
  v0 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v59 = *(v0 - 8);
  v60 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = (&v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v1);
  v58 = &v53 - v4;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v55 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue;
  v11 = *(Strong + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v8 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = v6 + 104;
  v57 = *(v6 + 104);
  v57(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v14 = v11;
  v15 = _dispatchPreconditionTest(_:)();
  v17 = *(v6 + 8);
  v16 = v6 + 8;
  v56 = v17;
  v17(v8, v5);
  if ((v15 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v53 = v13;
  v54 = v5;
  v18 = *(v10 + 48);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v61 = v16;
  v62 = v18;

  v24 = 0;
LABEL_6:
  v25 = v57;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    v26 = v24;
LABEL_11:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = v58;
    sub_10009237C(*(v62 + 56) + *(v59 + 72) * (v27 | (v26 << 6)), v58, type metadata accessor for ARCameraSource.Tracker.TrackState);
    sub_1000923E4(v28, v3, type metadata accessor for ARCameraSource.Tracker.TrackState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = v12;
      v30 = *v3;
      v31 = sub_1000033A8(&qword_1001D8100);
      sub_100092314(v3 + *(v31 + 48), type metadata accessor for ARCameraSource.AnchorInformation);
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        [v32 removeAnchor:v30];
      }

      v24 = v26;
      v12 = v29;
      goto LABEL_6;
    }

    sub_100092314(v3, type metadata accessor for ARCameraSource.Tracker.TrackState);
    v24 = v26;
  }

  while (v22);
  while (1)
  {
LABEL_8:
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  v35 = v54;
  v34 = v55;
  v36 = *(v10 + v55);
  *v8 = v36;
  v25(v8, v12, v35);
  v37 = v36;
  v38 = _dispatchPreconditionTest(_:)();
  v39 = v56;
  v56(v8, v35);
  if ((v38 & 1) == 0)
  {
    goto LABEL_26;
  }

  v40 = *(v10 + v34);
  *v8 = v40;
  v25(v8, v12, v35);
  v41 = v40;
  v42 = _dispatchPreconditionTest(_:)();
  v39(v8, v35);
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

  *(v10 + 48) = &_swiftEmptyDictionarySingleton;

  v43 = *(v10 + v34);
  *v8 = v43;
  v25(v8, v12, v35);
  v44 = v43;
  v45 = _dispatchPreconditionTest(_:)();
  v39(v8, v35);
  if ((v45 & 1) == 0)
  {
    goto LABEL_28;
  }

  v63 = *(v10 + 48);

  sub_1000033A8(&unk_1001D8180);
  Dictionary.reserveCapacity(_:)(24);
  v46 = v63;
  v47 = *(v10 + v34);
  *v8 = v47;
  v25(v8, v12, v35);
  v48 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v39(v8, v35);
  if (v47)
  {
    *(v10 + 48) = v46;

    sub_1000033A8(&qword_1001D80D8);
    default argument 0 of CircularBuffer.init(data:index:sizeMax:)();
    default argument 1 of CircularBuffer.init(data:index:sizeMax:)();
    v49 = TimestampDataBuffer.__allocating_init(data:index:sizeMax:)();
    v50 = *(v10 + v34);
    *v8 = v50;
    v25(v8, v12, v35);
    v51 = v50;
    v52 = _dispatchPreconditionTest(_:)();
    v56(v8, v35);
    if ((v52 & 1) == 0)
    {
      goto LABEL_30;
    }

    *(v10 + 56) = v49;

    *(v10 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_lastAnchoredTracksUpdateFrameTime) = 0xFFF0000000000000;

    return;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void **sub_100080BA8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a1;
  v9 = type metadata accessor for CameraSourceFrameMetadata();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  __chkstk_darwin(v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v17 = v5;
  v56 = a4;
  v54 = sub_10008104C();
  v19 = v18;
  if (v18)
  {
    v58 = v18;
    v20 = v18;
    v21 = a2;
    v22 = v55;
  }

  else
  {
    (*(v14 + 16))(v16, a2, a3);
    sub_10005BBC4(0, &qword_1001D7430);
    v21 = a2;
    if (swift_dynamicCast())
    {
      v23 = v57;
      v24 = [v57 camera];
      [v24 transform];
      v52 = v26;
      v53 = v25;
      v50 = v28;
      v51 = v27;

      v29 = objc_allocWithZone(ARAnchor);
      v30 = [v29 initWithTransform:{*&v53, *&v52, *&v51, *&v50}];

      v58 = v30;
      v22 = v55;
    }

    else
    {
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v31 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
      (*(v10 + 8))(v13, v9);
      v22 = v55;
      if (v31)
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "High resolution still without ARFrame; using fallback anchor", v34, 2u);
        }
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong || (v38 = Strong, v39 = [Strong currentFrame], v38, !v39) || (v40 = objc_msgSend(v39, "camera"), v39, !v40))
        {

          goto LABEL_10;
        }

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Using fallback anchor from session.currentFrame", v43, 2u);
        }

        [v40 transform];
        v52 = v45;
        v53 = v44;
        v50 = v47;
        v51 = v46;
        v48 = objc_allocWithZone(ARAnchor);
        v49 = [v48 initWithTransform:{*&v53, *&v52, *&v51, *&v50}];

        v58 = v49;
      }
    }
  }

  __chkstk_darwin(v20);
  v35 = v56;
  *(&v50 - 6) = a3;
  *(&v50 - 5) = v35;
  *(&v50 - 4) = v54;
  *(&v50 - 3) = v17;
  *(&v50 - 2) = &v58;
  *(&v50 - 1) = v21;

  v22 = sub_1000713D8(sub_1000926B8, &v50 - 8, v22);

LABEL_10:
  return v22;
}

uint64_t sub_10008104C()
{
  sub_1000033A8(&qword_1001D8178);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_1000810D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v26 = a4;
  v24 = a3;
  v25 = a2;
  v28 = a5;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = a1;
  v10 = *(a1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v9 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = *(v7 + 104);
  v12(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  result = v14(v9, v6);
  if (v10)
  {
    *v28 = *(v27 + 48);
    *v9 = v13;
    v12(v9, v11, v6);

    v16 = _dispatchPreconditionTest(_:)();
    result = v14(v9, v6);
    if (v16)
    {
      __chkstk_darwin(result);
      v17 = v25;
      v18 = v26;
      *(&v23 - 4) = v24;
      *(&v23 - 3) = v18;
      *(&v23 - 2) = v17;

      v19 = sub_100071970(sub_100092700);
      v21 = v20;

      v22 = v28;
      v28[1] = v19;
      v22[2] = v21;
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

uint64_t sub_1000812F8(uint64_t *a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a3;
  v43 = a7;
  v40 = a5;
  v41 = a6;
  v45 = a4;
  v44 = type metadata accessor for CameraSourceFrameMetadata();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v46 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v19 = &v38 - v18;
  v20 = *a1;
  CVTrackedDetection.id.getter();
  if (*(a2 + 16) && (v21 = sub_100095B4C(v13), (v22 & 1) != 0))
  {
    sub_10009237C(*(a2 + 56) + *(v15 + 72) * v21, v19, type metadata accessor for ARCameraSource.Tracker.TrackState);
    (*(v11 + 8))(v13, v10);
    v23 = v46;
    sub_10009237C(v19, v46, type metadata accessor for ARCameraSource.Tracker.TrackState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100092314(v19, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v24 = type metadata accessor for Corners();
      (*(*(v24 - 8) + 8))(v23, v24);
      v25 = 1;
    }

    else
    {
      v34 = *v23;
      v35 = *(sub_1000033A8(&qword_1001D8100) + 48);
      if (*v45)
      {
        v36 = *v45;
        v25 = sub_1000817EC(v36);
      }

      else
      {
        v37 = v39;
        dispatch thunk of CameraSourceFrame.metadata.getter();
        v25 = CameraSourceFrameMetadata.isHighResolutionStill.getter();

        (*(v42 + 8))(v37, v44);
      }

      sub_100092314(v19, type metadata accessor for ARCameraSource.Tracker.TrackState);
      sub_100092314(v23 + v35, type metadata accessor for ARCameraSource.AnchorInformation);
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315138;
      v48 = v20;
      type metadata accessor for CVTrackedDetection();
      sub_100090580(&qword_1001D8170, &type metadata accessor for CVTrackedDetection);
      v30 = CVTrackProviding.shortLoggingDescription.getter();
      v32 = sub_1000E0FE0(v30, v31, &v49);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Did not find tracking information for track %s", v28, 0xCu);
      sub_100006B44(v29);
    }

    v25 = 0;
  }

  return v25 & 1;
}

BOOL sub_1000817EC(void *a1)
{
  [v1 transform];
  v13 = v3;
  [a1 transform];
  v12 = v4;
  [a1 transform];
  v14 = v5;
  [a1 transform];
  v11 = v6;
  [a1 transform];
  v7 = vsub_f32(vdup_lane_s32(*v13.f32, 1).u32[0], vzip2_s32(*v12.f32, v11));
  v8 = vsubq_f32(v13, v12);
  *v8.i8 = vmul_f32(vzip1_s32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), vsub_f32(0, vzip1_s32(v14, *&vextq_s8(v9, v9, 8uLL))));
  return vadd_f32(vadd_f32(*v8.i8, vmul_lane_f32(v7, v7, 1)), vdup_lane_s32(*v8.i8, 1)).f32[0] > 0.0;
}

void sub_1000818C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = type metadata accessor for CameraSourceFrameMetadata();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  v15 = __chkstk_darwin(v48);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v51 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  aBlock[0] = a1;
  v55 = a3;
  v56 = a4;
  v44 = a5;
  v57 = a5;
  v58 = a6;
  v54 = a6;
  v52 = a2;
  v59 = a2;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v22 = _ArrayProtocol.filter(_:)();
  aBlock[0] = v22;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    (*(v17 + 16))(v51, v52, a4);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 134218242;
      *(v25 + 4) = Array.count.getter();

      *(v25 + 12) = 2080;
      v27 = v41;
      v28 = v51;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v29 = CameraSourceFrameMetadata.timeDescription.getter();
      v31 = v30;
      (*(v42 + 8))(v27, v43);
      (*(v17 + 8))(v28, a4);
      v32 = sub_1000E0FE0(v29, v31, aBlock);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "Bypassed anchor establishment: filtered %ld to 0 tracks @ %s", v25, 0x16u);
      sub_100006B44(v26);
    }

    else
    {

      (*(v17 + 8))(v51, a4);
    }
  }

  else
  {
    v51 = *(v53 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
    v33 = swift_allocObject();
    swift_weakInit();
    (*(v17 + 16))(v21, v52, a4);
    v34 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = a3;
    *(v35 + 3) = a4;
    v36 = v54;
    *(v35 + 4) = v44;
    *(v35 + 5) = v36;
    *(v35 + 6) = v33;
    *(v35 + 7) = v22;
    (*(v17 + 32))(&v35[v34], v21, a4);
    aBlock[4] = sub_100092674;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C2410;
    v37 = _Block_copy(aBlock);

    v38 = v45;
    static DispatchQoS.unspecified.getter();
    v60 = &_swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010);
    v39 = v47;
    v40 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v49 + 8))(v39, v40);
    (*(v46 + 8))(v38, v48);
  }
}

BOOL sub_100082000()
{
  v0 = type metadata accessor for CVDetection();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CVTrackProviding.latestDetection.getter();
  CVDetection.timestamp.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  CameraSourceFrame.timestamp.getter();
  return v5 == v6;
}

uint64_t sub_100082130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000821D4(a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void sub_1000821D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v438 = a6;
  v493 = a5;
  v432 = a2;
  v490 = a1;
  v9 = sub_1000033A8(&qword_1001D8130);
  __chkstk_darwin(v9 - 8);
  v447 = &v404 - v10;
  v443 = type metadata accessor for ARCameraSource.AnchorInformation(0);
  v477 = *(v443 - 8);
  v11 = __chkstk_darwin(v443);
  v425 = &v404 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v441 = &v404 - v14;
  __chkstk_darwin(v13);
  v423 = &v404 - v15;
  v459 = type metadata accessor for Corners();
  v486 = *(v459 - 8);
  __chkstk_darwin(v459);
  v457 = &v404 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000033A8(&qword_1001D8138);
  __chkstk_darwin(v17 - 8);
  v488 = &v404 - v18;
  v19 = sub_1000033A8(&qword_1001D8128);
  v20 = __chkstk_darwin(v19 - 8);
  v424 = &v404 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v431 = &v404 - v23;
  v24 = __chkstk_darwin(v22);
  v436 = &v404 - v25;
  v26 = __chkstk_darwin(v24);
  v419 = &v404 - v27;
  v28 = __chkstk_darwin(v26);
  v450 = &v404 - v29;
  __chkstk_darwin(v28);
  v472 = &v404 - v30;
  v475 = type metadata accessor for UUID();
  v454 = *(v475 - 8);
  v31 = __chkstk_darwin(v475);
  v442 = &v404 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v460 = &v404 - v34;
  v35 = __chkstk_darwin(v33);
  v430 = &v404 - v36;
  v37 = __chkstk_darwin(v35);
  v428 = &v404 - v38;
  __chkstk_darwin(v37);
  v494 = &v404 - v39;
  v480 = type metadata accessor for CVDetection();
  v485 = *(v480 - 8);
  __chkstk_darwin(v480);
  v479 = &v404 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v484 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v463 = *(v484 - 8);
  v41 = __chkstk_darwin(v484);
  v440 = (v404.i64 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __chkstk_darwin(v41);
  v421 = (&v404 - v44);
  v45 = __chkstk_darwin(v43);
  v422 = &v404 - v46;
  v47 = __chkstk_darwin(v45);
  v444 = &v404 - v48;
  v49 = __chkstk_darwin(v47);
  v435 = &v404 - v50;
  v51 = __chkstk_darwin(v49);
  v427 = &v404 - v52;
  v53 = __chkstk_darwin(v51);
  v465 = &v404 - v54;
  __chkstk_darwin(v53);
  v482 = &v404 - v55;
  v492 = type metadata accessor for RaycastAccuracy(0);
  v478 = *(v492 - 8);
  v56 = __chkstk_darwin(v492);
  v418 = &v404 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v417 = &v404 - v59;
  v60 = __chkstk_darwin(v58);
  v466 = (v404.i64 - v61);
  v487 = *(a3 - 8);
  v62 = __chkstk_darwin(v60);
  v426 = &v404 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v469 = &v404 - v65;
  v407 = v66;
  __chkstk_darwin(v64);
  v470 = &v404 - v67;
  v68 = type metadata accessor for ARCamera.TrackingState();
  v69 = __chkstk_darwin(v68 - 8);
  v429 = &v404 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v476 = &v404 - v72;
  v73 = __chkstk_darwin(v71);
  v474 = (&v404 - v74);
  v433 = a4;
  v437 = *(a4 - 8);
  v75 = __chkstk_darwin(v73);
  v413 = &v404 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v75);
  v481.i64[0] = &v404 - v78;
  v79 = __chkstk_darwin(v77);
  v489.i64[0] = &v404 - v80;
  v81 = __chkstk_darwin(v79);
  v495.i64[0] = &v404 - v82;
  __chkstk_darwin(v81);
  v84 = &v404 - v83;
  v85 = type metadata accessor for CameraSourceFrameMetadata();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v88 = &v404 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchPredicate();
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v92 = (v404.i64 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = *(v6 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v92 = v93;
  v94 = *(v90 + 104);
  v499 = enum case for DispatchPredicate.onQueue(_:);
  v498 = v90 + 104;
  v497 = v94;
  v94(v92);
  v473 = v93;
  LOBYTE(v93) = _dispatchPreconditionTest(_:)();
  v95 = *(v90 + 8);
  v500 = v92;
  v502 = v89;
  v501 = v90 + 8;
  v496 = v95;
  v95(v92, v89);
  if ((v93 & 1) == 0)
  {
    goto LABEL_136;
  }

  v503 = v6;
  v96 = sub_100097550(&_swiftEmptyArrayStorage);
  v97 = sub_100097630(&_swiftEmptyArrayStorage);
  v506 = v96;
  v507 = v97;
  v508 = &_swiftEmptyArrayStorage;
  v98 = v432;
  v99 = v433;
  dispatch thunk of CameraSourceFrame.metadata.getter();
  v483 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
  v100 = *(v86 + 8);
  v415 = v88;
  v416 = v85;
  v420 = v86 + 8;
  v414 = v100;
  v100(v88, v85);
  v101 = v437 + 16;
  v102 = *(v437 + 16);
  v102(v84, v98, v99);
  sub_10005BBC4(0, &qword_1001D7430);
  p_name = &stru_1001CFFF8.name;
  v446 = swift_dynamicCast();
  v411 = v101;
  v410 = v102;
  v491 = a3;
  if (v446)
  {
    v104 = *&v504[0];
    v102(v495.i64[0], v98, v99);
    v105 = v489.i64[0];
    v102(v489.i64[0], v98, v99);
    v467 = v104;
    v106 = v104;

    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      LODWORD(v471) = v108;
      v464 = v106;
      v110 = v109;
      v481.i64[0] = swift_slowAlloc();
      v505 = v481.i64[0];
      *v110 = 134219010;
      *(v110 + 4) = Array.count.getter();

      *(v110 + 12) = 2080;
      v111 = v415;
      v468 = v107;
      v112 = v495.i64[0];
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v113 = CameraSourceFrameMetadata.timeDescription.getter();
      v115 = v114;
      v116 = v416;
      v117 = v414;
      v414(v111, v416);
      v118 = *(v437 + 8);
      v118(v112, v99);
      v119 = sub_1000E0FE0(v113, v115, &v505);
      v120 = v116;

      *(v110 + 14) = v119;
      *(v110 + 22) = 2080;
      v121 = v464;
      v122 = [v464 camera];
      [v122 transform];
      v495 = v123;
      v462 = v124;
      v461 = v125;
      v458 = v126;

      v504[0] = v495;
      v504[1] = v462;
      v504[2] = v461;
      v504[3] = v458;
      type metadata accessor for simd_float4x4(0);
      v127 = String.init<A>(describing:)();
      v129 = sub_1000E0FE0(v127, v128, &v505);

      *(v110 + 24) = v129;
      *(v110 + 32) = 2048;
      v130 = v489.i64[0];
      dispatch thunk of CameraSourceFrame.metadata.getter();
      CameraSourceFrameMetadata.timestamp.getter();
      v132 = v131;
      v117(v111, v120);
      p_name = &stru_1001CFFF8.name;
      v409 = v118;
      v118(v130, v99);
      *(v110 + 34) = v132;
      *(v110 + 42) = 1024;
      v133 = [v121 camera];
      v134 = v474;
      ARCamera.trackingState.getter();

      v135 = type metadata accessor for ARCamera.TrackingState.Reason();
      v136 = v476;
      (*(*(v135 - 8) + 56))(v476, 2, 2, v135);
      LOBYTE(v133) = static ARCamera.TrackingState.== infix(_:_:)();
      sub_100092314(v136, &type metadata accessor for ARCamera.TrackingState);
      sub_100092314(v134, &type metadata accessor for ARCamera.TrackingState);

      *(v110 + 44) = v133 & 1;
      v137 = v468;
      _os_log_impl(&_mh_execute_header, v468, v471, "Establishing %ld tracks @ %s, frame.camera.transform: %s @ %f, frame.camera.trackingState == .normal: %{BOOL}d", v110, 0x30u);
      swift_arrayDestroy();
    }

    else
    {

      v121 = v106;
      v152 = *(v437 + 8);
      v152(v105, v99);
      v409 = v152;
      v152(v495.i64[0], v99);
    }

    v150 = v470;
    v151 = v472;
    v153 = v500;
    v154 = v473;
    *v500 = v473;
    v155 = v502;
    v497(v153, v499, v502);
    v156 = v154;
    LOBYTE(v154) = _dispatchPreconditionTest(_:)();
    v157 = v496(v153, v155);
    if ((v154 & 1) == 0)
    {
      goto LABEL_139;
    }

    __chkstk_darwin(v157);
    v158 = v433;
    *(&v404 - 6) = v491;
    *(&v404 - 5) = v158;
    v159 = v438;
    *(&v404 - 4) = v493;
    *(&v404 - 3) = v159;
    *(&v404 - 2) = v432;

    v160 = sub_100071970(sub_100092534);

    if (v160)
    {
      v161 = [v121 camera];
      [v160 transform];
      [v161 setTransform:?];
    }

    v162 = [v121 camera];
    [v162 transform];
    v456 = v163;
    v481 = v164;
    v489 = v165;
    v495 = v166;

    v167 = vmulq_f32(v456, 0);
    v456 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v456, 0, v481), 0, v489), 0, v495);
    v168 = vmlaq_f32(v167, 0, v481);
    v448 = vmlaq_f32(vaddq_f32(v489, v168), 0, v495);
    __asm { FMOV            V2.4S, #-1.0 }

    v449 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v167, _Q2, v481), 0, v489), 0, v495);
    __asm { FMOV            V0.4S, #-5.0 }

    v445 = vaddq_f32(v495, vmlaq_f32(v168, _Q0, v489));
    v148 = v490;
    v149 = v469;
    a3 = v491;
  }

  else
  {
    v138 = v481.i64[0];
    v102(v481.i64[0], v98, v99);
    v139 = v490;

    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v495.i64[0] = swift_slowAlloc();
      *&v504[0] = v495.i64[0];
      *v142 = 134218242;
      *(v142 + 4) = Array.count.getter();

      *(v142 + 12) = 2080;
      v143 = v415;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v144 = CameraSourceFrameMetadata.timeDescription.getter();
      v146 = v145;
      v414(v143, v416);
      v409 = *(v437 + 8);
      v409(v138, v99);
      v147 = sub_1000E0FE0(v144, v146, v504);
      p_name = (&stru_1001CFFF8 + 8);
      v148 = v490;

      *(v142 + 14) = v147;
      _os_log_impl(&_mh_execute_header, v140, v141, "Establishing %ld tracks @ %s", v142, 0x16u);
      sub_100006B44(v495.i64[0]);

      v467 = 0;
      v456 = 0u;
      v448 = 0u;
      v449 = 0u;
      v445 = 0u;
      v149 = v469;
      v150 = v470;
      v151 = v472;
    }

    else
    {

      v409 = *(v437 + 8);
      v409(v138, v99);
      v467 = 0;
      v456 = 0u;
      v448 = 0u;
      v449 = 0u;
      v445 = 0u;
      v149 = v469;
      v151 = v472;
      v148 = v139;
      v150 = v470;
    }
  }

  if (!Array.endIndex.getter())
  {
LABEL_119:
    v386 = v506;
    v387 = v507;
    v388 = v508;
    if (sub_1000914FC(v506))
    {
      v389 = v413;
      v390 = v433;
      v410(v413, v432, v433);

      v391 = Logger.logObject.getter();
      v392 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v391, v392))
      {

        v409(v389, v390);
        return;
      }

      v393 = swift_slowAlloc();
      v503 = swift_slowAlloc();
      *&v504[0] = v503;
      *v393 = 134218498;
      *(v393 + 4) = Array.count.getter();

      *(v393 + 12) = 2080;
      v394 = sub_10007E124(v386, v387, v388);
      v396 = v395;

      v397 = sub_1000E0FE0(v394, v396, v504);

      *(v393 + 14) = v397;
      *(v393 + 22) = 2080;
      v398 = v415;
      v399 = v413;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v400 = CameraSourceFrameMetadata.timeDescription.getter();
      v402 = v401;
      v414(v398, v416);
      v409(v399, v390);
      v403 = sub_1000E0FE0(v400, v402, v504);

      *(v393 + 24) = v403;
      _os_log_impl(&_mh_execute_header, v391, v392, "Anchor operations for %ld tracks: %s @ %s", v393, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v176 = 0;
  v489.i64[0] = v487 + 16;
  *&v461 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_logger;
  v481.i64[0] = v487 + 32;
  v476 = (v485 + 1);
  *&v458 = v486 + 1;
  v486 = v478 + 7;
  v478 = (v463 + 56);
  v471 = (v463 + 48);
  v474 = (v454 + 8);
  v485 = (v487 + 8);
  v439 = (v477 + 48);
  v434 = v454 + 16;
  *&v175 = 136315138;
  v412 = v175;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v179 = v148 + ((*(v487 + 80) + 32) & ~*(v487 + 80)) + *(v487 + 72) * v176;
    v180 = *(v487 + 16);
    v180(v150, v179, a3);
    v177 = (v176 + 1);
    if (__OFADD__(v176, 1))
    {
      goto LABEL_125;
    }

LABEL_21:
    (*v481.i64[0])(v149, v150, a3);
    if (v483)
    {
      v181 = v176;
      v182 = v150;
      v477 = v181;
      v495.i64[0] = v177;
      v183 = *(sub_1000033A8(&qword_1001D8148) + 48);
      v184 = v479;
      v185 = v149;
      v186 = v151;
      dispatch thunk of CVTrackProviding.latestDetection.getter();
      v187 = v482;
      CVDetection.corners.getter();
      (*v476)(v184, v480);
      *(v187 + v183) = 0;
      v188 = v484;
      swift_storeEnumTagMultiPayload();
      v189 = v185;
      dispatch thunk of CVTrackIdentifying.id.getter();
      sub_10009237C(v187, v151, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v190 = *v478;
      (*v478)(v151, 0, 1, v188);
      v191 = v500;
      v192 = v473;
      *v500 = v473;
      v193 = v502;
      v497(v191, v499, v502);
      v194 = v192;
      LOBYTE(v192) = _dispatchPreconditionTest(_:)();
      v496(v191, v193);
      if ((v192 & 1) == 0)
      {
        goto LABEL_126;
      }

      v195 = *(v503 + 48);
      if ((*v471)(v151, 1, v188) == 1)
      {

        sub_10001370C(v151, &qword_1001D8128);
        v196 = v494;
        v197 = sub_100095B4C(v494);
        if (v198)
        {
          v199 = v197;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v504[0] = v195;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1000C2630();
            v195 = *&v504[0];
          }

          v201 = *(v454 + 8);
          v202 = v475;
          v201(v195[6] + *(v454 + 72) * v199, v475);
          v203 = v450;
          sub_1000923E4(v195[7] + *(v463 + 72) * v199, v450, type metadata accessor for ARCameraSource.Tracker.TrackState);
          sub_1000C08B0(v199, v195);
          v201(v494, v202);
          v204 = 0;
          v205 = v484;
          v150 = v470;
          p_name = (&stru_1001CFFF8 + 8);
        }

        else
        {
          (*v474)(v196, v475);
          v204 = 1;
          v203 = v450;
          p_name = (&stru_1001CFFF8 + 8);
          v205 = v484;
          v150 = v182;
        }

        v190(v203, v204, 1, v205);
        sub_10001370C(v203, &qword_1001D8128);
        v151 = v472;
        v189 = v469;
        v177 = v495.i64[0];
      }

      else
      {
        sub_1000923E4(v151, v465, type metadata accessor for ARCameraSource.Tracker.TrackState);

        v229 = swift_isUniquelyReferenced_nonNull_native();
        *&v504[0] = v195;
        v230 = sub_100095B4C(v494);
        v232 = v195[2];
        v233 = (v231 & 1) == 0;
        _VF = __OFADD__(v232, v233);
        v234 = v232 + v233;
        p_name = (&stru_1001CFFF8 + 8);
        if (_VF)
        {
          goto LABEL_128;
        }

        v235 = v231;
        if (v195[3] >= v234)
        {
          if ((v229 & 1) == 0)
          {
            v385 = v230;
            sub_1000C2630();
            v230 = v385;
          }
        }

        else
        {
          sub_1000BE6FC(v234, v229);
          v230 = sub_100095B4C(v494);
          if ((v235 & 1) != (v236 & 1))
          {
            goto LABEL_142;
          }
        }

        v177 = v495.i64[0];
        v195 = *&v504[0];
        if (v235)
        {
          sub_100092DE0(v465, *(*&v504[0] + 56) + *(v463 + 72) * v230, type metadata accessor for ARCameraSource.Tracker.TrackState);
          (*v474)(v494, v475);
          v150 = v182;
        }

        else
        {
          *(*&v504[0] + 8 * (v230 >> 6) + 64) |= 1 << v230;
          v240 = v454;
          v241 = v230;
          v242 = v494;
          v243 = v475;
          (*(v454 + 16))(v195[6] + *(v454 + 72) * v230, v494, v475);
          sub_1000923E4(v465, v195[7] + *(v463 + 72) * v241, type metadata accessor for ARCameraSource.Tracker.TrackState);
          (*(v240 + 8))(v242, v243);
          v244 = v195[2];
          _VF = __OFADD__(v244, 1);
          v245 = v244 + 1;
          if (_VF)
          {
            goto LABEL_130;
          }

          v195[2] = v245;
          v150 = v470;
          v151 = v186;
          p_name = (&stru_1001CFFF8 + 8);
        }
      }

      v176 = v477;
      v246 = v500;
      *v500 = v194;
      v247 = v502;
      v497(v246, v499, v502);
      v248 = _dispatchPreconditionTest(_:)();
      v496(v246, v247);
      if ((v248 & 1) == 0)
      {
        goto LABEL_127;
      }

      *(v503 + 48) = v195;

      v249 = v488;
      (*v486)(v488, 1, 1, v492);
      sub_10007DD78(6, v249);
      sub_10001370C(v249, &qword_1001D8138);
      sub_100092314(v482, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v149 = v189;
      v250 = v189;
      a3 = v491;
      (*v485)(v250, v491);
      goto LABEL_53;
    }

    if (!v467)
    {
      v237 = Logger.logObject.getter();
      v238 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        *v239 = 0;
        _os_log_impl(&_mh_execute_header, v237, v238, "Unexpected frame type: not ARFrame and not high-res still", v239, 2u);
      }

      (*v485)(v149, a3);
      goto LABEL_53;
    }

    v206 = v467;
    v207 = v479;
    dispatch thunk of CVTrackProviding.latestDetection.getter();
    v208 = v457;
    CVDetection.corners.getter();
    v462.i64[0] = *v476;
    (v462.i64[0])(v207, v480);
    Corners.center.getter();
    v210 = v209;
    v212 = v211;
    v455.i64[0] = *v458;
    (v455.i64[0])(v208, v459);
    v477 = v206;
    v213 = [v206 raycastQueryFromPoint:2 allowingTarget:2 alignment:{v210, v212}];
    Strong = swift_unknownObjectWeakLoadStrong();
    v495.i64[0] = v177;
    v468 = v213;
    if (!Strong)
    {
      v251 = v149;
      goto LABEL_61;
    }

    v215 = Strong;
    v216 = [Strong raycast:v213];

    sub_10005BBC4(0, &qword_1001D8140);
    v217 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v217 >> 62))
    {
      if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      goto LABEL_60;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_32:
      if ((v217 & 0xC000000000000001) != 0)
      {
        v220 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v218 = v447;
        v219 = v503;
      }

      else
      {
        v218 = v447;
        v219 = v503;
        if (!*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_131;
        }

        v220 = *(v217 + 32);
      }

      [v220 worldTransform];
      v453 = v221;
      v452 = v222;
      v451 = v223;
      v462 = v224;
      v225 = v466;
      v226 = v492;
      swift_storeEnumTagMultiPayload();
      v227 = v225;
      v228 = v488;
      sub_10009237C(v227, v488, type metadata accessor for RaycastAccuracy);
      v464 = *v486;
      v464(v228, 0, 1, v226);
      sub_10007DD78(0, v228);

      sub_10001370C(v228, &qword_1001D8138);
LABEL_68:
      v281 = v149;
      dispatch thunk of CVTrackIdentifying.id.getter();
      v282 = v500;
      v283 = v473;
      *v500 = v473;
      v284 = v502;
      v497(v282, v499, v502);
      v285 = v283;
      LOBYTE(v283) = _dispatchPreconditionTest(_:)();
      v496(v282, v284);
      v151 = v472;
      if ((v283 & 1) == 0)
      {
        goto LABEL_129;
      }

      v286 = *(v219 + 48);
      v287 = v460;
      if (*(v286 + 16))
      {

        v288 = sub_100095B4C(v287);
        if (v289)
        {
          v290 = v422;
          sub_10009237C(*(v286 + 56) + *(v463 + 72) * v288, v422, type metadata accessor for ARCameraSource.Tracker.TrackState);
          v468 = *v474;
          (v468)(v287, v475);

          v291 = v421;
          sub_10009237C(v290, v421, type metadata accessor for ARCameraSource.Tracker.TrackState);
          v149 = v281;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100092314(v290, type metadata accessor for ARCameraSource.Tracker.TrackState);
            sub_100092314(v291, type metadata accessor for ARCameraSource.Tracker.TrackState);
            v218 = v447;
            v151 = v472;
            goto LABEL_75;
          }

          v408 = *v291;
          v362 = sub_1000033A8(&qword_1001D8100);
          sub_1000923E4(v291 + *(v362 + 48), v423, type metadata accessor for ARCameraSource.AnchorInformation);
          sub_10009237C(v466, v417, type metadata accessor for RaycastAccuracy);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          a3 = v491;
          if (EnumCaseMultiPayload > 1)
          {
            p_name = (&stru_1001CFFF8 + 8);
            if (EnumCaseMultiPayload == 2)
            {
              (v455.i64[0])(v417, v459);
              v406.i32[0] = 1;
              v374 = 1;
              v364 = 1;
            }

            else
            {
              v406.i32[0] = 0;
              v364 = 0;
LABEL_103:
              v374 = 1;
            }
          }

          else
          {
            p_name = (&stru_1001CFFF8 + 8);
            if (!EnumCaseMultiPayload)
            {
              v364 = 0;
              v406.i32[0] = 1;
              goto LABEL_103;
            }

            (v455.i64[0])(v417, v459);
            v406.i32[0] = 0;
            v374 = 0;
            v364 = 0;
          }

          sub_10009237C(v423, v418, type metadata accessor for RaycastAccuracy);
          v375 = swift_getEnumCaseMultiPayload();
          if (v375 > 1)
          {
            if (v375 == 2)
            {
              (v455.i64[0])(v418, v459);
            }

            else if (v406.i8[0])
            {
LABEL_117:

              sub_100092314(v423, type metadata accessor for ARCameraSource.AnchorInformation);
              sub_100092314(v422, type metadata accessor for ARCameraSource.Tracker.TrackState);
              sub_100092314(v466, type metadata accessor for RaycastAccuracy);
              (*v485)(v149, a3);
              v151 = v472;
              v148 = v490;
              v150 = v470;
              goto LABEL_18;
            }
          }

          else if (v375)
          {
            (v455.i64[0])(v418, v459);
            if (v374)
            {
              goto LABEL_117;
            }
          }

          else if (v364)
          {
            goto LABEL_117;
          }

          v376 = v408;
          [v408 transform];
          v510 = __invert_f4(v509);
          v404 = v510.columns[0];
          v405 = v510.columns[1];
          v406 = v510.columns[2];
          v455 = v510.columns[3];
          v377 = v488;
          sub_10009237C(v466, v488, type metadata accessor for RaycastAccuracy);
          v464(v377, 0, 1, v492);
          sub_10007DD78(3, v377);
          sub_10001370C(v377, &qword_1001D8138);
          v378 = v508;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v378 = sub_1000950B8(0, *(v378 + 2) + 1, 1, v378);
          }

          v379 = v422;
          v381 = *(v378 + 2);
          v380 = *(v378 + 3);
          if (v381 >= v380 >> 1)
          {
            v378 = sub_1000950B8((v380 > 1), v381 + 1, 1, v378);
          }

          v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v462.f32[0]), v405, *v462.f32, 1), v406, v462, 2), v455, v462, 3);
          v383 = vmulq_f32(v382, v382);
          *(v378 + 2) = v381 + 1;
          *&v378[4 * v381 + 32] = sqrtf(v383.f32[2] + vaddv_f32(*v383.f32));
          v508 = v378;
          v384 = swift_unknownObjectWeakLoadStrong();
          [v384 removeAnchor:v376];

          sub_100092314(v423, type metadata accessor for ARCameraSource.AnchorInformation);
          sub_100092314(v379, type metadata accessor for ARCameraSource.Tracker.TrackState);
          v218 = v447;
          v151 = v472;
LABEL_76:
          v292 = objc_allocWithZone(ARAnchor);
          v293 = [v292 initWithTransform:{*v453.i64, *v452.i64, *v451.i64, *v462.i64}];
          v294 = v477;
          sub_100086134(v149, v293, v294, v466, a3, v493, v218);
          if ((*v439)(v218, 1, v443) == 1)
          {
            sub_10001370C(v218, &qword_1001D8130);
            v295 = Logger.logObject.getter();
            v296 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v295, v296))
            {
              v297 = swift_slowAlloc();
              *v297 = 0;
              _os_log_impl(&_mh_execute_header, v295, v296, "Could not get anchor points for corners", v297, 2u);
            }

            sub_100092314(v466, type metadata accessor for RaycastAccuracy);
            (*v485)(v149, a3);
          }

          else
          {

            v298 = v218;
            v299 = v425;
            sub_1000923E4(v298, v425, type metadata accessor for ARCameraSource.AnchorInformation);
            v300 = v299;
            v301 = v441;
            sub_1000923E4(v300, v441, type metadata accessor for ARCameraSource.AnchorInformation);
            v302 = *(sub_1000033A8(&qword_1001D8100) + 48);
            v303 = v440;
            *v440 = v293;
            sub_10009237C(v301, v303 + v302, type metadata accessor for ARCameraSource.AnchorInformation);
            v304 = v484;
            swift_storeEnumTagMultiPayload();
            v305 = v293;
            dispatch thunk of CVTrackIdentifying.id.getter();
            v306 = v424;
            sub_10009237C(v303, v424, type metadata accessor for ARCameraSource.Tracker.TrackState);
            (*v478)(v306, 0, 1, v304);
            v307 = v500;
            *v500 = v285;
            v308 = v502;
            v497(v307, v499, v502);
            v309 = v285;
            v310 = _dispatchPreconditionTest(_:)();
            v496(v307, v308);
            if ((v310 & 1) == 0)
            {
              goto LABEL_134;
            }

            v311 = *(v503 + 48);
            *&v504[0] = v311;
            if ((*v471)(v306, 1, v304) == 1)
            {

              sub_10001370C(v306, &qword_1001D8128);
              v312 = v436;
              v313 = v442;
              sub_1000BD898(v442, v436);
              sub_10001370C(v312, &qword_1001D8128);
              (v468)(v313, v475);
              v314 = *&v504[0];
            }

            else
            {
              v349 = v435;
              sub_1000923E4(v306, v435, type metadata accessor for ARCameraSource.Tracker.TrackState);

              v350 = swift_isUniquelyReferenced_nonNull_native();
              v505 = v311;
              v351 = v442;
              sub_1000C0F74(v349, v442, v350);
              (v468)(v351, v475);
              v314 = v505;
              *&v504[0] = v505;
            }

            v352 = v472;
            v353 = v469;
            v354 = v500;
            *v500 = v309;
            v355 = v502;
            v497(v354, v499, v502);
            v356 = _dispatchPreconditionTest(_:)();
            v496(v354, v355);
            if ((v356 & 1) == 0)
            {
              goto LABEL_135;
            }

            *(v503 + 48) = v314;

            v357 = v441;
            v358 = v488;
            sub_10009237C(v441, v488, type metadata accessor for RaycastAccuracy);
            v464(v358, 0, 1, v492);
            sub_10007DD78(2, v358);
            v359 = v358;
            v151 = v352;
            sub_10001370C(v359, &qword_1001D8138);
            v360 = swift_unknownObjectWeakLoadStrong();
            [v360 addAnchor:v305];

            sub_100092314(v440, type metadata accessor for ARCameraSource.Tracker.TrackState);
            sub_100092314(v357, type metadata accessor for ARCameraSource.AnchorInformation);
            sub_100092314(v466, type metadata accessor for RaycastAccuracy);
            v149 = v353;
            v361 = v353;
            a3 = v491;
            (*v485)(v361, v491);
          }

          v148 = v490;
          v150 = v470;
LABEL_17:
          p_name = &stru_1001CFFF8.name;
          v177 = v495.i64[0];
          goto LABEL_18;
        }
      }

      v468 = *v474;
      (v468)(v287, v475);
      v149 = v281;
LABEL_75:
      a3 = v491;
      goto LABEL_76;
    }

LABEL_60:
    v251 = v149;
LABEL_61:
    v253 = v488;
    v464 = *v486;
    v464(v488, 1, 1, v492);
    sub_10007DD78(1, v253);
    sub_10001370C(v253, &qword_1001D8138);
    v254 = v477;
    v255 = [v477 p_name[189]];
    [v255 imageResolution];

    v256 = [v254 p_name[189]];
    [v256 imageResolution];

    CGPoint.scale(to:)();
    if (!v446)
    {
      goto LABEL_141;
    }

    v257 = [v254 p_name[189]];
    v258 = ARCamera.unprojectPoint(_:ontoPlane:orientation:viewportSize:)();
    v260 = v259;
    v262 = v261;

    v149 = v251;
    if (v262)
    {
      v263 = *(sub_1000033A8(&qword_1001D8148) + 48);
      v264 = v479;
      a3 = v491;
      dispatch thunk of CVTrackProviding.latestDetection.getter();
      v265 = v444;
      CVDetection.corners.getter();
      (v462.i64[0])(v264, v480);
      *(v265 + v263) = 2;
      v266 = v484;
      swift_storeEnumTagMultiPayload();
      v267 = v430;
      dispatch thunk of CVTrackIdentifying.id.getter();
      v268 = v431;
      sub_10009237C(v265, v431, type metadata accessor for ARCameraSource.Tracker.TrackState);
      (*v478)(v268, 0, 1, v266);
      v269 = v500;
      v270 = v473;
      *v500 = v473;
      v271 = v502;
      v497(v269, v499, v502);
      v272 = v270;
      LOBYTE(v270) = _dispatchPreconditionTest(_:)();
      v496(v269, v271);
      if ((v270 & 1) == 0)
      {
        goto LABEL_132;
      }

      v462.i64[0] = v272;
      v273 = v503;
      v274 = *(v503 + 48);
      *&v504[0] = v274;
      if ((*v471)(v268, 1, v266) == 1)
      {

        sub_10001370C(v268, &qword_1001D8128);
        v275 = v436;
        sub_1000BD898(v267, v436);
        sub_10001370C(v275, &qword_1001D8128);
        (*v474)(v267, v475);
        v276 = *&v504[0];
      }

      else
      {
        v329 = v435;
        sub_1000923E4(v268, v435, type metadata accessor for ARCameraSource.Tracker.TrackState);

        v330 = swift_isUniquelyReferenced_nonNull_native();
        v505 = v274;
        sub_1000C0F74(v329, v267, v330);
        (*v474)(v267, v475);
        v276 = v505;
        *&v504[0] = v505;
      }

      v331 = v469;
      v332 = v500;
      *v500 = v462.i64[0];
      v333 = v502;
      v497(v332, v499, v502);
      v334 = _dispatchPreconditionTest(_:)();
      v496(v332, v333);
      if ((v334 & 1) == 0)
      {
        goto LABEL_133;
      }

      *(v273 + 48) = v276;

      v335 = v488;
      v464(v488, 1, 1, v492);
      sub_10007DD78(6, v335);
      sub_10001370C(v335, &qword_1001D8138);
      v336 = v426;
      v180(v426, v331, a3);
      v337 = Logger.logObject.getter();
      v338 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v337, v338))
      {

        v348 = *v485;
        (*v485)(v336, a3);
        sub_100092314(v444, type metadata accessor for ARCameraSource.Tracker.TrackState);
        v348(v331, a3);
        v149 = v331;
        v150 = v470;
        v151 = v472;
        p_name = (&stru_1001CFFF8 + 8);
        v177 = v495.i64[0];
LABEL_53:
        v148 = v490;
        goto LABEL_18;
      }

      v339 = swift_slowAlloc();
      v340 = v336;
      v341 = swift_slowAlloc();
      *&v504[0] = v341;
      *v339 = v412;
      v342 = CVTrackProviding.shortLoggingDescription.getter();
      v344 = v343;
      v345 = *v485;
      (*v485)(v340, a3);
      v346 = v342;
      v149 = v469;
      v347 = sub_1000E0FE0(v346, v344, v504);

      *(v339 + 4) = v347;
      _os_log_impl(&_mh_execute_header, v337, v338, "Storing track %s as unanchored due to unprojectPoint failure", v339, 0xCu);
      sub_100006B44(v341);

      sub_100092314(v444, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v345(v149, a3);
      v148 = v490;
      v150 = v470;
      v151 = v472;
      goto LABEL_17;
    }

    v277 = [v254 p_name[189]];
    v278 = v429;
    ARCamera.trackingState.getter();

    v279 = type metadata accessor for ARCamera.TrackingState.Reason();
    if ((*(*(v279 - 8) + 48))(v278, 2, v279) == 2)
    {

      v280.i64[1] = __PAIR64__(1.0, v260);
      v280.i64[0] = v258;
      v462 = v280;
      sub_100092314(v278, &type metadata accessor for ARCamera.TrackingState);
      *v466 = 0x4014000000000000;
      swift_storeEnumTagMultiPayload();
      v453 = v456;
      v452 = v448;
      v451 = v449;
      v219 = v503;
      v218 = v447;
      v177 = v495.i64[0];
      goto LABEL_68;
    }

    sub_100092314(v278, &type metadata accessor for ARCamera.TrackingState);
    v315 = *(sub_1000033A8(&qword_1001D8148) + 48);
    v316 = v479;
    v317 = v491;
    dispatch thunk of CVTrackProviding.latestDetection.getter();
    v318 = v427;
    CVDetection.corners.getter();
    (v462.i64[0])(v316, v480);
    *(v318 + v315) = 1;
    v319 = v484;
    swift_storeEnumTagMultiPayload();
    dispatch thunk of CVTrackIdentifying.id.getter();
    v320 = v419;
    sub_10009237C(v318, v419, type metadata accessor for ARCameraSource.Tracker.TrackState);
    (*v478)(v320, 0, 1, v319);
    v321 = v500;
    v322 = v473;
    *v500 = v473;
    v323 = v502;
    v497(v321, v499, v502);
    v324 = v322;
    LOBYTE(v322) = _dispatchPreconditionTest(_:)();
    v496(v321, v323);
    if ((v322 & 1) == 0)
    {
      goto LABEL_137;
    }

    v325 = *(v503 + 48);
    *&v504[0] = v325;
    if ((*v471)(v320, 1, v319) == 1)
    {

      sub_10001370C(v320, &qword_1001D8128);
      v326 = v436;
      v327 = v428;
      sub_1000BD898(v428, v436);
      sub_10001370C(v326, &qword_1001D8128);
      (*v474)(v327, v475);
      v328 = *&v504[0];
    }

    else
    {
      v365 = v435;
      sub_1000923E4(v320, v435, type metadata accessor for ARCameraSource.Tracker.TrackState);

      v366 = swift_isUniquelyReferenced_nonNull_native();
      v505 = v325;
      v367 = v428;
      sub_1000C0F74(v365, v428, v366);
      (*v474)(v367, v475);
      v328 = v505;
      *&v504[0] = v505;
    }

    v368 = v469;
    v151 = v472;
    v150 = v470;
    v369 = v500;
    *v500 = v324;
    v370 = v502;
    v497(v369, v499, v502);
    v371 = _dispatchPreconditionTest(_:)();
    v496(v369, v370);
    if ((v371 & 1) == 0)
    {
      goto LABEL_138;
    }

    *(v503 + 48) = v328;

    v372 = v488;
    v464(v488, 1, 1, v492);
    sub_10007DD78(6, v372);

    sub_10001370C(v372, &qword_1001D8138);
    sub_100092314(v427, type metadata accessor for ARCameraSource.Tracker.TrackState);
    v149 = v368;
    v373 = v368;
    a3 = v317;
    (*v485)(v373, v317);
    v177 = v495.i64[0];
    v148 = v490;
    p_name = (&stru_1001CFFF8 + 8);
LABEL_18:
    ++v176;
    if (v177 == Array.endIndex.getter())
    {
      goto LABEL_119;
    }
  }

  v252 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v407 != 8)
  {
    goto LABEL_140;
  }

  *&v504[0] = v252;
  v180 = *v489.i64[0];
  (*v489.i64[0])(v150, v504, a3);
  swift_unknownObjectRelease();
  v177 = (v176 + 1);
  if (!__OFADD__(v176, 1))
  {
    goto LABEL_21;
  }

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
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100086134@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58.i64[0] = a6;
  v57.i64[0] = a5;
  v56.i64[0] = a1;
  v59.i64[0] = type metadata accessor for Corners();
  v12 = *(v59.i64[0] - 8);
  __chkstk_darwin(v59.i64[0]);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for CVDetection();
  *&v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RaycastAccuracy(0);
  __chkstk_darwin(v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009237C(a4, v19, type metadata accessor for RaycastAccuracy);
  if (swift_getEnumCaseMultiPayload() - 1 < 2)
  {
    (*(v12 + 8))(v19, v59.i64[0]);
    sub_10009237C(a4, a7, type metadata accessor for RaycastAccuracy);
    v20 = type metadata accessor for ARCameraSource.AnchorInformation(0);
    v21 = v20;
    *(a7 + *(v20 + 20)) = 0;
    return (*(*(v20 - 8) + 56))(a7, 0, 1, v21);
  }

  v61 = a4;
  v52 = a7;
  v55 = v7;
  v22 = [a3 camera];
  [v22 imageResolution];

  v60 = a3;
  v23 = [a3 camera];
  [v23 imageResolution];

  dispatch thunk of CVTrackProviding.latestDetection.getter();
  CVDetection.corners.getter();
  (*(v53 + 8))(v16, v54);
  v24 = Corners.allPointsClockwise.getter();
  (*(v12 + 8))(v14, v59.i64[0]);
  v26 = *(v24 + 16);
  v51 = v24;
  if (v26)
  {
    v54 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_logger;
    v27 = v24 + 40;
    v28 = &_swiftEmptyArrayStorage;
    p_name = (&stru_1001CFFF8 + 8);
    *&v25 = 134218240;
    v53 = v25;
    do
    {
      CGPoint.scale(to:)();
      v32 = v31;
      v34 = v33;
      v35 = [v60 camera];
      [a2 p_name[216]];
      v36 = ARCamera.unprojectPoint(_:ontoPlane:orientation:viewportSize:)();
      v38 = v37;
      v40 = v39;

      if (v40)
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = v53;
          *(v43 + 4) = v32;
          *(v43 + 12) = 2048;
          *(v43 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v41, v42, "Could not get corner anchor point - (%f, %f).", v43, 0x16u);
        }
      }

      else
      {
        [a2 p_name[216]];
        v63 = __invert_f4(v62);
        v56 = v63.columns[0];
        v57 = v63.columns[1];
        v58 = v63.columns[3];
        v59 = v63.columns[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1000951BC(0, *(v28 + 2) + 1, 1, v28);
        }

        v45 = *(v28 + 2);
        v44 = *(v28 + 3);
        if (v45 >= v44 >> 1)
        {
          v28 = sub_1000951BC((v44 > 1), v45 + 1, 1, v28);
        }

        v46.i64[0] = v36;
        v46.i64[1] = v38;
        v47 = vaddq_f32(v58, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_f32(vdupq_n_s32(v36), v56), v57, v36, 1), v59, v46, 2));
        v47.i32[3] = 0;
        *(v28 + 2) = v45 + 1;
        *&v28[16 * v45 + 32] = v47;
      }

      v30 = v61;
      v27 += 16;
      --v26;
      p_name = &stru_1001CFFF8.name;
    }

    while (v26);
  }

  else
  {
    v28 = &_swiftEmptyArrayStorage;
    v30 = v61;
  }

  if (*(v28 + 2) == 4)
  {
    v48 = v30;
    a7 = v52;
    sub_10009237C(v48, v52, type metadata accessor for RaycastAccuracy);
    v20 = type metadata accessor for ARCameraSource.AnchorInformation(0);
    v21 = v20;
    *(a7 + *(v20 + 20)) = v28;
    return (*(*(v20 - 8) + 56))(a7, 0, 1, v21);
  }

  v50 = type metadata accessor for ARCameraSource.AnchorInformation(0);
  (*(*(v50 - 8) + 56))(v52, 1, 1, v50);
}

uint64_t sub_100086738(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10009252C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C23C0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void sub_100086A50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&qword_1001D8128);
  __chkstk_darwin(v3 - 8);
  v84 = &v76 - v4;
  v102 = type metadata accessor for DispatchPredicate();
  v5 = *(v102 - 8);
  __chkstk_darwin(v102);
  v7 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for UUID();
  v78 = *(v97 - 8);
  v8 = __chkstk_darwin(v97);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v76 - v11;
  v91 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v85 = *(v91 - 8);
  v13 = __chkstk_darwin(v91);
  v83 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v82 = &v76 - v16;
  __chkstk_darwin(v15);
  v90 = &v76 - v17;
  v18 = type metadata accessor for CVTrackSnapshot();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v103 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  v88 = v10;
  v105 = &_swiftEmptyArrayStorage;
  v77 = a2;
  v23 = *(a2 + 16);
  sub_100087508(v23);
  v76 = v23;
  if (v23)
  {
    v101 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue;
    v25 = *(v19 + 16);
    v24 = v19 + 16;
    v26 = v77 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v92 = *(v24 + 56);
    v99 = (v5 + 8);
    v100 = (v5 + 104);
    v27 = v25;
    v96 = (v78 + 8);
    v80 = (v85 + 56);
    v98 = enum case for DispatchPredicate.onQueue(_:);
    v95 = v24;
    v93 = (v24 - 8);
    v28 = v76;
    v81 = v12;
    v87 = v22;
    v94 = v18;
    v79 = v25;
    v25(v103, v26, v18);
    while (1)
    {
      CVTrackSnapshot.id.getter();
      v30 = v100;
      v31 = *(v22 + v101);
      *v7 = v31;
      v32 = *v30;
      v33 = v22;
      v34 = v102;
      (*v30)(v7, v98, v102);
      v35 = v31;
      v36 = _dispatchPreconditionTest(_:)();
      v37 = *v99;
      (*v99)(v7, v34);
      if ((v36 & 1) == 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v64 = _CocoaArrayWrapper.endIndex.getter();
        if (!v64)
        {
          goto LABEL_36;
        }

LABEL_26:
        if (v64 >= 1)
        {

          v65 = 0;
          do
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v66 = *(v37 + 8 * v65 + 32);
            }

            v67 = v66;
            ++v65;
            v68 = swift_unknownObjectWeakLoadStrong();
            [v68 removeAnchor:v67];
          }

          while (v64 != v65);
          goto LABEL_37;
        }

        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      v38 = *(v33 + 48);
      v22 = v33;
      if (!*(v38 + 16))
      {
        goto LABEL_5;
      }

      v39 = sub_100095B4C(v12);
      if ((v40 & 1) == 0)
      {
        break;
      }

      v41 = *(v38 + 56);
      v86 = *(v85 + 72);
      v42 = v82;
      sub_10009237C(v41 + v86 * v39, v82, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v89 = *v96;
      v89(v12, v97);

      v43 = v90;
      sub_1000923E4(v42, v90, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v44 = v83;
      sub_10009237C(v43, v83, type metadata accessor for ARCameraSource.Tracker.TrackState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100092314(v44, type metadata accessor for ARCameraSource.Tracker.TrackState);
      }

      else
      {
        v45 = *v44;
        v46 = sub_1000033A8(&qword_1001D8100);
        sub_100092314(v44 + *(v46 + 48), type metadata accessor for ARCameraSource.AnchorInformation);
        v47 = v45;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v48 = v88;
      CVTrackSnapshot.id.getter();
      v49 = v87;
      v50 = v102;
      v51 = *(v87 + v101);
      *v7 = v51;
      v32(v7, v98, v50);
      v52 = v51;
      LOBYTE(v51) = _dispatchPreconditionTest(_:)();
      (v37)(v7, v50);
      v53 = v84;
      if ((v51 & 1) == 0)
      {
        goto LABEL_33;
      }

      v54 = *(v49 + 48);

      v55 = sub_100095B4C(v48);
      if (v56)
      {
        v57 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v54;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000C2630();
          v54 = v104;
        }

        v59 = v89;
        v89((*(v54 + 48) + *(v78 + 72) * v57), v97);
        sub_1000923E4(*(v54 + 56) + v57 * v86, v53, type metadata accessor for ARCameraSource.Tracker.TrackState);
        sub_1000C08B0(v57, v54);
        v59(v88, v97);
        v60 = 0;
        v49 = v87;
      }

      else
      {
        v89(v48, v97);
        v60 = 1;
      }

      v12 = v81;
      (*v80)(v53, v60, 1, v91);
      sub_10001370C(v53, &qword_1001D8128);
      v61 = v102;
      v62 = *(v49 + v101);
      *v7 = v62;
      v32(v7, v98, v61);
      v63 = v62;
      LOBYTE(v62) = _dispatchPreconditionTest(_:)();
      (v37)(v7, v61);
      sub_100092314(v90, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v29 = v94;
      (*v93)(v103, v94);
      if ((v62 & 1) == 0)
      {
        goto LABEL_34;
      }

      *(v49 + 48) = v54;

      v22 = v49;
      v27 = v79;
LABEL_6:
      v26 += v92;
      if (!--v28)
      {
        goto LABEL_24;
      }

      v27(v103, v26, v29);
    }

LABEL_5:
    (*v96)(v12, v97);
    v29 = v94;
    (*v93)(v103, v94);
    goto LABEL_6;
  }

LABEL_24:
  v37 = v105;
  v7 = (v105 >> 62);
  if (v105 >> 62)
  {
    goto LABEL_35;
  }

  v64 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v64)
  {
    goto LABEL_26;
  }

LABEL_36:

LABEL_37:
  swift_bridgeObjectRetain_n();

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134218496;
    if (v7)
    {
      v72 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v72 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v71 + 4) = v72;

    *(v71 + 12) = 2048;
    if (v7)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v73 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v74 = v76 - v73;
    if (__OFSUB__(v76, v73))
    {
      goto LABEL_49;
    }

    v75 = v76;
    *(v71 + 14) = v74;

    *(v71 + 22) = 2048;
    *(v71 + 24) = v75;

    _os_log_impl(&_mh_execute_header, v69, v70, "Removed %ld anchored tracks and %ld unanchored tracks from %ld total tracks", v71, 0x20u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_100087508(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_1000875A4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_100092508;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2370;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_1000878B8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100087918(a2);
  }

  return result;
}

void sub_100087918(void (*a1)(uint64_t, uint64_t))
{
  v302 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v297 = *(v302 - 8);
  v5 = __chkstk_darwin(v302);
  v7 = &v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v296 = &v246 - v8;
  v9 = sub_1000033A8(&qword_1001D8090);
  v10 = __chkstk_darwin(v9 - 8);
  v299 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v298 = (&v246 - v12);
  v261 = type metadata accessor for Corners();
  v255 = *(v261 - 8);
  v13 = __chkstk_darwin(v261);
  v260 = &v246 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v276 = &v246 - v15;
  v288 = type metadata accessor for CVTrackedDetection.Prediction();
  v263 = *(v288 - 8);
  v16 = __chkstk_darwin(v288);
  v259 = &v246 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v258 = &v246 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v246 - v21;
  __chkstk_darwin(v20);
  v264 = &v246 - v23;
  v283 = sub_1000033A8(&qword_1001D8098);
  v282 = *(v283 - 8);
  __chkstk_darwin(v283);
  v281 = &v246 - v24;
  v280 = sub_1000033A8(&unk_1001D80A0);
  __chkstk_darwin(v280);
  v279 = (&v246 - v25);
  v278 = type metadata accessor for ARCameraSource.AnchorInformation(0);
  __chkstk_darwin(v278);
  v277 = &v246 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v306 = type metadata accessor for UUID();
  v301 = *(v306 - 8);
  v27 = __chkstk_darwin(v306);
  v265 = &v246 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v303 = &v246 - v30;
  v31 = __chkstk_darwin(v29);
  v289 = (&v246 - v32);
  v33 = __chkstk_darwin(v31);
  v254 = &v246 - v34;
  v35 = __chkstk_darwin(v33);
  v300 = &v246 - v36;
  __chkstk_darwin(v35);
  v275 = &v246 - v37;
  v38 = type metadata accessor for ARCamera.TrackingState();
  v39 = __chkstk_darwin(v38 - 8);
  v41 = &v246 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v246 - v42;
  p_name = type metadata accessor for DispatchPredicate();
  v45 = *(p_name - 8);
  __chkstk_darwin(p_name);
  v47 = (&v246 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v292 = v1;
  v48 = *(v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v47 = v48;
  v49 = *(v45 + 104);
  v285 = enum case for DispatchPredicate.onQueue(_:);
  v267 = v45 + 104;
  v284 = v49;
  v49(v47);
  v50 = v48;
  v51 = _dispatchPreconditionTest(_:)();
  v52 = *(v45 + 8);
  v268 = v47;
  v270 = p_name;
  v269 = v45 + 8;
  v266 = v52;
  v52(v47, p_name);
  if ((v51 & 1) == 0)
  {
    goto LABEL_107;
  }

  *&v304 = v7;
  p_name = &stru_1001CFFF8.name;
  v53 = [a1 camera];
  ARCamera.trackingState.getter();

  v54 = type metadata accessor for ARCamera.TrackingState.Reason();
  (*(*(v54 - 8) + 56))(v41, 2, 2, v54);
  LOBYTE(v53) = static ARCamera.TrackingState.== infix(_:_:)();
  sub_100092314(v41, &type metadata accessor for ARCamera.TrackingState);
  sub_100092314(v43, &type metadata accessor for ARCamera.TrackingState);
  if (v53)
  {
    v55 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_lastAnchoredTracksUpdateFrameTime;
    v56 = v292;
    v57 = *(v292 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_lastAnchoredTracksUpdateFrameTime);
    [a1 timestamp];
    if (v57 >= v58)
    {
      v159 = a1;

      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        *v162 = 134218240;
        v163 = *(v56 + v55);
        *(v162 + 4) = v163;
        *(v162 + 12) = 2048;
        [v159 timestamp];
        *(v162 + 14) = v163 - v164;
        _os_log_impl(&_mh_execute_header, v160, v161, "Received frame @ %f that is %f older than the last frame processed.", v162, 0x16u);
      }

      return;
    }

    [a1 timestamp];
    *(v56 + v55) = v59;
    v60 = [a1 anchors];
    sub_10005BBC4(0, &qword_1001D7D58);
    v286 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = v268;
    *v268 = v50;
    v62 = v270;
    v284(v61, v285, v270);
    v63 = v50;
    LOBYTE(v60) = _dispatchPreconditionTest(_:)();
    v266(v61, v62);
    if ((v60 & 1) == 0)
    {
      goto LABEL_112;
    }

    v64 = *(v56 + 80);
    v295 = *(v56 + 48);

    v65 = [a1 camera];
    [v65 imageResolution];
    v67 = v66;

    v68 = [a1 camera];
    [v68 imageResolution];
    v70 = v69;

    *&v305 = v64;
    if ((v64 - 1) >= 2)
    {
      v2 = v67;
    }

    else
    {
      v2 = v70;
    }

    if ((v64 - 1) >= 2)
    {
      v3 = v70;
    }

    else
    {
      v3 = v67;
    }

    if (v3 <= 0.0 || v2 <= 0.0)
    {
      goto LABEL_119;
    }

    v273 = sub_100089CC4(v295);
    sub_100090580(&unk_1001D9550, &type metadata accessor for UUID);
    v290 = Dictionary.init(minimumCapacity:)();
    v313 = &_swiftEmptyDictionarySingleton;
    v71 = v268;
    *v268 = v63;
    v72 = v270;
    v284(v71, v285, v270);
    p_name = v63;
    v73 = _dispatchPreconditionTest(_:)();
    v74 = v266;
    v266(v71, v72);
    if ((v73 & 1) == 0)
    {
      goto LABEL_113;
    }

    v253 = v22;

    v75 = dispatch thunk of CircularBuffer.count.getter();

    sub_1000033A8(&qword_1001D80B0);
    Dictionary.reserveCapacity(_:)(v75);
    v247 = p_name;
    *v71 = p_name;
    v284(v71, v285, v72);
    LOBYTE(v75) = _dispatchPreconditionTest(_:)();
    v74(v71, v72);
    if (v75)
    {

      sub_100071594(v76, &v313);

      p_name = v286;
      if (!(v286 >> 62))
      {
        v77 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
        v78 = v306;
        v256 = a1;
        v79 = v273;
        if (v77)
        {
          v252 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_logger;
          v294 = (p_name & 0xC000000000000001);
          v293 = v292 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration;
          swift_beginAccess();
          v80 = 0;
          v272 = p_name & 0xFFFFFFFFFFFFFF8;
          v271 = p_name + 32;
          v291 = (v301 + 8);
          v257 = (v301 + 32);
          v249 = (v263 + 16);
          v248 = (v263 + 8);
          *&v81 = 136315138;
          v246 = v81;
          v274 = v77;
          v251 = v2;
          v250 = v3;
          do
          {
            if (v294)
            {
              v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v80 >= *(v272 + 16))
              {
                goto LABEL_106;
              }

              v91 = *(v271 + 8 * v80);
            }

            v92 = v91;
            v93 = __OFADD__(v80++, 1);
            if (v93)
            {
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
              goto LABEL_114;
            }

            if (*(v293 + *(type metadata accessor for CameraControllerConfiguration(0) + 36)) == 1)
            {
              v94 = [v92 name];
              if (v94)
              {
                v95 = v94;
                v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v98 = v97;

                if (v96 == 0x636E41656D617266 && v98 == 0xEB00000000726F68)
                {

                  v101 = v291;
LABEL_44:
                  v131 = [v92 identifier];
                  v132 = v275;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v133 = v313;
                  if (v313[2] && (v134 = sub_100095B4C(v132), (v135 & 1) != 0))
                  {
                    v136 = v133[7] + 16 * v134;
                    v137 = *(v136 + 8);
                    v138 = *v101;
                    v307.i64[0] = *v136;
                    v138(v132, v78);
                    v139 = v268;
                    v140 = v247;
                    *v268 = v247;
                    v141 = v270;
                    v284(v139, v285, v270);
                    v142 = v140;
                    LOBYTE(v140) = _dispatchPreconditionTest(_:)();
                    v266(v139, v141);
                    if ((v140 & 1) == 0)
                    {
                      goto LABEL_111;
                    }

                    v310 = v92;
                    v311 = v137;
                    sub_10009244C();

                    default argument 1 of TimestampDataBuffer.insert(_:replacementFunction:)();
                    TimestampDataBuffer.insert(_:replacementFunction:)();

                    v143 = v312;
                    if (!v312)
                    {

                      goto LABEL_58;
                    }

                    v144 = [v312 identifier];
                    v145 = v300;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v146 = [v92 identifier];
                    v147 = v254;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    sub_100090580(&qword_1001D80D0, &type metadata accessor for UUID);
                    LOBYTE(v146) = dispatch thunk of static Equatable.== infix(_:_:)();
                    v138(v147, v78);
                    v138(v145, v78);
                    if (v146)
                    {

                      p_name = v286;
LABEL_58:
                      v77 = v274;
                      continue;
                    }

                    Strong = swift_unknownObjectWeakLoadStrong();
                    p_name = v286;
                    v77 = v274;
                    if (!Strong)
                    {

LABEL_51:
                      continue;
                    }

                    v158 = Strong;
                    [Strong removeAnchor:v143];
                  }

                  else
                  {
                    a1 = *v101;
                    (*v101)(v132, v78);
                    v92 = v92;
                    v143 = Logger.logObject.getter();
                    v148 = static os_log_type_t.error.getter();

                    if (!os_log_type_enabled(v143, v148))
                    {
                      goto LABEL_51;
                    }

                    v82 = swift_slowAlloc();
                    v83 = swift_slowAlloc();
                    v312 = v83;
                    *v82 = v246;
                    v84 = [v92 identifier];
                    v85 = v300;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    sub_100090580(&qword_1001D80C0, &type metadata accessor for UUID);
                    v86 = dispatch thunk of CustomStringConvertible.description.getter();
                    v88 = v87;
                    v89 = v85;
                    p_name = v286;
                    a1(v89, v306);
                    v90 = sub_1000E0FE0(v86, v88, &v312);
                    v79 = v273;

                    *(v82 + 4) = v90;
                    _os_log_impl(&_mh_execute_header, v143, v148, "Received invalid updated for %s", v82, 0xCu);
                    sub_100006B44(v83);
                    v77 = v274;

                    v78 = v306;
                  }

LABEL_20:

                  continue;
                }

                v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v101 = v291;
                if (v100)
                {
                  goto LABEL_44;
                }
              }
            }

            if (!*(v79 + 16))
            {
              goto LABEL_20;
            }

            v102 = sub_100095ED8(v92);
            if ((v103 & 1) == 0)
            {
              goto LABEL_20;
            }

            v287 = v80;
            v104 = *(v79 + 56) + *(v282 + 72) * v102;
            v105 = v281;
            sub_1000138BC(v104, v281, &qword_1001D8098);
            v106 = *(v283 + 48);
            v107 = v280;
            v108 = *(v280 + 48);
            v109 = v78;
            v110 = *v257;
            a1 = v279;
            (*v257)(v279, v105, v109);
            v111 = v105 + v106;
            v112 = v277;
            sub_1000923E4(v111, a1 + v108, type metadata accessor for ARCameraSource.AnchorInformation);
            v113 = *(v107 + 48);
            v114 = v289;
            v110(v289, a1, v109);
            sub_1000923E4(a1 + v113, v112, type metadata accessor for ARCameraSource.AnchorInformation);
            v115 = *(v112 + *(v278 + 20));
            if (v115)
            {
              v116 = v115[1].i64[0];
              a1 = v256;
              v80 = v287;
              if (v116)
              {
                v312 = &_swiftEmptyArrayStorage;
                sub_100059610(0, v116, 0);
                v117 = v312;
                v118 = v115 + 2;
                p_name = &stru_1001CFFF8.name;
                do
                {
                  v307 = *v118;
                  [v92 transform];
                  v307 = vaddq_f32(v122, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, v307.f32[0]), v120, *v307.f32, 1), v121, v307, 2));
                  v123 = [a1 camera];
                  [v123 projectPoint:v305 orientation:*v307.i64 viewportSize:{v2, v3}];

                  CGPoint.normalize(by:)();
                  v312 = v117;
                  isa = v117[2].isa;
                  v126 = v117[3].isa;
                  if (isa >= v126 >> 1)
                  {
                    v129 = v124;
                    v130 = v125;
                    sub_100059610((v126 > 1), isa + 1, 1);
                    v125 = v130;
                    v124 = v129;
                    v117 = v312;
                  }

                  v117[2].isa = (isa + 1);
                  v128 = &v117[2 * isa];
                  v128[4].isa = v124;
                  v128[5].isa = v125;
                  ++v118;
                  --v116;
                }

                while (v116);
                v114 = v289;
              }

              else
              {
                v117 = &_swiftEmptyArrayStorage;
                p_name = &stru_1001CFFF8.name;
              }

              v149 = [a1 camera];
              [v92 transform];
              [v149 projectPoint:v305 orientation:v150 viewportSize:{v2, v3}];

              CGPoint.normalize(by:)();
              v151 = v117[2].isa;
              v78 = v306;
              if (!v151)
              {
                goto LABEL_108;
              }

              if (v151 == 1)
              {
                goto LABEL_109;
              }

              if (v151 < 4)
              {
                goto LABEL_110;
              }

              *v307.f32 = v117[7];
              v262 = v117[9].isa;

              v2 = v251;
              v3 = v250;
              Corners.init(topLeft:topRight:bottomLeft:bottomRight:)();
              [a1 timestamp];
              v152 = v264;
              CVTrackedDetection.Prediction.init(center:corners:timestamp:)();
              v153 = v253;
              v154 = v288;
              (*v249)(v253, v152, v288);
              v155 = v290;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v312 = v155;
              sub_1000C115C(v153, v114, isUniquelyReferenced_nonNull_native);

              (*v248)(v152, v154);
              (*v291)(v114, v78);
              v290 = v312;
              sub_100092314(v112, type metadata accessor for ARCameraSource.AnchorInformation);
              p_name = v286;
              v79 = v273;
              goto LABEL_58;
            }

            (*v291)(v114, v109);

            sub_100092314(v112, type metadata accessor for ARCameraSource.AnchorInformation);
            v78 = v109;
            p_name = v286;
            v79 = v273;
            v77 = v274;
            v80 = v287;
          }

          while (v80 != v77);
        }

        v165 = 0;
        v166 = *(v295 + 64);
        v291 = (v295 + 64);
        v167 = 1 << *(v295 + 32);
        v168 = -1;
        if (v167 < 64)
        {
          v168 = ~(-1 << v167);
        }

        v169 = v168 & v166;
        v170 = (v167 + 63) >> 6;
        v294 = (v301 + 16);
        v307.i64[0] = v301 + 32;
        *&v305 = v301 + 8;
        v289 = (v255 + 32);
        v287 = (v255 + 16);
        v286 = v263 + 16;
        v281 = v263 + 32;
        v283 = v263 + 8;
        v282 = v255 + 8;
        v280 = v263 + 40;
        v171 = v299;
        a1 = v298;
        v293 = v170;
        while (1)
        {
          v172 = v165;
          if (!v169)
          {
            if (v170 <= v165 + 1)
            {
              v174 = v165 + 1;
            }

            else
            {
              v174 = v170;
            }

            v165 = v174 - 1;
            while (1)
            {
              v173 = v172 + 1;
              if (__OFADD__(v172, 1))
              {
                break;
              }

              if (v173 >= v170)
              {
                v190 = sub_1000033A8(&qword_1001D80B8);
                (*(*(v190 - 8) + 56))(v171, 1, 1, v190);
                v169 = 0;
                goto LABEL_79;
              }

              v169 = v291[v173];
              ++v172;
              if (v169)
              {
                goto LABEL_78;
              }
            }

            __break(1u);
            goto LABEL_105;
          }

          v173 = v165;
LABEL_78:
          v175 = __clz(__rbit64(v169));
          v169 &= v169 - 1;
          v176 = v175 | (v173 << 6);
          v177 = v295;
          v178 = v301;
          v179 = v300;
          v180 = v306;
          (*(v301 + 16))(v300, *(v295 + 48) + *(v301 + 72) * v176, v306);
          v181 = v296;
          sub_10009237C(*(v177 + 56) + *(v297 + 72) * v176, v296, type metadata accessor for ARCameraSource.Tracker.TrackState);
          v182 = sub_1000033A8(&qword_1001D80B8);
          v183 = *(v182 + 48);
          v184 = *(v178 + 32);
          v171 = v299;
          v184(v299, v179, v180);
          sub_1000923E4(v181, v171 + v183, type metadata accessor for ARCameraSource.Tracker.TrackState);
          (*(*(v182 - 8) + 56))(v171, 0, 1, v182);
          v165 = v173;
          a1 = v298;
          v170 = v293;
LABEL_79:
          sub_10002091C(v171, a1, &qword_1001D8090);
          v185 = sub_1000033A8(&qword_1001D80B8);
          v186 = (*(*(v185 - 8) + 48))(a1, 1, v185);
          v187 = v304;
          if (v186 == 1)
          {
            break;
          }

          v188 = *(v185 + 48);
          v189 = v303;
          p_name = v306;
          (*v307.i64[0])(v303, a1, v306);
          sub_1000923E4(a1 + v188, v187, type metadata accessor for ARCameraSource.Tracker.TrackState);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v191 = v260;
            v192 = v187;
            v193 = v261;
            (*v289)(v260, v192, v261);
            Corners.center.getter();
            (*v287)(v276, v191, v193);
            [v256 timestamp];
            v194 = v258;
            CVTrackedDetection.Prediction.init(center:corners:timestamp:)();
            v195 = v189;
            v196 = *v294;
            (*v294)(v265, v195, p_name);
            (*v286)(v259, v194, v288);
            v197 = v290;
            v198 = swift_isUniquelyReferenced_nonNull_native();
            v312 = v197;
            v199 = sub_100095B4C(v265);
            v201 = v197[2].isa;
            v202 = (v200 & 1) == 0;
            v93 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v93)
            {
              __break(1u);
              goto LABEL_117;
            }

            v204 = v200;
            if (v197[3].isa >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v217 = v199;
                sub_1000C2B6C();
                v199 = v217;
              }
            }

            else
            {
              sub_1000BEEB0(v203, v198);
              v199 = sub_100095B4C(v265);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_122;
              }
            }

            v290 = v312;
            if (v204)
            {
              v206 = v263;
              v207 = v288;
              (*(v263 + 40))(v312[7].isa + *(v263 + 72) * v199, v259, v288);
              p_name = *v305;
              (*v305)(v265, v306);
              (*(v206 + 8))(v258, v207);
              (*v282)(v260, v261);
              (p_name)(v303, v306);
            }

            else
            {
              v312[(v199 >> 6) + 8].isa = (v312[(v199 >> 6) + 8].isa | (1 << v199));
              v208 = v199;
              v209 = v265;
              v196(v290[6].isa + *(v301 + 72) * v199, v265, v306);
              v210 = v263;
              v211 = v290[7].isa + *(v263 + 72) * v208;
              v212 = v288;
              (*(v263 + 32))(v211, v259, v288);
              v213 = *(v301 + 8);
              v214 = v209;
              p_name = v305;
              v213(v214, v306);
              (*(v210 + 8))(v258, v212);
              (*v282)(v260, v261);
              v213(v303, v306);
              v215 = v290[2].isa;
              v93 = __OFADD__(v215, 1);
              v216 = (v215 + 1);
              if (v93)
              {
                goto LABEL_118;
              }

              v290[2].isa = v216;
            }
          }

          else
          {
            (*v305)(v189, p_name);
            sub_100092314(v187, type metadata accessor for ARCameraSource.Tracker.TrackState);
          }
        }

        v218 = v292;
        sub_10007EC5C(v290);
        v219 = v218 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration;
        swift_beginAccess();
        if (*(v219 + *(type metadata accessor for CameraControllerConfiguration(0) + 36)) != 1)
        {
LABEL_102:

          return;
        }

        v220 = v256;
        v221 = Logger.logObject.getter();
        v222 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          *v223 = 134217984;
          [v220 timestamp];
          *(v223 + 4) = v224;
          _os_log_impl(&_mh_execute_header, v221, v222, "Updating tracks for frame @ %f", v223, 0xCu);
        }

        v225 = [v220 camera];
        [v225 transform];
        v307 = v226;
        v306 = v227;
        v305 = v228;
        v304 = v229;

        v230 = objc_allocWithZone(ARAnchor);
        v231 = String._bridgeToObjectiveC()();
        v232 = [v230 initWithName:v231 transform:{*v307.i64, *&v306, *&v305, *&v304}];

        [v220 timestamp];
        v234 = v233;
        v235 = swift_unknownObjectWeakLoadStrong();
        [v235 addAnchor:v232];

        v236 = v268;
        v237 = v247;
        *v268 = v247;
        v238 = v270;
        v284(v236, v285, v270);
        v239 = v237;
        LOBYTE(v237) = _dispatchPreconditionTest(_:)();
        v266(v236, v238);
        if (v237)
        {
          v308 = v232;
          v309 = v234;

          TimestampDataBuffer.append(_:)();

          v240 = v310;
          if (v310)
          {
            v241 = swift_unknownObjectWeakLoadStrong();
            if (v241)
            {
              v242 = v241;
              v240 = v240;
              [v242 removeAnchor:v240];
            }
          }

          goto LABEL_102;
        }

LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        v243 = Logger.logObject.getter();
        v244 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v243, v244))
        {
          v245 = swift_slowAlloc();
          *v245 = 0;
          _os_log_impl(&_mh_execute_header, v243, v244, "ViewportSize not positive!", v245, 2u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_122:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_114:
      __break(1u);
    }

    v77 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_17;
  }
}

uint64_t sub_100089CC4(uint64_t a1)
{
  v77 = sub_1000033A8(&unk_1001D80A0);
  v74 = *(v77 - 8);
  v2 = __chkstk_darwin(v77);
  v75 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v76 = &v71 - v4;
  v5 = type metadata accessor for ARCameraSource.AnchorInformation(0);
  __chkstk_darwin(v5 - 8);
  v85 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v81 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v87 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v80 = &v71 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v78 = &v71 - v16;
  v17 = sub_1000033A8(&qword_1001D8090);
  v18 = __chkstk_darwin(v17 - 8);
  v86 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v71 - v20;
  v95 = &_swiftEmptyDictionarySingleton;
  v21 = *(a1 + 16);
  sub_1000033A8(&qword_1001D80F8);
  Dictionary.reserveCapacity(_:)(v21);
  v22 = *(a1 + 64);
  v73 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v72 = (v23 + 63) >> 6;
  v91 = (v12 + 16);
  v93 = (v12 + 32);
  v79 = v12;
  v84 = (v12 + 8);
  v82 = a1;

  v26 = 0;
  v92 = v11;
  v89 = v15;
  v90 = v7;
  while (v25)
  {
    v27 = v26;
LABEL_14:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = v31 | (v27 << 6);
    v33 = v82;
    v34 = v78;
    v35 = v79;
    (*(v79 + 16))(v78, *(v82 + 48) + *(v79 + 72) * v32, v11);
    v36 = v11;
    v37 = v80;
    sub_10009237C(*(v33 + 56) + *(v81 + 72) * v32, v80, type metadata accessor for ARCameraSource.Tracker.TrackState);
    v38 = sub_1000033A8(&qword_1001D80B8);
    v39 = *(v38 + 48);
    v40 = *(v35 + 32);
    v41 = v86;
    v40(v86, v34, v36);
    v42 = v41;
    sub_1000923E4(v37, &v41[v39], type metadata accessor for ARCameraSource.Tracker.TrackState);
    (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    v29 = v27;
    v30 = v88;
    v15 = v89;
LABEL_15:
    sub_10002091C(v42, v30, &qword_1001D8090);
    v43 = sub_1000033A8(&qword_1001D80B8);
    v44 = (*(*(v43 - 8) + 48))(v30, 1, v43);
    v45 = v87;
    if (v44 == 1)
    {

      v69 = sub_10008A5E8(v95);

      return v69;
    }

    v46 = *(v43 + 48);
    v11 = v92;
    (*v93)(v15, v30, v92);
    sub_1000923E4(v30 + v46, v45, type metadata accessor for ARCameraSource.Tracker.TrackState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v84)(v15, v11);
      sub_100092314(v45, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v26 = v29;
    }

    else
    {
      v83 = v29;
      v47 = *v45;
      v48 = sub_1000033A8(&qword_1001D8100);
      v49 = v85;
      sub_1000923E4(v45 + *(v48 + 48), v85, type metadata accessor for ARCameraSource.AnchorInformation);
      v50 = v76;
      v51 = *(v77 + 48);
      (*v91)(v76, v15, v11);
      sub_10009237C(v49, &v50[v51], type metadata accessor for ARCameraSource.AnchorInformation);
      v52 = v50;
      v53 = v75;
      sub_10002091C(v52, v75, &unk_1001D80A0);
      v54 = v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v54;
      v57 = sub_100095ED8(v47);
      v58 = v54[2];
      v59 = (v56 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_30;
      }

      v61 = v56;
      if (v54[3] >= v60)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000C2954();
        }
      }

      else
      {
        sub_1000BEB9C(v60, isUniquelyReferenced_nonNull_native);
        v62 = sub_100095ED8(v47);
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_32;
        }

        v57 = v62;
      }

      v11 = v92;
      v64 = v94;
      if (v61)
      {
        sub_1000924A0(v53, v94[7] + *(v74 + 72) * v57, &unk_1001D80A0);

        sub_100092314(v85, type metadata accessor for ARCameraSource.AnchorInformation);
        v15 = v89;
        (*v84)(v89, v11);
        v95 = v64;
        v26 = v83;
      }

      else
      {
        v94[(v57 >> 6) + 8] |= 1 << v57;
        *(v64[6] + 8 * v57) = v47;
        sub_10002091C(v53, v64[7] + *(v74 + 72) * v57, &unk_1001D80A0);
        sub_100092314(v85, type metadata accessor for ARCameraSource.AnchorInformation);
        v15 = v89;
        (*v84)(v89, v11);
        v65 = v64[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_31;
        }

        v64[2] = v67;
        v95 = v64;
        v26 = v83;
      }
    }
  }

  if (v72 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v72;
  }

  v29 = v28 - 1;
  v30 = v88;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v72)
    {
      v68 = sub_1000033A8(&qword_1001D80B8);
      v42 = v86;
      (*(*(v68 - 8) + 56))(v86, 1, 1, v68);
      v25 = 0;
      goto LABEL_15;
    }

    v25 = *(v73 + 8 * v27);
    ++v26;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_10005BBC4(0, &qword_1001D7D58);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10008A5E8(uint64_t a1)
{
  v2 = sub_1000033A8(&unk_1001D80A0);
  v98 = *(v2 - 8);
  v99 = v2;
  __chkstk_darwin(v2);
  v97 = &v82 - v3;
  v96 = sub_1000033A8(&qword_1001D8108);
  __chkstk_darwin(v96);
  v95 = &v82 - v4;
  v94 = sub_1000033A8(&qword_1001D8110);
  __chkstk_darwin(v94);
  v93 = &v82 - v5;
  v92 = sub_1000033A8(&qword_1001D8098);
  v89 = *(v92 - 8);
  v6 = __chkstk_darwin(v92);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v82 - v10;
  __chkstk_darwin(v9);
  v86 = (&v82 - v12);
  v91 = sub_1000033A8(&qword_1001D8118);
  v13 = __chkstk_darwin(v91);
  v88 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v87 = &v82 - v16;
  v17 = __chkstk_darwin(v15);
  v84 = (&v82 - v18);
  __chkstk_darwin(v17);
  v83 = &v82 - v19;
  if (*(a1 + 16))
  {
    sub_1000033A8(&qword_1001D8120);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = &_swiftEmptyDictionarySingleton;
  }

  v21 = sub_10005BBC4(0, &qword_1001D7D58);
  v22 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(a1 + 64);
  v90 = a1;
  v26 = v23 + 63;
  if (v21 == &type metadata for String)
  {
    v56 = v26 >> 6;
    v88 = v20 + 8;

    v57 = 0;
    v82 = v11;
    while (v25)
    {
      v61 = v57;
LABEL_33:
      v62 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v63 = v62 | (v61 << 6);
      v64 = *(*(a1 + 48) + 8 * v63);
      v65 = *(a1 + 56) + *(v98 + 72) * v63;
      v66 = v91;
      v67 = v83;
      sub_1000138BC(v65, &v83[*(v91 + 48)], &unk_1001D80A0);
      *v67 = v64;
      v68 = v84;
      sub_10002091C(v67, v84, &qword_1001D8118);
      v69 = *(v96 + 48);
      v70 = *v68;
      sub_10002091C(v68 + *(v66 + 48), v97, &unk_1001D80A0);
      v71 = v64;
      v72 = v95;
      swift_dynamicCast();
      v73 = v93;
      v74 = *(v94 + 48);
      sub_10002091C(&v72[v69], &v93[v74], &qword_1001D8098);
      v75 = &v73[v74];
      v76 = v86;
      sub_10002091C(v75, v86, &qword_1001D8098);
      v77 = v82;
      sub_10002091C(v76, v82, &qword_1001D8098);
      result = sub_100095ED8(v70);
      if (v78)
      {
        v58 = v20[6];
        v59 = *(v58 + 8 * result);
        *(v58 + 8 * result) = v70;
        v60 = result;

        result = sub_1000924A0(v77, v20[7] + *(v89 + 72) * v60, &qword_1001D8098);
      }

      else
      {
        if (v20[2] >= v20[3])
        {
          goto LABEL_41;
        }

        *(v88 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        *(v20[6] + 8 * result) = v70;
        result = sub_10002091C(v77, v20[7] + *(v89 + 72) * result, &qword_1001D8098);
        v79 = v20[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_42;
        }

        v20[2] = v81;
      }

      v57 = v61;
      a1 = v90;
    }

    while (1)
    {
      v61 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v61 >= v56)
      {
LABEL_37:

        return v20;
      }

      v25 = *(v22 + 8 * v61);
      ++v57;
      if (v25)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v27 = (v26 >> 6);
    v28 = (v20 + 8);

    v30 = 0;
    v85 = v8;
    v86 = v20;
    v83 = v27;
    v84 = (a1 + 64);
    while (v25)
    {
LABEL_16:
      v33 = __clz(__rbit64(v25)) | (v30 << 6);
      v34 = *(a1 + 56);
      v35 = *(*(a1 + 48) + 8 * v33);
      v36 = v91;
      v37 = v87;
      sub_1000138BC(v34 + *(v98 + 72) * v33, &v87[*(v91 + 48)], &unk_1001D80A0);
      *v37 = v35;
      v38 = v37;
      v39 = v88;
      sub_10002091C(v38, v88, &qword_1001D8118);
      v40 = *(v36 + 48);
      v41 = *(v96 + 48);
      v42 = *v39;
      sub_10002091C(v39 + v40, v97, &unk_1001D80A0);
      v43 = v35;
      v44 = v95;
      swift_dynamicCast();
      v45 = *(v94 + 48);
      v46 = &v44[v41];
      v47 = v93;
      sub_10002091C(v46, &v93[v45], &qword_1001D8098);
      v48 = v85;
      sub_10002091C(&v47[v45], v85, &qword_1001D8098);
      v20 = v86;
      result = NSObject._rawHashValue(seed:)(v86[5]);
      v49 = -1 << *(v20 + 32);
      v50 = result & ~v49;
      v51 = v50 >> 6;
      if (((-1 << v50) & ~*&v28[8 * (v50 >> 6)]) == 0)
      {
        v52 = 0;
        v53 = (63 - v49) >> 6;
        a1 = v90;
        v22 = v84;
        while (++v51 != v53 || (v52 & 1) == 0)
        {
          v54 = v51 == v53;
          if (v51 == v53)
          {
            v51 = 0;
          }

          v52 |= v54;
          v55 = *&v28[8 * v51];
          if (v55 != -1)
          {
            v31 = __clz(__rbit64(~v55)) + (v51 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v31 = __clz(__rbit64((-1 << v50) & ~*&v28[8 * (v50 >> 6)])) | v50 & 0x7FFFFFFFFFFFFFC0;
      a1 = v90;
      v22 = v84;
LABEL_10:
      v25 &= v25 - 1;
      *&v28[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
      *(v20[6] + 8 * v31) = v42;
      result = sub_10002091C(v48, v20[7] + *(v89 + 72) * v31, &qword_1001D8098);
      ++v20[2];
      v27 = v83;
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v27)
      {
        goto LABEL_37;
      }

      v25 = *(v22 + 8 * v32);
      ++v30;
      if (v25)
      {
        v30 = v32;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10008AE18()
{
  swift_unknownObjectWeakDestroy();
  sub_1000616E4(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100092314(v0 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration, type metadata accessor for CameraControllerConfiguration);
  return v0;
}

uint64_t sub_10008AEE8()
{
  sub_10008AE18();

  return swift_deallocClassInstance();
}

void sub_10008AF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CVTrackSnapshot();
  v9 = sub_100090580(&qword_1001D7FA0, &type metadata accessor for CVTrackSnapshot);

  sub_1000818C0(a1, a2, v8, a3, v9, a4);
}

uint64_t sub_10008AFF8()
{
  v1 = [v0 availableSensors];
  sub_1000033A8(&qword_1001D7FD8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_16:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        if ([v5 providedDataTypes])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  v7 = sub_1000793B8(&_swiftEmptyArrayStorage);

  v8 = sub_10009159C(v7);

  return v8;
}

uint64_t ARFrame.cameraImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 capturedImage];
  DataSize = CVPixelBufferGetDataSize(v3);

  if (DataSize)
  {
    [v1 capturedImage];
    type metadata accessor for CVBuffer(0);
    SendableTransfer.init(wrappedValue:)();
    v5 = enum case for CameraImage.pixelBuffer(_:);
    v6 = type metadata accessor for CameraImage();
    return (*(*(v6 - 8) + 104))(a1, v5, v6);
  }

  else
  {
    v8 = enum case for CameraImage.none(_:);
    v9 = type metadata accessor for CameraImage();
    v10 = *(*(v9 - 8) + 104);

    return v10(a1, v8, v9);
  }
}

uint64_t sub_10008B310()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1001D7420);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for ARFrameAttachment();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001370C(v6, &unk_1001D8060);
    return 0;
  }
}

uint64_t sub_10008B3F4(char a1)
{
  v3 = sub_10008B310();
  if (!v3)
  {
    type metadata accessor for ARFrameAttachment();
    v4 = swift_allocObject();
    *(v4 + 16) = 2;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 1;
    swift_beginAccess();

    objc_setAssociatedObject(v1, &unk_1001D7420, v4, 1);
    swift_endAccess();

    v3 = v4;
  }

  *(v3 + 16) = a1 & 1;
}

uint64_t ARFrame.metadata.getter()
{
  v1 = type metadata accessor for Angle();
  __chkstk_darwin(v1 - 8);
  v2 = [v0 camera];
  [v2 imageResolution];

  v3 = [v0 camera];
  [v3 imageResolution];

  static Angle.degrees(_:)();
  sub_10008B674();
  [v0 timestamp];
  v4 = sub_10008B310();
  if (v4 && (v5 = *(v4 + 16), , v5 != 2) && (v5 & 1) != 0)
  {
    v6 = sub_10008B310();
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [v0 isHighResolution];
    v6 = sub_10008B310();
    if (!v6)
    {
LABEL_8:
      static CGRect.unitRect.getter();
      return CameraSourceFrameMetadata.init(imageResolution:rotationAngle:shouldAttemptDetection:timestamp:isHighResolutionStill:safeArea:)();
    }
  }

  v7 = *(v6 + 56);

  if (v7)
  {
    goto LABEL_8;
  }

  return CameraSourceFrameMetadata.init(imageResolution:rotationAngle:shouldAttemptDetection:timestamp:isHighResolutionStill:safeArea:)();
}

uint64_t sub_10008B674()
{
  v1 = type metadata accessor for ARCamera.TrackingState();
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - v6;
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  type metadata accessor for RellenoGlobalSettings();
  static RellenoGlobalSettings.shared.getter();
  v10 = dispatch thunk of RellenoGlobalSettings.ignoreTrackingState.getter();

  v22 = v0;
  if (v10)
  {
    v11 = type metadata accessor for ARCamera.TrackingState.Reason();
    (*(*(v11 - 8) + 56))(v9, 2, 2, v11);
  }

  else
  {
    v12 = [v0 camera];
    ARCamera.trackingState.getter();
  }

  v13 = type metadata accessor for ARCamera.TrackingState.Reason();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v7, 2, 2, v13);
  v16 = static ARCamera.TrackingState.== infix(_:_:)();
  sub_100092314(v7, &type metadata accessor for ARCamera.TrackingState);
  sub_100092314(v9, &type metadata accessor for ARCamera.TrackingState);
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    static RellenoGlobalSettings.shared.getter();
    v18 = dispatch thunk of RellenoGlobalSettings.ignoreTrackingState.getter();

    if (v18)
    {
      v15(v4, 2, 2, v13);
    }

    else
    {
      v19 = [v22 camera];
      ARCamera.trackingState.getter();
    }

    (*(v14 + 104))(v7, enum case for ARCamera.TrackingState.Reason.initializing(_:), v13);
    v15(v7, 0, 2, v13);
    v17 = static ARCamera.TrackingState.== infix(_:_:)();
    sub_100092314(v7, &type metadata accessor for ARCamera.TrackingState);
    sub_100092314(v4, &type metadata accessor for ARCamera.TrackingState);
  }

  return v17 & 1;
}

ARFrame __swiftcall ARFrame.copyFrameWithoutImage()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 camera];
  [v1 timestamp];
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCamera:v2 timestamp:v3];

  v5 = sub_10008B310();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    type metadata accessor for ARFrameAttachment();
    v6 = swift_allocObject();
    *(v6 + 16) = 2;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 1;
    swift_beginAccess();

    objc_setAssociatedObject(v4, &unk_1001D7420, v6, 1);
    swift_endAccess();
  }

  v7 = sub_10008B310();
  if (v7 && (v8 = *(v7 + 16), , v8 != 2) && (v8 & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v1 isHighResolution];
  }

  *(v6 + 16) = v9;
  v10 = sub_10008B310();
  if (!v10 || (v11 = *(v10 + 24), v12 = *(v10 + 32), v13 = *(v10 + 40), v14 = *(v10 + 48), v15 = *(v10 + 56), , (v15 & 1) != 0))
  {
    static CGRect.unitRect.getter();
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;
  }

  *(v6 + 24) = v11;
  *(v6 + 32) = v12;
  *(v6 + 40) = v13;
  *(v6 + 48) = v14;
  *(v6 + 56) = 0;

  return v4;
}

uint64_t sub_10008BB9C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005BBC4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008BBE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 capturedImage];
  DataSize = CVPixelBufferGetDataSize(v4);

  if (DataSize)
  {
    [v3 capturedImage];
    type metadata accessor for CVBuffer(0);
    SendableTransfer.init(wrappedValue:)();
    v6 = enum case for CameraImage.pixelBuffer(_:);
    v7 = type metadata accessor for CameraImage();
    return (*(*(v7 - 8) + 104))(a1, v6, v7);
  }

  else
  {
    v9 = enum case for CameraImage.none(_:);
    v10 = type metadata accessor for CameraImage();
    v11 = *(*(v10 - 8) + 104);

    return v11(a1, v9, v10);
  }
}

ARFrame sub_10008BD50@<X0>(ARFrame *a1@<X8>)
{
  result.super.isa = ARFrame.copyFrameWithoutImage()().super.isa;
  a1->super.isa = result.super.isa;
  return result;
}

void sub_10008BDC8()
{
  type metadata accessor for CameraControllerConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LoggingSignposter();
      if (v2 <= 0x3F)
      {
        sub_10005FAB0(319, &unk_1001D6940, &type metadata accessor for AsyncStream);
        if (v3 <= 0x3F)
        {
          sub_10005FAB0(319, &qword_1001D7630, &type metadata accessor for AsyncStream.Continuation);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10008C070()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CameraControllerConfiguration(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10008C1A4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100092374;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C22F8;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_10008C474(void *a1)
{
  v1 = a1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    sub_100060424(*&v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState], *&v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8], v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16]);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000E0FE0(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "willCapturePhoto: transitioning from %s to .pausing", v4, 0xCu);
    sub_100006B44(v5);
  }

  v9 = &v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
  v10 = *&v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
  v11 = *&v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8];
  *v9 = xmmword_100176B30;
  v12 = v9[16];
  v9[16] = 3;
  sub_1000616E4(v10, v11, v12);
  return sub_1000731B8();
}

uint64_t sub_10008C630(void *a1, void *a2)
{
  v3 = v2;
  v66 = a1;
  v5 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v5 - 8);
  v7 = &v64 - v6;
  v8 = type metadata accessor for ARCamera.TrackingState();
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v64 - v12;
  static LoggingSignposter.arCameraSourceFrameHandler.getter();
  default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  v14 = v2;
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  v15 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay);
  if (v15)
  {
    v16 = v15;
    sub_10008EDD0(a2);
  }

  type metadata accessor for RellenoGlobalSettings();
  static RellenoGlobalSettings.shared.getter();
  v17 = dispatch thunk of RellenoGlobalSettings.ignoreTrackingState.getter();

  if (v17)
  {
    v18 = type metadata accessor for ARCamera.TrackingState.Reason();
    (*(*(v18 - 8) + 56))(v13, 2, 2, v18);
  }

  else
  {
    v19 = [a2 camera];
    ARCamera.trackingState.getter();
  }

  v20 = type metadata accessor for ARCamera.TrackingState.Reason();
  (*(*(v20 - 8) + 56))(v11, 2, 2, v20);
  v21 = static ARCamera.TrackingState.== infix(_:_:)();
  sub_100092314(v11, &type metadata accessor for ARCamera.TrackingState);
  sub_100092314(v13, &type metadata accessor for ARCamera.TrackingState);
  if (v21)
  {

    v22 = [a2 camera];
    [v22 transform];
    v70 = v24;
    v71 = v23;
    v69 = v25;
    v68 = v26;

    v27 = sub_10009D414(v71, v70, v69, v68);
    v29 = v28;
  }

  else
  {
    v29 = 0x800000010016D190;
    v27 = 0xD000000000000020;
  }

  v30 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevelOverride);
  if (v30 == 4)
  {
    LOBYTE(v30) = *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevel);
  }

  sub_100072A20(*(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea), *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 8), *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 16), *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 24));
  v31 = v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
  swift_beginAccess();
  v32 = type metadata accessor for CameraControllerConfiguration(0);
  sub_1000138BC(v31 + *(v32 + 68), v7, &qword_1001D8020);
  v33 = type metadata accessor for URL();
  LODWORD(v31) = (*(*(v33 - 8) + 48))(v7, 1, v33);
  sub_10001370C(v7, &qword_1001D8020);
  v34 = v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
  v35 = *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
  v36 = *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
  v37 = *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16);
  if (v31 == 1)
  {
    LODWORD(v67) = 0;
  }

  else
  {
    v40 = v35 == 1 && v36 == 0 && v37 == 3;
    LODWORD(v67) = v40;
  }

  v75[0] = v27;
  v75[1] = v29;
  v76 = v30;
  v77 = v35;
  v78 = v36;
  v79 = v37;
  v71.i64[0] = v14;
  v41 = v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer;
  Strong = swift_unknownObjectWeakLoadStrong();
  v72 = a2;
  v70.i32[0] = v37;
  v69.n128_u64[0] = v36;
  v68.i64[0] = v35;
  if (Strong)
  {
    v43 = v35;
    v44 = *(v41 + 8);
    ObjectType = swift_getObjectType();
    v73 = a2;
    v64 = *(v44 + 8);
    sub_100060424(v43, v36, v37);
    v45 = sub_10005BBC4(0, &qword_1001D7430);
    v46 = sub_10008BB9C(&qword_1001D7438, &qword_1001D7430);
    v64(&v73, v75, v45, v46, ObjectType, v44);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100060424(v35, v36, v37);
  }

  if (v67)
  {
    v47 = v72;
    sub_10008B3F4(1);
    v48 = swift_unknownObjectWeakLoadStrong();
    v49 = v69.n128_u64[0];
    if (v48)
    {
      v50 = *(v41 + 8);
      ObjectType = swift_getObjectType();
      v73 = v47;
      v64 = *(v50 + 8);
      v67 = v29;
      v51 = v27;
      v52 = sub_10005BBC4(0, &qword_1001D7430);
      v53 = sub_10008BB9C(&qword_1001D7438, &qword_1001D7430);
      v64(&v73, v75, v52, v53, ObjectType, v50);
      swift_unknownObjectRelease();
      v54 = v51;
      v55 = v67;
    }

    else
    {
      v54 = v27;
      v55 = v29;
    }

    sub_100092274(v54, v55);
    sub_1000616E4(v68.i64[0], v49, v70.i8[0]);
    [v66 pause];
    v57 = *v34;
    v58 = *(v34 + 8);
    *v34 = 0;
    *(v34 + 8) = 0;
    v59 = *(v34 + 16);
    *(v34 + 16) = 3;
    sub_1000616E4(v57, v58, v59);
    v56 = v71.i64[0];
    sub_1000731B8();
  }

  else
  {
    sub_100092274(v27, v29);
    sub_1000616E4(v68.i64[0], v69.n128_i64[0], v70.i8[0]);
    v47 = v72;
    v56 = v71.i64[0];
  }

  v60 = *v34;
  v61 = *(v34 + 8);
  v62 = *(v34 + 16);
  if (v62 == 1 || v62 == 3 && v60 == 2 && !v61)
  {
    if (*(v56 + OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting))
    {
      sub_100060424(v60, v61, v62);

      sub_1000875A4(v47);
    }

    else
    {
      sub_100060424(v60, v61, v62);
    }
  }

  sub_100006AAC(v74, v74[3]);
  dispatch thunk of LoggingSignposter.Interval.end()();
  return sub_100006B44(v74);
}

void sub_10008CDEC()
{
  v1 = v0;
  v2 = type metadata accessor for ARCamera.TrackingState();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v32 - v6;
  ARCamera.trackingState.getter();
  v8 = type metadata accessor for ARCamera.TrackingState.Reason();
  (*(*(v8 - 8) + 56))(v5, 1, 2, v8);
  v9 = static ARCamera.TrackingState.== infix(_:_:)();
  sub_100092314(v5, &type metadata accessor for ARCamera.TrackingState);
  sub_100092314(v7, &type metadata accessor for ARCamera.TrackingState);
  if (v9)
  {
    return;
  }

  v10 = sub_10008AFF8();
  v11 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_10005BBC4(0, &qword_1001D95A0);
    sub_10008BB9C(&unk_1001D8070, &qword_1001D95A0);
    Set.Iterator.init(_cocoa:)();
    v11 = v37;
    v12 = v38;
    v13 = v39;
    v14 = v40;
    v15 = v41;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);
  }

  v32[0] = v13;
  v19 = (v13 + 64) >> 6;
  while (v11 < 0)
  {
    v29 = __CocoaSet.Iterator.next()();
    if (!v29 || (*&v34 = v29, sub_10005BBC4(0, &qword_1001D95A0), swift_dynamicCast(), v28 = *&v36[0], v26 = v14, v27 = v15, !*&v36[0]))
    {
LABEL_28:
      sub_100037980();
      return;
    }

LABEL_21:
    if (objc_getAssociatedObject(v28, v28))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36[0] = v34;
    v36[1] = v35;
    if (!*(&v35 + 1))
    {
      sub_10001370C(v36, &unk_1001D8060);
LABEL_10:
      v20 = type metadata accessor for WeakARImageSensorDelegateWrapper();
      v21 = objc_allocWithZone(v20);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v33.receiver = v21;
      v33.super_class = v20;
      v22 = v1;
      v23 = objc_msgSendSuper2(&v33, "init", v32[0]);
      objc_setAssociatedObject(v28, v28, v23, 1);

      goto LABEL_11;
    }

    type metadata accessor for WeakARImageSensorDelegateWrapper();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v30 = v32[1];
    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
LABEL_11:
    v14 = v26;
    v15 = v27;
  }

  v24 = v14;
  v25 = v15;
  v26 = v14;
  if (v15)
  {
LABEL_17:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v11 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v19)
    {
      goto LABEL_28;
    }

    v25 = *(v12 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_10008D288()
{
  if (objc_getAssociatedObject(v0, v0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_10001370C(v5, &unk_1001D8060);
  }

  return 0;
}

uint64_t sub_10008D428(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session '%@' was interrupted", v6, 0xCu);
    sub_10001370C(v7, &unk_1001D8030);
  }

  v9 = v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
  v10 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
  v11 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
  *v9 = xmmword_100176B40;
  v12 = *(v9 + 16);
  *(v9 + 16) = 0;
  sub_1000616E4(v10, v11, v12);

  return sub_1000731B8();
}

uint64_t sub_10008D5C8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Session '%@' is no longer interrupted", v7, 0xCu);
    sub_10001370C(v8, &unk_1001D8030);
  }

  if (qword_1001D31A0 != -1)
  {
    v10 = swift_once();
  }

  __chkstk_darwin(v10);
  sub_1000033A8(&qword_1001D8028);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v16 == 2 || (v16 & 1) == 0)
  {
    v11 = v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v12 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v13 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
    *v11 = 0;
    *(v11 + 8) = 0;
  }

  else
  {
    v11 = v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v12 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v13 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
    *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState) = xmmword_100176B30;
  }

  v14 = *(v11 + 16);
  *(v11 + 16) = 1;
  sub_1000616E4(v12, v13, v14);
  return sub_1000731B8();
}

uint64_t sub_10008D84C(uint64_t result, unint64_t a2, double a3)
{
  if (*(*v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording))
  {
    v6 = result;

    sub_10008DC28(v6, a2 | ((HIDWORD(a2) & 1) << 32), a3);
  }

  return result;
}

id sub_10008D8EC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(ARRecordingConfiguration);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithBaseConfiguration:a1 fileURL:v6];

  [objc_msgSend(v8 "recordingTechnique")];
  swift_unknownObjectRelease();
  v9 = *(v2 + 16);
  *(v2 + 16) = v8;
  v10 = v8;

  [v10 startRecording];
  return v10;
}

Swift::Int sub_10008D9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static Log.cameraSource.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = a2;
      v11 = v10;
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000E0FE0(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to save video: %s", v11, 0xCu);
      sub_100006B44(v12);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  return OS_dispatch_semaphore.signal()();
}

void sub_10008DBBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10008DC28(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_frameQueue);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a3;
  *(v15 + 40) = a2;
  *(v15 + 44) = BYTE4(a2) & 1;
  aBlock[4] = sub_1000922DC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C22A8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void sub_10008DF60(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_session;
    if ([*(Strong + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_session) state] == 1 && (v14 = *(v12 + 16)) != 0)
    {
      v15 = *(v12 + v13);
      v16 = v14;
      v17 = [v15 currentFrame];
      if (v17)
      {
        v18 = v17;
        static Log.cameraSource.getter();

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v27 = v16;
          *v21 = 134217984;
          *(v21 + 4) = a1;
          _os_log_impl(&_mh_execute_header, v19, v20, "Logged custom metadata for frame timestamp %f", v21, 0xCu);
          v16 = v27;
        }

        (*(v8 + 8))(v10, v7);
        v22 = [v16 recordingTechnique];
        v23 = type metadata accessor for CustomARRecordingStreamingMetadata();
        v24 = objc_allocWithZone(v23);
        v25 = &v24[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata];
        *v25 = a3;
        v25[1] = a1;
        *(v25 + 4) = a4;
        *(v25 + 20) = BYTE4(a4) & 1;
        v28.receiver = v24;
        v28.super_class = v23;

        v26 = objc_msgSendSuper2(&v28, "init");
        [v22 recordCustomData:v26 forTimestamp:a1];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10008E218()
{
  v1 = OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_fileURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10008E304()
{
  result = type metadata accessor for URL();
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

uint64_t sub_10008E3E8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008E47C, v2, v1);
}

uint64_t sub_10008E47C()
{

  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  dispatch thunk of LocationsHandler.startSimulatingHeadingUpdates()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E4FC()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008E590, v2, v1);
}

uint64_t sub_10008E590()
{

  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  dispatch thunk of LocationsHandler.stopSimulatingHeadingUpdates()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E610(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  objc_allocWithZone(ARReplayConfiguration);
  v10 = a1;
  v11 = sub_1000910DC(v10, v8);

  v12 = [v11 customSensors];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v29 = v11;
  sub_1000033A8(&qword_1001D7FD8);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v3;
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_14:

    v11 = v29;
    v3 = v30;
LABEL_15:
    [v11 setDelegate:v3];
    [v11 play];
    v26 = *(v3 + OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_arReplayConfiguration);
    *(v3 + OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_arReplayConfiguration) = v11;
    v27 = v11;

    return v11;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v15 >= 1)
  {
    v16 = 0;
    v31 = xmmword_100171DA0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v17 = v25;
        sub_1000033A8(&qword_1001D7FE0);
        v18 = swift_allocObject();
        *(v18 + 16) = v31;
        v19 = type metadata accessor for CustomARRecordingStreamingMetadata();
        *(v18 + 56) = sub_1000033A8(&qword_1001D7FE8);
        *(v18 + 32) = v19;
        v20 = objc_allocWithZone(NSSet);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v22 = [v20 initWithArray:isa];

        sub_10005BBC4(0, &qword_1001D7FF0);
        sub_10008BB9C(&qword_1001D7FF8, &qword_1001D7FF0);
        v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10008EA28(v23);

        v24 = Set._bridgeToObjectiveC()().super.isa;

        [v17 setCustomDataClasses:v24];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v16;
    }

    while (v15 != v16);
    goto LABEL_14;
  }

  __break(1u);

  swift_getErrorValue();
  Error.localizedDescription.getter();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10008EA28(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000033A8(&unk_1001D8000);
  v3 = static _SetStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_10005BBC4(0, &qword_1001D7FF0);
  sub_10008BB9C(&qword_1001D7FF8, &qword_1001D7FF0);
  result = Set.Iterator.init(_cocoa:)();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_34:
      sub_100037980();

      return v3;
    }

    *&v27 = v16;
    sub_10005BBC4(0, &qword_1001D7FF0);
    swift_dynamicCast();
LABEL_25:
    sub_10005BBC4(0, &qword_1001D7FF0);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10008EDD0(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v3 - 8);
  p_name = (&v42 - v4);
  v57 = type metadata accessor for Logger();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000033A8(&unk_1001D6410);
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - v8;
  v48 = sub_1000033A8(&qword_1001D7FD0);
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v42 - v10;
  [a1 timestamp];
  v12 = v11;
  v58 = v1;
  v13 = [*(v1 + OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_session) availableSensors];
  sub_1000033A8(&qword_1001D7FD8);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v51; v15; i = v51)
  {
    v42 = a1;
    v43 = p_name;
    v17 = 0;
    v59 = v14 & 0xFFFFFFFFFFFFFF8;
    ++v55;
    v56 = OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_cameraSource;
    v46 = (v7 + 16);
    v45 = (v7 + 8);
    v44 = (v9 + 8);
    v9 = v14 & 0xC000000000000001;
    p_name = &stru_1001CFFF8.name;
    v53 = v15;
    v54 = v14;
    v52 = v14 & 0xC000000000000001;
    while (v9)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a1 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_25;
      }

LABEL_12:
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18 && [v18 p_name[201]])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10005BB68(v64, v61);
        type metadata accessor for CustomARRecordingStreamingMetadata();
        if (swift_dynamicCast())
        {
          v19 = v60;
          v20 = *&v60[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata];
          v21 = *&v60[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata + 8];
          v22 = *&v60[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata + 16];
          v23 = v60[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata + 20];
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v25 = Strong;
            v26 = swift_unknownObjectWeakLoadStrong();

            if (v26)
            {
              v27 = v49;
              v28 = v50;
              (*v46)(v49, &v26[OBJC_IVAR____TtC6Tamale26StreamingMetadataProcessor_continuation], v50);
              v61[0] = v21;
              v61[1] = v20;
              v61[2] = v21;
              v62 = v22;
              v63 = v23;

              v29 = v47;
              AsyncStream.Continuation.yield(_:)();

              swift_unknownObjectRelease();
              (*v45)(v27, v28);
              (*v44)(v29, v48);
              sub_100006B44(v64);
            }

            else
            {
              sub_100006B44(v64);

              swift_unknownObjectRelease();
            }

            i = v51;
            v9 = v52;
            v15 = v53;
            v14 = v54;
            p_name = (&stru_1001CFFF8 + 8);
          }

          else
          {

            swift_unknownObjectRelease();
            sub_100006B44(v64);
            v15 = v53;
            v14 = v54;
            v9 = v52;
          }
        }

        else
        {
          static Log.cameraSource.getter();
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v30, v31, "Unsupported custom metadata", v32, 2u);
          }

          swift_unknownObjectRelease();
          (*v55)(i, v57);
          sub_100006B44(v64);
          p_name = (&stru_1001CFFF8 + 8);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v17;
      if (a1 == v15)
      {

        p_name = v43;
        a1 = v42;
        goto LABEL_29;
      }
    }

    if (v17 >= *(v59 + 16))
    {
      goto LABEL_26;
    }

    v7 = *(v14 + 8 * v17 + 32);
    swift_unknownObjectRetain();
    a1 = (v17 + 1);
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_29:
  [a1 rawHeading];
  v34 = v33;
  v35 = [a1 geoTrackingStatus];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 state];

    if (v37 == 3)
    {
      [a1 heading];
      v34 = v38;
    }
  }

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(p_name, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v34;
  sub_1000154EC(0, 0, p_name, &unk_1001770C0, v40);
}

uint64_t sub_10008F548()
{
  *(v0 + 24) = type metadata accessor for LocationsHandler();
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008F5E8, v2, v1);
}

uint64_t sub_10008F5E8()
{

  *(v0 + 40) = static LocationsHandler.shared.getter();

  return _swift_task_switch(sub_10008F658, 0, 0);
}

uint64_t sub_10008F658()
{
  dispatch thunk of LocationsHandler.addSimulatedHeading(_:)();

  v1 = *(v0 + 8);

  return v1();
}

void sub_10008F6C4()
{
  v0 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
    *v6 = v9;
    (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v10 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      if (sub_10007A56C(v8))
      {
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
        v12 = swift_allocObject();
        v12[2] = 0;
        v12[3] = 0;
        v12[4] = v8;
        sub_1000154EC(0, 0, v2, &unk_1001770F0, v12);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10008FA18(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  v5 = [a1 decodeDataObject];
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100090F94();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10005BC60(v7, v9);
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v13 = &v2[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata];
    *v13 = v17;
    *(v13 + 1) = v10;
    *(v13 + 4) = v11;
    v13[20] = v12;
    v16.receiver = v2;
    v16.super_class = type metadata accessor for CustomARRecordingStreamingMetadata();
    v14 = objc_msgSendSuper2(&v16, "init");

    return v14;
  }

  else
  {

    type metadata accessor for CustomARRecordingStreamingMetadata();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_10008FD9C(void *a1)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100090F40();

  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v4 = v3;

  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 encodeDataObject:isa];

  sub_10005BC60(v2, v4);
}

id sub_10008FF6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100090008()
{
  sub_10009007C();
  if (v0 <= 0x3F)
  {
    sub_100090120();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10009007C()
{
  if (!qword_1001D7D50)
  {
    sub_10005BBC4(255, &qword_1001D7D58);
    type metadata accessor for ARCameraSource.AnchorInformation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001D7D50);
    }
  }
}

void sub_100090120()
{
  if (!qword_1001D7D60)
  {
    type metadata accessor for Corners();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001D7D60);
    }
  }
}

uint64_t sub_1000901B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RaycastAccuracy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000902AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RaycastAccuracy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_100090364()
{
  type metadata accessor for RaycastAccuracy(319);
  if (v0 <= 0x3F)
  {
    sub_1000903E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000903E8()
{
  if (!qword_1001D7DF8)
  {
    sub_10001276C(&unk_1001D7E00);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D7DF8);
    }
  }
}

void sub_10009044C()
{
  sub_1000904C0();
  if (v0 <= 0x3F)
  {
    sub_1000904F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_1000904C0()
{
  result = qword_1001D7EB0;
  if (!qword_1001D7EB0)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_1001D7EB0);
  }

  return result;
}

void sub_1000904F0()
{
  if (!qword_1001D7EB8)
  {
    v0 = type metadata accessor for Corners();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D7EB8);
    }
  }
}

uint64_t sub_100090580(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000905CC()
{
  result = qword_1001D7EF0;
  if (!qword_1001D7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7EF0);
  }

  return result;
}

uint64_t sub_1000906AC()
{

  return swift_deallocObject();
}

uint64_t sub_100090744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100090780(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t (*sub_1000907D4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_100094184;
  }

  __break(1u);
  return result;
}

void (*sub_100090854(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000908D4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000908DC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100013608(&qword_1001D8088, &qword_1001D8080);
          for (i = 0; i != v6; ++i)
          {
            sub_1000033A8(&qword_1001D8080);
            v9 = sub_100090854(v13, i, a3);
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
        sub_10005BBC4(0, &qword_1001D95A0);
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