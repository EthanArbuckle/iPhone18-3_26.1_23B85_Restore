id AUAAudioDevice.setStreamVisibility(_:_:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___AUAAudioDevice_asdInputStreams;
  swift_beginAccess();
  v11 = *&v3[v10];
  v73 = a1;
  v70 = &v73;

  v12 = sub_10001073C(sub_10001ECA0, v69, v11);

  if (v12)
  {
    goto LABEL_3;
  }

  v13 = OBJC_IVAR___AUAAudioDevice_asdOutputStreams;
  v14 = swift_beginAccess();
  v15 = *&v3[v13];
  v71 = a1;
  __chkstk_darwin(v14);
  *&v69[-16] = &v71;

  v16 = sub_10001073C(sub_10001EFE8, &v69[-32], v15);

  if (v16)
  {
LABEL_3:
    if ([a1 direction] == 1768845428)
    {
      result = [v3 inputStreams];
      v18 = result;
      if ((a2 & 1) == 0)
      {
        if (result)
        {
          sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
          v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v71 = a1;
          __chkstk_darwin(v46);
          *&v69[-16] = &v71;
          v47 = sub_10001073C(sub_10001EFE8, &v69[-32], v45);

          if ((v47 & 1) == 0)
          {
            return result;
          }

          v71 = 0;
          v72 = 0xE000000000000000;
          _StringGuts.grow(_:)(24);

          v71 = 0xD000000000000016;
          v72 = 0x800000010012B9A0;
          v48 = [a1 description];
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v52._countAndFlagsBits = v49;
          v52._object = v51;
          String.append(_:)(v52);

          v53 = v71;
          v54 = v72;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v55 = sub_10000A1BC(v6, qword_1001794F0);
          sub_10000A2A4(v55, v9);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v56, qword_100179508);
          sub_100039AA0(3, v9, v53, v54);
          v31 = &selRef_removeInputStream_;
          goto LABEL_34;
        }

        goto LABEL_38;
      }

      if (result)
      {
        sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v71 = a1;
        __chkstk_darwin(v20);
        *&v69[-16] = &v71;
        v21 = sub_10001073C(sub_10001EFE8, &v69[-32], v19);

        if (v21)
        {
          return result;
        }

        v71 = 0;
        v72 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v71 = 0xD000000000000014;
        v72 = 0x800000010012B9C0;
        v22 = [a1 description];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26._countAndFlagsBits = v23;
        v26._object = v25;
        String.append(_:)(v26);

        v27 = v71;
        v28 = v72;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v29 = sub_10000A1BC(v6, qword_1001794F0);
        sub_10000A2A4(v29, v9);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v30, qword_100179508);
        sub_100039AA0(3, v9, v27, v28);
        v31 = &selRef_addInputStream_;
LABEL_34:

        sub_10000C9D0(v9);
        return [v3 *v31];
      }

      __break(1u);
    }

    else
    {
      result = [v3 outputStreams];
      v32 = result;
      if ((a2 & 1) == 0)
      {
        if (result)
        {
          sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
          v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v71 = a1;
          __chkstk_darwin(v58);
          *&v69[-16] = &v71;
          v59 = sub_10001073C(sub_10001EFE8, &v69[-32], v57);

          if ((v59 & 1) == 0)
          {
            return result;
          }

          v71 = 0;
          v72 = 0xE000000000000000;
          _StringGuts.grow(_:)(25);

          v71 = 0xD000000000000017;
          v72 = 0x800000010012B960;
          v60 = [a1 description];
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;

          v64._countAndFlagsBits = v61;
          v64._object = v63;
          String.append(_:)(v64);

          v65 = v71;
          v66 = v72;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v67 = sub_10000A1BC(v6, qword_1001794F0);
          sub_10000A2A4(v67, v9);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v68, qword_100179508);
          sub_100039AA0(3, v9, v65, v66);
          v31 = &selRef_removeOutputStream_;
          goto LABEL_34;
        }

LABEL_39:
        __break(1u);
        return result;
      }

      if (result)
      {
        sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v71 = a1;
        __chkstk_darwin(v34);
        *&v69[-16] = &v71;
        v35 = sub_10001073C(sub_10001EFE8, &v69[-32], v33);

        if (v35)
        {
          return result;
        }

        v71 = 0;
        v72 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v71 = 0xD000000000000015;
        v72 = 0x800000010012B980;
        v36 = [a1 description];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40._countAndFlagsBits = v37;
        v40._object = v39;
        String.append(_:)(v40);

        v41 = v71;
        v42 = v72;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v43 = sub_10000A1BC(v6, qword_1001794F0);
        sub_10000A2A4(v43, v9);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v44, qword_100179508);
        sub_100039AA0(3, v9, v41, v42);
        v31 = &selRef_addOutputStream_;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  return result;
}

void *sub_100014214(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *a1;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7 >> 62)
  {
LABEL_20:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        a3(a2);
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v10;
        if (v9 == v8)
        {
          goto LABEL_17;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v9 != v8);
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

uint64_t AUAAudioDevice.numAsynchronousOutputStreams.getter()
{
  v1 = *(v0 + OBJC_IVAR___AUAAudioDevice_streamingInterfaces);
  if (v1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v30 = v1;
    v31 = v1 & 0xC000000000000001;
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = 0;
    v26 = v1 + 32;
    v29 = i;
    while (1)
    {
      if (v31)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_31;
        }

        v6 = *(v26 + 8 * v3);

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_29;
        }
      }

      v7 = *(v4 + 40);
      if (!*(v7 + 16))
      {
        goto LABEL_30;
      }

      v32 = v4;
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 96);
      v35 = *(v7 + 80);
      v36 = v10;
      v34[1] = v8;
      v34[2] = v9;
      v34[0] = *(v7 + 32);
      v11 = *(&v35 + 1);
      v12 = *(*(&v35 + 1) + 16);
      if (v12)
      {
        break;
      }

LABEL_23:
      v20 = *(v32 + 40);
      if (*(v20 + 16))
      {
        v21 = *(v20 + 48);
        v22 = *(v20 + 80);
        v23 = *(v20 + 96);
        v37[2] = *(v20 + 64);
        v37[3] = v22;
        v37[4] = v23;
        v37[0] = *(v20 + 32);
        v37[1] = v21;
        sub_10001EBF0(v37, v33);
        v24 = StreamingAltInterface.synchronizationType.getter();
        sub_10001EC4C(v37);

        if (v24)
        {
          v5 = __OFADD__(v28++, 1);
          if (v5)
          {
            __break(1u);
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_4:
      }

      if (v3 == i)
      {
        return v28;
      }
    }

    sub_10001EBF0(v34, v33);
    v1 = 0;
    v13 = (v11 + 104);
    while (v1 < *(v11 + 16))
    {
      v14 = *(v13 - 9);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(v13 - 2);

      if (IOUSBGetEndpointUsageType(v14))
      {
      }

      else
      {
        wMaxPacketSize = v14->wMaxPacketSize;

        if ((wMaxPacketSize - 3) >= 6)
        {
          goto LABEL_22;
        }
      }

      if (IOUSBGetEndpointUsageType(v14) == 2)
      {
LABEL_22:
        v19 = IOUSBGetEndpointDirection(v14);
        sub_10001EC4C(v34);
        i = v29;
        v1 = v30;
        if (v19)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      ++v1;
      v13 += 10;
      if (v12 == v1)
      {
        sub_10001EC4C(v34);
        i = v29;
        v1 = v30;
        goto LABEL_23;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return 0;
}

Swift::Void __swiftcall AUAAudioDevice.createStreams()()
{
  v2 = v0;
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___AUAAudioDevice_asdInputStreams;
  swift_beginAccess();
  v8 = *&v0[v7];
  v83 = v7;
  *&v0[v7] = _swiftEmptyArrayStorage;

  v9 = OBJC_IVAR___AUAAudioDevice_asdOutputStreams;
  swift_beginAccess();
  v10 = *&v0[v9];
  *&v0[v9] = _swiftEmptyArrayStorage;

  v11 = [v0 inputStreams];
  if (!v11)
  {
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v12 = v11;
  sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = v9;
  v88 = v3;
  v89 = v6;
  if (v13 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v15 = *(v13 + 8 * v3 + 32);
      }

      v1 = v15;
      v16 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v0 removeInputStream:v15];

      ++v3;
      if (v16 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v17 = [v0 outputStreams];
  if (!v17)
  {
    goto LABEL_108;
  }

  v18 = v17;
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = 0;
    v1 = (v19 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v3 = v22;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      [v2 removeOutputStream:v22];

      ++v21;
      if (v23 == j)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  v24 = *&v2[OBJC_IVAR___AUAAudioDevice_function];
  if (v24)
  {
    v3 = *&v2[OBJC_IVAR___AUAAudioDevice_function + 8];
    v25 = *&v2[OBJC_IVAR___AUAAudioDevice_function];
    ObjectType = swift_getObjectType();
    if (!(*(v3 + 112))(ObjectType, v3))
    {
LABEL_34:
      j = AUAAudioDevice.numAsynchronousOutputStreams.getter();
      v32 = swift_getObjectType();
      v33 = (*(v3 + 16))(v32, v3);
      if (v33)
      {
        if (j >= 2)
        {
          v3 = v33;
          v1 = 0xD000000000000018;
          v90 = 0;
          v91 = 0xE000000000000000;
          _StringGuts.grow(_:)(72);
          v34._countAndFlagsBits = 0xD000000000000046;
          v34._object = 0x800000010012B8B0;
          String.append(_:)(v34);
          v92 = j;
          v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v35);

          v36 = v90;
          v24 = v91;
          if (qword_100173CB8 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_106;
        }
      }

      goto LABEL_42;
    }

    v27 = [v2 plugin];
    if (v27)
    {
      v28 = v27;
      v29 = objc_allocWithZone(type metadata accessor for AUANullInputStream());
      v30 = sub_10000DCC0(v28);
      v31 = v83;
      swift_beginAccess();
      j = v30;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v2[v31] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v31] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_100:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v2 addInputStream:j];

      goto LABEL_34;
    }

LABEL_109:
    __break(1u);
    return;
  }

  AUAAudioDevice.numAsynchronousOutputStreams.getter();
LABEL_42:
  v41 = *&v2[OBJC_IVAR___AUAAudioDevice_streamingInterfaces];
  if (v41 >> 62)
  {
    goto LABEL_79;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_80;
  }

  do
  {
    if (v42 < 1)
    {
      __break(1u);
      goto LABEL_100;
    }

    v24 = 0;
    j = 0;
    v88 = OBJC_IVAR___AUAAudioDevice_logID;
    v89 = v41 & 0xC000000000000001;
    v87 = " failed to publish formats ";
    v85 = 1;
    v84 = 1;
    v86 = v41;
    while (1)
    {
      if (v89)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v1 = *(v41 + 8 * v24 + 32);
      }

      sub_1000BAFD8(v1, v2);
      v41 = v42;
      v3 = v51;
      if ([v3 direction] == 1768845428)
      {
        break;
      }

      v56 = v82;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v2[v56] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v56] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v65 = *((*&v2[v56] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v57 = v85;
      if ((v85 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      if (HIDWORD(v85))
      {
        goto LABEL_76;
      }

      [v3 setStartingChannel:v85];
      v58 = *(v3 + OBJC_IVAR___AUAStream_interface);

      active = ActiveStreamingInterface.channelCount()();
      j = v55;
      if (v55)
      {

        j = 0;
        v42 = v41;
        goto LABEL_67;
      }

      v63 = active;

      v85 = v57 + v63;
      if (__OFADD__(v57, v63))
      {
        goto LABEL_77;
      }

      [v2 addOutputStream:v3];

      v42 = v41;
      v41 = v86;
LABEL_50:
      if (v42 == ++v24)
      {
        goto LABEL_80;
      }
    }

    v52 = v83;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v2[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v64 = *((*&v2[v52] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v42 = v41;
    v41 = v84;
    if ((v84 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v84))
      {
        goto LABEL_75;
      }

      [v3 setStartingChannel:v84];
      v53 = *(v3 + OBJC_IVAR___AUAStream_interface);

      v54 = ActiveStreamingInterface.channelCount()();
      j = v55;
      if (v55)
      {

        j = 0;
LABEL_67:
        v41 = v86;
        v90 = 0;
        v91 = 0xE000000000000000;
        _StringGuts.grow(_:)(28);
        v60 = [v2 deviceName];
        if (v60)
        {
          v43 = v60;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
        }

        else
        {
          v44 = 0x206E776F6E6B6E55;
          v46 = 0xEE00656369766564;
        }

        v47._countAndFlagsBits = v44;
        v47._object = v46;
        String.append(_:)(v47);

        v48._object = (v87 | 0x8000000000000000);
        v48._countAndFlagsBits = 0xD000000000000018;
        String.append(_:)(v48);
        v92 = v55;
        sub_100001AB4(&qword_100177270, &qword_100120A40);
        _print_unlocked<A, B>(_:_:)();
        v49 = v90;
        v3 = v91;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v50, qword_100179508);
        sub_100039F58(1, &v2[v88], v49, v3);

        goto LABEL_50;
      }

      v61 = v54;

      v62 = __OFADD__(v41, v61);
      v84 = v41 + v61;
      v41 = v86;
      if (v62)
      {
        goto LABEL_78;
      }

      [v2 addInputStream:v3];

      goto LABEL_50;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  while (v42);
LABEL_80:
  while (2)
  {
    v66 = AUAAudioDevice.inputAUAStreams()();
    if (v66 >> 62)
    {
      goto LABEL_85;
    }

    v67 = &unk_100174000;
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        if ((v66 & 0xC000000000000001) != 0)
        {
LABEL_98:
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_91;
        }

        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        __break(1u);
LABEL_85:
        v68 = v66;
        v69 = _CocoaArrayWrapper.endIndex.getter();
        v66 = v68;
        v67 = &unk_100174000;
      }

      while (v69);
    }

    v36 = v2;
    v66 = AUAAudioDevice.outputAUAStreams()();
    if (v66 >> 62)
    {
      v36 = v66;
      v78 = _CocoaArrayWrapper.endIndex.getter();
      v66 = v36;
      if (!v78)
      {
LABEL_102:

        v79 = OBJC_IVAR___AUAAudioDevice_logID;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v80, qword_100179508);
        sub_100039F58(1, &v2[v79], 0xD00000000000002ALL, 0x800000010012B880);
        goto LABEL_92;
      }
    }

    else if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    if ((v66 & 0xC000000000000001) != 0)
    {
      goto LABEL_98;
    }

    if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_106:
      swift_once();
LABEL_37:
      v37 = sub_10000A1BC(v88, qword_1001794F0);
      v38 = v89;
      sub_10000A2A4(v37, v89);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v39, qword_100179508);
      sub_100039AA0(1, v38, v36, v24);

      sub_10000C9D0(v38);
      v24 = "output stream count = ";
      sub_100001AB4(&unk_100177280, &unk_100120B70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10011DE90;
      *(inited + 32) = v1 + 5;
      *(inited + 40) = 0x800000010012B940;
      sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
      *(inited + 48) = NSNumber.init(integerLiteral:)(j);
      j = sub_10000AB64(inited);
      swift_setDeallocating();
      sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
      sub_1000FC32C((v1 + 29), 0x800000010012B900, j);

      continue;
    }

    break;
  }

LABEL_90:
  v70 = *(v66 + 32);
LABEL_91:
  v71 = v70;

  v72 = v67[464];
  v73 = *&v2[v72];
  *&v2[v72] = v71;

LABEL_92:
  v74 = *&v2[v67[464]];
  if (v74)
  {
    v75 = *((swift_isaMask & *v74) + 0x240);
    v76 = v74;
    if ((v75() & 0xFFFFFFFE) == 2)
    {
      v77 = AUAAudioDevice.usbControllerClockDomain()();
    }

    else
    {
      v77 = 0;
    }

    [v2 setClockDomain:v77];
  }
}

Swift::Void __swiftcall AUAAudioDevice.clockChanged()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___AUAAudioDevice_clock + 8];
  v3 = *&v0[OBJC_IVAR___AUAAudioDevice_clock];
  ObjectType = swift_getObjectType();
  v5 = (*(v2 + 16))(ObjectType, v2);
  if (v6)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  v8._countAndFlagsBits = 0x3A6574615277656ELL;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  v9 = OBJC_IVAR___AUAAudioDevice_logID;
  v10 = qword_100173CC0;
  v11 = v0;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for AUALog(0);
  v13 = sub_10000A1BC(v12, qword_100179508);
  sub_10003B08C(3, "setSamplingRate", 15, 2, &v0[v9], 0, 0xE000000000000000, v13, v7, v11);

  AUAAudioDevice.publishStreamFormats()();
  if (v14)
  {
    v15 = 0xEE00656369766564;
    v16 = 0x206E776F6E6B6E55;
    _StringGuts.grow(_:)(57);
    v17._object = 0x800000010012B820;
    v17._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v17);
    if (*&v11[OBJC_IVAR___AUAAudioDevice_function])
    {
      v18 = *&v11[OBJC_IVAR___AUAAudioDevice_function + 8];
      v19 = swift_getObjectType();
      v20 = (*(v18 + 16))(v19, v18);
      if (v20)
      {
        v21 = v20;
        v22 = [v20 boxName];

        if (v22)
        {
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v23;
        }
      }
    }

    v24._countAndFlagsBits = v16;
    v24._object = v15;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0xD00000000000001BLL;
    v25._object = 0x800000010012B840;
    String.append(_:)(v25);
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    sub_100039F58(3, &v1[v9], 0, 0xE000000000000000);
  }
}

Swift::Bool __swiftcall AUAAudioDevice.inputStreamsTransfersPerMSIs8()()
{
  v0 = AUAAudioDevice.inputAUAStreams()();
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for AUAStream(0);

  v1 = v0;
LABEL_3:
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_5:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = 1;
      while (1)
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_20;
          }

          v7 = *(v0 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          type metadata accessor for AUAStream(0);
          v1 = _bridgeCocoaArray<A>(_:)();

          v0 = v1;
          goto LABEL_3;
        }

        v10 = [v7 physicalFormat];

        if (!v10)
        {
          goto LABEL_7;
        }

        type metadata accessor for AUAStreamFormat();
        v11 = swift_dynamicCastClass();
        if (!v11)
        {
          break;
        }

        v12 = *(v11 + OBJC_IVAR___AUAStreamFormat_altSetting);

        if (!v12)
        {
          goto LABEL_7;
        }

        v13 = *(v12 + 104);

        v14 = *(v13 + 96);

        if (HIDWORD(v14))
        {
          goto LABEL_21;
        }

        v6 &= v14 > 7;
LABEL_8:
        ++v4;
        if (v9 == v3)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      v6 = 0;
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (v3)
  {
    goto LABEL_5;
  }

  v6 = 1;
LABEL_27:

  return v6;
}

Swift::Void __swiftcall AUAAudioDevice.updateSafetyOffsets()()
{
  v3 = v0;
  v4 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
  swift_beginAccess();
  v0[v4] = 0;
  p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
  if (!*&v0[OBJC_IVAR___AUAAudioDevice_function] || (v6 = *&v0[OBJC_IVAR___AUAAudioDevice_function + 8], ObjectType = swift_getObjectType(), (*(v6 + 24))(ObjectType, v6), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
  {
    v13 = 1500;
    v12 = 1000;
    goto LABEL_10;
  }

  v8 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService);
  v2 = sub_1000FD338(v8);
  v10 = v9;

  v11 = v2 == 0x49434872657355 && v10 == 0xE700000000000000;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = 100000;

    v13 = 100000;
    p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
    goto LABEL_10;
  }

  p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
  if (*(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_speed) == 1)
  {

LABEL_39:
    v13 = 1500;
    v12 = 1000;
    goto LABEL_40;
  }

  if (v2 == 1229146200 && v10 == 0xE400000000000000)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (!AUAAudioDevice.hostEnabledForLowestLatency()())
  {
    v3[v4] = 0;
    goto LABEL_39;
  }

  v24 = AUAAudioDevice.inputStreamsTransfersPerMSIs8()();
  v3[v4] = v24;
  if (v24)
  {
    v12 = 250;
  }

  else
  {
    v12 = 1000;
  }

  if (v24)
  {
    v13 = 250;
  }

  else
  {
    v13 = 1500;
  }

LABEL_40:
  if (os_variant_has_internal_content())
  {
    if (qword_100173CF8 != -1)
    {
      swift_once();
    }

    v46 = qword_100179640;
    v25 = *(qword_100179640 + 16);
    if (v25)
    {
      v2 = v25;
      v45 = " is out of range [0, 200000]";
      v26 = String._bridgeToObjectiveC()();
      v27 = [v2 objectForKey:v26];

      if (!v27)
      {

        v47 = 0u;
        v48 = 0u;
        sub_10000D040(&v47, &unk_100174A20, &unk_100120170);
        p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
        goto LABEL_54;
      }

      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_10000D040(&v47, &unk_100174A20, &unk_100120170);
      v28 = *(v46 + 16);
      if (!v28)
      {
        v13 = 0;
        p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
        goto LABEL_63;
      }

      v29 = v28;
      v30 = String._bridgeToObjectiveC()();
      v2 = [v29 integerForKey:v30];

      p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v2))
      {
        if (v2 <= 0x30D40)
        {
          v13 = v2;
          goto LABEL_54;
        }

        *&v47 = 0;
        *(&v47 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v31._countAndFlagsBits = 0xD000000000000022;
        v31._object = 0x800000010012B7F0;
        String.append(_:)(v31);
        v49 = v2;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        v33._countAndFlagsBits = 0xD00000000000001CLL;
        v33._object = 0x800000010012B7B0;
        String.append(_:)(v33);
        v2 = *(&v47 + 1);
        v30 = v47;
        v29 = OBJC_IVAR___AUAAudioDevice_logID;
        if (qword_100173CC0 != -1)
        {
          goto LABEL_82;
        }

        while (1)
        {
          v34 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v34, qword_100179508);
          sub_100039AA0(4, v29 + v3, v30, v2);

LABEL_54:
          v35 = *(v46 + 16);
          if (!v35)
          {
            goto LABEL_63;
          }

          p_superclass = ", outputSafetyOffset ";
          v36 = v35;
          v37 = String._bridgeToObjectiveC()();
          v2 = [v36 objectForKey:v37];

          if (!v2)
          {

            v47 = 0u;
            v48 = 0u;
            sub_10000D040(&v47, &unk_100174A20, &unk_100120170);
            p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
            goto LABEL_10;
          }

          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          sub_10000D040(&v47, &unk_100174A20, &unk_100120170);
          v38 = *(v46 + 16);
          if (!v38)
          {
            break;
          }

          v30 = v38;
          v29 = String._bridgeToObjectiveC()();
          v2 = [v30 integerForKey:v29];

          if ((v2 & 0x8000000000000000) != 0)
          {
LABEL_80:
            __break(1u);
          }

          else
          {
            p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
            if (!HIDWORD(v2))
            {
              if (v2 > 0x30D40)
              {
                *&v47 = 0;
                *(&v47 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(65);
                v39._countAndFlagsBits = 0xD000000000000023;
                v39._object = 0x800000010012B780;
                String.append(_:)(v39);
                v49 = v2;
                v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v40);

                v41._countAndFlagsBits = 0xD00000000000001CLL;
                v41._object = 0x800000010012B7B0;
                String.append(_:)(v41);
                v2 = *(&v47 + 1);
                v42 = v47;
                v43 = OBJC_IVAR___AUAAudioDevice_logID;
                if (qword_100173CC0 != -1)
                {
                  swift_once();
                }

                v44 = type metadata accessor for AUALog(0);
                sub_10000A1BC(v44, qword_100179508);
                sub_100039AA0(4, &v3[v43], v42, v2);

                goto LABEL_63;
              }

LABEL_66:

              v12 = v2;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_82:
          swift_once();
        }

        v2 = 0;
        p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_80;
    }
  }

LABEL_63:

LABEL_10:
  p_type = &stru_10016FFF0.type;
  [v3 samplingRate];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v15 <= -1.0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (!is_mul_ok(v15, v13))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v16 = v15 * v13;
  Strong = 0xF423FFFE17B7FLL;
  if (v16 > 0xF423FFFE17B7FLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v2 = 0x431BDE82D7B634DBLL;
  [v3 setInputSafetyOffset:(v16 / 0xF4240) + 2];
  [v3 samplingRate];
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v17 <= -1.0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!is_mul_ok(v17, v12))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v18 = v17 * v12;
  if (v18 > 0xF423FFFE17B7FLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v3 setOutputSafetyOffset:(v18 / 0xF4240) + 2];
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v47 = 0xD000000000000012;
  *(&v47 + 1) = 0x800000010012B720;
  v49 = [v3 inputSafetyOffset];
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._object = 0x800000010012B740;
  v20._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v20);
  v49 = [v3 outputSafetyOffset];
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  Strong = *(&v47 + 1);
  p_type = v47;
  v2 = p_superclass[156];
  if (qword_100173CC0 != -1)
  {
LABEL_77:
    swift_once();
  }

  v22 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v22, qword_100179508);
  sub_100039AA0(4, &v3[v2], p_type, Strong);
}

id sub_100016440(char *a1, double a2)
{
  v3 = v2;
  v5 = a1;
  v8 = *&a1[OBJC_IVAR___AUAAudioDevice_clock];
  v7 = *&a1[OBJC_IVAR___AUAAudioDevice_clock + 8];
  ObjectType = swift_getObjectType();
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_67;
  }

  if (a2 <= -1.0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (a2 >= 1.84467441e19)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    type metadata accessor for AUAStream(0);
    v14 = _bridgeCocoaArray<A>(_:)();
    goto LABEL_8;
  }

  v10 = ObjectType;
  (*(v7 + 24))(a2, 0, ObjectType, v7);
  v11 = (*(v7 + 16))(v10, v7);
  if (v12)
  {
    v11 = 0.0;
  }

  [v5 setSamplingRate:v11];
  v13 = AUAAudioDevice.inputAUAStreams()();
  if (v13 >> 62)
  {
    goto LABEL_70;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for AUAStream(0);
  v14 = v13;
LABEL_8:

  v15 = AUAAudioDevice.outputAUAStreams()();
  if (v15 >> 62)
  {
    type metadata accessor for AUAStream(0);
    v16 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for AUAStream(0);
    v16 = v15;
  }

  sub_10007DC24(v16);
  v17 = v14;
  p_type = &stru_10016FFF0.type;
  if (!(v14 >> 62))
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_12:
      v47 = v3;
      v48 = v5;
      v51 = 0;
      i = 0;
      v21 = 0;
      v49 = v17;
      v50 = v17 & 0xC000000000000001;
      while (1)
      {
        if (v50)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(v17 + 8 * v21 + 32);
        }

        v25 = v24;
        v26 = [v24 direction];
        [v5 p_type[478]];
        if (v26 != 1768845428)
        {
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_55;
          }

          if (v27 <= -1.0)
          {
            goto LABEL_57;
          }

          if (v27 >= 1.84467441e19)
          {
            goto LABEL_59;
          }

          v3 = v27;
          v34 = *&v25[OBJC_IVAR___AUAStream_latencyOverride];
          if (v34)
          {

            v35 = dispatch thunk of CustomStringConvertible.description.getter();
            if (*(v34 + 16))
            {
              v37 = sub_10001D11C(v35, v36);
              v5 = v38;
              p_type = (&stru_10016FFF0 + 16);

              if (v5)
              {
                v22 = *(*(v34 + 56) + 8 * v37);

                if ((v22 & 0x8000000000000000) != 0)
                {
                  goto LABEL_64;
                }

                v5 = v48;
                if (HIDWORD(v22))
                {
                  goto LABEL_65;
                }

LABEL_14:
                v23 = v51;
                if (v51 <= v22)
                {
                  v23 = v22;
                }

                v51 = v23;
                goto LABEL_17;
              }
            }

            else
            {
            }

            v5 = v48;
          }

          v40 = *&v25[OBJC_IVAR___AUAStream_latencyInNs];

          if (!is_mul_ok(v40, v3))
          {
            goto LABEL_61;
          }

          if (v40 * v3 > 0x3B9AC9FFFFFFFFFFLL)
          {
            __break(1u);
LABEL_53:

            v41 = v51;
            goto LABEL_78;
          }

          v22 = v40 * v3 / 0x3B9ACA00;
          goto LABEL_14;
        }

        if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v27 <= -1.0)
        {
          goto LABEL_56;
        }

        if (v27 >= 1.84467441e19)
        {
          goto LABEL_58;
        }

        v3 = v27;
        v28 = *&v25[OBJC_IVAR___AUAStream_latencyOverride];
        if (!v28)
        {
          goto LABEL_42;
        }

        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        if (!*(v28 + 16))
        {
          break;
        }

        v31 = sub_10001D11C(v29, v30);
        v5 = v32;

        if ((v5 & 1) == 0)
        {
          goto LABEL_41;
        }

        v33 = *(*(v28 + 56) + 8 * v31);

        p_type = (&stru_10016FFF0 + 16);
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        v5 = v48;
        if (HIDWORD(v33))
        {
          goto LABEL_66;
        }

LABEL_45:
        if (i <= v33)
        {
          i = v33;
        }

        else
        {
          i = i;
        }

LABEL_17:
        ++v21;
        v17 = v49;
        if (v19 == v21)
        {
          goto LABEL_53;
        }
      }

LABEL_41:

      v5 = v48;
      p_type = (&stru_10016FFF0 + 16);
LABEL_42:
      v39 = *&v25[OBJC_IVAR___AUAStream_latencyInNs];

      if (!is_mul_ok(v39, v3))
      {
        goto LABEL_60;
      }

      if (v39 * v3 > 0x3B9AC9FFFFFFFFFFLL)
      {
        goto LABEL_62;
      }

      v33 = v39 * v3 / 0x3B9ACA00;
      goto LABEL_45;
    }

    goto LABEL_76;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

  v42 = _CocoaArrayWrapper.endIndex.getter();
  if (v42)
  {
    v19 = v42;
    if (v42 >= 1)
    {
      v17 = v14;
      goto LABEL_12;
    }

    __break(1u);
LABEL_76:

    v41 = "USB Audio Device";
    p_type = OBJC_IVAR___AUAAudioDevice_logID;
    if (qword_100173CC0 != -1)
    {
      goto LABEL_89;
    }

    goto LABEL_77;
  }

  v41 = 0;
  for (i = 0; ; i = 0)
  {
LABEL_78:
    [v5 p_type[478]];
    v45 = v44 * 0.25;
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_87;
    }

    if (v45 > -1.0)
    {
      break;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
LABEL_77:
    v43 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v43, qword_100179508);
    sub_100039F58(3, p_type + v5, 0xD00000000000001FLL, (v41 | 0x8000000000000000));
    v41 = 0;
    p_type = &stru_10016FFF0.type;
  }

  if (v45 >= 4294967300.0)
  {
    goto LABEL_88;
  }

  [v5 setTimestampPeriod:v45];
  AUAAudioDevice.updateSafetyOffsets()();
  if (!i)
  {
    i = [v5 inputSafetyOffset];
  }

  [v5 setInputLatency:i];
  if (!v41)
  {
    v41 = [v5 outputSafetyOffset];
  }

  return [v5 setOutputLatency:v41];
}

void AUAAudioDevice.requestConfigurationChangeWithTrace(function:file:line:_:)(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  aBlock = a1;
  v30 = a2;

  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 2108704;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  v35 = a5;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v30, &v7[OBJC_IVAR___AUAAudioDevice_logID]);

  v19 = *&v7[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  if (a6)
  {
    v18 = swift_allocObject();
    v20 = v18;
    *(v18 + 16) = a6;
    *(v18 + 24) = a7;
    v21 = sub_10001DC08;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  aBlock = v21;
  v30 = v20;
  v22 = *(v19 + 16);
  v23 = __chkstk_darwin(v18);
  __chkstk_darwin(v23);
  sub_10001DB5C(a6);

  os_unfair_lock_lock(v22 + 4);
  sub_10001DB44(&v35);
  os_unfair_lock_unlock(v22 + 4);
  v24 = v35;

  sub_10001ED94(v21);
  if (v24 == 1)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v8;
    v33 = sub_10000CFD4;
    v34 = v25;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_1000172D4;
    v32 = &unk_1001610A0;
    v26 = _Block_copy(&aBlock);
    v27 = v8;

    v28.receiver = v27;
    v28.super_class = type metadata accessor for AUAAudioDevice();
    objc_msgSendSuper2(&v28, "requestConfigurationChange:", v26);
    _Block_release(v26);
  }
}

void sub_100016DE8(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v36[-v8];
  v10 = OBJC_IVAR___AUAAudioDevice_logID;
  v11 = qword_100173CB0;
  v40 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = a1 + v10;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AUALog(0);
    v14 = sub_10000A1BC(v13, qword_100179508);
    v40 = v40;
    sub_10003BD38(4, "AUAAudioDevice_dispatchConfigurationChange", 42, 2, v12, 0, 0xE000000000000000, v14, v40);
    v15 = v40;
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AUALog(0);
    v17 = sub_10000A1BC(v16, qword_100179508);
    v18 = *(v16 + 24);
    v19 = v12 + *(type metadata accessor for LogID(0) + 20);
    v38 = *(v3 + 16);
    v38(v9, v19, v2);
    v39 = v17;
    v20 = OSSignposter.logHandle.getter();
    v21 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v21;
      v24 = v23;
      *&v41 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_100035760(0, 0xE000000000000000, &v41);
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v37, v25, "AUAAudioDevice_dispatchConfigurationChange", "%{public}s", v22, 0xCu);
      sub_10000CE78(v24);
    }

    v38(v7, v9, v2);
    v26 = type metadata accessor for OSSignpostIntervalState();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v29 = (*(v3 + 8))(v9, v2);
    v30 = *&v40[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    while (1)
    {
      v31 = *(v30 + 16);
      __chkstk_darwin(v29);

      os_unfair_lock_lock(v31 + 4);
      sub_10001EEA4(&v41);
      os_unfair_lock_unlock(v31 + 4);
      v32 = v41;

      if (!v32)
      {
        break;
      }

      v32(v33);
      v34 = sub_10001ED94(v32);
      v35 = *(v30 + 16);
      __chkstk_darwin(v34);

      os_unfair_lock_lock(v35 + 4);
      sub_10001EEA4(&v41);
      os_unfair_lock_unlock(v35 + 4);
    }

    sub_1000461FC(v39, "AUAAudioDevice_dispatchConfigurationChange", 42, 2);
  }
}

uint64_t sub_1000172D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void AUAAudioDevice.requestConfigurationChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  aBlock = 0xD00000000000001ELL;
  v22 = 0x800000010012AED0;
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._object = 0x800000010012AEF0;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 2108704;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v27 = 822;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, 0xD00000000000001ELL, 0x800000010012AED0, &v2[OBJC_IVAR___AUAAudioDevice_logID]);

  v11 = *&v2[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  if (a1)
  {
    v10 = swift_allocObject();
    v12 = v10;
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v13 = sub_10001F01C;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  aBlock = v13;
  v22 = v12;
  v14 = *(v11 + 16);
  v15 = __chkstk_darwin(v10);
  __chkstk_darwin(v15);
  sub_10001DB5C(a1);

  os_unfair_lock_lock(v14 + 4);
  sub_10001EF80(&v27);
  os_unfair_lock_unlock(v14 + 4);
  v16 = v27;

  sub_10001ED94(v13);
  if (v16 == 1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    v25 = sub_10001EFC8;
    v26 = v17;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000172D4;
    v24 = &unk_100161118;
    v18 = _Block_copy(&aBlock);
    v19 = v3;

    v20.receiver = v19;
    v20.super_class = type metadata accessor for AUAAudioDevice();
    objc_msgSendSuper2(&v20, "requestConfigurationChange:", v18);
    _Block_release(v18);
  }
}

Swift::Void __swiftcall AUAAudioDevice.increaseLockDelay()()
{
  v1 = v0;
  v2 = type metadata accessor for LogID(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___AUAAudioDevice_extraLockDelayMS;
  v8 = *&v0[OBJC_IVAR___AUAAudioDevice_extraLockDelayMS];
  if (v8 <= 0x258)
  {
    v9 = v4;
    v10 = v8 + 50;
    v11 = v8 == 0;
    v12 = 100;
    if (!v11)
    {
      v12 = v10;
    }

    *&v0[OBJC_IVAR___AUAAudioDevice_extraLockDelayMS] = v12;
    aBlock = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v13._countAndFlagsBits = 0xD000000000000034;
    v13._object = 0x800000010012AF10;
    String.append(_:)(v13);
    v39 = *&v0[v7];
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15 = aBlock;
    v16 = v34;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A1BC(v9, qword_1001794F0);
    sub_10000A2A4(v17, v6);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v18, qword_100179508);
    sub_100039AA0(4, v6, v15, v16);

    sub_10000C9D0(v6);
    aBlock = 0xD000000000000013;
    v34 = 0x800000010012AF50;
    v19._countAndFlagsBits = 8236;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0xD00000000000001BLL;
    v20._object = 0x800000010012AEF0;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 2108704;
    v21._object = 0xE300000000000000;
    String.append(_:)(v21);
    v39 = 839;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v34, &v1[OBJC_IVAR___AUAAudioDevice_logID]);

    v23 = *&v1[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    v24 = swift_allocObject();
    v24[2] = AUAError.init(_:message:);
    v24[3] = 0;
    aBlock = sub_10001F01C;
    v34 = v24;
    v25 = *(v23 + 16);
    v26 = __chkstk_darwin(v24);
    *(&v32 - 2) = v23;
    *(&v32 - 1) = &aBlock;
    __chkstk_darwin(v26);
    *(&v32 - 2) = sub_10001EF50;
    *(&v32 - 1) = v27;

    os_unfair_lock_lock(v25 + 4);
    sub_10001EF80(&v39);
    os_unfair_lock_unlock(v25 + 4);
    LODWORD(v23) = v39;

    if (v23 == 1)
    {
      v28 = swift_allocObject();
      *(v28 + 16) = v1;
      v37 = sub_10001EFC8;
      v38 = v28;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1000172D4;
      v36 = &unk_1001611B8;
      v29 = _Block_copy(&aBlock);
      v30 = v1;

      v31 = type metadata accessor for AUAAudioDevice();
      v32.receiver = v30;
      v32.super_class = v31;
      objc_msgSendSuper2(&v32, "requestConfigurationChange:", v29);
      _Block_release(v29);
    }
  }
}

uint64_t AUAAudioDevice.getLockDelay(_:)(unint64_t a1)
{
  v5 = v1;
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + OBJC_IVAR___AUAAudioDevice_function;
  v13 = *(v1 + OBJC_IVAR___AUAAudioDevice_function);
  if (v13)
  {
    v2 = v9;
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 16))(ObjectType, v14);
    if (v16)
    {
      v4 = v16;
      if (qword_100173CF8 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  v24 = 0;
LABEL_34:
  v29 = *(v5 + OBJC_IVAR___AUAAudioDevice_extraLockDelayMS);
  v30 = __CFADD__(v24, v29);
  v31 = v24 + v29;
  if (v30)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_7:
    v21 = v13 - 32;
    v22 = sub_10000A1BC(v2, qword_1001794F0);
    sub_10000A2A4(v22, v11);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for AUALog(0);
    v13 = sub_10000A1BC(v23, qword_100179508);
    sub_100039AA0(4, v11, v3 + 19, (v21 | 0x8000000000000000));
    sub_10000C9D0(v11);
    while (1)
    {
      if (a1 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        v34 = v4;
        if (!v11)
        {
LABEL_32:
          v24 = 0;
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v34 = v4;
        if (!v11)
        {
          goto LABEL_32;
        }
      }

      v2 = 0;
      v24 = 0;
      v3 = a1 & 0xC000000000000001;
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v3)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v25 = *(a1 + 8 * v2 + 32);
        }

        v13 = v25;
        v26 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          break;
        }

        sub_1000ACB88();
        v28 = v27;

        if (v28 > v24)
        {
          v24 = v28;
        }

        ++v2;
        if (v26 == v11)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
LABEL_4:
      v17 = *(qword_100179640 + 16);
      if (v17)
      {
        v3 = 0xD00000000000001ALL;
        v18 = v17;
        v19 = String._bridgeToObjectiveC()();
        v20 = [v18 BOOLForKey:v19];

        if (v20)
        {
          v13 = "getLockDelay disabling long lock delay errata";
          if (qword_100173CB8 != -1)
          {
            goto LABEL_39;
          }

          goto LABEL_7;
        }
      }

      v13 = *&v4[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v13)
      {
        if (sub_1000AA808(0x13u, *&v4[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList]))
        {

          v24 = 100;
          goto LABEL_34;
        }

        if (sub_1000AA808(0x18u, v13))
        {

          v24 = 200;
          goto LABEL_34;
        }
      }
    }
  }

  if (v31 <= 0x18)
  {
    return 24;
  }

  else
  {
    return v31;
  }
}

void sub_100017E78(char *a1@<X0>, _DWORD *a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for OSSignpostID();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v11._countAndFlagsBits = 0x676E696C706D6173;
  v11._object = 0xED00002065746152;
  String.append(_:)(v11);
  [a1 samplingRate];
  Double.write<A>(to:)();
  v12._object = 0x800000010012BB10;
  v12._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v12);
  v50 = [a1 timestampPeriod];
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v15 = v47;
  v14 = v48;
  v16 = OBJC_IVAR___AUAAudioDevice_logID;
  v17 = qword_100173CB0;
  v44 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = &a1[v16];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AUALog(0);
    v20 = sub_10000A1BC(v19, qword_100179508);
    v21 = v44;
    sub_10004BE18(4, "AUAAudioDevice_performStartIO", 29, 2, &a1[v16], v15, v14, v20, v21);
    if (!v2)
    {
      v23 = v22;

LABEL_14:
      *v46 = v23;
      return;
    }

    __break(1u);
  }

  else
  {
    v40 = v15;
    v42 = v8;
    v43 = v2;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for AUALog(0);
    v25 = sub_10000A1BC(v24, qword_100179508);
    v26 = *(v24 + 24);
    v27 = type metadata accessor for LogID(0);
    v28 = *(v45 + 16);
    v28(v10, &v18[*(v27 + 20)], v4);

    v41 = v25;
    v29 = OSSignposter.logHandle.getter();
    v30 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v30;
      v33 = v32;
      v47 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_100035760(v40, v14, &v47);
      v34 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v49, v34, "AUAAudioDevice_performStartIO", "%{public}s", v31, 0xCu);
      sub_10000CE78(v33);
    }

    v28(v42, v10, v4);
    v35 = type metadata accessor for OSSignpostIntervalState();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v45 + 8))(v10, v4);
    v38 = v43;
    v21 = v44;
    sub_100018384(&v47, v44);
    if (!v38)
    {

      sub_1000461FC(v41, "AUAAudioDevice_performStartIO", 29, 2);

      v23 = v47;
      goto LABEL_14;
    }
  }

  sub_1000461FC(v41, "AUAAudioDevice_performStartIO", 29, 2);

  __break(1u);
}

uint64_t sub_1000193B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = v10(a2, a3, a4, a5);

  return v11;
}

uint64_t sub_100019428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = v8(a2, a3, a4);

  return v9;
}

uint64_t sub_1000194DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, char *, void, unint64_t, uint64_t, char *))
{
  v7 = OBJC_IVAR___AUAAudioDevice_logID;
  v8 = qword_100173CC0;
  v9 = v3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for AUALog(0);
  v11 = sub_10000A1BC(v10, qword_100179508);
  v12 = a3(4, a1, a2, 2, &v9[v7], 0, 0xE000000000000000, v11, v9);

  return v12;
}

void sub_1000195AC(char *a1@<X0>, unsigned int *a2@<X8>)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v45 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v39[-v9];
  v48 = 0x656553545A727563;
  v49 = 0xEA00000000002064;
  v50 = *&a1[OBJC_IVAR___AUAAudioDevice_curZTSSeed];
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12 = v49;
  v46 = v48;
  v13 = OBJC_IVAR___AUAAudioDevice_logID;
  v14 = qword_100173CB0;
  v15 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = &a1[v13];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for AUALog(0);
    v18 = sub_10000A1BC(v17, qword_100179508);
    v19 = v15;
    sub_10004D718(4, "AUAAudioDevice_performStopIO", 28, 2, v16, v46, v12, v18, v19);
    v21 = v20;
  }

  else
  {
    v44 = a2;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for AUALog(0);
    v23 = sub_10000A1BC(v22, qword_100179508);
    v24 = *(v22 + 24);
    v25 = v16 + *(type metadata accessor for LogID(0) + 20);
    v42 = *(v5 + 16);
    v42(v10, v25, v4);

    v43 = v23;
    v26 = OSSignposter.logHandle.getter();
    v27 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v28 = swift_slowAlloc();
      v41 = v5;
      v29 = v28;
      v30 = swift_slowAlloc();
      v40 = v27;
      v31 = v30;
      v48 = v30;
      *v29 = 136446210;
      v32 = sub_100035760(v46, v12, &v48);

      *(v29 + 4) = v32;
      v33 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v40, v33, "AUAAudioDevice_performStopIO", "%{public}s", v29, 0xCu);
      sub_10000CE78(v31);

      v5 = v41;
    }

    else
    {
    }

    v42(v45, v10, v4);
    v34 = type metadata accessor for OSSignpostIntervalState();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v5 + 8))(v10, v4);
    v37 = type metadata accessor for AUAAudioDevice();
    v47.receiver = v15;
    v47.super_class = v37;
    v21 = objc_msgSendSuper2(&v47, "performStopIO");
    v38 = *&v15[OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession];
    *&v15[OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession] = 0;

    *&v15[OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame] = 0;
    *&v15[OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame] = 0;
    *&v15[OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame] = 0;
    sub_1000461FC(v43, "AUAAudioDevice_performStopIO", 28, 2);

    a2 = v44;
  }

  *a2 = v21;
}

uint64_t sub_100019A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, char *, void, unint64_t, uint64_t, char *))
{
  v8 = OBJC_IVAR___AUAAudioDevice_logID;
  v9 = qword_100173CC0;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for AUALog(0);
  v12 = sub_10000A1BC(v11, qword_100179508);
  v13 = a5(4, a3, a4, 2, &v10[v8], 0, 0xE000000000000000, v12, v10);

  return v13;
}

Swift::Bool __swiftcall AUAAudioDevice.changeSamplingRate(_:)(Swift::Double a1)
{
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 samplingRate];
  if (v7 == a1)
  {
    aBlock = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v8._countAndFlagsBits = 0xD000000000000038;
    v8._object = 0x800000010012AFB0;
    String.append(_:)(v8);
    Double.write<A>(to:)();
    v9 = aBlock;
    v10 = v31;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A1BC(v3, qword_1001794F0);
    sub_10000A2A4(v11, v6);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v12, qword_100179508);
    sub_100039AA0(3, v6, v9, v10);

    sub_10000C9D0(v6);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = a1;
    aBlock = 0xD000000000000016;
    v31 = 0x800000010012AF90;
    v14 = v1;
    v15._countAndFlagsBits = 8236;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    v16._object = 0x800000010012AEF0;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 2108704;
    v17._object = 0xE300000000000000;
    String.append(_:)(v17);
    v36 = 1001;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v31, &v14[OBJC_IVAR___AUAAudioDevice_logID]);

    v19 = *&v14[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    v20 = swift_allocObject();
    v20[2] = sub_10001E020;
    v20[3] = v13;
    aBlock = sub_10001F01C;
    v31 = v20;
    v21 = *(v19 + 16);
    v22 = __chkstk_darwin(v20);
    *(&v29 - 2) = v19;
    *(&v29 - 1) = &aBlock;
    __chkstk_darwin(v22);
    *(&v29 - 2) = sub_10001EF50;
    *(&v29 - 1) = v23;

    os_unfair_lock_lock(v21 + 4);
    sub_10001EF80(&v36);
    os_unfair_lock_unlock(v21 + 4);
    LODWORD(v19) = v36;

    if (v19 == 1)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v14;
      v34 = sub_10001EFC8;
      v35 = v24;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_1000172D4;
      v33 = &unk_100161258;
      v25 = _Block_copy(&aBlock);
      v26 = v14;

      v27 = type metadata accessor for AUAAudioDevice();
      v29.receiver = v26;
      v29.super_class = v27;
      objc_msgSendSuper2(&v29, "requestConfigurationChange:", v25);
      _Block_release(v25);
    }
  }

  return 1;
}

uint64_t sub_100019FA8(void *a1, double a2)
{
  v4._countAndFlagsBits = 0x3A6574615277656ELL;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5 = OBJC_IVAR___AUAAudioDevice_logID;
  v6 = qword_100173CC0;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AUALog(0);
  v9 = sub_10000A1BC(v8, qword_100179508);
  sub_10003B08C(3, "setSamplingRate", 15, 2, &v7[v5], 0, 0xE000000000000000, v9, a2, v7);
}

id AUAAudioDevice.updateTimeStamp(hostTime:sampleTime:seed:from:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = v4;
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v19 = &v83 - v18;
  v20 = *(v6 + OBJC_IVAR___AUAAudioDevice_timestampStream);
  if (v20)
  {
    v21 = v20 == a3;
  }

  else
  {
    v21 = 0;
  }

  if (!v21 || *(v6 + OBJC_IVAR___AUAAudioDevice_curZTSSeed) != a2)
  {
    return result;
  }

  v86 = v17;
  [*(v6 + OBJC_IVAR___AUAAudioDevice_timestamp) write:a1 hostTime:a4];
  v22 = OBJC_IVAR___AUAAudioDevice_lastZTSMach;
  v23 = *(v6 + OBJC_IVAR___AUAAudioDevice_lastZTSMach);
  v24 = a1 - v23;
  if (a1 < v23)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_9;
  }

  swift_once();
LABEL_9:
  if (qword_100179650 == HIDWORD(qword_100179650))
  {
    goto LABEL_13;
  }

  if (!is_mul_ok(v24, qword_100179650))
  {
    __break(1u);
    goto LABEL_53;
  }

  if (!HIDWORD(qword_100179650))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_21;
  }

  v24 = v24 * qword_100179650 / HIDWORD(qword_100179650);
LABEL_13:
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v25 = OBJC_IVAR___AUAAudioDevice_lastZTSDeltaNS;
  v26 = *(v6 + OBJC_IVAR___AUAAudioDevice_lastZTSDeltaNS);
  a3 = v24 - v26;
  if (__OFSUB__(v24, v26))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v6 + v22) = a1;
  v5 = 0xED000020656D6172;
  *(v6 + v25) = v24;
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v87 = 0x656D695474736F68;
  v88 = 0xE900000000000020;
  v95 = a1;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x656C706D6173202CLL;
  v28._object = 0xED000020656D6954;
  String.append(_:)(v28);
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a4 <= -1.0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (a4 < 1.84467441e19)
  {
    v95 = a4;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 0x72657474696A202CLL;
    v30._object = 0xEC00000020736E20;
    String.append(_:)(v30);
    v95 = a3;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    a3 = v87;
    v24 = v88;
    v5 = v6 + OBJC_IVAR___AUAAudioDevice_logID;
    if (qword_100173CB0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_19:
  v84 = byte_1001794E8;
  v85 = v5;
  if (byte_1001794E8 != 1)
  {
    v83 = v15;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v36, qword_100179508);
    v37 = *(v36 + 24);
    v38 = type metadata accessor for LogID(0);
    v39 = v86;
    (*(v86 + 16))(v19, v5 + *(v38 + 20), v11);

    v40 = OSSignposter.logHandle.getter();
    v41 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v42 = a3;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v87 = v44;
      *v43 = 136446210;
      v45 = sub_100035760(v42, v24, &v87);

      *(v43 + 4) = v45;
      v46 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v41, v46, "AUAAudioDevice_updateTimeStamp", "%{public}s", v43, 0xCu);
      sub_10000CE78(v44);
    }

    else
    {
    }

    (*(v39 + 8))(v19, v11);
    v15 = v83;
    goto LABEL_28;
  }

  if (qword_100173CC0 != -1)
  {
    goto LABEL_54;
  }

LABEL_21:
  v32 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v32, qword_100179508);
  v87 = StaticString.description.getter();
  v88 = v33;
  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = a3;
  v35._object = v24;
  String.append(_:)(v35);

  sub_100039AA0(4, v5, v87, v88);

LABEL_28:
  result = [*(v6 + OBJC_IVAR___AUAAudioDevice_timeCorrelater) getStatistics];
  v47 = v90;
  if (v90)
  {
    v48 = v89;
    v50 = v91;
    v49 = v92;
    v51 = v93;
    if (v92 > 0x4E20 || v91 > 0x186A0 || v93 || v94)
    {
      v87 = 0;
      v88 = 0xE000000000000000;
      LODWORD(v83) = v94;
      _StringGuts.grow(_:)(158);
      v52._countAndFlagsBits = 0x467265506863616DLL;
      v52._object = 0xED000020656D6172;
      String.append(_:)(v52);
      Double.write<A>(to:)();
      v53._countAndFlagsBits = 0x664F656B6177202CLL;
      v53._object = 0xEF20534E74657366;
      String.append(_:)(v53);
      v95 = v48;
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v55._object = 0x800000010012B630;
      v55._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v55);
      v95 = v47;
      v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v56);

      v57._countAndFlagsBits = 0xD00000000000001BLL;
      v57._object = 0x800000010012B650;
      String.append(_:)(v57);
      v95 = v50;
      v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v58);

      v59._countAndFlagsBits = 0xD000000000000015;
      v59._object = 0x800000010012B670;
      String.append(_:)(v59);
      v95 = v49;
      v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v60);

      v61._countAndFlagsBits = 0xD000000000000019;
      v61._object = 0x800000010012B690;
      String.append(_:)(v61);
      LODWORD(v95) = v51;
      v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v62);

      v63._countAndFlagsBits = 0xD00000000000001ALL;
      v63._object = 0x800000010012B6B0;
      String.append(_:)(v63);
      LODWORD(v95) = v83;
      v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v64);

      v66 = v87;
      v65 = v88;
      if (v84)
      {
        v67 = v85;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v68, qword_100179508);
        v87 = StaticString.description.getter();
        v88 = v69;
        v70._countAndFlagsBits = 32;
        v70._object = 0xE100000000000000;
        String.append(_:)(v70);
        v71._countAndFlagsBits = v66;
        v71._object = v65;
        String.append(_:)(v71);

        sub_100039AA0(4, v67, v87, v88);
      }

      else
      {
        v72 = v85;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v73, qword_100179508);
        v74 = *(v73 + 24);
        v75 = type metadata accessor for LogID(0);
        v76 = v86;
        (*(v86 + 16))(v15, v72 + *(v75 + 20), v11);

        v77 = OSSignposter.logHandle.getter();
        v78 = static os_signpost_type_t.event.getter();

        if (OS_os_log.signpostsEnabled.getter())
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v87 = v80;
          *v79 = 136446210;
          v81 = sub_100035760(v66, v65, &v87);

          *(v79 + 4) = v81;
          v82 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, v78, v82, "AUAAudioDevice_timeCorrelater", "%{public}s", v79, 0xCu);
          sub_10000CE78(v80);
        }

        else
        {
        }

        return (*(v76 + 8))(v15, v11);
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall AUAAudioDevice.hasImplicitFeedbackStream()()
{
  v0 = AUAAudioDevice.inputAUAStreams()();
  v23 = v0;
  if (v0 >> 62)
  {
LABEL_30:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_31:

    return 0;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_31;
  }

LABEL_3:
  v2 = 0;
  p_type = &stru_10016FFF0.type;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v6 = *(v23 + 32 + 8 * v2);
    }

    v5 = v6;
    if (__OFADD__(v2++, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v8 = [v6 p_type[490]];
    if (v8)
    {
      break;
    }

LABEL_6:

    if (v2 == v1)
    {
      goto LABEL_31;
    }
  }

  v9 = v8;
  type metadata accessor for AUAStreamFormat();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    v4 = v5;
    v5 = v9;
LABEL_5:

    goto LABEL_6;
  }

  v11 = *(v10 + OBJC_IVAR___AUAStreamFormat_altSetting);
  if (!v11)
  {
    v4 = v9;
    goto LABEL_5;
  }

  v12 = p_type;
  v13 = *(v11 + 104);
  v14 = *&v5[OBJC_IVAR___AUAStream_interface];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
    if (v17)
    {
      v18 = *(v17 + 16);
      v19 = (v17 + 32);
      while (v18)
      {
        v20 = *v19++;
        --v18;
        if (v20 == 11)
        {

          return 1;
        }
      }
    }
  }

  else
  {
  }

  v21 = IOUSBGetEndpointUsageType(*(v13 + 16));

  if (v21 != 2)
  {
    p_type = v12;
    goto LABEL_6;
  }

  return 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AUAAudioDevice.addGlobalControls()()
{
  if (!*(v0 + OBJC_IVAR___AUAAudioDevice_function))
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 69;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_function + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  v6 = *(v2 + 16);
  v34 = v6(ObjectType, v2);
  if (!v34)
  {
    sub_10000CA2C();
    swift_allocError();
    *v13 = 7;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v40 = v1;
  v7 = swift_getObjectType();
  v8 = v4(v7, v2);
  v9 = v6(ObjectType, v2);
  v10 = *(v8 + 200);
  if (v10)
  {
    v11 = [objc_allocWithZone(IOKService) initWithServiceEntry:{objc_msgSend(v10, "ioService")}];
    sub_100022654(&v35, v11, 0);

    if (v36)
    {
      sub_10000CE28(&v35, &v37);
LABEL_11:

      goto LABEL_13;
    }

    sub_10000D040(&v35, &unk_100174A20, &unk_100120170);
  }

  if (v9)
  {
    sub_100022654(&v37, *&v9[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService], 0);
    goto LABEL_11;
  }

  v37 = 0u;
  v38 = 0u;

LABEL_13:
  v14 = v40;
  if (*(&v38 + 1))
  {
    if (swift_dynamicCast())
    {
      v15 = String._bridgeToObjectiveC()();

      goto LABEL_18;
    }
  }

  else
  {
    sub_10000D040(&v37, &unk_100174A20, &unk_100120170);
  }

  v15 = 0;
LABEL_18:
  [v32 setConfigurationBundleID:v15];

  v16 = *(v5 + 168);
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    v33 = v16 + 32;
    v31 = v16;
    while (v18 < *(v16 + 16))
    {
      sub_10001EAFC(v33 + 40 * v18, &v37);
      v19 = *(&v38 + 1);
      v20 = v39;
      sub_10001EAB8(&v37, *(&v38 + 1));
      v21 = [v34 plugin];
      if (!v21)
      {
        goto LABEL_43;
      }

      v22 = v21;
      v23 = (*(v20 + 80))(1735159650, v21, v19, v20);
      if (v14)
      {
        swift_unknownObjectRelease();

        sub_10000CE78(&v37);
        return;
      }

      v24 = v23;

      if (v24)
      {
        v40 = 0;
        if (v24 >> 62)
        {
          v25 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v26 = v32;
        if (v25)
        {
          v27 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v28 = *(v24 + 8 * v27 + 32);
            }

            v29 = v28;
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            [v26 addControl:v28];

            ++v27;
            if (v30 == v25)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
          break;
        }

LABEL_20:

        v14 = v40;
        v16 = v31;
      }

      ++v18;
      sub_10000CE78(&v37);
      if (v18 == v17)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
LABEL_38:
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AUAAudioDevice.addStreamControls()()
{
  v2 = *&v0[OBJC_IVAR___AUAAudioDevice_function];
  if (!v2)
  {
    sub_10000CA2C();
    swift_allocError();
    *v22 = 69;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v3 = v0;
  v4 = *&v0[OBJC_IVAR___AUAAudioDevice_function + 8];
  v5 = *&v0[OBJC_IVAR___AUAAudioDevice_function];
  ObjectType = swift_getObjectType();
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v4);
  v9 = v4;
  v10 = v8;
  v11 = (*(v9 + 16))(ObjectType, v9);
  if (!v11)
  {
    sub_10000CA2C();
    swift_allocError();
    *v23 = 7;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v52 = v11;
  v53 = v10;
  v12 = [v0 controls];
  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = v12;
  v50 = v3;
  sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = _swiftEmptyArrayStorage;
  v49 = v9;
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v2;
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_25:
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

LABEL_24:
  v15 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v2;
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_6:
  v2 = 0;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    v18 = v2;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 8 * v18 + 32);
      }

      v20 = v19;
      v2 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ([v19 controlScope] != 1735159650)
      {
        break;
      }

      ++v18;
      if (v2 == v15)
      {
        goto LABEL_26;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v17 = v56;
  }

  while (v2 != v15);
LABEL_26:

  v2 = v16;
  if (!(v17 >> 62))
  {
    v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v49;
    v3 = v50;
    if (v24)
    {
      goto LABEL_28;
    }

LABEL_35:

LABEL_36:
    v56 = _swiftEmptyArrayStorage;
    v55 = _swiftEmptyArrayStorage;
    v28 = AUAAudioDevice.inputAUAStreams()();
    if (v28 >> 62)
    {
      goto LABEL_84;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for AUAStream(0);
    for (i = v28; ; i = _bridgeCocoaArray<A>(_:)())
    {

      v30 = AUAAudioDevice.outputAUAStreams()();
      if (v30 >> 62)
      {
        type metadata accessor for AUAStream(0);
        v31 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        v31 = v30;
      }

      v32 = v3;

      v54 = i;
      sub_10007DC24(v31);
      v33 = v54;
      if (v54 >> 62)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v3 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v51 = v2;
      swift_unknownObjectRetain();

      v52 = v52;
      v2 = v32;
      if (v3)
      {
        v34 = 0;
        while (1)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_83;
            }

            v35 = *(v33 + 8 * v34 + 32);
          }

          v36 = v35;
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          v54 = v35;
          sub_10001B9CC(&v54, v53, v52, &v56, &v55, v51, v9, v2);
          if (v1)
          {

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();

            return;
          }

          ++v34;
          if (v37 == v3)
          {
            v9 = v56;
            goto LABEL_54;
          }
        }
      }

      else
      {
        v9 = _swiftEmptyArrayStorage;
LABEL_54:

        swift_unknownObjectRelease();
        if (v9 >> 62)
        {
          v38 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v38 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v39 = v2;
        if (v38)
        {
          v2 = 0;
          v3 = v9 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v2 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_79;
              }

              v40 = *(v9 + 8 * v2 + 32);
            }

            v41 = v40;
            v42 = (v2 + 1);
            if (__OFADD__(v2, 1))
            {
              break;
            }

            [v39 addControl:v40];

            ++v2;
            if (v42 == v38)
            {
              goto LABEL_65;
            }
          }

          __break(1u);
LABEL_79:
          __break(1u);
        }

        else
        {
LABEL_65:

          v2 = v55;
          if (v55 >> 62)
          {
            v43 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v43 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v44 = v39;
          if (!v43)
          {
LABEL_77:

            swift_unknownObjectRelease();

            return;
          }

          v3 = 0;
          v45 = v9;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_81;
              }

              v46 = *(v2 + 8 * v3 + 32);
            }

            v47 = v46;
            v9 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            [v44 addCustomProperty:v46];

            ++v3;
            v48 = v9 == v43;
            v9 = v45;
            if (v48)
            {
              goto LABEL_77;
            }
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      type metadata accessor for AUAStream(0);
    }
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  v9 = v49;
  v3 = v50;
  if (!v24)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v24 >= 1)
  {
    for (j = 0; j != v24; ++j)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v17 + 8 * j + 32);
      }

      v27 = v26;
      [v3 removeControl:v26];
    }

    goto LABEL_35;
  }

  __break(1u);
}

void sub_10001B9CC(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v138 = a8;
  v12 = *a1;
  v13 = *(a2 + 168);
  v156 = *a1;
  v145 = *(v13 + 16);
  if (!v145)
  {
LABEL_116:
    if (qword_100173CF8 != -1)
    {
      goto LABEL_147;
    }

    goto LABEL_117;
  }

  v143 = &v12[OBJC_IVAR___AUAStream_path];
  v146 = v13 + 32;
  v147 = *(a2 + 168);
  v142 = OBJC_IVAR___AUAStream_controlScope;
  swift_beginAccess();
  v14 = v147;
  v15 = 0;
  v144 = a5;
  v158 = a4;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      goto LABEL_134;
    }

    v155 = v15;
    sub_10001EAFC(v146 + 40 * v15, v169);
    sub_10001EAFC(v169, v163);
    sub_100001AB4(&qword_100174F60, &qword_100121090);
    sub_100001AB4(&qword_100174F68, &unk_100120B90);
    if (!swift_dynamicCast())
    {
      sub_10000CE78(v169);
      v162 = 0;
      memset(v161, 0, sizeof(v161));
      sub_10000D040(v161, &qword_100174F70, &qword_100120FD0);
      goto LABEL_4;
    }

    sub_10000D0A0(v161, v166);
    v17 = *v143;
    v16 = *(v143 + 1);
    v18 = *(v143 + 2);
    v19 = v167;
    v20 = v168;
    sub_10001EAB8(v166, v167);
    if ((*(*(v20 + 8) + 48))(v19) != *(v17 + 88))
    {
      v21 = v167;
      v22 = v168;
      sub_10001EAB8(v166, v167);
      if ((*(*(v22 + 8) + 48))(v21) != *(v16 + 72))
      {
        break;
      }
    }

LABEL_13:
    v32 = v167;
    v33 = v168;
    sub_10001EAB8(v166, v167);
    v34 = *&v156[v142];
    v35 = [a3 plugin];
    if (!v35)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v36 = v35;
    v37 = (*(*(v33 + 8) + 80))(v34, v35, v32);
    v39 = v38;

    if (v9)
    {
LABEL_128:
      sub_10000CE78(v169);
      sub_10000CE78(v166);
      return;
    }

    a4 = v158;
    if (v37)
    {
      sub_10007DC54(v37);
    }

    if (v39)
    {
      sub_10007DD60(v39);
    }

LABEL_19:
    if ([v156 direction] == 1768845428)
    {
      ObjectType = swift_getObjectType();
      v41 = sub_10004F2E8(v166, ObjectType, a7);
      if (v9)
      {
        goto LABEL_128;
      }

      if (!v41)
      {
        v42 = sub_10004F348(*(v143 + 1), ObjectType, a7);
        v152 = *(v42 + 2);
        if (v152)
        {
          v43 = 0;
          v148 = v42;
          v149 = v42 + 32;
          while (1)
          {
            if (v43 >= *(v42 + 2))
            {
              goto LABEL_133;
            }

            v44 = v9;
            v45 = a5;
            v157 = v43;
            v46 = &v149[24 * v43];
            v48 = *v46;
            v47 = *(v46 + 1);
            v49 = *(v46 + 2);
            v50 = v167;
            v51 = v168;
            sub_10001EAB8(v166, v167);
            v52 = *(v51 + 8);
            v53 = *(v52 + 48);

            v170 = v49;

            if (v53(v50, v52) != *(v48 + 88))
            {
              v54 = v167;
              v55 = v168;
              sub_10001EAB8(v166, v167);
              if ((*(*(v55 + 8) + 48))(v54) != *(v47 + 72))
              {
                v70 = v170 + 32;
                v71 = -*(v170 + 16);
                a4 = -1;
                a5 = v45;
                v9 = v44;
                while (1)
                {
                  if (v71 + a4 == -1)
                  {

                    a4 = v158;
                    goto LABEL_26;
                  }

                  if (++a4 >= *(v170 + 16))
                  {
                    break;
                  }

                  v72 = v70 + 40;
                  sub_10001EAFC(v70, v163);
                  v73 = v167;
                  v74 = v168;
                  sub_10001EAB8(v166, v167);
                  v75 = (*(*(v74 + 8) + 48))(v73);
                  v77 = v164;
                  v76 = v165;
                  sub_10001EAB8(v163, v164);
                  v78 = (*(*(v76 + 8) + 48))(v77);
                  sub_10000CE78(v163);
                  v70 = v72;
                  if (v75 == v78)
                  {
                    goto LABEL_31;
                  }
                }

                __break(1u);
                goto LABEL_132;
              }
            }

            a5 = v45;
            v9 = v44;
LABEL_31:
            v56 = v167;
            v57 = v168;
            sub_10001EAB8(v166, v167);
            v58 = [a3 plugin];
            if (!v58)
            {
              __break(1u);
              goto LABEL_149;
            }

            v59 = v58;
            a4 = v158;
            v60 = (*(*(v57 + 8) + 80))(1886679669, v58, v56);
            v62 = v61;

            if (v60)
            {
              break;
            }

LABEL_69:
            if (!v62)
            {

              goto LABEL_26;
            }

            if (v62 >> 62)
            {
              v92 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v92 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v93 = *a5;
            if (*a5 >> 62)
            {
              if (v93 < 0)
              {
                v112 = *a5;
              }

              v113 = _CocoaArrayWrapper.endIndex.getter();
              v95 = v113 + v92;
              if (__OFADD__(v113, v92))
              {
                goto LABEL_137;
              }
            }

            else
            {
              v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v95 = v94 + v92;
              if (__OFADD__(v94, v92))
              {
                goto LABEL_137;
              }
            }

            v153 = v9;
            v96 = *a5;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *a5 = v96;
            if (isUniquelyReferenced_nonNull_bridgeObject)
            {
              if (v96 < 0 || (v96 & 0x4000000000000000) != 0)
              {
                goto LABEL_84;
              }

              v98 = v96 & 0xFFFFFFFFFFFFFF8;
              if (v95 <= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_86;
              }
            }

            else
            {
              if (v96 < 0 || (v96 & 0x4000000000000000) != 0)
              {
LABEL_84:
                _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_85;
              }

              v98 = v96 & 0xFFFFFFFFFFFFFF8;
            }

            v99 = *(v98 + 16);
LABEL_85:
            v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            *a5 = v96;
            v98 = v96 & 0xFFFFFFFFFFFFFF8;
LABEL_86:
            v151 = v98;
            v100 = *(v98 + 16);
            a4 = (*(v98 + 24) >> 1) - v100;
            if (v62 >> 62)
            {
              v102 = _CocoaArrayWrapper.endIndex.getter();
              if (v102)
              {
                v103 = _CocoaArrayWrapper.endIndex.getter();
                if (a4 < v103)
                {
                  goto LABEL_144;
                }

                if (v102 < 1)
                {
                  goto LABEL_146;
                }

                v139 = v103;
                sub_10001EB60(&qword_100174F88, &qword_100174F80, &unk_100120BA0);
                for (i = 0; i != v102; ++i)
                {
                  sub_100001AB4(&qword_100174F80, &unk_100120BA0);
                  v105 = sub_10001D8F4(v163, i, v62);
                  v107 = *v106;
                  (v105)(v163, 0);
                  *(v151 + 8 * v100 + 32 + 8 * i) = v107;
                }

                a5 = v144;
                v101 = v139;
                goto LABEL_96;
              }
            }

            else
            {
              v101 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v101)
              {
                if (a4 < v101)
                {
                  goto LABEL_145;
                }

                sub_10001EBA8(0, &qword_100174F78, ASDCustomProperty_ptr);
                swift_arrayInitWithCopy();
LABEL_96:

                a4 = v158;
                if (v101 < v92)
                {
                  goto LABEL_138;
                }

                if (v101 > 0)
                {
                  v108 = *(v151 + 16);
                  v90 = __OFADD__(v108, v101);
                  v109 = v108 + v101;
                  if (v90)
                  {
                    goto LABEL_140;
                  }

                  *(v151 + 16) = v109;
                }

                goto LABEL_25;
              }
            }

            a4 = v158;
            if (v92 > 0)
            {
              goto LABEL_138;
            }

LABEL_25:
            *a5 = v96;

            v9 = v153;
LABEL_26:
            v43 = v157 + 1;
            v42 = v148;
            if (v157 + 1 == v152)
            {
              goto LABEL_113;
            }
          }

          if (v60 >> 62)
          {
            v63 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v63 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v64 = *v158;
          if (*v158 >> 62)
          {
            if (v64 < 0)
            {
              v110 = *v158;
            }

            v111 = _CocoaArrayWrapper.endIndex.getter();
            v66 = v111 + v63;
            if (__OFADD__(v111, v63))
            {
              goto LABEL_135;
            }
          }

          else
          {
            v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v66 = v65 + v63;
            if (__OFADD__(v65, v63))
            {
              goto LABEL_135;
            }
          }

          a5 = *v158;
          v67 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v158 = a5;
          if (v67)
          {
            if ((a5 & 0x8000000000000000) == 0 && (a5 & 0x4000000000000000) == 0)
            {
              v68 = a5 & 0xFFFFFFFFFFFFFF8;
              if (v66 > *((a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_45:
                v69 = *(v68 + 16);
                goto LABEL_52;
              }

              goto LABEL_53;
            }
          }

          else if ((a5 & 0x8000000000000000) == 0 && (a5 & 0x4000000000000000) == 0)
          {
            v68 = a5 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_45;
          }

          _CocoaArrayWrapper.endIndex.getter();
LABEL_52:
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          *v158 = a5;
          v68 = a5 & 0xFFFFFFFFFFFFFF8;
LABEL_53:
          v150 = v68;
          v79 = *(v68 + 16);
          a4 = (*(v68 + 24) >> 1) - v79;
          if (v60 >> 62)
          {
            v83 = _CocoaArrayWrapper.endIndex.getter();
            if (!v83)
            {
              goto LABEL_67;
            }

            v84 = v83;
            v140 = _CocoaArrayWrapper.endIndex.getter();
            if (a4 < v140)
            {
              goto LABEL_141;
            }

            if (v84 < 1)
            {
              goto LABEL_143;
            }

            sub_10001EB60(&qword_100174F98, &qword_100174F90, &unk_100124B00);
            for (j = 0; j != v84; ++j)
            {
              sub_100001AB4(&qword_100174F90, &unk_100124B00);
              v86 = sub_10001D8F4(v163, j, v60);
              v88 = *v87;
              (v86)(v163, 0);
              *(v150 + 8 * v79 + 32 + 8 * j) = v88;
            }

            v9 = 0;
            v82 = v140;
LABEL_63:

            a4 = v158;
            if (v82 < v63)
            {
              goto LABEL_136;
            }

            if (v82 > 0)
            {
              v89 = *(v150 + 16);
              v90 = __OFADD__(v89, v82);
              v91 = v89 + v82;
              if (v90)
              {
                goto LABEL_139;
              }

              *(v150 + 16) = v91;
            }
          }

          else
          {
            v80 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v80)
            {
              if (a4 < v80)
              {
                goto LABEL_142;
              }

              v81 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
              v82 = v81;
              swift_arrayInitWithCopy();
              goto LABEL_63;
            }

LABEL_67:

            a4 = v158;
            if (v63 > 0)
            {
              goto LABEL_136;
            }
          }

          *a4 = a5;
          a5 = v144;
          goto LABEL_69;
        }

LABEL_113:
      }
    }

    sub_10000CE78(v169);
    sub_10000CE78(v166);
LABEL_4:
    v12 = v156;
    v15 = v155 + 1;
    v14 = v147;
    if (v155 + 1 == v145)
    {
      goto LABEL_116;
    }
  }

  v23 = v18 + 32;
  a4 = -*(v18 + 16);
  v24 = -1;
  while (1)
  {
    if (a4 + v24 == -1)
    {
      a4 = v158;
      goto LABEL_19;
    }

    if (++v24 >= *(v18 + 16))
    {
      break;
    }

    v25 = v23 + 40;
    sub_10001EAFC(v23, v163);
    v26 = v167;
    v27 = v168;
    sub_10001EAB8(v166, v167);
    v28 = (*(*(v27 + 8) + 48))(v26);
    v30 = v164;
    v29 = v165;
    sub_10001EAB8(v163, v164);
    v31 = (*(*(v29 + 8) + 48))(v30);
    sub_10000CE78(v163);
    v23 = v25;
    if (v28 == v31)
    {
      goto LABEL_13;
    }
  }

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
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  swift_once();
  v12 = v156;
LABEL_117:
  v114 = *(qword_100179640 + 16);
  if (!v114 || (v115 = v114, v116 = String._bridgeToObjectiveC()(), v117 = [v115 BOOLForKey:v116], v115, v116, v12 = v156, (v117 & 1) == 0))
  {
    v118 = sub_1000ACDAC();
    if (v118)
    {
      v119 = HIDWORD(v118);
      [v12 setIsTapStream:1];
      v120 = [v138 plugin];
      v121 = type metadata accessor for AUATapControl();
      v122 = objc_allocWithZone(v121);
      *&v122[OBJC_IVAR____TtC9AUASDCore13AUATapControl_stream] = v12;
      v160.receiver = v122;
      v160.super_class = v121;
      v123 = v12;
      v124 = objc_msgSendSuper2(&v160, "initWithValue:isSettable:forElement:inScope:withPlugin:andObjectClassID:", 0, 1, 0, v119, v120, 1702259059);
      if (v124)
      {
        v125 = v124;

        v126 = v125;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v136 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v127 = [a3 serialNumber];
        if (!v127)
        {

          return;
        }

        v128 = v127;
        v129 = type metadata accessor for AUACustomStringProperty();
        v130 = objc_allocWithZone(v129);
        *&v130[OBJC_IVAR____TtC9AUASDCore23AUACustomStringProperty_string] = v128;
        v131 = objc_allocWithZone(ASDPropertyAddress);
        v132 = v128;
        v133 = [v131 initWithSelector:2020898165 scope:1735159650 element:0];
        v159.receiver = v130;
        v159.super_class = v129;
        v134 = objc_msgSendSuper2(&v159, "initWithAddress:propertyDataType:qualifierDataType:", v133, 1886155636, 0);

        if (v134)
        {
          v135 = v134;
          [v135 setSettable:0];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v137 = *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return;
        }

LABEL_151:
        __break(1u);
        return;
      }

LABEL_150:
      __break(1u);
      goto LABEL_151;
    }
  }
}

Swift::Bool __swiftcall AUAAudioDevice.changeClientDescription(_:)(Swift::OpaquePointer_optional a1)
{
  if (*(v1 + OBJC_IVAR___AUAAudioDevice_function))
  {
    rawValue = a1.value._rawValue;
    v3 = *(v1 + OBJC_IVAR___AUAAudioDevice_function + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 136))(ObjectType, v3);
    if (v5)
    {
      if (!rawValue)
      {
        __break(1u);
        return v5;
      }

      AnyHashable.init<A>(_:)();
      if (rawValue[2] && (v6 = sub_10001D2A4(v9), (v7 & 1) != 0))
      {
        sub_10001E0C4(rawValue[7] + 32 * v6, v10);
        sub_10001E070(v9);
        if (swift_dynamicCast())
        {
          sub_1000BDD74(1684957547);
        }
      }

      else
      {

        sub_10001E070(v9);
      }
    }
  }

  LOBYTE(v5) = 0;
  return v5;
}

Swift::UInt32 __swiftcall AUAAudioDevice.usbControllerClockDomain()()
{
  v1 = v0 + OBJC_IVAR___AUAAudioDevice_function;
  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_function);
  if (!v2)
  {
    return v2;
  }

  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  v6 = v5(ObjectType, v3);
  if (!v6)
  {
    LODWORD(v2) = 0;
    return v2;
  }

  v7 = v6;
  v8 = *(v6 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService);

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 searchForPropertyWithKey:v9 inPlane:v10 withOptions:3];

  if (v11)
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
    sub_10000D040(&v25, &unk_100174A20, &unk_100120170);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = v22;
LABEL_12:
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v8 searchForPropertyWithKey:v13 inPlane:v14 withOptions:3];

  if (v15)
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
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast() || v12)
    {
LABEL_18:
      v16 = swift_getObjectType();
      v17 = v5(v16, v3);
      if (v17)
      {
        v18 = v17;
        v2 = USBDevice.locationID.getter();

        if ((v2 & 0x100000000) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }

      LODWORD(v2) = 0;
LABEL_31:
      LODWORD(v2) = v2 & 0xFF000000 | 0x425355;
      return v2;
    }
  }

  else
  {
    sub_10000D040(&v25, &unk_100174A20, &unk_100120170);
    if (v12)
    {
      goto LABEL_18;
    }
  }

  LODWORD(v2) = 7567731;
  if (sub_1000D2D48() == 2)
  {
    v19 = sub_1000D2EB8();

    if (v19 == 2)
    {
      v20 = 7567731;
    }

    else
    {
      v20 = 1228034925;
    }

    if (v19 == 1)
    {
      LODWORD(v2) = 1835100526;
    }

    else
    {
      LODWORD(v2) = v20;
    }
  }

  else
  {
  }

  return v2;
}

id AUAAudioDevice.__allocating_init(deviceUID:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithDeviceUID:v6 withPlugin:a3];

  return v7;
}

id AUADSPAudioDevice.__allocating_init(deviceUID:underlyingDevice:deviceDSPDatabase:plugin:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithDeviceUID:v10 underlyingDevice:a3 deviceDSPDatabase:a4 plugin:a5];

  return v11;
}

id sub_10001D0E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10001D11C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001D3B8(a1, a2, v6);
}

unint64_t sub_10001D194(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10001D470(a1, v4);
}

unint64_t sub_10001D1DC(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *&asc_100120BC0[8 * a1];
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_10001D4DC(a1, v5);
}

unint64_t sub_10001D260(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001D5C8(a1, v4);
}

unint64_t sub_10001D2A4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001D68C(a1, v4);
}

unint64_t sub_10001D2E8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();
  return sub_10001D754(a1, v4);
}

unint64_t sub_10001D324(unsigned int a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_100120BF0[v2]);
  Hasher._combine(_:)(word_100120C38[v3]);
  v5 = Hasher._finalize()();

  return sub_10001D7C0(v2, v5);
}

unint64_t sub_10001D3B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10001D470(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001D4DC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *&asc_100120BC0[8 * a1];
    while (*&asc_100120BC0[8 * *(*(v2 + 48) + v4)] != v6)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_10001D5C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for AUAStream(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001D68C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001EDEC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001E070(v8);
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

unint64_t sub_10001D754(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001D7C0(__int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 2 * result);
      if (word_100120BF0[*v7] == word_100120BF0[a1] && word_100120C38[v7[1]] == word_100120C38[SHIBYTE(a1)])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t (*sub_10001D86C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    *v3 = v5;
    return sub_10001D8EC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10001D8F4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_10001EFC4;
  }

  __break(1u);
  return result;
}

void (*sub_10001D974(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10001D9F4;
  }

  __break(1u);
  return result;
}

void *sub_10001D9FC@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10001DA40@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, BOOL *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = result;
    v6 = a2[1];
    swift_beginAccess();
    v7 = *(v4 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100024020(0, v7[2] + 1, 1, v7);
      *(v4 + 24) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_100024020((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = v3;
    v11[5] = v6;
    *(v4 + 24) = v7;
    result = swift_endAccess();
    *a3 = v10 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001DB5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001DB6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DBA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for AUAAudioDevice()
{
  result = qword_100174ED8;
  if (!qword_100174ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DC08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001DC30()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DC68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5[2])
  {
    v7 = v5[4];
    v6 = v5[5];

    sub_1000D1164(0, 1);
    result = swift_endAccess();
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10001DCF8@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10001DD3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];
  }

  else
  {
    v6 = 0;
    result = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_10001DFE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10001E02C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_10001E0C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001E204()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_10001E310(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, int a6)
{
  *&v6[OBJC_IVAR___AUADSPAudioDevice__transportType] = 1970496032;
  v11 = String._bridgeToObjectiveC()();

  v55.receiver = v6;
  v55.super_class = type metadata accessor for AUADSPAudioDevice();
  v12 = objc_msgSendSuper2(&v55, "initWithDeviceUID:underlyingDevice:deviceDSPDatabase:plugin:", v11, a3, a4, a5);

  *&v12[OBJC_IVAR___AUADSPAudioDevice__transportType] = a6;
  v13 = 0xE000000000000000;
  v14 = v12;
  v15 = [v14 deviceName];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19._countAndFlagsBits = v17;
  v19._object = v13;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 1347634208;
  v20._object = 0xE400000000000000;
  String.append(_:)(v20);
  v21 = String._bridgeToObjectiveC()();

  [v14 setDeviceName:v21];

  v22 = [a3 inputStreams];
  if (v22)
  {
    v23 = v22;
    sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v24 >> 62))
    {
LABEL_6:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_6;
    }
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:
  p_type = (&stru_10016FFF0 + 16);
  v27 = (&stru_10016FFF0 + 16);
  if (v25 < 1)
  {
  }

  else
  {
    v28 = objc_allocWithZone(ASDDSPStream);
    sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
    v29 = v14;
    v30 = a5;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v32 = [v28 initWithOwningDevice:v29 underlyingStreams:isa direction:1768845428 plugin:v30];

    [v32 setKeepGraphInitialized:1];
    v33 = v32;
    [v33 setTerminalType:1835623282];
    result = [v33 setStartingChannel:1];
    if ((v24 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v35 = *(v24 + 32);
    }

    v36 = v35;
    v37 = [v35 physicalFormats];

    [v33 setPhysicalFormats:v37];
    if ((v24 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v38 = *(v24 + 32);
    }

    v39 = v38;
    p_type = &stru_10016FFF0.type;

    v40 = [v39 physicalFormat];

    v27 = &stru_10016FFF0.type;
    [v33 setPhysicalFormat:v40];

    [v29 addInputStream:v33];
  }

  v41 = [a3 outputStreams];
  if (v41)
  {
    v42 = v41;
    sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v43 >> 62))
    {
      goto LABEL_20;
    }

LABEL_27:
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_21;
    }

LABEL_28:

    v48 = v14;
LABEL_31:

    [v14 updateDeviceDSPConfiguration];
    return v14;
  }

  v43 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_28;
  }

LABEL_21:
  v44 = objc_allocWithZone(ASDDSPStream);
  sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
  v45 = a5;
  v46 = Array._bridgeToObjectiveC()().super.isa;
  v47 = [v44 initWithOwningDevice:v14 underlyingStreams:v46 direction:1869968496 plugin:v45];

  [v47 setKeepGraphInitialized:1];
  v48 = v47;
  result = [v48 setTerminalType:1936747378];
  if ((v43 & 0xC000000000000001) != 0)
  {
    v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(v43 + 32);
LABEL_24:
    v50 = v49;
    v51 = [v49 physicalFormats];

    [v48 setPhysicalFormats:v51];
    if ((v43 & 0xC000000000000001) != 0)
    {
      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v52 = *(v43 + 32);
    }

    v53 = v52;

    v54 = [v53 p_type[490]];

    [v48 v27[491]];
    [v14 addOutputStream:v48];

    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10001E8F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001E938()
{
  result = qword_100174F28;
  if (!qword_100174F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174F28);
  }

  return result;
}

uint64_t sub_10001E98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001EA64()
{
  result = qword_100174F50;
  if (!qword_100174F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174F50);
  }

  return result;
}

void *sub_10001EAB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001EAFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001EB60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001E8F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001EBA8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001ECBC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_10001ED24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100174FB0, &unk_100120FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001ED94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001EDA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10001EEA4@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

unint64_t sub_10001F020(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v1 = BYTE1(a1) - 1;
  if ((BYTE1(a1) - 1) >= 3u)
  {
    v1 = 5;
  }

  if ((a1 & 2) != 0)
  {
    return (BYTE4(a1) | (v1 << 8)) | (BYTE3(a1) << 16);
  }

  if ((a1 & 0xFF0000000000) != 0)
  {
    return BYTE5(a1);
  }

  return BYTE4(a1) | (v1 << 8) | a1 & 0xFFFF0000;
}

uint64_t sub_10001F0BC(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = 0;
  v10 = USBDescriptorControl.pbLayout()();
  v11 = sub_1000A0FF0(v10, 4);
  if (v3)
  {
    return v2;
  }

  v14 = v12;
  v97 = v11;
  v90 = a1;
  v15 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v30 = 7;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_18:

    return v2;
  }

  v17 = Strong;
  v18 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (v18 && sub_1000AA808(7u, v18))
  {
    sub_10000CA2C();
    swift_allocError();
    *v19 = 126;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  v93 = v10;
  v92 = v15;
  v88 = v6;
  v89 = v9;
  v105 = v17;
  v91 = (v97 >> 8) & 1;
  HIBYTE(v87._object) = -18;
  strcpy(&v87, "Unknown Device");
  v101 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
  v103 = *(a2 + 32);
  v98 = v90 & 0xFFFFFF00;
  v100 = "quest on device ";
  v95 = 0x800000010012BEE0;
  v96 = "ect number of bytes received";
  v102 = ((v90 & 0xFF00) << 16) | 0x1A1;
  v99 = xmmword_100120CD0;
  v94 = xmmword_10011DE90;
  v20 = 1;
  while (1)
  {
    v22 = *(v103 + 2);
    v23 = NSData.startIndex.getter();
    v24 = NSData.endIndex.getter();
    v25 = NSData.startIndex.getter();
    v26 = NSData.endIndex.getter();
    if (v23 < v25 || v26 < v23)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_55;
    }

    v25 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v24 < v25 || v27 < v24)
    {
      goto LABEL_52;
    }

    v28 = v24 - v23;
    if (__OFSUB__(v24, v23))
    {
      goto LABEL_53;
    }

    if (v28 >= 0xFFFF)
    {
      v28 = 0xFFFFLL;
    }

    v29 = v28 & ~(v28 >> 63);
    sub_1000FC690((v22 << 32) | (v29 << 48) | v102, v14, &v108);
    if (v20 == 4)
    {
      break;
    }

    if (__OFADD__(v20++, 1))
    {
      goto LABEL_54;
    }
  }

  v31 = v108;
  v2 = v14;
  v32 = NSData.startIndex.getter();
  v33 = NSData.endIndex.getter();
  v34 = NSData.startIndex.getter();
  v35 = NSData.endIndex.getter();
  if (v32 < v34 || v35 < v32)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    swift_once();
    v42 = sub_10000A1BC(v88, qword_1001794F0);
    v43 = v89;
    sub_10000A2A4(v42, v89);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for AUALog(0);
    v45 = sub_10000A1BC(v44, qword_100179508);
    v46 = v2;
    v2 = v45;
    sub_100039F58(2, v43, v46, v29);

    sub_10000C9D0(v43);
    sub_10000CA2C();
    swift_allocError();
    *v47 = 29;
    *(v47 + 8) = 0;
    *(v47 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  v2 = v14;
  v34 = NSData.startIndex.getter();
  v36 = NSData.endIndex.getter();
  if (v33 < v34 || v36 < v33)
  {
    goto LABEL_67;
  }

  if (__OFSUB__(v33, v32))
  {
    goto LABEL_68;
  }

  if (v33 - v32 < v31)
  {
    sub_10000CA2C();
    swift_allocError();
    *v37 = 30;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  if (v91)
  {
    v38 = 256;
  }

  else
  {
    v38 = 0;
  }

  v2 = v38 & 0xFFFFFF00 | v97;
  v39 = v14;
  v40 = sub_10009CAD4(v2, v39);
  v41 = v105;
  v49 = v40;

  if (v49 < 5u)
  {

    return v2;
  }

  v50 = sub_1000A0FF0(v93, v49);
  v52 = v51;
  v104 = 0;
  v98 = v50;

  v102 = sub_1000A2D88(v90 & 0xFFFFFF);
  v53 = *(v103 + 2);
  v14 = v52;
  v54 = NSData.startIndex.getter();
  v55 = v14;
  v25 = NSData.endIndex.getter();
  v56 = NSData.startIndex.getter();
  v57 = NSData.endIndex.getter();
  if (v54 < v56 || v57 < v54)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v55 = v14;
  v58 = NSData.startIndex.getter();
  v59 = NSData.endIndex.getter();
  if (v25 < v58 || v59 < v25)
  {
    goto LABEL_70;
  }

  v60 = v25 - v54;
  if (__OFSUB__(v25, v54))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v25 = v41;
  if (v60 >= 0xFFFF)
  {
    v60 = 0xFFFFLL;
  }

  v61 = v60 & ~(v60 >> 63);
  v62 = v53;
  v63 = (v53 << 32) | (v61 << 48);
  v64 = v102;
  v65 = v104;
  sub_1000FC690(v63 & 0xFFFFFFFF00FFFFFFLL | (v102 << 24) | 0x1A1, v52, &v108);
  if (v65)
  {
    v104 = v65;
    v55 = _convertErrorToNSError(_:)();
    v66 = [v55 code];

    if (v66 >= 0xFFFFFFFF80000000)
    {
      if (v66 <= 0x7FFFFFFF)
      {
        v67 = [v25 boxName];
        if (v67)
        {
          v68 = v67;
          v87._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87._object = v69;
        }

        v70 = v64 << 8;
        v106 = 0;
        v107 = 0xE000000000000000;
        if (v66 == -536850432)
        {
          _StringGuts.grow(_:)(32);

          v106 = 0xD000000000000012;
          v107 = v95;
          String.append(_:)(v87);

          v71._countAndFlagsBits = 0x64656C6C61745320;
          v71._object = 0xEA0000000000203ALL;
          String.append(_:)(v71);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
        }

        else
        {
          _StringGuts.grow(_:)(45);

          v106 = 0x20726F727245;
          v107 = 0xE600000000000000;
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v78 = swift_allocObject();
          *(v78 + 16) = v94;
          *(v78 + 56) = &type metadata for Int32;
          *(v78 + 64) = &protocol witness table for Int32;
          *(v78 + 32) = v66;
          v79._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v79);

          v80._countAndFlagsBits = 0xD000000000000020;
          v80._object = (v96 | 0x8000000000000000);
          String.append(_:)(v80);
          String.append(_:)(v87);

          v81._countAndFlagsBits = 58;
          v81._object = 0xE100000000000000;
          String.append(_:)(v81);
        }

        v72 = swift_allocObject();
        *(v72 + 16) = v99;
        *(v72 + 56) = &type metadata for UInt8;
        *(v72 + 64) = &protocol witness table for UInt8;
        *(v72 + 32) = -95;
        *(v72 + 96) = &type metadata for UInt8;
        *(v72 + 104) = &protocol witness table for UInt8;
        *(v72 + 72) = 1;
        *(v72 + 136) = &type metadata for UInt16;
        *(v72 + 144) = &protocol witness table for UInt16;
        *(v72 + 112) = v70;
        *(v72 + 176) = &type metadata for UInt16;
        *(v72 + 184) = &protocol witness table for UInt16;
        *(v72 + 152) = v62;
        *(v72 + 216) = &type metadata for UInt16;
        *(v72 + 224) = &protocol witness table for UInt16;
        *(v72 + 192) = v61;
        v82._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v82);

        v55 = v106;
        v52 = v107;
        if (qword_100173CC0 == -1)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
LABEL_64:
      v83 = type metadata accessor for AUALog(0);
      v84 = sub_10000A1BC(v83, qword_100179508);
      v85 = v55;
      v2 = v84;
      sub_100039F58(2, v25 + v101, v85, v52);

      swift_willThrow();

      goto LABEL_18;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_55:

  v73 = v108;
  v74 = NSData.startIndex.getter();
  v75 = NSData.endIndex.getter();
  v76 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v74 < v76 || result < v74)
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v2 = v14;
  v77 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v75 < v77 || result < v75)
  {
    goto LABEL_76;
  }

  if (!__OFSUB__(v75, v74))
  {
    if (v73 == v75 - v74)
    {

      return v98 & 0x1FF;
    }

    else
    {
      sub_10000CA2C();
      swift_allocError();
      *v86 = 30;
      *(v86 + 8) = 0;
      *(v86 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    return v2;
  }

LABEL_77:
  __break(1u);
  return result;
}

void sub_1000201E4(int a1, uint64_t a2)
{
  v34 = 0;
  v5 = USBDescriptorControl.pbLayout()();
  sub_1000A0294(v5);
  if (v2)
  {
    return;
  }

  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v22 = 7;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v9 = Strong;
  v33 = sub_1000A2D88(a1 & 0xFFFFFF);
  v10 = *(*(a2 + 32) + 2);
  v11 = v7;
  v12 = NSData.startIndex.getter();
  v13 = v11;
  v14 = NSData.endIndex.getter();
  v15 = NSData.startIndex.getter();
  v16 = NSData.endIndex.getter();
  if (v12 < v15 || v16 < v12)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v11;
  v17 = NSData.startIndex.getter();
  v18 = NSData.endIndex.getter();
  if (v14 < v17 || v18 < v14)
  {
    goto LABEL_22;
  }

  v19 = v14 - v12;
  if (__OFSUB__(v14, v12))
  {
LABEL_23:
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v32 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v32, qword_100179508);
    sub_100039F58(2, v7 + v10, v13, v9);

    swift_willThrow();

    return;
  }

  if (v19 >= 0xFFFF)
  {
    v19 = 0xFFFFLL;
  }

  v20 = (v10 << 32) | ((v19 & ~(v19 >> 63)) << 48) | (v33 << 24) | 0x1A1;
  v21 = v9;
  sub_1000FC690(v20, v7, &v34);

  v23 = v34;
  v24 = v11;
  v25 = NSData.startIndex.getter();
  v26 = NSData.endIndex.getter();
  v27 = NSData.startIndex.getter();
  v28 = NSData.endIndex.getter();
  if (v25 < v27 || v28 < v25)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v29 = NSData.startIndex.getter();
  v30 = NSData.endIndex.getter();

  if (v26 < v29 || v30 < v26)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v26, v25))
  {
    goto LABEL_26;
  }

  if (v26 - v25 < v23)
  {
    sub_10000CA2C();
    swift_allocError();
    *v31 = 30;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

unint64_t sub_100020868(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0x6E776F6E6B6E55;
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName);
    v12 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8);
    v13 = Strong;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v14._countAndFlagsBits = v6;
  v14._object = v12;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000022;
  v15._object = 0x800000010012BE00;
  String.append(_:)(v15);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10011DE90;
  *(v16 + 56) = &type metadata for Int32;
  *(v16 + 64) = &protocol witness table for Int32;
  *(v16 + 32) = a1;
  v17._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v17);

  v18._object = 0x800000010012BE30;
  v18._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v18);
  v39 = a2;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20 = v37;
  v21 = v38;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A1BC(v7, qword_1001794F0);
  sub_10000A2A4(v22, v10);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v23, qword_100179508);
  sub_100039AA0(2, v10, v20, v21);

  sub_10000C9D0(v10);
  if (a2 == 6 && (swift_beginAccess(), (v24 = *(v3 + 216)) != 0))
  {
    v25 = [v24 bytes];
    return sub_10001F020(*v25 | (*(v25 + 1) << 16));
  }

  else
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v29 = *(v27 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName);
      v28 = *(v27 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8);
      v30 = v27;
    }

    else
    {
      v28 = 0xE700000000000000;
      v29 = 0x6E776F6E6B6E55;
    }

    v31._countAndFlagsBits = v29;
    v31._object = v28;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0xD00000000000003CLL;
    v32._object = 0x800000010012BE50;
    String.append(_:)(v32);
    v33 = v39;
    v34 = v40;
    sub_10000A2A4(v22, v10);
    sub_100039F58(2, v10, v33, v34);

    sub_10000C9D0(v10);
    sub_10000CA2C();
    swift_allocError();
    *v35 = 2;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_100020C6C()
{
  v1 = *(v0 + 160);
  v13[8] = *(v0 + 144);
  v13[9] = v1;
  v14 = *(v0 + 176);
  v2 = *(v0 + 96);
  v13[4] = *(v0 + 80);
  v13[5] = v2;
  v3 = *(v0 + 128);
  v13[6] = *(v0 + 112);
  v13[7] = v3;
  v4 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v4;
  v5 = *(v0 + 64);
  v13[2] = *(v0 + 48);
  v13[3] = v5;
  sub_1000212F0(v13);
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + 192);

  v7 = *(v0 + 200);

  v8 = *(v0 + 208);

  v9 = *(v0 + 224);

  v10 = *(v0 + 232);

  v11 = *(v0 + 240);

  return v0;
}

uint64_t sub_100020D04()
{
  sub_100020C6C();

  return swift_deallocClassInstance();
}

void *sub_100020D88()
{
  swift_beginAccess();
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

void sub_100020DCC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 216);
  *(v1 + 216) = a1;
}

uint64_t sub_100020E64()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
}

uint64_t sub_100020E9C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  *(v1 + 224) = a1;
}

uint64_t sub_100020F34()
{
  swift_beginAccess();
  v1 = *(v0 + 232);
}

uint64_t sub_100020F6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  *(v1 + 232) = a1;
}

uint64_t sub_100021004()
{
  swift_beginAccess();
  v1 = *(v0 + 240);
}

uint64_t sub_10002103C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 240);
  *(v1 + 240) = a1;
}

unint64_t sub_1000210DC(int a1, uint64_t a2)
{
  result = sub_100020868(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100021104(unsigned int a1, uint64_t a2)
{
  v3 = (a1 >> 18) & 0x3C | (a1 >> 6);
  if (v3 == 53)
  {
    v4 = sub_10001F0BC(a1 & 0xFFFFFF, a2);
    if (!v2)
    {
      return v4 & 0x1FF;
    }
  }

  else
  {
    if (v3 != 54)
    {
      sub_10000CA2C();
      swift_allocError();
      *v6 = 30;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0xE000000000000000;
      swift_willThrow();
      return v5;
    }

    sub_1000201E4(a1 & 0xFFFFFF, a2);
    if (!v2)
    {
      return v4 & 0x1FF;
    }
  }

  return v5;
}

unint64_t sub_1000211A8(unint64_t result)
{
  if (result > 0xFF)
  {
    __break(1u);
  }

  else if (result == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (result != 1);
  }

  return result;
}

unint64_t sub_1000211CC(unint64_t result)
{
  if (result > 0xFF)
  {
    __break(1u);
  }

  else
  {
    if (result == 1)
    {
      v1 = 0;
    }

    else
    {
      v1 = 17;
    }

    if (result == 2)
    {
      return 1;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

unint64_t sub_1000211F0(unint64_t result)
{
  if (result > 0xFF)
  {
    __break(1u);
  }

  else
  {
    if (result == 1)
    {
      v1 = 0;
    }

    else
    {
      v1 = 3;
    }

    if (result == 2)
    {
      return 1;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

unint64_t sub_100021214(unint64_t result)
{
  if (result > 0xFF)
  {
    __break(1u);
  }

  else if (result >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * result));
  }

  return result;
}

unint64_t sub_1000212A4()
{
  result = qword_100175168;
  if (!qword_100175168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100175168);
  }

  return result;
}

uint64_t sub_100021344@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v130 = a3;
  v10 = type metadata accessor for Mirror();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v15 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_169;
  }

  v17 = *(a1 + 41);
  if (v17 > 0xF || ((1 << v17) & 0xF3FC) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    v23 = 49;
    goto LABEL_155;
  }

  v4 = *(a1 + 32);
  if (v4[2] != a2)
  {
    sub_10000CA2C();
    swift_allocError();
    v23 = 84;
    goto LABEL_155;
  }

  if (!v4[3])
  {
    sub_10000CA2C();
    swift_allocError();
    v23 = 83;
    goto LABEL_155;
  }

  if (v4[5] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v23 = 81;
    goto LABEL_155;
  }

  if (v4[6] != 2)
  {
    sub_10000CA2C();
    swift_allocError();
    v23 = 82;
    goto LABEL_155;
  }

  if (v4[7] != 32)
  {
    sub_10000CA2C();
    swift_allocError();
    v23 = 85;
    goto LABEL_155;
  }

  v126 = v15;
  v122 = v12;
  v112[1] = v3;
  wMaxPacketSize_low = 0;
  wMaxPacketSize_high = 0;
  bmAttributes = 0;
  v115 = 0;
  v118 = 0;
  v7 = 0;
  v124 = 0;
  v131 = 0;
  v128 = 0;
  v136 = 0;
  v137 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(a1 + 40);
  v113 = v4[4];
  v159 = &_swiftEmptySetSingleton;
  v160 = &_swiftEmptySetSingleton;
  v133 = v21 | (v17 << 8);
  v120 = a1 + 41;
  v121 = (v13 + 8);
  v119 = 65280;
  v5 = _swiftEmptyArrayStorage;
  ObjectType = _swiftEmptyArrayStorage;
  v123 = _swiftEmptyArrayStorage;
  v129 = v4;
  v135 = v16;
LABEL_20:
  LODWORD(v127) = v128 & 1;
  v24 = v20;
  v25 = v19;
  v26 = (v120 + 16 * v20);
  do
  {
    if (v24 >= v16)
    {
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
      goto LABEL_173;
    }

    v140 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_168;
    }

    v19 = v25;
    v139 = v24;
    v27 = *v26;
    v28 = *(v26 - 1) | (v27 << 8);
    v161 = *(v26 - 9);
    if (_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v161, v28, v4, v133))
    {
      v134 = v5;
      goto LABEL_122;
    }

    if (v27 != 17)
    {
      v134 = v5;
      if (v27 <= 65)
      {
        v44 = v123;
        v20 = v140;
        if (v27 == 19)
        {
          v137 = v161;
          goto LABEL_19;
        }

        if (v27 == 20)
        {
          v131 = v161;
          v136 = v161;
          goto LABEL_19;
        }

        goto LABEL_113;
      }

      v44 = v123;
      v20 = v140;
      if (v27 != 70)
      {
        if (v27 == 67)
        {
          wMaxPacketSize_low = LOBYTE(v161->wMaxPacketSize);
          wMaxPacketSize_high = HIBYTE(v161->wMaxPacketSize);
          goto LABEL_19;
        }

        if (v27 == 66)
        {
          v138 = v19;
          v45 = v161;
          wMaxPacketSize = v161->wMaxPacketSize;
          if (wMaxPacketSize)
          {
            if ((v161->wMaxPacketSize & 2) != 0)
            {
              v47 = -3145343;
            }

            else
            {
              v47 = -3145344;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v123 = sub_100024518(0, *(v123 + 2) + 1, 1, v123);
            }

            v49 = *(v123 + 2);
            v48 = *(v123 + 3);
            if (v49 >= v48 >> 1)
            {
              v123 = sub_100024518((v48 > 1), v49 + 1, 1, v123);
            }

            v50 = v123;
            *(v123 + 2) = v49 + 1;
            v51 = &v50[3 * v49];
            v51[34] = BYTE2(v47);
            *(v51 + 16) = v47;
            if ((wMaxPacketSize & 2) != 0)
            {
              sub_10009B498(&v154, 12);
            }

            v44 = v123;
            v16 = v135;
            v20 = v140;
            v45 = v161;
          }

          v52 = v45->wMaxPacketSize;
          if ((v52 & 4) != 0)
          {
            if ((v45->wMaxPacketSize & 8) != 0)
            {
              v53 = -2620863;
            }

            else
            {
              v53 = -2620864;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_100024518(0, *(v44 + 2) + 1, 1, v44);
            }

            v55 = *(v44 + 2);
            v54 = *(v44 + 3);
            if (v55 >= v54 >> 1)
            {
              v44 = sub_100024518((v54 > 1), v55 + 1, 1, v44);
            }

            *(v44 + 2) = v55 + 1;
            v56 = &v44[3 * v55];
            v56[34] = BYTE2(v53);
            *(v56 + 16) = v53;
            if ((v52 & 8) != 0)
            {
              sub_10009B498(&v154, 12);
            }

            v16 = v135;
            v20 = v140;
            v45 = v161;
          }

          v57 = HIBYTE(v45->wMaxPacketSize);
          v19 = v138;
          if (v57 == 3)
          {
            v60 = v118;
            if (v45->bInterval)
            {
              v60 = 5;
            }
          }

          else
          {
            if (v57 != 1)
            {
LABEL_120:
              bDescriptorType = v45[2].bDescriptorType;
              v115 = v45[1].bmAttributes | (*&v45[1].wMaxPacketSize << 32);
              v119 = bDescriptorType | 0x100;
              bmAttributes = v45->bmAttributes;
              goto LABEL_19;
            }

            v58 = *&v45->bInterval;
            v59 = v118;
            if ((v58 & 0x10) != 0)
            {
              v59 = 3;
            }

            if ((v58 & 8) != 0)
            {
              v59 = 4;
            }

            if ((v58 & 4) != 0)
            {
              v59 = 2;
            }

            if ((v58 & 3) != 0)
            {
              v60 = 1;
            }

            else
            {
              v60 = v59;
            }
          }

          v118 = v60;
          goto LABEL_120;
        }

LABEL_113:
        sub_10009B498(&v154, 37);
        goto LABEL_19;
      }

      sub_100001AB4(&qword_100175178, &qword_100120D50);
      v61 = swift_allocObject();
      v62 = 0;
      *(v61 + 32) = 513;
      *(v61 + 34) = 449;
      *(v61 + 36) = -64;
      *(v61 + 39) = -64;
      *(v61 + 37) = 448;
      *(v61 + 40) = 2052;
      *(v61 + 42) = 577;
      *(v61 + 44) = 22;
      *(v61 + 47) = 22;
      *(v61 + 45) = 576;
      *(v61 + 48) = 8208;
      *(v61 + 50) = 769;
      *(v61 + 52) = 16;
      *(v61 + 55) = 16;
      v139 = v61;
      *(v61 + 53) = 768;
      v63 = v161;
      v132 = v7;
      v138 = v19;
      do
      {
        v64 = v139 + v62;
        if ((v63->wMaxPacketSize & *(v139 + v62 + 32)) != 0)
        {
          v65 = *(v64 + 34) | (*(v64 + 36) << 16);
          v66 = (*(v64 + 33) & v63->wMaxPacketSize);
          if ((*(v64 + 33) & v63->wMaxPacketSize) != 0)
          {
            v67 = *(v64 + 34) | (*(v64 + 36) << 16);
          }

          else
          {
            v67 = *(v64 + 37) | (*(v64 + 39) << 16);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            ObjectType = sub_100024518(0, *(ObjectType + 2) + 1, 1, ObjectType);
          }

          v69 = *(ObjectType + 2);
          v68 = *(ObjectType + 3);
          if (v69 >= v68 >> 1)
          {
            ObjectType = sub_100024518((v68 > 1), v69 + 1, 1, ObjectType);
          }

          *(ObjectType + 2) = v69 + 1;
          v70 = &ObjectType[3 * v69];
          v70[34] = BYTE2(v67);
          *(v70 + 16) = v67;
          if (v66)
          {
            v125 = ObjectType;
            *(&v155 + 1) = &type metadata for USBDescriptorControl;
            LOWORD(v154) = v65;
            BYTE2(v154) = BYTE2(v65);
            Mirror.init(reflecting:)();
            v71 = Mirror.children.getter();
            v72 = v71[2];
            v5 = v71[3];
            v4 = v71[4];
            v7 = v71[5];
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v127 = dispatch thunk of _AnyIndexBox._typeID.getter();
            swift_getObjectType();
            if (v127 != dispatch thunk of _AnyIndexBox._typeID.getter())
            {
              goto LABEL_171;
            }

            v73 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v73)
            {

              v74 = *v121;
              v4 = v129;
              ObjectType = v125;
              v7 = v132;
LABEL_109:
              v16 = v135;
              v74(v126, v122);

LABEL_110:
              v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v76 & 1) == 0)
              {
                sub_10009B498(&v154, 12);
              }

              goto LABEL_92;
            }

            dispatch thunk of _AnyCollectionBox.subscript.getter();

            v75 = v154;
            sub_10000CE78(&v155);
            v74 = *v121;
            v4 = v129;
            ObjectType = v125;
            v7 = v132;
            if (!*(&v75 + 1))
            {
              goto LABEL_109;
            }

            v74(v126, v122);
            v16 = v135;
            if (v75 != __PAIR128__(0xE700000000000000, 0x68637469507065))
            {
              goto LABEL_110;
            }
          }

          else
          {
            v4 = v129;
            v16 = v135;
          }

LABEL_92:
          v19 = v138;
          v63 = v161;
        }

        v62 += 8;
      }

      while (v62 != 24);
      swift_setDeallocating();
      swift_deallocClassInstance();
      v77 = HIBYTE(v63->wMaxPacketSize);
      if (v77 != 2)
      {
        v44 = v123;
        v20 = v140;
        if (v77 == 1)
        {
          v124 = 0;
          v128 = 0;
          v7 = *&v63->bInterval;
        }

        goto LABEL_19;
      }

      v7 = *&v63->bInterval;
      v124 = 1;
      v128 = 1;
LABEL_122:
      v44 = v123;
      v20 = v140;
LABEL_19:
      v123 = v44;
      v5 = v134;
      if (v20 == v16)
      {
        goto LABEL_159;
      }

      goto LABEL_20;
    }

    if (v19)
    {
      v138 = v19;
      v29 = v160;
      v30 = v160[2];
      if (v30)
      {
        v132 = v7;
        v134 = v5;
        sub_100001AB4(&qword_100175170, &qword_100120D48);
        v31 = swift_allocObject();
        v32 = j__malloc_size(v31);
        v31[2] = v30;
        v31[3] = 2 * v32 - 64;
        v131 = sub_10011B610(&v154, v31 + 32, v30, v29);
        v4 = *(&v154 + 1);
        v125 = *(&v155 + 1);
        v5 = v155;
        v7 = v156;

        sub_100022644();
        if (v131 != v30)
        {
          goto LABEL_172;
        }

        v4 = v129;
        v5 = v134;
        v7 = v132;
      }

      else
      {

        v31 = _swiftEmptyArrayStorage;
      }

      v16 = v135;
      v33 = v138;
      if (!v31[2])
      {

        v31 = 0;
      }

      v143 = 1;
      v144 = 1;
      if (*(ObjectType + 2))
      {
        v34 = ObjectType;
      }

      else
      {

        v34 = 0;
      }

      *&v149 = v33;
      *(&v149 + 1) = v137;
      *&v150 = v136;
      BYTE8(v150) = 0;
      *(&v150 + 10) = v146;
      HIWORD(v150) = v147;
      *(&v151 + 1) = *v148;
      DWORD1(v151) = *&v148[3];
      *(&v152 + 2) = v141;
      WORD3(v152) = v142;
      BYTE9(v150) = v144;
      LOBYTE(v151) = v127;
      *(&v151 + 1) = v7;
      LOBYTE(v152) = 0;
      *&v154 = v33;
      *(&v154 + 1) = v137;
      BYTE1(v152) = v143;
      *(&v152 + 1) = v34;
      *&v153 = 0;
      *(&v153 + 1) = v31;
      *&v155 = v136;
      BYTE8(v155) = 0;
      BYTE9(v155) = v144;
      *(&v155 + 10) = v146;
      HIWORD(v155) = v147;
      LOBYTE(v156) = v127;
      DWORD1(v156) = *&v148[3];
      *(&v156 + 1) = *v148;
      *(&v156 + 1) = v7;
      LOBYTE(v157) = 0;
      BYTE1(v157) = v143;
      WORD3(v157) = v142;
      *(&v157 + 2) = v141;
      *(&v157 + 1) = v34;
      *&v158 = 0;
      *(&v158 + 1) = v31;
      sub_100022594(&v149, v145);
      sub_1000225F0(&v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000243F8(0, *(v5 + 2) + 1, 1, v5);
      }

      v36 = *(v5 + 2);
      v35 = *(v5 + 3);
      if (v36 >= v35 >> 1)
      {
        v5 = sub_1000243F8((v35 > 1), v36 + 1, 1, v5);
      }

      *(v5 + 2) = v36 + 1;
      v37 = &v5[80 * v36];
      *(v37 + 2) = v149;
      v38 = v150;
      v39 = v151;
      v40 = v153;
      *(v37 + 5) = v152;
      *(v37 + 6) = v40;
      *(v37 + 3) = v38;
      *(v37 + 4) = v39;
      v124 = v128;
    }

    v41 = v161;
    v42 = IOUSBGetEndpointDirection(v161);

    v43 = v42 == 1 && v41->wMaxPacketSize < 9u;
    v25 = v41;
    if (IOUSBGetEndpointType(v41) != 1)
    {
      sub_10009B498(&v154, 62);
      v25 = v161;
    }

    if (!v43 && !IOUSBGetEndpointSynchronizationType(v25))
    {
      sub_10009B498(&v154, 94);
      v25 = v161;
    }

    v7 = 0;
    v26 += 16;
    v24 = v139 + 1;
    v131 = 0;
    v136 = 0;
    v137 = 0;
    ObjectType = _swiftEmptyArrayStorage;
  }

  while (v140 != v16);
  v131 = 0;
  v79 = 0;
  v19 = v25;
LABEL_124:
  v138 = v19;
  v80 = v160;
  v81 = v160[2];
  if (v81)
  {
    v137 = v79;
    v132 = v7;
    v134 = v5;
    v82 = sub_1001193F0(v81, 0);
    v161 = sub_10011B610(&v154, v82 + 32, v81, v80);

    result = sub_100022644();
    if (v161 != v81)
    {
      __break(1u);
      return result;
    }

    v4 = v129;
    v5 = v134;
    v7 = v132;
    v79 = v137;
  }

  else
  {

    v82 = _swiftEmptyArrayStorage;
  }

  v84 = v138;
  v85 = v124;
  if (!v82[2])
  {

    v82 = 0;
  }

  v143 = 1;
  v144 = 1;
  if (*(ObjectType + 2))
  {
    v86 = ObjectType;
  }

  else
  {

    v86 = 0;
  }

  *&v149 = v84;
  *(&v149 + 1) = v79;
  *&v150 = v131;
  BYTE8(v150) = 0;
  *(&v150 + 10) = v146;
  HIWORD(v150) = v147;
  *(&v151 + 1) = *v148;
  DWORD1(v151) = *&v148[3];
  *(&v152 + 2) = v141;
  WORD3(v152) = v142;
  BYTE9(v150) = v144;
  LOBYTE(v151) = v85 & 1;
  *(&v151 + 1) = v7;
  LOBYTE(v152) = 0;
  *&v154 = v84;
  *(&v154 + 1) = v79;
  BYTE1(v152) = v143;
  *(&v152 + 1) = v86;
  *&v153 = 0;
  *(&v153 + 1) = v82;
  *&v155 = v131;
  BYTE8(v155) = 0;
  BYTE9(v155) = v144;
  *(&v155 + 10) = v146;
  HIWORD(v155) = v147;
  LOBYTE(v156) = v85 & 1;
  DWORD1(v156) = *&v148[3];
  *(&v156 + 1) = *v148;
  *(&v156 + 1) = v7;
  LOBYTE(v157) = 0;
  BYTE1(v157) = v143;
  WORD3(v157) = v142;
  *(&v157 + 2) = v141;
  *(&v157 + 1) = v86;
  *&v158 = 0;
  *(&v158 + 1) = v82;
  sub_100022594(&v149, v145);
  sub_1000225F0(&v154);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_173:
    v5 = sub_1000243F8(0, *(v5 + 2) + 1, 1, v5);
  }

  v88 = *(v5 + 2);
  v87 = *(v5 + 3);
  if (v88 >= v87 >> 1)
  {
    v5 = sub_1000243F8((v87 > 1), v88 + 1, 1, v5);
  }

  *(v5 + 2) = v88 + 1;
  v89 = &v5[80 * v88];
  *(v89 + 2) = v149;
  v90 = v150;
  v91 = v151;
  v92 = v153;
  *(v89 + 5) = v152;
  *(v89 + 6) = v92;
  *(v89 + 3) = v90;
  *(v89 + 4) = v91;
  while (1)
  {
    v93 = *(v5 + 2);
    if (v93)
    {
      v94 = 0;
      v95 = 0;
      v96 = (v5 + 32);
      while (1)
      {
        if (v95 >= *(v5 + 2))
        {
          goto LABEL_170;
        }

        v154 = *v96;
        v97 = v96[1];
        v98 = v96[2];
        v99 = v96[4];
        v157 = v96[3];
        v158 = v99;
        v155 = v97;
        v156 = v98;
        if (!v94)
        {
          v100 = v154;
          sub_100022594(&v154, &v149);
          if (IOUSBGetEndpointUsageType(v100) || (v102 = v100->wMaxPacketSize, v102 <= 8) && v102 > 2)
          {
            v101 = IOUSBGetEndpointUsageType(v100);
            sub_1000225F0(&v154);
            v94 = v101 == 2;
            goto LABEL_141;
          }

          sub_1000225F0(&v154);
        }

        v94 = 1;
LABEL_141:
        ++v95;
        v96 += 5;
        if (v93 == v95)
        {
          if (v94)
          {
            goto LABEL_151;
          }

          break;
        }
      }
    }

    sub_10009B498(&v154, 90);
LABEL_151:
    if (*(v5 + 2) != v113)
    {
      sub_10009B498(&v154, 91);
    }

    if (v119 >> 8 > 0xFE)
    {
      break;
    }

    v103 = v159;
    v19 = v159[2];
    if (!v19)
    {

      v104 = _swiftEmptyArrayStorage;
LABEL_162:
      v106 = v119;
      if (!v104[2])
      {

        v104 = 0;
      }

      v107 = BYTE1(v119);
      v108 = v123;
      if (!*(v123 + 2))
      {

        v108 = 0;
      }

      *(&v149 + 9) = *v148;
      HIDWORD(v149) = *&v148[3];
      *(&v152 + 2) = v146;
      WORD3(v152) = v147;
      *&v149 = v4;
      *&v154 = v4;
      BYTE8(v149) = v118;
      *&v150 = bmAttributes;
      *(&v150 + 1) = wMaxPacketSize_low;
      *&v151 = wMaxPacketSize_high;
      *(&v151 + 1) = v115;
      LOBYTE(v152) = v106;
      BYTE1(v152) = v107;
      *(&v152 + 1) = v5;
      *&v153 = v108;
      *(&v153 + 1) = v104;
      BYTE8(v154) = v118;
      *(&v154 + 9) = *v148;
      HIDWORD(v154) = *&v148[3];
      *&v155 = bmAttributes;
      *(&v155 + 1) = wMaxPacketSize_low;
      *&v156 = wMaxPacketSize_high;
      *(&v156 + 1) = v115;
      LOBYTE(v157) = v106;
      BYTE1(v157) = v107;
      *(&v157 + 2) = v146;
      WORD3(v157) = v147;
      *(&v157 + 1) = v5;
      *&v158 = v108;
      *(&v158 + 1) = v104;
      sub_10001EBF0(&v149, v145);
      result = sub_10001EC4C(&v154);
      v109 = v152;
      v110 = v130;
      v130[2] = v151;
      v110[3] = v109;
      v110[4] = v153;
      v111 = v150;
      *v110 = v149;
      v110[1] = v111;
      return result;
    }

    v104 = sub_1001193F0(v159[2], 0);
    v105 = sub_10011B610(&v154, v104 + 32, v19, v103);
    sub_100022644();
    if (v105 == v19)
    {
      goto LABEL_162;
    }

    __break(1u);
LABEL_159:
    v79 = v137;
    if (v19)
    {
      goto LABEL_124;
    }
  }

  sub_10000CA2C();
  swift_allocError();
  v23 = 1;
LABEL_155:
  *v22 = v23;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_100022990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&unk_100174A20, &unk_100120170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100022A00@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = [objc_allocWithZone(IOKService) initWithServiceEntry:{objc_msgSend(a1, "ioService")}];
    sub_100022654(v9, v5, a2);

    if (v9[3])
    {
      v6 = sub_100001AB4(&qword_100175180, &qword_100120D58);
      if (swift_dynamicCast())
      {
        *(a3 + 24) = v6;
        *a3 = v8;
        return result;
      }
    }

    else
    {
      sub_100022ADC(v9);
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_100022ADC(uint64_t a1)
{
  v2 = sub_100001AB4(&unk_100174A20, &unk_100120170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100022B64()
{
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v4 - 1;
    v7 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100051434(ObjectType, v9);
      swift_unknownObjectRelease();
      if (!v2)
      {
        v7 += 2;
        if (v6 != v5++)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_100022C14()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v6 = *(v4 - 1);
      v5 = *v4;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100051EB0(ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t ActiveConfiguration.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t ActiveConfiguration.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100022D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100022F64(a1, &v19);
  v6 = v20;
  if (v20)
  {
    v7 = v19;
    sub_10000CE78(v21);
    if (*(a2 + 16))
    {
      v8 = sub_10001D11C(v7, v6);
      v10 = v9;

      if (v10)
      {
        result = sub_10001EDEC(*(a2 + 56) + 40 * v8, &v22);
LABEL_9:
        v12 = v23;
        *a3 = v22;
        *(a3 + 16) = v12;
        *(a3 + 32) = v24;
        return result;
      }
    }

    else
    {
    }
  }

  else
  {
    sub_10000CE78(v21);
  }

  sub_100022F64(a1, &v19);

  result = swift_dynamicCast();
  if (result)
  {
    v22 = v16;
    v23 = v17;
    v24 = v18;
    goto LABEL_9;
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_100022FD4(&v16);
  sub_100022F64(a1, &v19);
  v13 = v20;
  if (v20)
  {
    v14 = v19;
    sub_10000CE78(v21);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v19 = 0xD000000000000029;
    v20 = 0x800000010012C0D0;
    v15._countAndFlagsBits = v14;
    v15._object = v13;
    String.append(_:)(v15);
  }

  else
  {
    sub_10000CE78(v21);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100022F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100175248, &unk_100122110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022FD4(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100175250, &qword_100120DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActiveClockSelector.function.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t ActiveClockSelector.function.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ActiveMixerUnit.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t ActiveStreamingAltInterface.cluster.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  return v1;
}

unint64_t sub_100023230()
{
  result = qword_100175258;
  if (!qword_100175258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175258);
  }

  return result;
}

uint64_t sub_100023284()
{
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000232EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 64);
  v5 = *(v2 + 96);
  v12[3] = *(v2 + 80);
  v12[4] = v5;
  v13 = *(v2 + 112);
  v6 = *(v2 + 48);
  v12[0] = *(v2 + 32);
  v12[1] = v6;
  v12[2] = v4;
  a2[3] = &type metadata for MixerUnit;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 80);
  *(v7 + 48) = *(v2 + 64);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v2 + 96);
  *(v7 + 96) = *(v2 + 112);
  v9 = *(v2 + 48);
  *(v7 + 16) = *(v2 + 32);
  *(v7 + 32) = v9;
  return sub_10002317C(v12, v11);
}

unint64_t sub_100023394()
{
  result = qword_100175260;
  if (!qword_100175260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175260);
  }

  return result;
}

uint64_t ActiveExtensionUnit.latencyControlSelector.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v2) = (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
    if (v2 == 32)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ActiveMixerUnit.pathName.getter()
{
  v1 = v0;
  result = sub_100023738();
  if (!v3)
  {
    v4 = *(v0 + 88);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      swift_beginAccess();
      v7 = _swiftEmptyArrayStorage;
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          break;
        }

        v10 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_100052184(v8, ObjectType, v10, &v21);
        swift_unknownObjectRelease();
        if (!*(&v22 + 1))
        {
          goto LABEL_5;
        }

        sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        if (swift_dynamicCast())
        {
          if (*(&v25 + 1))
          {
            sub_10001EFE4(&v24, v27);
            v12 = v28;
            v13 = v29;
            sub_10001EAB8(v27, v28);
            v14 = (*(v13 + 72))(v12, v13);
            v16 = v15;
            sub_10000CE78(v27);
            if (v16)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_100024068(0, *(v7 + 2) + 1, 1, v7);
              }

              v18 = *(v7 + 2);
              v17 = *(v7 + 3);
              if (v18 >= v17 >> 1)
              {
                v7 = sub_100024068((v17 > 1), v18 + 1, 1, v7);
              }

              *(v7 + 2) = v18 + 1;
              v19 = &v7[16 * v18];
              *(v19 + 4) = v14;
              *(v19 + 5) = v16;
            }

            goto LABEL_7;
          }
        }

        else
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
        }

LABEL_6:
        sub_10000D040(&v24, &qword_100174F70, &qword_100120FD0);
LABEL_7:
        if (!--v5)
        {
          goto LABEL_20;
        }
      }

      v23 = 0;
      v21 = 0u;
      v22 = 0u;
LABEL_5:
      sub_10000D040(&v21, &qword_100174FB0, &unk_100120FC0);
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
      goto LABEL_6;
    }

    v7 = _swiftEmptyArrayStorage;
LABEL_20:
    if (*(v7 + 2))
    {
      v27[0] = v7;
      sub_100001AB4(&qword_100174F18, &qword_100120B68);
      sub_100023A2C();
      v20 = BidirectionalCollection<>.joined(separator:)();

      return v20;
    }

    else
    {

      return 0xD000000000000012;
    }
  }

  return result;
}

uint64_t sub_100023738()
{
  v1 = type metadata accessor for LogID(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = *(v0 + 58);
  if (v3 == 255)
  {
    return 0;
  }

  v5 = *(v0 + 56);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      if (*&v8[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
      {
        sub_1000F8280((v5 | (v3 << 16) & 0x1FFFFu));
        if (v9)
        {
          sub_10001EA64();
          v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

          return v10;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_100023A2C()
{
  result = qword_100174F20;
  if (!qword_100174F20)
  {
    sub_10001E8F0(&qword_100174F18, &qword_100120B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174F20);
  }

  return result;
}

void *ActiveMixerUnit.deinit()
{
  sub_100024174((v0 + 2));
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[13];
  v4 = v0[14];

  v5 = v0[16];

  return v0;
}

uint64_t ActiveMixerUnit.__deallocating_deinit()
{
  sub_100024174((v0 + 2));
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[13];
  v4 = v0[14];

  v5 = v0[16];

  return swift_deallocClassInstance();
}

uint64_t sub_100023B84()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 128);
  v4 = *(v1 + 136);

  return v2;
}

uint64_t sub_100023C04@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = *(v4 + 64);
  v5 = *(v4 + 80);
  v13 = *(v4 + 112);
  v7 = *(v4 + 96);
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v7;
  v8 = *(v4 + 48);
  v12[0] = *(v4 + 32);
  v12[1] = v8;
  a2[3] = &type metadata for MixerUnit;
  a2[4] = a1();
  v9 = swift_allocObject();
  *a2 = v9;
  memmove((v9 + 16), (v4 + 32), 0x58uLL);
  return sub_10002317C(v12, v11);
}

uint64_t sub_100023CA0()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_100023CE8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_100023D4C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

void sub_100023DE4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100023E68()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v3) = (*(v3 + 40))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v3 == 32)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_100023EEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753A0, &qword_100120E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024068(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754F8, &qword_100120F88);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000241C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754F0, &qword_100120F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000242E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175390, &qword_100120E80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000243F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754E8, &qword_100120F78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024518(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753C8, &unk_100123340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_10002461C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175368, &qword_100120E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(&qword_100175370, &qword_100120E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000247AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175498, &unk_100123320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 10);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[10 * v8])
    {
      memmove(v12, v13, 10 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 10 * v8);
  }

  return v10;
}

char *sub_1000248C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754A0, &qword_100120F40);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100024A10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754C8, &unk_100123910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754C0, &qword_100120F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100024C84(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001AB4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100024DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753D0, &qword_100120EA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753A8, &qword_100129F20);
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

char *sub_10002501C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175460, &qword_100120F18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100025120(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754E0, &qword_100120F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100025254(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_100025364(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100001AB4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100025498(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754B0, &qword_100120F50);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000255B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_1001753F0, &qword_100120EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(&qword_100174A58, &unk_1001201A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}