uint64_t static DeviceCapabilities.deviceType.getter()
{
  if (qword_1011A70F8 != -1)
  {
    swift_once();
  }

  return static DeviceCapabilities.deviceType;
}

void sub_100AE5304(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *a3 = v10;
      *a4 = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100AE53B8()
{
  v0 = 0;
  result = MGGetProductType();
  if (result > 2158787295)
  {
    if (result <= 2311900305)
    {
      if (result != 2158787296 && result != 2270970153)
      {
        goto LABEL_17;
      }
    }

    else if (result != 2311900306 && result != 3645319985 && result != 3242623367)
    {
      goto LABEL_17;
    }
  }

  else if (result <= 820711326)
  {
    if (result != 228444038 && result != 502329937)
    {
      goto LABEL_17;
    }
  }

  else if (result != 820711327 && result != 1429914406 && result != 1721691077)
  {
LABEL_17:
    v0 = 1;
  }

  static DeviceCapabilities.supportsHighFrameRateLyricsBackground = v0;
  return result;
}

char *DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor()
{
  if (qword_1011A7108 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsHighFrameRateLyricsBackground;
}

uint64_t sub_100AE5538()
{
  result = MGGetProductType();
  static DeviceCapabilities.supportsMotionBlur = result != 1325975682;
  return result;
}

char *DeviceCapabilities.supportsMotionBlur.unsafeMutableAddressor()
{
  if (qword_1011A7110 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsMotionBlur;
}

void sub_100AE55DC()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    static DeviceCapabilities.hasExtendedColorDisplay = hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }
}

id static DeviceCapabilitiesObjC.hasWAPICapability.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    return wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0()
{
  if (!MGCopyAnswer())
  {
    goto LABEL_46;
  }

  sub_10010FC20(&qword_1011AFDD8);
  swift_dynamicCast();
  v40 = sub_1008BD1B0(_swiftEmptyArrayStorage);
  v0 = 1 << *(v47 + 32);
  v1 = -1;
  if (v0 < 64)
  {
    v1 = ~(-1 << v0);
  }

  v2 = v1 & *(v47 + 64);
  v3 = (v0 + 63) >> 6;
  v4 = kMGQDiskUsageTotalSystemCapacity;
  v5 = kMGQDiskUsageTotalSystemAvailable;
  v44 = kMGQDiskUsageTotalDataCapacity;
  v43 = kMGQDiskUsageTotalDataAvailable;
  v42 = kMGQDiskUsageTotalDiskCapacity;

  v6 = 0;
  v45 = v4;
  v46 = v5;
  if (v2)
  {
    while (1)
    {
LABEL_12:
      v8 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v9 = (v6 << 9) | (8 * v8);
      v10 = *(*(v47 + 48) + v9);
      v41 = *(*(v47 + 56) + v9);
      if (v4)
      {
        type metadata accessor for CFString(0);
        sub_100AE5C88();
        v11 = v10;
        v12 = v4;
        v13 = static _CFObject.== infix(_:_:)();

        v5 = v46;
        if (v13)
        {
          v26 = 0;
          goto LABEL_29;
        }

        if (!v46)
        {
          goto LABEL_18;
        }

LABEL_17:
        type metadata accessor for CFString(0);
        sub_100AE5C88();
        v15 = v10;
        v16 = v5;
        v17 = static _CFObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

        v26 = 1;
LABEL_29:

LABEL_30:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = sub_1006BE7F4(v26);
        v30 = v40[2];
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_44;
        }

        v34 = v29;
        if (v40[3] >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = v28;
            sub_1008BAA2C();
            v28 = v38;
          }
        }

        else
        {
          sub_1008B747C(v33, isUniquelyReferenced_nonNull_native);
          v28 = sub_1006BE7F4(v26);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_47;
          }
        }

        if (v34)
        {
          *(v40[7] + 8 * v28) = v41;
        }

        else
        {
          v40[(v28 >> 6) + 8] |= 1 << v28;
          *(v40[6] + v28) = v26;
          *(v40[7] + 8 * v28) = v41;

          v36 = v40[2];
          v32 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v32)
          {
            goto LABEL_45;
          }

          v40[2] = v37;
        }

        v4 = v45;
        v5 = v46;
        if (!v2)
        {
          break;
        }
      }

      else
      {
        v14 = v10;
        if (v5)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v44)
        {
          type metadata accessor for CFString(0);
          sub_100AE5C88();
          v18 = v10;
          v19 = v44;
          v20 = static _CFObject.== infix(_:_:)();

          if (v20)
          {
            v26 = 2;
            goto LABEL_29;
          }
        }

        if (v43)
        {
          type metadata accessor for CFString(0);
          sub_100AE5C88();
          v21 = v10;
          v22 = v43;
          v23 = static _CFObject.== infix(_:_:)();

          if (v23)
          {
            v26 = 3;
            goto LABEL_29;
          }
        }

        if (v42)
        {
          type metadata accessor for CFString(0);
          sub_100AE5C88();
          v24 = v42;
          v25 = static _CFObject.== infix(_:_:)();

          v5 = v46;
          if (v25)
          {
            v26 = 4;
            goto LABEL_30;
          }
        }

        else
        {

          v5 = v46;
        }

        v4 = v45;
        if (!v2)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return v40;
    }

    v2 = *(v47 + 64 + 8 * v7);
    ++v6;
    if (v2)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100AE5B88()
{
  result = qword_1011AFDA0;
  if (!qword_1011AFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFDA0);
  }

  return result;
}

unint64_t sub_100AE5BE0()
{
  result = qword_1011AFDA8;
  if (!qword_1011AFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFDA8);
  }

  return result;
}

unint64_t sub_100AE5C88()
{
  result = qword_1011AFDE0;
  if (!qword_1011AFDE0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFDE0);
  }

  return result;
}

id sub_100AE5CE8()
{
  result = [objc_allocWithZone(type metadata accessor for EnvironmentMonitor()) init];
  static EnvironmentMonitor.shared = result;
  return result;
}

uint64_t *EnvironmentMonitor.shared.unsafeMutableAddressor()
{
  if (qword_1011A7120 != -1)
  {
    swift_once();
  }

  return &static EnvironmentMonitor.shared;
}

id static EnvironmentMonitor.shared.getter()
{
  if (qword_1011A7120 != -1)
  {
    swift_once();
  }

  v1 = static EnvironmentMonitor.shared;

  return v1;
}

uint64_t EnvironmentMonitor.isNetworkConstrained.getter()
{
  swift_getKeyPath();
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
}

uint64_t sub_100AE5E40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
  return result;
}

uint64_t EnvironmentMonitor.thermalLevel.getter()
{
  swift_getKeyPath();
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
}

uint64_t sub_100AE5F60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
  return result;
}

Swift::Int sub_100AE6068()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100EFCFE0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100AE60F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100EFCFE0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100AE613C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id sub_100AE6210()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained] = 0;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel] = 0;
  ObservationRegistrar.init()();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, "init");
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_1008A3074(0, 0, v4, &unk_100EFCFC0, v7);

  sub_10001CC48(v4);
  return v8;
}

uint64_t sub_100AE6384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10010FC20(&qword_1011A7F00);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100AE6420, 0, 0);
}

uint64_t sub_100AE6420()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedMonitor];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  v7 = v3;
  v8 = v2;
  sub_1008A3074(0, 0, v1, &unk_100EFCFC8, v6);

  sub_10001CC48(v1);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v10 = v7;
  v11 = v8;
  sub_1008A3074(0, 0, v1, &unk_100EFCFD0, v9);

  sub_10001CC48(v1);
  [v10 registerObserver:v11];

  v12 = v0[1];

  return v12();
}

id EnvironmentMonitor.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedMonitor];
  [v2 unregisterObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100AE67E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100AE6808, 0, 0);
}

uint64_t sub_100AE6808()
{
  *(v0 + 48) = [*(v0 + 24) isNetworkConstrained];
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AE68B0, v2, v1);
}

uint64_t sub_100AE68B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1 != *(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100AE6A28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v3;
  v11 = a1;
  v12 = v3;
  sub_1008A3074(0, 0, v8, a3, v10);

  return sub_10001CC48(v8);
}

uint64_t sub_100AE6B58(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  v13 = a3;
  v14 = a1;
  v15 = v13;
  v16 = v14;
  sub_1008A3074(0, 0, v10, a5, v12);

  return sub_10001CC48(v10);
}

uint64_t sub_100AE6C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100AE6CB4, 0, 0);
}

uint64_t sub_100AE6CB4()
{
  v1 = [*(v0 + 24) currentThermalLevel];
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = sub_100AE6ED4(v1);
    type metadata accessor for MainActor();
    *(v0 + 40) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v1 = sub_100AE6D6C;
    v2 = v4;
    v3 = v6;
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100AE6D6C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (qword_100EFCFE0[v1] != qword_100EFCFE0[*(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)])
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100AE6ED4(uint64_t result)
{
  if (result > 29)
  {
    switch(result)
    {
      case 0x1E:
        return 3;
      case 0x28:
        return 4;
      case 0x32:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 0xA:
        return 1;
      case 0x14:
        return 2;
    }
  }

  return 6;
}

uint64_t _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result > 19)
  {
    if (result > 39)
    {
      if (result == 40)
      {
        return 4;
      }

      if (result == 50)
      {
        return 5;
      }
    }

    else
    {
      if (result == 20)
      {
        return 2;
      }

      if (result == 30)
      {
        return 3;
      }
    }

    return 7;
  }

  if (result == -1)
  {
    return 6;
  }

  if (result)
  {
    if (result == 10)
    {
      return 1;
    }

    return 7;
  }

  return result;
}

uint64_t sub_100AE6FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100AE67E8(a1, v4, v5, v7, v6);
}

uint64_t sub_100AE7074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100AE6C94(a1, v4, v5, v7, v6);
}

unint64_t sub_100AE7134()
{
  result = qword_1011AFE18;
  if (!qword_1011AFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFE18);
  }

  return result;
}

uint64_t sub_100AE7190()
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

uint64_t sub_100AE7244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100AE6C94(a1, v4, v5, v7, v6);
}

uint64_t sub_100AE7304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100AE6384(a1, v4, v5, v6);
}

uint64_t *ExplicitRestrictionsController.shared.unsafeMutableAddressor()
{
  if (qword_1011A7128 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.shared;
}

BOOL ExplicitRestrictionsController.explicitContentIsAllowed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = [v2 status];

  return (v0 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t ExplicitRestrictionsController.accountVerificationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v12;
  if (v12)
  {
    v6 = [v12 verificationURL];

    if (v6)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v4, v7, 1, v10);
    return sub_100027A78(v4, a1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100AE7704()
{
  type metadata accessor for ExplicitRestrictionsController();
  swift_allocObject();
  result = sub_100AE77A0();
  static ExplicitRestrictionsController.shared = result;
  return result;
}

uint64_t static ExplicitRestrictionsController.shared.getter()
{
  if (qword_1011A7128 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100AE77A0()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011AFE88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = sub_10010FC20(&qword_1011ABBB8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  LOBYTE(v23) = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v23 = 0;
  sub_10010FC20(&qword_1011AFE80);
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v11, v5, v2);
  v12 = (v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  if (qword_1011A7130 != -1)
  {
    swift_once();
  }

  v13 = *algn_10121B2B8;
  *v12 = static ExplicitRestrictionsController.symbols;
  v12[1] = v13;
  v14 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings;
  *(v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings) = _swiftEmptyArrayStorage;

  sub_100AE7C0C();
  sub_100AE7D10();
  sub_100AE7E58();
  type metadata accessor for Whitetail.Binding();
  v15 = MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v15;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v17, 1, sub_100AE8FD4, v16);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v18 = ICAgeVerificationStateDidChangeNotification;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v18;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v20, 1, sub_100AE8FDC, v19);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v1;
}

void sub_100AE7C0C()
{
  v0 = [objc_opt_self() sharedRestrictionsMonitor];
  [v0 allowsExplicitContent];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100AE8360(v1);
}

uint64_t sub_100AE7D10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 && (v1 = [v7 treatment], v7, v1 == 1))
  {
    if (qword_1011A7130 != -1)
    {
      swift_once();
    }

    v2 = &qword_10121B2C0;
  }

  else
  {
    if (qword_1011A7130 != -1)
    {
      swift_once();
    }

    v2 = &static ExplicitRestrictionsController.symbols;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
}

void sub_100AE7E58()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 ageVerificationState];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;

  v5 = v3;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10)
  {
    if (v4)
    {
      sub_100AE8F88();
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {

        v5 = v6;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v8 = [objc_opt_self() defaultCenter];
  if (qword_1011A7138 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_1011AFE60 object:v1];

  v5 = v4;
LABEL_11:
}

uint64_t sub_100AE8078()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100AE7C0C();
  }

  return result;
}

uint64_t sub_100AE80D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100AE7E58();
    sub_100AE7D10();
  }

  return result;
}

uint64_t ExplicitRestrictionsController.profileAllowsExplicitContent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ExplicitRestrictionsController.ageVerification.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100AE8214@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_100AE8294()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100AE8360(v0);
}

void sub_100AE8360(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 != v2)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1011A7138 != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_1011AFE68 object:v1];
  }
}

uint64_t sub_100AE8470(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100AE85F4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_100AE8674(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100AE8DB4(v1);
}

uint64_t sub_100AE86E0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AFF68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AFE88);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t *ExplicitRestrictionsController.symbols.unsafeMutableAddressor()
{
  if (qword_1011A7130 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.symbols;
}

uint64_t ExplicitRestrictionsController.symbol.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_100AE890C()
{
  static ExplicitRestrictionsController.symbols = 3028656112;
  *algn_10121B2B8 = 0xA400000000000000;
  qword_10121B2C0 = 11768802;
  unk_10121B2C8 = 0xA300000000000000;
}

uint64_t static ExplicitRestrictionsController.symbols.getter()
{
  if (qword_1011A7130 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t ExplicitRestrictionsController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_10010FC20(&qword_1011ABBB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_10010FC20(&qword_1011AFE88);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ExplicitRestrictionsController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_10010FC20(&qword_1011ABBB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_10010FC20(&qword_1011AFE88);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

NSString sub_100AE8BB0()
{
  qword_1011AFE60 = String._bridgeToObjectiveC()();
  result = String._bridgeToObjectiveC()();
  qword_1011AFE68 = result;
  return result;
}

uint64_t type metadata accessor for ExplicitRestrictionsController()
{
  result = qword_1011AFEC0;
  if (!qword_1011AFEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100AE8C6C()
{
  sub_100008E80();
  if (v0 <= 0x3F)
  {
    sub_100AE8D50();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100AE8D50()
{
  if (!qword_1011AFED0)
  {
    sub_1001109D0(&qword_1011AFE80);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AFED0);
    }
  }
}

void sub_100AE8DB4(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = a1;
  if (a1)
  {
    if (v9)
    {
      sub_100AE8F88();
      v6 = v9;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
LABEL_11:

        return;
      }
    }

    else
    {
    }

LABEL_8:
    v8 = [objc_opt_self() defaultCenter];
    if (qword_1011A7138 != -1)
    {
      swift_once();
    }

    [v8 postNotificationName:qword_1011AFE60 object:v2];

    v6 = v9;
    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_8;
  }
}

unint64_t sub_100AE8F88()
{
  result = qword_1011AFF70;
  if (!qword_1011AFF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AFF70);
  }

  return result;
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(uint64_t a1, int *a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100AE9100;

  return v7(a1);
}

uint64_t sub_100AE9100(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100AE92EC;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100AE9284;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100AE9284()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100AE92EC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100AE9354(uint64_t a1)
{
  v4 = *v1;
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100AE946C;

  return v7(a1);
}

uint64_t sub_100AE946C(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100AEAF0C;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100AEAF08;
  }

  return _swift_task_switch(v8, v5, v7);
}

void *static LaunchURL.ArrayBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    sub_100AE9708(v2, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      sub_100059A8C(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10089D5EC(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_10089D5EC((v4 > 1), v5 + 1, 1, v3);
      }

      v3[2] = v5 + 1;
      sub_100059A8C(v9, &v3[5 * v5 + 4]);
    }

    else
    {
      sub_100AE9778(v7);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_100AE9708(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AFF78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AE9778(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AFF78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static LaunchURL.ArrayBuilder.buildOptional(_:)(uint64_t a1)
{
  sub_100AE9708(a1, &v3);
  if (v4)
  {
    sub_100059A8C(&v3, v5);
    sub_10010FC20(&qword_1011A7C80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100EBC6B0;
    sub_100059A8C(v5, v1 + 32);
  }

  else
  {
    sub_100AE9778(&v3);
    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_100AE9878(uint64_t a1)
{
  sub_10010FC20(&qword_1011A7C80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(a1, v2 + 32);
  return v2;
}

uint64_t LaunchURL.Resolver.init(perform:handlerBuilder:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LaunchURL.Resolver();
  v6 = Logger.init(subsystem:category:)();
  *a3 = a1 & 1;
  result = a2(v6);
  *(a3 + 8) = result;
  return result;
}

uint64_t LaunchURL.Resolver.perform(withURL:)(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = type metadata accessor for URL();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_100AE9A4C, 0, 0);
}

void sub_100AE9A4C()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 392) = *(type metadata accessor for LaunchURL.Resolver() + 24);
  v5 = *(v3 + 16);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v12 = 136446210;
    sub_100AEACF4();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_100010678(v13, v15, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluating URL=%{public}s", v12, 0xCu);
    sub_10000959C(v59);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 336) = v16;
  v18 = *(*(v0 + 264) + 8);
  *(v0 + 344) = v18;
  v19 = *(v18 + 16);
  *(v0 + 352) = v19;
  if (v19)
  {
    *(v0 + 360) = 0;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    if (*(v18 + 16))
    {
      v20 = *(v0 + 320);
      v21 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      sub_100008FE4(v18 + 32, v0 + 16);
      v20(v21, v23, v22);
      sub_100008FE4(v0 + 16, v0 + 56);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 272);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v30 = 136446466;
        sub_100AEACF4();
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v27(v28, v29);
        v34 = sub_100010678(v31, v33, &v61);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_100008FE4(v0 + 56, v0 + 216);
        sub_10010FC20(&qword_1011A7C88);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        sub_10000959C(v0 + 56);
        v38 = sub_100010678(v35, v37, &v61);

        *(v30 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving URL=%{public}s with handler=%{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000959C(v0 + 56);
        v27(v28, v29);
      }

      v53 = *(v0 + 40);
      v54 = *(v0 + 48);
      sub_10000954C((v0 + 16), v53);
      v60 = (*(v54 + 8) + **(v54 + 8));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = sub_100AEA140;
      v56 = *(v0 + 256);

      v60(v56, v53, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 336);
    v43 = *(v0 + 288);
    v44 = *(v0 + 272);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v45 = 136446466;
      sub_100AEACF4();
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v42(v43, v44);
      v49 = sub_100010678(v46, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      sub_10010FC20(&qword_1011A7C88);
      v50 = Array.description.getter();
      v52 = sub_100010678(v50, v51, &v61);

      *(v45 + 14) = v52;

      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v42(v43, v44);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 8);

    v58(v57 != 0);
  }
}

uint64_t sub_100AEA140(char a1)
{
  v3 = *v2;
  *(v3 + 396) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = sub_100AEAA74;
  }

  else
  {
    v4 = sub_100AEA260;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100AEA260()
{
  v71 = v0;
  v1 = *(v0 + 368);
  if (*(v0 + 396))
  {
    sub_100008FE4(v0 + 16, v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_10089D5EC(0, v1[2] + 1, 1, *(v0 + 368));
    }

    v4 = v1[2];
    v3 = v1[3];
    if (v4 >= v3 >> 1)
    {
      v1 = sub_10089D5EC((v3 > 1), v4 + 1, 1, v1);
    }

    v1[2] = v4 + 1;
    sub_100059A8C((v0 + 176), &v1[5 * v4 + 4]);
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  sub_100008FE4(v0 + 16, v0 + 96);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 336);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v11 = 136446466;
    sub_100AEACF4();
    v12 = v1;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v8(v9, v10);
    v16 = v13;
    v1 = v12;
    v17 = sub_100010678(v16, v15, &v70);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    sub_100008FE4(v0 + 96, v0 + 136);
    sub_10010FC20(&qword_1011A7C88);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    sub_10000959C(v0 + 96);
    v21 = sub_100010678(v18, v20, &v70);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolved URL=%{public}s with handler=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v0 + 96);
    v8(v9, v10);
  }

  if (*(v0 + 396) == 1 && (**(v0 + 264) & 1) == 0)
  {
    sub_10000959C(v0 + 16);
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 360) + 1;
    result = sub_10000959C(v0 + 16);
    if (v23 != v22)
    {
      v25 = *(v0 + 360) + 1;
      *(v0 + 360) = v25;
      *(v0 + 368) = v1;
      v26 = *(v0 + 344);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 320);
        v28 = *(v0 + 304);
        v29 = *(v0 + 272);
        v30 = *(v0 + 256);
        sub_100008FE4(v26 + 40 * v25 + 32, v0 + 16);
        v27(v28, v30, v29);
        sub_100008FE4(v0 + 16, v0 + 56);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 336);
        v35 = *(v0 + 304);
        v36 = *(v0 + 272);
        if (v33)
        {
          v37 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v37 = 136446466;
          sub_100AEACF4();
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v40 = v39;
          v34(v35, v36);
          v41 = sub_100010678(v38, v40, &v70);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2082;
          sub_100008FE4(v0 + 56, v0 + 216);
          sub_10010FC20(&qword_1011A7C88);
          v42 = String.init<A>(describing:)();
          v44 = v43;
          sub_10000959C(v0 + 56);
          v45 = sub_100010678(v42, v44, &v70);

          *(v37 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v31, v32, "Resolving URL=%{public}s with handler=%{public}s", v37, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10000959C(v0 + 56);
          v34(v35, v36);
        }

        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        sub_10000954C((v0 + 16), v64);
        v69 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 376) = v66;
        *v66 = v0;
        v66[1] = sub_100AEA140;
        v67 = *(v0 + 256);

        return v69(v67, v64, v65);
      }

      return result;
    }
  }

  (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 336);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  if (v48)
  {
    v68 = v47;
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    sub_100AEACF4();
    v53 = v1;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v49(v50, v51);
    v57 = v54;
    v1 = v53;
    v58 = sub_100010678(v57, v56, &v70);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    sub_10010FC20(&qword_1011A7C88);
    v59 = Array.description.getter();
    v61 = sub_100010678(v59, v60, &v70);

    *(v52 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v46, v68, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v50, v51);
  }

  v62 = v1[2];

  v63 = *(v0 + 8);

  return v63(v62 != 0);
}

uint64_t sub_100AEAA74()
{
  sub_10000959C(v0 + 16);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100AEAB0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100AEABA0;

  return LaunchURL.Resolver.perform(withURL:)(a1);
}

uint64_t sub_100AEABA0(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t type metadata accessor for LaunchURL.Resolver()
{
  result = qword_1011AFFE0;
  if (!qword_1011AFFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100AEACF4()
{
  result = qword_1011AA648;
  if (!qword_1011AA648)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA648);
  }

  return result;
}

unint64_t sub_100AEAD50()
{
  result = qword_1011AFF80;
  if (!qword_1011AFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFF80);
  }

  return result;
}

void sub_100AEADFC()
{
  sub_100AEAE90();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100AEAE90()
{
  if (!qword_1011AFFF0)
  {
    sub_1001109D0(&qword_1011A7C88);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AFFF0);
    }
  }
}

uint64_t static LifecyclePatrol.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LifecyclePatrol.isEnabled = a1;
  return result;
}

uint64_t LifecyclePatrol.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t LifecyclePatrol.didInit(_:)()
{
  v1 = v0;
  result = swift_beginAccess();
  if (static LifecyclePatrol.isEnabled == 1)
  {
    sub_10002705C();
    v3 = static OS_dispatch_queue.main.getter();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;

    OS_dispatch_queue.asyncAfter(_:block:)(sub_100AEB3D4, v5);
  }

  return result;
}

uint64_t sub_100AEB158()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_1011A7140 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_1000060E4(v1, qword_1011B0030);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.fault.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v4 = 136446722;
        swift_getObjectType();
        sub_10010FC20(&qword_1011B0110);
        v5 = String.init<A>(describing:)();
        v7 = sub_100010678(v5, v6, &v14);

        *(v4 + 4) = v7;
        *(v4 + 12) = 2082;
        v8 = String.init<A>(describing:)();
        v10 = sub_100010678(v8, v9, &v14);

        *(v4 + 14) = v10;
        *(v4 + 22) = 2082;
        v11 = String.init<A>(describing:)();
        v13 = sub_100010678(v11, v12, &v14);

        *(v4 + 24) = v13;
        _os_log_impl(&_mh_execute_header, v2, v3, "A new instance of %{public}s<%{public}s> while one already exists <%{public}s>", v4, 0x20u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LifecyclePatrol.willDeinit(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t LifecyclePatrol.__deallocating_deinit()
{
  sub_1000D8F2C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100AEB4C4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011B0030);
  sub_1000060E4(v0, qword_1011B0030);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100AEB544(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011A8608);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_10000DD18(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_100016270(v22, v21);

        sub_10010FC20(&unk_1011ACC30);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100019C28(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_100AEB7A8@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  if (!*result)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = (*(a2 + 40))(result);

    goto LABEL_9;
  }

  v7 = result[1];

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = String._bridgeToObjectiveC()();
  v9 = [a3 dictionaryForBagKey:v8];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_10001A718(v10);

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a4 = v7;
  return result;
}

uint64_t sub_100AEB8C8()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 11);
  sub_100AEB9AC(&v1[4], v6);
  os_unfair_lock_unlock(v1 + 11);
  v2 = v6[0];
  v3 = v6[2];
  v4 = v7;

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      [v2 removeObserverWithToken:v3];
    }
  }

  return v0;
}

void sub_100AEB9AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) == 0)
    {
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 24) = 0;

      v27 = v11;
      return;
    }

    v29 = v8;
    v13 = v12;
    v14 = qword_1011A6930;
    v15 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28[1] = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v28[2] = v3;
      v22 = v21;
      v30 = v21;
      *v20 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100010678(v23, v24, &v30);
      v28[0] = v15;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "    %s wasn't configured with an AMSBag update handler prior to deallocation. This may have caused musicTabs updates to be missed after initialization.", v20, 0xCu);
      sub_10000959C(v22);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v29);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_100AEBC28()
{
  sub_100AEB8C8();

  return swift_deallocClassInstance();
}

uint64_t sub_100AEBC5C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100AEBC74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100AEBC88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100AEBCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100AEBD34(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100AEBD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a1 + 16);
    v28 = v14;
    v29 = v10;
    if (v19 && (result = sub_100019C28(a3, a4), (v20 & 1) != 0))
    {
      sub_10000DD18(*(a1 + 56) + 32 * result, aBlock);
      sub_10010FC20(&qword_1011A9FC0);
      result = swift_dynamicCast();
      if (result)
      {
        v21 = v32;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v18 + 16);
    __chkstk_darwin(result);
    *(&v27 - 2) = v21;
    os_unfair_lock_lock(v22 + 11);
    sub_100AECDBC(&v22[4], aBlock);
    os_unfair_lock_unlock(v22 + 11);
    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_10002705C();
      v23 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      v25 = v31;
      v24[2] = v30;
      v24[3] = v25;
      v24[4] = v21;
      aBlock[4] = sub_100AECDD8;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010E01D8;
      v26 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100024794();
      sub_10010FC20(&unk_1011AB610);
      sub_100024900();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v29 + 8))(v12, v9);
      return (*(v28 + 8))(v16, v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_100AEC110(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v117 = a3;
  v5 = type metadata accessor for Logger();
  v115 = *(v5 - 8);
  v116 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v98 - v9;
  v11 = *a1;
  v12 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (qword_1011A6930 != -1)
    {
      swift_once();
    }

    v53 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v121[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_100010678(0xD000000000000047, 0x8000000100E64350, v121);
      _os_log_impl(&_mh_execute_header, v54, v55, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v56, 0xCu);
      sub_10000959C(v57);
    }

    (*(v115 + 8))(v8, v116);
    v58 = 0;
    goto LABEL_70;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v14;
  v15 = qword_1011A6930;
  swift_bridgeObjectRetain_n();
  v111 = v11;
  if (v15 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v16 = *v12;
    Logger.init(_:)();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_69;
    }

    v102 = v18;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v124 = v20;
    v106 = v19;
    *v19 = 136315394;
    v113 = a2;
    v112 = v10;
    v103 = v17;
    v101 = v20;
    if (!v13)
    {
      break;
    }

    sub_10010FC20(&qword_1011B01D8);
    v21 = static _DictionaryStorage.copy(original:)();
    v22 = v21;
    v23 = 0;
    v24 = *(v13 + 64);
    v100 = v13 + 64;
    v25 = 1 << *(v13 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v12 = v26 & v24;
    v99 = (v25 + 63) >> 6;
    v118 = "v16@?0@NSDictionary8";
    v107 = v21 + 64;
    v105 = v13;
    i = v21;
    if ((v26 & v24) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v30 = v27 | (v23 << 6);
        v31 = *(v13 + 56);
        v32 = (*(v13 + 48) + 16 * v30);
        v33 = v32[1];
        v114 = *v32;
        v34 = *(v31 + 8 * v30);
        v35 = *(v34 + 16);
        if (v35)
        {
          v109 = v30;
          v110 = v12;
          v123 = &_swiftEmptyArrayStorage;
          v108 = v33;

          sub_100015C24(0, v35, 0);
          v10 = v123;
          v36 = 32;
          v37 = v34;
          v119 = v34;
          do
          {
            v38 = *(v37 + v36);
            *&v120[0] = 25705;
            *(&v120[0] + 1) = 0xE200000000000000;

            AnyHashable.init<A>(_:)();
            if (*(v38 + 16) && (v39 = sub_1000160B4(v121), v37 = v119, (v40 & 1) != 0))
            {
              sub_10000DD18(*(v38 + 56) + 32 * v39, v120);
              sub_10001621C(v121);
              sub_100016270(v120, &v122);
              sub_10000DD18(&v122, v121);
              if (swift_dynamicCast())
              {
                v41 = *(&v120[0] + 1);
                v42 = *&v120[0];
              }

              else
              {
                *&v120[0] = 0;
                *(&v120[0] + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(23);
                v43._object = (v118 | 0x8000000000000000);
                v43._countAndFlagsBits = 0xD000000000000014;
                String.append(_:)(v43);
                _print_unlocked<A, B>(_:_:)();
                v44._countAndFlagsBits = 62;
                v44._object = 0xE100000000000000;
                String.append(_:)(v44);
                v37 = v119;

                v41 = *(&v120[0] + 1);
                v42 = *&v120[0];
              }

              sub_10000959C(&v122);
            }

            else
            {
              sub_10001621C(v121);

              v42 = 0x204449206261743CLL;
              v41 = 0xEF3E746E65736261;
            }

            v123 = v10;
            v46 = *(v10 + 16);
            v45 = *(v10 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_100015C24((v45 > 1), v46 + 1, 1);
              v37 = v119;
              v10 = v123;
            }

            *(v10 + 16) = v46 + 1;
            v47 = (v10 + 16 * v46);
            *(v47 + 4) = v42;
            *(v47 + 5) = v41;
            v36 += 8;
            --v35;
          }

          while (v35);

          a2 = v113;
          v13 = v105;
          v22 = i;
          v12 = v110;
          v30 = v109;
          v48 = v108;
        }

        else
        {

          v10 = &_swiftEmptyArrayStorage;
        }

        *(v107 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v49 = (v22[6] + 16 * v30);
        *v49 = v114;
        v49[1] = v48;
        *(v22[7] + 8 * v30) = v10;
        v50 = v22[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_73;
        }

        v22[2] = v52;
        v10 = v112;
      }

      while (v12);
    }

    v28 = v23;
    while (1)
    {
      v23 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v23 >= v99)
      {
        goto LABEL_39;
      }

      v29 = *(v100 + 8 * v23);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v12 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v22 = 0;
LABEL_39:
  v121[0] = v22;
  v100 = sub_10010FC20(&qword_1011B01E0);
  v59 = String.init<A>(describing:)();
  v61 = v60;

  v12 = sub_100010678(v59, v61, &v124);

  v62 = v106;
  *(v106 + 1) = v12;
  *(v62 + 6) = 2080;
  if (a2)
  {
    sub_10010FC20(&qword_1011B01D8);
    v63 = static _DictionaryStorage.copy(original:)();
    v64 = v63;
    v65 = *(a2 + 64);
    v99 = a2 + 64;
    v66 = 1 << *(a2 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & v65;
    v69 = (v66 + 63) >> 6;
    v118 = "v16@?0@NSDictionary8";
    v107 = v63 + 64;

    v10 = 0;
    v105 = v64;
    for (i = v69; v68; v64[2] = v92)
    {
      v70 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
LABEL_49:
      v73 = v70 | (v10 << 6);
      v74 = *(a2 + 56);
      v75 = (*(a2 + 48) + 16 * v73);
      v76 = v75[1];
      v114 = *v75;
      v13 = *(v74 + 8 * v73);
      v77 = *(v13 + 16);
      if (v77)
      {
        v109 = v73;
        v110 = v68;
        v123 = &_swiftEmptyArrayStorage;
        v108 = v76;

        sub_100015C24(0, v77, 0);
        v12 = v123;
        v78 = 32;
        v79 = v13;
        v119 = v13;
        do
        {
          v80 = *(v79 + v78);
          *&v120[0] = 25705;
          *(&v120[0] + 1) = 0xE200000000000000;

          AnyHashable.init<A>(_:)();
          if (*(v80 + 16) && (v81 = sub_1000160B4(v121), v79 = v119, (v82 & 1) != 0))
          {
            sub_10000DD18(*(v80 + 56) + 32 * v81, v120);
            sub_10001621C(v121);
            sub_100016270(v120, &v122);
            sub_10000DD18(&v122, v121);
            if (swift_dynamicCast())
            {
              v13 = *(&v120[0] + 1);
              v83 = *&v120[0];
            }

            else
            {
              *&v120[0] = 0;
              *(&v120[0] + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(23);
              v84._object = (v118 | 0x8000000000000000);
              v84._countAndFlagsBits = 0xD000000000000014;
              String.append(_:)(v84);
              _print_unlocked<A, B>(_:_:)();
              v85._countAndFlagsBits = 62;
              v85._object = 0xE100000000000000;
              String.append(_:)(v85);
              v79 = v119;

              v13 = *(&v120[0] + 1);
              v83 = *&v120[0];
            }

            sub_10000959C(&v122);
          }

          else
          {
            sub_10001621C(v121);

            v83 = 0x204449206261743CLL;
            v13 = 0xEF3E746E65736261;
          }

          v123 = v12;
          v87 = *(v12 + 16);
          v86 = *(v12 + 24);
          if (v87 >= v86 >> 1)
          {
            sub_100015C24((v86 > 1), v87 + 1, 1);
            v79 = v119;
            v12 = v123;
          }

          *(v12 + 16) = v87 + 1;
          v88 = v12 + 16 * v87;
          *(v88 + 32) = v83;
          *(v88 + 40) = v13;
          v78 += 8;
          --v77;
        }

        while (v77);

        a2 = v113;
        v64 = v105;
        v69 = i;
        v68 = v110;
        v73 = v109;
        v89 = v108;
      }

      else
      {

        v12 = &_swiftEmptyArrayStorage;
      }

      *(v107 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
      v90 = (v64[6] + 16 * v73);
      *v90 = v114;
      v90[1] = v89;
      *(v64[7] + 8 * v73) = v12;
      v91 = v64[2];
      v51 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (v51)
      {
        goto LABEL_74;
      }
    }

    v71 = v10;
    while (1)
    {
      v10 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_72;
      }

      if (v10 >= v69)
      {

        v10 = v112;
        goto LABEL_68;
      }

      v72 = *(v99 + 8 * v10);
      v71 = (v71 + 1);
      if (v72)
      {
        v70 = __clz(__rbit64(v72));
        v68 = (v72 - 1) & v72;
        goto LABEL_49;
      }
    }
  }

  v64 = 0;
LABEL_68:
  v121[0] = v64;
  v93 = String.init<A>(describing:)();
  v95 = sub_100010678(v93, v94, &v124);

  v96 = v106;
  *(v106 + 14) = v95;
  v97 = v103;
  _os_log_impl(&_mh_execute_header, v103, v102, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v96, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v115 + 8))(v10, v116);

  v58 = 1;
LABEL_70:
  *v117 = v58;
}

uint64_t sub_100AECD28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for OptimisticValue() + 28);
  v7 = type metadata accessor for OptimisticValue.Transaction();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t sub_100AECF20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = *(v4 + 16);
  v14(&v30 - v12, v1, v3, v11);
  v15 = v1 + *(a1 + 28);
  v16 = type metadata accessor for OptimisticValue.Transaction();
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    (*(v4 + 24))(v15 + *(v16 + 28), v13, v3);
  }

  if (qword_1011A7148 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000060E4(v17, qword_1011B01F0);
  (v14)(v9, v13, v3);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = v14;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136446210;
    (v30)(v6, v9, v3);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v30 = v13;
    v26 = *(v4 + 8);
    v26(v9, v3);
    v27 = sub_100010678(v23, v25, &v31);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Underlying value updated to %{public}s", v21, 0xCu);
    sub_10000959C(v22);

    return (v26)(v30, v3);
  }

  else
  {

    v29 = *(v4 + 8);
    v29(v9, v3);
    return (v29)(v13, v3);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(v5 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2 + *(a1 + 28), v7, v13);
  v16 = *(v6 - 8);
  if ((*(v16 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return (*(v11 + 16))(a2, v2, v5);
  }

  else
  {
    (*(v11 + 16))(v15, &v10[*(v6 + 32)], v5);
    (*(v16 + 8))(v10, v6);
    return (*(v11 + 32))(a2, v15, v5);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  sub_100AEEC8C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v10);
  return sub_100AED620;
}

void sub_100AED620(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    sub_100AECF20(v9);
    v10 = *(v6 + 8);
    v10(v3, v8);
    v10(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    sub_100AECF20(v9);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  v13 = *(v7 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = *(v13 + 16);
  v21(&v35 - v19, v4, v7, v18);
  (v21)(v16, v36, v7);
  sub_100AEDB58(v20, v16, v7, a3);
  v22 = *(a2 + 28);
  v23 = type metadata accessor for Optional();
  (*(*(v23 - 8) + 8))(v4 + v22, v23);
  v24 = *(v9 + 16);
  v24(v4 + v22, a3, v8);
  (*(v9 + 56))(v4 + v22, 0, 1, v8);
  if (qword_1011A7148 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000060E4(v25, qword_1011B01F0);
  v26 = v37;
  v24(v37, a3, v8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446210;
    v24(v35, v26, v8);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    (*(v9 + 8))(v26, v8);
    v34 = sub_100010678(v31, v33, &v38);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "New transaction: %{public}s", v29, 0xCu);
    sub_10000959C(v30);
  }

  else
  {

    (*(v9 + 8))(v26, v8);
  }
}

uint64_t sub_100AEDB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  UUID.init()();
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v11 = *(*(a3 - 8) + 32);
  v11(a4 + *(v8 + 28), a1, a3);
  v9 = a4 + *(v8 + 32);

  return (v11)(v9, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(char *a1, uint64_t a2)
{
  v71 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v61 - v8;
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v61 - v11;
  v78 = *(v9 - 8);
  v13 = v78;
  __chkstk_darwin(v14);
  v77 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v61 - v21;
  v23 = v5[2];
  v70 = a1;
  v63 = v23;
  v64 = v5 + 2;
  (v23)(&v61 - v21, a1, v4, v20);
  v66 = v5[7];
  v67 = v5 + 7;
  v66(v22, 0, 1, v4);
  v72 = a2;
  v24 = *(a2 + 28);
  v69 = v13;
  v25 = *(v13 + 16);
  v65 = v24;
  v26 = v9;
  v25(v18, v79 + v24, v9);
  v75 = TupleTypeMetadata2;
  v27 = *(TupleTypeMetadata2 + 48);
  v25(v12, v22, v26);
  v76 = v27;
  v25(&v12[v27], v18, v26);
  v28 = v5;
  v29 = v5[6];
  v80 = v12;
  if (v29(v12, 1, v4) == 1)
  {
    v62 = v28;
    v30 = *(v78 + 8);
    v30(v18, v26);
    v30(v22, v26);
    v31 = v80;
    v32 = v29(&v80[v76], 1, v4) == 1;
    v33 = v31;
    if (!v32)
    {
      return (*(v74 + 8))(v33, v75);
    }

    v34 = v4;
    v30(v31, v26);
LABEL_9:
    v80 = v30;
    v45 = v26;
    if (qword_1011A7148 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000060E4(v46, qword_1011B01F0);
    v47 = v68;
    v48 = v70;
    v49 = v63;
    v63(v68, v70, v34);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v81 = v53;
      *v52 = 136446210;
      v49(v73, v47, v34);
      v54 = v34;
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (v62[1])(v47, v54);
      v58 = sub_100010678(v55, v57, &v81);

      *(v52 + 4) = v58;
      v34 = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "Cancelled transaction: %{public}s", v52, 0xCu);
      sub_10000959C(v53);
    }

    else
    {

      (v62[1])(v47, v34);
    }

    v59 = v79;
    (*(*(v71 - 8) + 24))(v79, &v48[*(v34 + 28)]);
    sub_100AECF20(v72);
    v60 = v65;
    (v80)(v59 + v65, v45);
    return v66(v59 + v60, 1, 1, v34);
  }

  v35 = v80;
  v25(v77, v80, v26);
  v36 = &v35[v76];
  v37 = v76;
  v34 = v4;
  if (v29(v36, 1, v4) == 1)
  {
    v38 = *(v78 + 8);
    v38(v18, v26);
    v38(v22, v26);
    (v28[1])(v77, v4);
    v33 = v80;
    return (*(v74 + 8))(v33, v75);
  }

  v62 = v28;
  v40 = v80;
  v41 = v73;
  (v28[4])(v73, &v80[v37], v34);
  v42 = v77;
  LODWORD(v76) = static UUID.== infix(_:_:)();
  v43 = v28[1];
  v43(v41, v34);
  v44 = *(v78 + 8);
  v44(v18, v26);
  v44(v22, v26);
  v43(v42, v34);
  v30 = v44;
  result = (v44)(v40, v26);
  if (v76)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(char *a1, uint64_t a2)
{
  v71 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v61 - v8;
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v61 - v11;
  v78 = *(v9 - 8);
  v13 = v78;
  __chkstk_darwin(v14);
  v77 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v61 - v21;
  v23 = v5[2];
  v70 = a1;
  v63 = v23;
  v64 = v5 + 2;
  (v23)(&v61 - v21, a1, v4, v20);
  v66 = v5[7];
  v67 = v5 + 7;
  v66(v22, 0, 1, v4);
  v72 = a2;
  v24 = *(a2 + 28);
  v69 = v13;
  v25 = *(v13 + 16);
  v65 = v24;
  v26 = v9;
  v25(v18, v79 + v24, v9);
  v75 = TupleTypeMetadata2;
  v27 = *(TupleTypeMetadata2 + 48);
  v25(v12, v22, v26);
  v76 = v27;
  v25(&v12[v27], v18, v26);
  v28 = v5;
  v29 = v5[6];
  v80 = v12;
  if (v29(v12, 1, v4) == 1)
  {
    v62 = v28;
    v30 = *(v78 + 8);
    v30(v18, v26);
    v30(v22, v26);
    v31 = v80;
    v32 = v29(&v80[v76], 1, v4) == 1;
    v33 = v31;
    if (!v32)
    {
      return (*(v74 + 8))(v33, v75);
    }

    v34 = v4;
    v30(v31, v26);
LABEL_9:
    v80 = v30;
    v45 = v26;
    if (qword_1011A7148 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000060E4(v46, qword_1011B01F0);
    v47 = v68;
    v48 = v70;
    v49 = v63;
    v63(v68, v70, v34);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v81 = v53;
      *v52 = 136446210;
      v49(v73, v47, v34);
      v54 = v34;
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (v62[1])(v47, v54);
      v58 = sub_100010678(v55, v57, &v81);

      *(v52 + 4) = v58;
      v34 = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "Completed transaction: %{public}s", v52, 0xCu);
      sub_10000959C(v53);
    }

    else
    {

      (v62[1])(v47, v34);
    }

    v59 = v79;
    (*(*(v71 - 8) + 24))(v79, &v48[*(v34 + 32)]);
    sub_100AECF20(v72);
    v60 = v65;
    (v80)(v59 + v65, v45);
    return v66(v59 + v60, 1, 1, v34);
  }

  v35 = v80;
  v25(v77, v80, v26);
  v36 = &v35[v76];
  v37 = v76;
  v34 = v4;
  if (v29(v36, 1, v4) == 1)
  {
    v38 = *(v78 + 8);
    v38(v18, v26);
    v38(v22, v26);
    (v28[1])(v77, v4);
    v33 = v80;
    return (*(v74 + 8))(v33, v75);
  }

  v62 = v28;
  v40 = v80;
  v41 = v73;
  (v28[4])(v73, &v80[v37], v34);
  v42 = v77;
  LODWORD(v76) = static UUID.== infix(_:_:)();
  v43 = v28[1];
  v43(v41, v34);
  v44 = *(v78 + 8);
  v44(v18, v26);
  v44(v22, v26);
  v43(v42, v34);
  v30 = v44;
  result = (v44)(v40, v26);
  if (v76)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OptimisticValue();
  OptimisticValue.value.getter(v10, v9);
  OptimisticValue.value.getter(v10, v6);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v4 + 8);
  v12(v6, a3);
  v12(v9, a3);
  return v11 & 1;
}

uint64_t sub_100AEEC08()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011B01F0);
  sub_1000060E4(v0, qword_1011B01F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100AEEC8C(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_100AECF20(a2);
}

uint64_t sub_100AEECF4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100AEED8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void sub_100AEF050(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for UUID();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t sub_100AEF478()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100AEF500(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100AEF74C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_100AEFA2C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100AEFAB4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100AEFB18()
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_100AEFB6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100AEFBCC@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100AEFC54()
{
  result = qword_1011B0308;
  if (!qword_1011B0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B0308);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6);
}

uint64_t sub_100AEFDD8(uint64_t a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = sub_1008F7FCC(a1, *v4);
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *v4;
      if (v4[1])
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v8(v10 | v9);
      sub_100020438(v8);
    }

    v11 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = *v4;
    v14 = v4[1];
    v20[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v20[4] = sub_100A0EB14();
    v20[5] = sub_100A0EB68();
    LOBYTE(v20[0]) = v13;
    BYTE1(v20[0]) = v14;
    Playlist.catalogID.getter();
    if (!v15)
    {
      Playlist.id.getter();
    }

    sub_10000988C();
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    NSUserDefaults.encodeValue(_:forKey:)(v20);

    result = sub_10000959C(v20);
    *(v2 + v11) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_100AEFDD8(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return sub_100AF016C;
}

void sub_100AF016C(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_100AEFDD8(v6 | v4);

  free(v1);
}

uint64_t PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011AA6C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  sub_1000089F8(a1, v6, &qword_1011AA6C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(a1, &qword_1011AA6C0);
    sub_1000095E8(v6, &qword_1011AA6C0);
LABEL_15:
    sub_100020438(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.state<A>(for:)();

  v12 = dispatch thunk of MusicLibrary.ItemState.isAdded.getter();

  if ((v12 & 1) == 0)
  {
    sub_1000095E8(a1, &qword_1011AA6C0);
    (*(v8 + 8))(v10, v7);
    goto LABEL_15;
  }

  (*(v8 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v10, v7);
  v41 = objc_opt_self();
  v13 = [v41 standardUserDefaults];
  v45 = 0x2D74726F53;
  v46 = 0xE500000000000000;
  v14 = Playlist.catalogID.getter();
  v42 = a1;
  if (!v15)
  {
    v14 = Playlist.id.getter();
  }

  v51 = v14;
  v52 = v15;
  v49 = 46;
  v50 = 0xE100000000000000;
  v47 = 45;
  v48 = 0xE100000000000000;
  sub_10000988C();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  sub_100A0EB14();
  sub_100A0EB68();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v47);

  if ((v47 & 0xFF00) == 0x200)
  {
    v20 = [v41 standardUserDefaults];
    v21 = Playlist.catalogID.getter();
    if (!v22)
    {
      v21 = Playlist.id.getter();
    }

    v45 = v21;
    v46 = v22;
    v51 = 46;
    v52 = 0xE100000000000000;
    v49 = 45;
    v50 = 0xE100000000000000;
    LOBYTE(v23) = 1;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    v27 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v24, v26);

    v28 = 0;
    if (v27 <= 6u)
    {
      switch(v27)
      {
        case 1u:
          v28 = 0;
          LOBYTE(v23) = 0;
          break;
        case 2u:
          v28 = 1;
          break;
        case 6u:
          v28 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v27)
    {
      case 7u:
        v28 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v23) = 0;
LABEL_21:
        v28 = 4;
        break;
    }
  }

  else
  {
    v28 = v47;
    v23 = BYTE1(v47) & 1;
  }

LABEL_25:
  v29 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v29 = v28;
  v29[1] = v23;
  v51 = 0x2D74726F53;
  v52 = 0xE500000000000000;
  v30 = Playlist.catalogID.getter();
  if (!v31)
  {
    v30 = Playlist.id.getter();
  }

  v32 = v30;
  v33 = v31;
  v41 = sub_100AF0978();
  v49 = v32;
  v50 = v33;
  v47 = 46;
  v48 = 0xE100000000000000;
  v43 = 45;
  v44 = 0xE100000000000000;
  v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38 = swift_allocObject();
  swift_weakInit();

  v39 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v51, 0, 0, sub_100AF0DB0, v38, &type metadata for String);

  sub_1000095E8(v42, &qword_1011AA6C0);

  (*(v8 + 8))(v10, v7);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v39;

  return v2;
}

unint64_t sub_100AF0978()
{
  result = qword_1011B0338;
  if (!qword_1011B0338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B0338);
  }

  return result;
}

uint64_t sub_100AF09C4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v6 = result;
      sub_1000089F8(a1, v15, &qword_1011ABB20);
      if (!v16)
      {

        return sub_1000095E8(v15, &qword_1011ABB20);
      }

      if (swift_dynamicCast())
      {
        v8 = v14[1];
        v7 = v14[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100A0EB14();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v9 = v15[0];
        v10 = v15[1];
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
        type metadata accessor for MainActor();

        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = &protocol witness table for MainActor;
        *(v13 + 32) = v6;
        *(v13 + 40) = v9;
        *(v13 + 41) = v10;
        sub_100969440(0, 0, v4, &unk_100EFD770, v13);

        sub_10002C064(v8, v7);
      }
    }
  }

  return result;
}

uint64_t sub_100AF0DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AF0E54, v7, v6);
}

uint64_t sub_100AF0E54()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_100AEFDD8(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  v1 = sub_10010FC20(&qword_1011A8D18);
  __chkstk_darwin(v1 - 8);
  v72 = v58 - v2;
  v71 = type metadata accessor for Actions.SortPlaylist.Context();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = v58 - v5;
  v69 = v6;
  __chkstk_darwin(v7);
  v63 = v58 - v8;
  v66 = sub_10010FC20(&qword_1011A87F0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = v58 - v11;
  __chkstk_darwin(v12);
  v60 = v58 - v13;
  v64 = v14;
  __chkstk_darwin(v15);
  v17 = v58 - v16;
  v73 = v0;
  v58[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v59 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v77 = xmmword_100EBC6B0;
  do
  {
    v76 = v19;
    v75 = v18;
    v20 = *(&off_1010C8F40 + v18 + 32);
    v21 = *v59;
    v22 = v59[1];
    v23 = v72;
    Playlist.variant.getter();
    v24 = v71;
    v25 = *(v71 + 24);
    v26 = type metadata accessor for Playlist.Variant();
    v27 = v63;
    (*(*(v26 - 8) + 56))(&v63[v25], 1, 1, v26);
    *v27 = v20;
    v27[1] = v21;
    v27[2] = v22;
    v28 = v73;

    sub_1008F8EFC(v23, &v27[v25]);
    v29 = &v27[*(v24 + 28)];
    *v29 = sub_100AF1C5C;
    v29[1] = v28;
    v30 = v67;
    sub_1008F92F0(v27, v67);
    v31 = v20 + 14;
    v74 = v20 + 14;
    v32 = v68;
    sub_1008F92F0(v27, v68);
    v33 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v34 = swift_allocObject();
    sub_1008F9510(v32, v34 + v33);
    sub_1008F9510(v30, v17);
    v35 = v66;
    v17[*(v66 + 36)] = v31;
    *&v17[v35[11]] = 0x4014000000000000;
    v36 = &v17[v35[10]];
    *v36 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v36[1] = 0;
    v37 = &v17[v35[12]];
    *v37 = &unk_100EEEBC0;
    *(v37 + 1) = v34;
    v38 = &v17[v35[13]];
    *v38 = &unk_100EEEBC8;
    *(v38 + 1) = 0;
    sub_100AF1C68(v27);
    sub_10010FC20(&qword_1011A7D68);
    inited = swift_initStackObject();
    *(inited + 16) = v77;
    v40 = v60;
    sub_1000089F8(v17, v60, &qword_1011A87F0);
    v41 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v42 = swift_allocObject();
    sub_100AF1CC4(v40, v42 + v41);
    v43 = v61;
    sub_1000089F8(v17, v61, &qword_1011A87F0);
    v44 = swift_allocObject();
    sub_100AF1CC4(v43, v44 + v41);
    v45 = v62;
    sub_1000089F8(v17, v62, &qword_1011A87F0);
    v46 = swift_allocObject();
    sub_100AF1CC4(v45, v46 + v41);
    *(inited + 32) = v74;
    *(inited + 40) = sub_100AF1D34;
    *(inited + 48) = v42;
    *(inited + 56) = sub_100AF1DB0;
    *(inited + 64) = v44;
    *(inited + 72) = &unk_100EFD5D8;
    *(inited + 80) = v46;
    v19 = v76;
    sub_1000095E8(v17, &qword_1011A87F0);
    sub_10010FC20(&qword_1011A7C70);
    v47 = swift_initStackObject();
    *(v47 + 16) = v77;
    *(v47 + 32) = inited;
    v48 = v47 + 32;
    v49 = sub_1008A7E58(v47);
    swift_setDeallocating();
    sub_1000095E8(v48, &qword_1011A7C78);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_10089D610(0, v19[2] + 1, 1, v19);
    }

    v51 = v19[2];
    v50 = v19[3];
    v52 = v75;
    if (v51 >= v50 >> 1)
    {
      v19 = sub_10089D610((v50 > 1), v51 + 1, 1, v19);
    }

    v18 = v52 + 1;
    v19[2] = v51 + 1;
    v19[v51 + 4] = v49;
  }

  while (v18 != 5);
  v53 = sub_1008A7E58(v19);

  v54 = swift_initStackObject();
  *(v54 + 16) = v77;
  *(v54 + 32) = v53;
  v55 = v54 + 32;
  v56 = sub_1008A7E58(v54);
  swift_setDeallocating();
  sub_1000095E8(v55, &qword_1011A7C78);
  return v56;
}

uint64_t sub_100AF167C(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_100AEFDD8(v6 | v4);
}

uint64_t static PlaylistSortingController.apply(for:to:)(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AA6C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  result = PlaylistSortingController.init(_:)(v4);
  if (result)
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

uint64_t PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      sub_10010FC20(&qword_1011B0340);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

      swift_getKeyPath();
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        sub_10010FC20(&qword_1011B0340);
        MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
        goto LABEL_10;
      }

      swift_getKeyPath();
      sub_10010FC20(&qword_1011B0340);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    }

    swift_getKeyPath();
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_1011B0340);
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_10010FC20(&qword_1011B0340);
LABEL_13:
  MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100020438(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100020438(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return swift_deallocClassInstance();
}

uint64_t sub_100AF1BD8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011B0310);
  sub_1000060E4(v0, qword_1011B0310);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100AF1C68(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100AF1CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A87F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AF1D34@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_10010FC20(&qword_1011A87F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1008BE0A4(v4, a1);
}

uint64_t sub_100AF1DB0()
{
  v1 = *(sub_10010FC20(&qword_1011A87F0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1008BE0D8(v2);
}

uint64_t sub_100AF1E1C()
{
  v2 = *(sub_10010FC20(&qword_1011A87F0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002F3F4;

  return sub_1008BE5EC(v0 + v3);
}

uint64_t sub_100AF1EF4@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController()
{
  result = qword_1011B0370;
  if (!qword_1011B0370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100AF1FA0()
{
  result = type metadata accessor for Playlist();
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

uint64_t sub_100AF2058(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100AF0DB8(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100AF2B78(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  sub_10002BC44(v1, *(v0 + 16));
  return v1;
}

void sub_100AF21D0(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (qword_1011A7158 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&qword_1011B0418;
    CGContextSetLineWidth(v19, *&qword_1011B0418);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    sub_10010FC20(&qword_1011AB028);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
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
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_10002BC44(v6, v5);
  sub_100AF2B78(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)()
{
  v1 = *v0;
  UIRoundToScale();
  return v2 * v1;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(a1 + 3) >> 1)
    {
      a1 = sub_10089D634(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    sub_10099CF7C(0, 1, 0);
    CGMutablePathRef.move(to:transform:)();
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = a1 + 40;
      do
      {
        CGMutablePathRef.addLine(to:transform:)();
        v19 += 16;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100AF2B78(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  sub_10002BC44(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002C064(a1, a2);
  v11 = String._bridgeToObjectiveC()();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (qword_1011A7158 != -1)
    {
      swift_once();
    }

    v28 = *&qword_1011B0418;
    v29 = v27 * *&qword_1011B0418;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_100AF328C;
    *(v32 + 24) = v31;
    aBlock[4] = sub_1002CF914;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10006BD7C;
    aBlock[3] = &unk_1010E0620;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_30;
    }

    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = Data._bridgeToObjectiveC()().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            sub_10002C064(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  sub_10002BC44(a1, a2);
                  v49 = v44;
                  sub_10002C064(a1, a2);

LABEL_21:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_32;
              }

LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          sub_10002C064(v35, v37);
        }

        else
        {

          sub_10002C064(v35, v37);
        }
      }

      else
      {

        sub_10002C064(v35, v37);
      }
    }

    else
    {

      sub_10002C064(v35, v37);
    }

    v21 = sub_100AF328C;
LABEL_20:
    sub_10002C064(a1, a2);
    sub_100020438(v21);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_21;
  }

LABEL_33:
  __break(1u);
}

uint64_t *OS_os_log.sharePlay.unsafeMutableAddressor()
{
  if (qword_1011A7170 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sharePlay;
}

uint64_t static OSSignposter.music(_:)()
{

  return OSSignposter.init(subsystem:category:)();
}

uint64_t static OSSignposter.music(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2 - 8);
  v3 = a1;
  Logger.init(_:)();
  return OSSignposter.init(logger:)();
}

void sub_100AF3434()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for OSSignposter();
  sub_100006080(v1, static OSSignposter.sharePlay);
  sub_1000060E4(v1, static OSSignposter.sharePlay);
  if (qword_1011A7170 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.sharePlay;
  Logger.init(_:)();
  OSSignposter.init(logger:)();
}

uint64_t sub_100AF354C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSSignposter();
  v6 = sub_1000060E4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100AF35E4()
{
  sub_100005B30();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.sharePlay = result;
  return result;
}

id static OS_os_log.sharePlay.getter()
{
  if (qword_1011A7170 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;

  return v1;
}

uint64_t sub_100AF36A8()
{
  sub_100AF86AC(v0, v8);
  if (v9 == 1)
  {
    v1 = *&v8[0];
    v2 = MPModelObject.mediaKitPlayableKind.getter();

    return *&aSongs_9[8 * v2];
  }

  else
  {
    sub_100188D80(v8, v6);
    v4 = v7;
    sub_10000954C(v6, v7);
    v5 = sub_100AF375C(v4);
    sub_10000959C(v6);
    return v5;
  }
}

uint64_t sub_100AF375C(uint64_t a1)
{
  v106 = type metadata accessor for Playlist.Entry();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v96 - v5;
  v110 = type metadata accessor for Track();
  v104 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = &v96 - v8;
  v112 = type metadata accessor for GenericMusicItem();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v143 = &v96 - v11;
  v115 = type metadata accessor for UploadedVideo();
  v111 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for UploadedAudio();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for TVShow();
  v116 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TVEpisode();
  v119 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for Station();
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Song();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Playlist();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for MusicVideo();
  v130 = *(v134 - 8);
  __chkstk_darwin(v134);
  v142 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for MusicMovie();
  v133 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Album();
  v135 = *(v141 - 8);
  __chkstk_darwin(v141);
  v140 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 - 8);
  __chkstk_darwin(v24);
  v101 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v96 - v27;
  __chkstk_darwin(v29);
  v139 = &v96 - v30;
  __chkstk_darwin(v31);
  v33 = &v96 - v32;
  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_1000060E4(v34, static Logger.capabilityUpsell);
  v37 = v23 + 16;
  v36 = *(v23 + 16);
  v144 = v1;
  v36(v33, v1, a1);
  v99 = v35;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v98 = v28;
    v41 = v40;
    v42 = swift_slowAlloc();
    v138 = v23;
    v96 = v42;
    v146 = v42;
    *v41 = 136315138;
    v36(v139, v33, a1);
    v43 = String.init<A>(describing:)();
    v97 = v18;
    v44 = a1;
    v46 = v45;
    v145 = *(v138 + 8);
    v145(v33, v44);
    v47 = sub_100010678(v43, v46, &v146);
    a1 = v44;
    v18 = v97;

    *(v41 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "MusicItem - mediaKind =%s", v41, 0xCu);
    sub_10000959C(v96);

    v28 = v98;
  }

  else
  {

    v145 = *(v23 + 8);
    v145(v33, a1);
  }

  v48 = v141;
  v49 = v144;
  v141 = v37;
  v36(v28, v144, a1);
  v50 = v140;
  v51 = swift_dynamicCast();
  v53 = v142;
  v52 = v143;
  if (!v51)
  {
    v55 = v36;
    v56 = v136;
    v57 = v137;
    if (swift_dynamicCast())
    {
      (*(v133 + 8))(v56, v57);
      v54 = 0x6F6D2D636973756DLL;
      goto LABEL_36;
    }

    v58 = v134;
    if (swift_dynamicCast())
    {
      (*(v130 + 8))(v53, v58);
      v54 = 0x69762D636973756DLL;
      goto LABEL_36;
    }

    v60 = v131;
    v59 = v132;
    if (swift_dynamicCast())
    {
      (*(v128 + 8))(v60, v59);
      v54 = 0x7473696C79616C70;
      goto LABEL_36;
    }

    v61 = v18;
    v62 = v129;
    if (swift_dynamicCast())
    {
      (*(v125 + 8))(v61, v62);
      v54 = 0x73676E6F73;
      goto LABEL_36;
    }

    v63 = v126;
    v64 = v127;
    if (swift_dynamicCast())
    {
      (*(v122 + 8))(v63, v64);
      v54 = 0x736E6F6974617473;
      goto LABEL_36;
    }

    v65 = v123;
    v66 = v124;
    if (swift_dynamicCast())
    {
      (*(v119 + 8))(v65, v66);
      v54 = 0x6F736970652D7674;
      goto LABEL_36;
    }

    v67 = v120;
    v68 = v121;
    if (swift_dynamicCast())
    {
      (*(v116 + 8))(v67, v68);
      v54 = 0x73776F68732D7674;
      goto LABEL_36;
    }

    v69 = v117;
    v70 = v118;
    if (swift_dynamicCast())
    {
      v54 = 0x646564616F6C7075;
      (*(v113 + 8))(v69, v70);
      goto LABEL_36;
    }

    v71 = v114;
    v72 = v115;
    if (swift_dynamicCast())
    {
      v54 = 0x646564616F6C7075;
      (*(v111 + 8))(v71, v72);
      goto LABEL_36;
    }

    v73 = v52;
    v74 = v112;
    if (swift_dynamicCast())
    {
      v75 = v109;
      v76 = v108;
      (*(v109 + 32))(v108, v73, v74);
      sub_100AF6738(&v146);
    }

    else
    {
      v77 = v107;
      v74 = v110;
      if (!swift_dynamicCast())
      {
        v81 = v102;
        if (!swift_dynamicCast())
        {
          v85 = v55;
          v86 = v101;
          v85(v101, v49, a1);
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v146 = v144;
            *v89 = 136315138;
            v85(v139, v86, a1);
            v90 = String.init<A>(describing:)();
            v91 = v86;
            v92 = v90;
            v94 = v93;
            v145(v91, a1);
            v95 = sub_100010678(v92, v94, &v146);

            *(v89 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v87, v88, "Unsupported MusicItem kind=%s", v89, 0xCu);
            sub_10000959C(v144);
          }

          else
          {

            v145(v86, a1);
          }

          goto LABEL_35;
        }

        v82 = v100;
        (*(v105 + 32))(v100, v81, v106);
        sub_100AF5D68(&v146);
        v83 = v147;
        if (v147)
        {
          v84 = v148;
          sub_10000954C(&v146, v147);
          v54 = sub_100AF375C(v83, v84);
          (*(v105 + 8))(v82, v106);
          goto LABEL_32;
        }

        (*(v105 + 8))(v82, v106);
LABEL_34:
        sub_1000095E8(&v146, &qword_1011ACCA0);
LABEL_35:
        v54 = 0;
        goto LABEL_36;
      }

      v75 = v104;
      v76 = v103;
      (*(v104 + 32))(v103, v77, v74);
      Track.musicItem.getter(&v146);
    }

    v78 = v147;
    if (v147)
    {
      v79 = v148;
      sub_10000954C(&v146, v147);
      v54 = sub_100AF375C(v78, v79);
      (*(v75 + 8))(v76, v74);
LABEL_32:
      sub_10000959C(&v146);
      goto LABEL_36;
    }

    (*(v75 + 8))(v76, v74);
    goto LABEL_34;
  }

  (*(v135 + 8))(v50, v48);
  v54 = 0x736D75626C61;
LABEL_36:
  v145(v28, a1);
  return v54;
}

uint64_t sub_100AF4968(uint64_t a1)
{
  v124 = type metadata accessor for Playlist.Entry();
  v120 = *(v124 - 8);
  __chkstk_darwin(v124);
  v119 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v121 = &v115 - v4;
  v128 = type metadata accessor for Track();
  v123 = *(v128 - 8);
  __chkstk_darwin(v128);
  v122 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v125 = &v115 - v7;
  v132 = type metadata accessor for GenericMusicItem();
  v127 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v131 = &v115 - v10;
  v136 = type metadata accessor for UploadedVideo();
  v130 = *(v136 - 8);
  __chkstk_darwin(v136);
  v129 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v135 = &v115 - v13;
  v140 = type metadata accessor for UploadedAudio();
  v134 = *(v140 - 8);
  __chkstk_darwin(v140);
  v133 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v139 = &v115 - v16;
  v144 = type metadata accessor for TVShow();
  v138 = *(v144 - 8);
  __chkstk_darwin(v144);
  v137 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v143 = &v115 - v19;
  v148 = type metadata accessor for TVEpisode();
  v142 = *(v148 - 8);
  __chkstk_darwin(v148);
  v141 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v147 = &v115 - v22;
  v152 = type metadata accessor for Station();
  v146 = *(v152 - 8);
  __chkstk_darwin(v152);
  v145 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v151 = &v115 - v25;
  v156 = type metadata accessor for Song();
  v150 = *(v156 - 8);
  __chkstk_darwin(v156);
  v149 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v155 = &v115 - v28;
  v160 = type metadata accessor for Playlist();
  v154 = *(v160 - 8);
  __chkstk_darwin(v160);
  v153 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v159 = &v115 - v31;
  v162 = type metadata accessor for MusicVideo();
  v158 = *(v162 - 8);
  __chkstk_darwin(v162);
  v157 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v115 - v34;
  v36 = type metadata accessor for MusicMovie();
  v161 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v115 - v40;
  v42 = type metadata accessor for Album();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v115 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v115 - v47;
  v49 = *(a1 - 8);
  __chkstk_darwin(v50);
  v115 = &v115 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v118 = &v115 - v53;
  v55 = __chkstk_darwin(v54);
  v57 = &v115 - v56;
  v163 = v49;
  v58 = v49 + 16;
  v59 = *(v49 + 16);
  v61 = v60;
  v117 = v58;
  v116 = v59;
  (v59)(&v115 - v56, v164, v60, v55);
  if (swift_dynamicCast())
  {
    (*(v43 + 32))(v45, v48, v42);
    v62 = Album.catalogID.getter();
    v64 = v63;
    (*(v43 + 8))(v45, v42);
    if (v64)
    {
      v65 = v62;
    }

    else
    {
      v65 = 0;
    }

    v66 = v61;
    v67 = v163;
    goto LABEL_20;
  }

  v66 = v61;
  if (swift_dynamicCast())
  {
    v68 = v161;
    (*(v161 + 32))(v38, v41, v36);
    v65 = MusicMovie.catalogID.getter();
    v70 = v69;
    (*(v68 + 8))(v38, v36);
LABEL_10:
    if (!v70)
    {
      v65 = 0;
    }

    v67 = v163;
    goto LABEL_20;
  }

  v71 = v162;
  if (swift_dynamicCast())
  {
    v73 = v157;
    v72 = v158;
    (*(v158 + 32))(v157, v35, v71);
    v65 = MusicVideo.catalogID.getter();
    v70 = v74;
    (*(v72 + 8))(v73, v71);
    goto LABEL_10;
  }

  v76 = v159;
  v75 = v160;
  v77 = swift_dynamicCast();
  v67 = v163;
  if (v77)
  {
    v79 = v153;
    v78 = v154;
    (*(v154 + 32))(v153, v76, v75);
    v80 = Playlist.catalogID.getter();
LABEL_17:
    v65 = v80;
    v83 = v81;
    (*(v78 + 8))(v79, v75);
    goto LABEL_18;
  }

  v82 = v155;
  v75 = v156;
  if (swift_dynamicCast())
  {
    v79 = v149;
    v78 = v150;
    (*(v150 + 32))(v149, v82, v75);
    v80 = Song.catalogID.getter();
    goto LABEL_17;
  }

  v86 = v151;
  v85 = v152;
  if (swift_dynamicCast())
  {
    v87 = v146;
    v88 = v145;
    (*(v146 + 32))(v145, v86, v85);
    v65 = Station.id.getter();
    (*(v87 + 8))(v88, v85);
    goto LABEL_20;
  }

  v89 = v147;
  v75 = v148;
  if (swift_dynamicCast())
  {
    v78 = v142;
    v79 = v141;
    (*(v142 + 32))(v141, v89, v75);
    v80 = TVEpisode.catalogID.getter();
    goto LABEL_17;
  }

  v90 = v143;
  v75 = v144;
  if (swift_dynamicCast())
  {
    v78 = v138;
    v79 = v137;
    (*(v138 + 32))(v137, v90, v75);
    v80 = TVShow.catalogID.getter();
    goto LABEL_17;
  }

  v91 = v139;
  v75 = v140;
  if (swift_dynamicCast())
  {
    v78 = v134;
    v79 = v133;
    (*(v134 + 32))(v133, v91, v75);
    v80 = UploadedAudio.catalogID.getter();
    goto LABEL_17;
  }

  v92 = v135;
  v93 = v136;
  if (!swift_dynamicCast())
  {
    v97 = v131;
    v98 = v132;
    if (swift_dynamicCast())
    {
      v99 = v127;
      v100 = v126;
      (*(v127 + 32))(v126, v97, v98);
      sub_100AF6738(&v165);
    }

    else
    {
      v101 = v125;
      v98 = v128;
      if (swift_dynamicCast())
      {
        v99 = v123;
        v100 = v122;
        (*(v123 + 32))(v122, v101, v98);
        Track.musicItem.getter(&v165);
      }

      else
      {
        v102 = v121;
        v98 = v124;
        if (!swift_dynamicCast())
        {
          if (qword_1011A7178 != -1)
          {
            swift_once();
          }

          v105 = type metadata accessor for Logger();
          sub_1000060E4(v105, static Logger.capabilityUpsell);
          v106 = v118;
          v107 = v116;
          v116(v118, v164, v66);
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v165 = v164;
            *v110 = 136315138;
            v107(v115, v106, v66);
            v111 = String.init<A>(describing:)();
            v113 = v112;
            (*(v67 + 8))(v106, v66);
            v114 = sub_100010678(v111, v113, &v165);

            *(v110 + 4) = v114;
            _os_log_impl(&_mh_execute_header, v108, v109, "Unsupported MusicItem catalogID=%s", v110, 0xCu);
            sub_10000959C(v164);
          }

          else
          {

            (*(v67 + 8))(v106, v66);
          }

          goto LABEL_40;
        }

        v99 = v120;
        v100 = v119;
        (*(v120 + 32))(v119, v102, v98);
        sub_100AF5D68(&v165);
      }
    }

    v103 = v166;
    if (v166)
    {
      v104 = v167;
      sub_10000954C(&v165, v166);
      v65 = sub_100AF4968(v103, v104);
      (*(v99 + 8))(v100, v98);
      sub_10000959C(&v165);
      goto LABEL_20;
    }

    (*(v99 + 8))(v100, v98);
    sub_1000095E8(&v165, &qword_1011ACCA0);
LABEL_40:
    v65 = 0;
    goto LABEL_20;
  }

  v94 = v130;
  v95 = v129;
  (*(v130 + 32))(v129, v92, v93);
  v65 = UploadedVideo.catalogID.getter();
  v83 = v96;
  (*(v94 + 8))(v95, v93);
LABEL_18:
  if (!v83)
  {
    v65 = 0;
  }

LABEL_20:
  (*(v67 + 8))(v57, v66);
  return v65;
}

uint64_t Logger.capabilityUpsell.unsafeMutableAddressor()
{
  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.capabilityUpsell);
}

uint64_t sub_100AF5B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AF5C34, v6, v5);
}

uint64_t sub_100AF5C34()
{

  v1 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  sub_1008BD18C(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_100AF8714(&qword_1011A79E0, _s3__C25OpenExternalURLOptionsKeyVMa_0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100AF5D68@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for Playlist.Entry();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UploadedVideo();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UploadedAudio();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVEpisode();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Song();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicVideo();
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Playlist.Entry.InternalItem();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v59 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  Playlist.Entry.internalItem.getter();
  v26 = (*(v21 + 88))(v25, v20);
  if (v26 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v25, v20);
    v27 = *(v17 + 32);
    v27(v19, v25, v16);
    v28 = v75;
    v75[3] = v16;
    v28[4] = sub_100AF8714(&qword_1011A9360, &type metadata accessor for MusicMovie);
    v29 = sub_10001C8B8(v28);
    return (v27)(v29, v19, v16);
  }

  v31 = v75;
  if (v26 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v25, v20);
    v32 = *(v74 + 32);
    v32(v15, v25, v13);
    v31[3] = v13;
    v31[4] = &protocol witness table for MusicVideo;
    v33 = sub_10001C8B8(v31);
    return (v32)(v33, v15, v13);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v25, v20);
    v34 = v73;
    v35 = *(isa + 4);
    v35(v12, v25, v73);
    v31[3] = v34;
    v31[4] = &protocol witness table for Song;
    v36 = sub_10001C8B8(v31);
    return (v35)(v36, v12, v34);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v69;
    v38 = *(v70 + 32);
    v39 = v71;
    v38(v69, v25, v71);
    v31[3] = v39;
    v40 = &unk_1011A9370;
    v41 = &type metadata accessor for TVEpisode;
LABEL_13:
    v31[4] = sub_100AF8714(v40, v41);
    v42 = sub_10001C8B8(v31);
    return (v38)(v42, v37, v39);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v66;
    v38 = *(v67 + 32);
    v39 = v68;
    v38(v66, v25, v68);
    v31[3] = v39;
    v40 = &unk_1011A9388;
    v41 = &type metadata accessor for UploadedAudio;
    goto LABEL_13;
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v60;
    v38 = *(v61 + 32);
    v39 = v62;
    v38(v60, v25, v62);
    v31[3] = v39;
    v40 = &unk_1011A9390;
    v41 = &type metadata accessor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000060E4(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    Playlist.Entry.internalItem.getter();
    sub_100AF8714(&qword_1011A88A8, &type metadata accessor for Playlist.Entry.InternalItem);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = sub_100010678(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&_mh_execute_header, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    sub_10000959C(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v31[4] = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  return v58(v25, v43);
}

uint64_t sub_100AF6738@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v1 = type metadata accessor for Playlist.Folder();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin(v1);
  v86 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicVideo();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v92 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicMovie();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin(v7);
  v95 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Station();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin(v9);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UploadedVideo();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UploadedAudio();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVShow();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TVEpisode();
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin(v14);
  v79 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Song();
  v85 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v69 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v68 - v28;
  v30 = *(v24 + 16);
  v30(&v68 - v28, v99, v23, v27);
  v31 = (*(v24 + 88))(v29, v23);
  if (v31 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v29, v23);
    v32 = *(v20 + 32);
    v32(v22, v29, v19);
    v33 = v98;
    v98[3] = v19;
    v33[4] = &protocol witness table for Album;
    v34 = sub_10001C8B8(v33);
    return (v32)(v34, v22, v19);
  }

  v36 = v98;
  if (v31 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v29, v23);
    v37 = v95;
    v38 = *(v96 + 32);
    v39 = v29;
    v40 = v97;
    v38(v95, v39, v97);
    v36[3] = v40;
    v41 = &qword_1011A9360;
    v42 = &type metadata accessor for MusicMovie;
LABEL_5:
    v36[4] = sub_100AF8714(v41, v42);
    v43 = sub_10001C8B8(v36);
    v44 = v37;
    v45 = v40;
    return v38(v43, v44, v45);
  }

  if (v31 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v29, v23);
    v46 = v92;
    v38 = *(v93 + 32);
    v47 = v94;
    v38(v92, v29, v94);
    v48 = &protocol witness table for MusicVideo;
LABEL_10:
    v36[3] = v47;
    v36[4] = v48;
    v43 = sub_10001C8B8(v36);
    v44 = v46;
    v45 = v47;
    return v38(v43, v44, v45);
  }

  if (v31 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v29, v23);
    v46 = v89;
    v38 = *(v90 + 32);
    v47 = v91;
    v38(v89, v29, v91);
    v48 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v31 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v29, v23);
    v37 = v86;
    v38 = *(v87 + 32);
    v49 = v29;
    v40 = v88;
    v38(v86, v49, v88);
    v36[3] = v40;
    v41 = &unk_1011AAD60;
    v42 = &type metadata accessor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v31 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v29, v23);
    v50 = *(v85 + 32);
    v50(v18, v29, v16);
    v36[3] = v16;
    v36[4] = &protocol witness table for Song;
    v51 = sub_10001C8B8(v36);
    return (v50)(v51, v18, v16);
  }

  else
  {
    if (v31 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v29, v23);
      v46 = v82;
      v38 = *(v83 + 32);
      v47 = v84;
      v38(v82, v29, v84);
      v48 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v31 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v29, v23);
      v38 = *(v80 + 32);
      v37 = v79;
      v52 = v29;
      v40 = v81;
      v38(v79, v52, v81);
      v36[3] = v40;
      v41 = &unk_1011A9370;
      v42 = &type metadata accessor for TVEpisode;
      goto LABEL_5;
    }

    if (v31 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v29, v23);
      v38 = *(v77 + 32);
      v37 = v76;
      v53 = v29;
      v40 = v78;
      v38(v76, v53, v78);
      v36[3] = v40;
      v41 = &unk_1011A9380;
      v42 = &type metadata accessor for TVShow;
      goto LABEL_5;
    }

    if (v31 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v29, v23);
      v38 = *(v74 + 32);
      v37 = v73;
      v54 = v29;
      v40 = v75;
      v38(v73, v54, v75);
      v36[3] = v40;
      v41 = &unk_1011A9388;
      v42 = &type metadata accessor for UploadedAudio;
      goto LABEL_5;
    }

    if (v31 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v29, v23);
      v38 = *(v71 + 32);
      v37 = v70;
      v55 = v29;
      v40 = v72;
      v38(v70, v55, v72);
      v36[3] = v40;
      v41 = &unk_1011A9390;
      v42 = &type metadata accessor for UploadedVideo;
      goto LABEL_5;
    }

    if (qword_1011A7178 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000060E4(v56, static Logger.capabilityUpsell);
    v57 = v69;
    (v30)(v69, v99, v23);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v97 = v60;
      v99 = swift_slowAlloc();
      v100 = v99;
      *v60 = 136315138;
      sub_100AF8714(&unk_1011B0420, &type metadata accessor for GenericMusicItem);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v57;
      v64 = v63;
      v65 = *(v24 + 8);
      v65(v62, v23);
      v66 = sub_100010678(v61, v64, &v100);

      v67 = v97;
      *(v97 + 1) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unsupported GenericMusicItem kind=%s", v67, 0xCu);
      sub_10000959C(v99);
    }

    else
    {

      v65 = *(v24 + 8);
      v65(v57, v23);
    }

    v36[4] = 0;
    *v36 = 0u;
    *(v36 + 1) = 0u;
    return (v65)(v29, v23);
  }
}

uint64_t sub_100AF7528()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.capabilityUpsell);
  sub_1000060E4(v0, static Logger.capabilityUpsell);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.capabilityUpsell);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v2 - 8);
  v4 = &v85 - v3;
  v5 = type metadata accessor for URLQueryItem();
  v93 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v85 - v9;
  v11 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v85 - v12;
  v14 = type metadata accessor for URL();
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  __chkstk_darwin(v14);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v85 - v17;
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_1011A9F70);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  v18 = v101;
  if (!v101)
  {
    goto LABEL_8;
  }

  v19 = [v101 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v19)
  {

    goto LABEL_8;
  }

  v90 = v4;
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v14;
  v22 = v21;
  v24 = v23;

  *&v101 = 0x2F2F3A636973756DLL;
  *(&v101 + 1) = 0xE800000000000000;
  v25._countAndFlagsBits = v22;
  v26 = v91;
  v25._object = v24;
  String.append(_:)(v25);

  URL.init(string:)();

  v27 = v95;
  if ((*(v95 + 48))(v13, 1, v26) == 1)
  {

    sub_1000095E8(v13, &qword_1011A77F0);
LABEL_8:
    if (qword_1011A7178 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000060E4(v28, static Logger.capabilityUpsell);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not build marketingURL", v31, 2u);
    }

    return;
  }

  v32 = *(v27 + 32);
  v88 = v27 + 32;
  v87 = v32;
  v32(v94, v13, v26);
  sub_10010FC20(&qword_1011A7D38);
  v33 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v89 = *(v93 + 72);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100EBDC20;
  v35 = v34;
  v86 = v33;
  URLQueryItem.init(name:value:)();
  sub_100AF8584(a1, &v101);
  if (v102[24] != 253 && v102[24] != 255 && v102[24] != 254)
  {
    sub_100309980(&v101);
  }

  URLQueryItem.init(name:value:)();

  sub_100AF8584(a1, &v99);
  if (v100[24] < 0xFDu)
  {
    v101 = v99;
    *v102 = *v100;
    *&v102[9] = *&v100[9];
    sub_100AF36A8();
    v38 = v35;
    if (v39)
    {
      URLQueryItem.init(name:value:)();

      v41 = *(v35 + 2);
      v40 = *(v35 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_10089C958(v40 > 1, v41 + 1, 1, v35);
      }

      v42 = v86;
      *(v38 + 2) = v41 + 1;
      (*(v93 + 32))(&v38[v42 + v41 * v89], v10, v5);
    }

    else
    {
      if (qword_1011A7178 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000060E4(v43, static Logger.capabilityUpsell);
      sub_100AF86AC(&v101, &v99);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v98 = v85;
        *v46 = 136315138;
        sub_100AF86AC(&v99, v96);
        v47 = String.init<A>(describing:)();
        v49 = v48;
        sub_100AF86E4(&v99);
        v50 = sub_100010678(v47, v49, &v98);
        v38 = v35;

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "Missing kind for item=%s", v46, 0xCu);
        sub_10000959C(v85);
      }

      else
      {

        sub_100AF86E4(&v99);
      }

      v42 = v86;
    }

    sub_100AF86AC(&v101, &v99);
    if (v100[24] == 1)
    {
      v51 = v99;
      MPModelObject.bestIdentifier(for:)(2, 1u);
      v53 = v52;

      if (v53)
      {
LABEL_34:
        URLQueryItem.init(name:value:)();

        v55 = *(v38 + 2);
        v54 = *(v38 + 3);
        if (v55 >= v54 >> 1)
        {
          v38 = sub_10089C958(v54 > 1, v55 + 1, 1, v38);
        }

        v37 = v94;
        sub_100AF86E4(&v101);
        *(v38 + 2) = v55 + 1;
        (*(v93 + 32))(&v38[v42 + v55 * v89], v7, v5);
        v36 = v90;
        goto LABEL_44;
      }
    }

    else
    {
      sub_100188D80(&v99, v96);
      v56 = v97;
      sub_10000954C(v96, v97);
      sub_100AF4968(v56);
      v58 = v57;
      sub_10000959C(v96);
      if (v58)
      {
        goto LABEL_34;
      }
    }

    if (qword_1011A7178 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1000060E4(v59, static Logger.capabilityUpsell);
    sub_100AF86AC(&v101, &v99);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v98 = v63;
      *v62 = 136315138;
      sub_100AF86AC(&v99, v96);
      v64 = String.init<A>(describing:)();
      v66 = v65;
      sub_100AF86E4(&v99);
      v67 = sub_100010678(v64, v66, &v98);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Missing id for item=%s", v62, 0xCu);
      sub_10000959C(v63);
    }

    else
    {

      sub_100AF86E4(&v99);
    }

    sub_100AF86E4(&v101);
    v37 = v94;
    v36 = v90;
    goto LABEL_44;
  }

  sub_100309980(&v99);
  v36 = v90;
  v37 = v94;
  v38 = v35;
LABEL_44:
  URL.append(queryItems:)(v38);

  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_1000060E4(v68, static Logger.capabilityUpsell);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v101 = v72;
    *v71 = 136446210;
    swift_beginAccess();
    sub_100AF8714(&qword_1011AA648, &type metadata accessor for URL);
    v73 = v91;
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v37;
    v77 = sub_100010678(v74, v75, &v101);

    *(v71 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v69, v70, "Will present upsell with URL=%{public}s", v71, 0xCu);
    sub_10000959C(v72);
    v36 = v90;
  }

  else
  {

    v73 = v91;
    v76 = v37;
  }

  v78 = v95;
  v79 = type metadata accessor for TaskPriority();
  (*(*(v79 - 8) + 56))(v36, 1, 1, v79);
  swift_beginAccess();
  v80 = v92;
  (*(v78 + 16))(v92, v76, v73);
  type metadata accessor for MainActor();
  v81 = static MainActor.shared.getter();
  v82 = v78;
  v83 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v81;
  *(v84 + 24) = &protocol witness table for MainActor;
  v87(v84 + v83, v80, v73);
  sub_100969440(0, 0, v36, &unk_100EFD9D0, v84);

  (*(v82 + 8))(v76, v73);
}

uint64_t sub_100AF8400(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100AF8414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100AF845C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double sub_100AF84AC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_100AF84EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100AF8528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100AF85BC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100AF5B9C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100AF8714(unint64_t *a1, void (*a2)(uint64_t))
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

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = type metadata accessor for UIView.Corner();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.background()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (qword_1011B0450 != -1)
  {
    swift_once();
  }

  v0 = qword_1011B11A0;
  v1 = qword_1011B11A0;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration()
{
  v0 = [objc_opt_self() configurationWithWeight:4];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = type metadata accessor for ScenePhase();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader()
{
  v0 = objc_allocWithZone(type metadata accessor for LyricsLoader());

  return [v0 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = type metadata accessor for ScenePhase();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v0 = swift_unknownObjectWeakInit();
  *(v0 + 8) = 2;
  *(v0 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v0 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v0 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  result = 8.0;
  if (v1 == 6)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  sub_100014984(v1);
  return BYTE1(v1[0]);
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_1011B5930);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100AF8F74(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B0C18);
  __chkstk_darwin(v2 - 8);
  sub_1000089F8(a1, &v5 - v3, &qword_1011B0C18);
  return EnvironmentValues.horizontalSizeClass.setter();
}

double variable initialization expression of JSApplication.SubscriptionFlowConfiguration.source@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return sub_100AFA010(v2, a1);
}

double sub_100AF91FC@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  sub_100AFA074(&v15, &v14);
  sub_100AFA0D0(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  sub_100BF5F9C(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView()
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView()
{
  if (qword_1011B0758 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() effectForBlurEffect:qword_10121B948];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  return v1;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t sub_100AF9798@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveForegroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100AF9818@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_10010FC20(a1);

  return swift_storeEnumTagMultiPayload();
}

id sub_100AF9890(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of SliderView.remainingTrackColor()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (qword_1011B04D0 != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of SymbolButton.materialView()
{
  v4 = 1;
  v0 = type metadata accessor for SymbolButton.MaterialView();
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, "initWithEffect:", 0);
  sub_100BF0E28(&v4);

  return v1;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_10121BAF8;
  v2 = qword_10121BB00;
  v3 = qword_10121BB08;
  v4 = type metadata accessor for SymbolButton.BackgroundView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v6 = 0;
  *(v6 + 1) = 0x3FF0000000000000;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v1;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100BF12A4(v1, v0, v2, v3);
  sub_100BF1464();

  return v8;
}

uint64_t sub_100AF9C2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v0;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.35];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.6];

  return v1;
}

id variable initialization expression of WaveformPlayIndicator.waveform()
{
  v0 = [objc_opt_self() zero];

  return v0;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset()
{
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  return sub_100C0B798();
}

uint64_t sub_100AF9F3C(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100AF9F90(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100AF9FE8@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_100AFA010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100AFA138@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int sub_100AFA1E8()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100AFA250()
{
  sub_100AFAB8C(&qword_1011B0C08, type metadata accessor for UIContentSizeCategory);
  sub_100AFAB8C(&qword_1011B0C10, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA30C()
{
  sub_100AFAB8C(&qword_1011B0BF8, _s3__C9TextStyleVMa_0);
  sub_100AFAB8C(&qword_1011B0C00, _s3__C9TextStyleVMa_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA3C8()
{
  sub_100AFAB8C(&qword_1011B0BE0, type metadata accessor for Weight);
  sub_100AFAB8C(&qword_1011B0BE8, type metadata accessor for Weight);
  sub_100AFB51C();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA490()
{
  sub_100AFAB8C(&qword_1011B0BD0, type metadata accessor for FeatureKey);
  sub_100AFAB8C(&qword_1011B0BD8, type metadata accessor for FeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA54C()
{
  sub_100AFAB8C(&qword_1011B0BC0, _s3__C13AttributeNameVMa_0);
  sub_100AFAB8C(&qword_1011B0BC8, _s3__C13AttributeNameVMa_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA608()
{
  sub_100AFAB8C(&qword_1011B0C58, _s3__C4NameVMa_1);
  sub_100AFAB8C(&unk_1011B0C60, _s3__C4NameVMa_1);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA6C4()
{
  sub_100AFAB8C(&qword_1011B0BA0, type metadata accessor for CAGradientLayerType);
  sub_100AFAB8C(&qword_1011B0BA8, type metadata accessor for CAGradientLayerType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA780()
{
  sub_100AFAB8C(&qword_1011B0BB0, type metadata accessor for InfoKey);
  sub_100AFAB8C(&qword_1011B0BB8, type metadata accessor for InfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA83C()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

void sub_100AFA8B0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

__n128 sub_100AFA97C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_100AFA9B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GlowModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100AFAB8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100AFB51C()
{
  result = qword_1011B0BF0;
  if (!qword_1011B0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B0BF0);
  }

  return result;
}

id Artwork.content.getter()
{
  v1 = *v0;
  sub_100AFB6F8(*v0, v0[1]);
  return v1;
}

id sub_100AFB6F8(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  sub_10004D23C(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return sub_100557AF8(a1, v3);
}

uint64_t Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  result = swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

char *sub_100AFBA6C(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A5F0(v1, v3, type metadata accessor for Artwork);
  v4 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v5 = Artwork.View.init(configuration:)(v3);
  sub_100AFE700(&qword_1011B0E98, type metadata accessor for Artwork.View);
  return v5;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  sub_10004A658();
}

uint64_t Artwork.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return sub_10004A5F0(v1 + v3, a1, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_10004A5F0(v1 + v8, v7, type metadata accessor for Artwork);
  return sub_100AFBF5C;
}

void sub_100AFBF5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_10004A5F0(*(*a1 + 96), v6, type metadata accessor for Artwork);
    sub_10004A5F0(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_10004D8C8(v6, v7 + v4);
    swift_endAccess();
    sub_10004D9B8(v5);
    sub_10004BEBC(v5, type metadata accessor for Artwork);
  }

  else
  {
    sub_10004A5F0(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_10004D8C8(v3, v7 + v4);
    swift_endAccess();
    sub_10004D9B8(v6);
  }

  sub_10004BEBC(v6, type metadata accessor for Artwork);
  sub_10004BEBC(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6);
}

void Artwork.View.intrinsicContentSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  if (*(v1 + 48) == 2 && *(v1 + 64) == 2)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 40);
  }

  else
  {
    v3 = 0.0;
    v2 = 0.0;
  }

  Artwork.View.fittingImageSize(in:)(v3, v2);
}

double Artwork.Size.computedSize(in:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  sub_100058300(a5, a6, a1, a2);
  v11 = v10;
  sub_100058300(a5, a6, a3, a4);
  return v11;
}

void sub_100AFC458(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v18 = v5;
  v8 = [a2 imageRepresentation];
  if (v8)
  {
    v17 = v8;
    v9 = [v8 image];
    if (v9)
    {
      v10 = v9;
      if (([v17 isImagePrepared] & 1) == 0)
      {
        v13 = swift_allocObject();
        v13[2] = a3;
        v13[3] = v10;
        v13[4] = v7;
        aBlock[4] = sub_100AFE9F8;
        aBlock[5] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000603D0;
        aBlock[3] = &unk_1010E16C8;
        v14 = _Block_copy(aBlock);
        v15 = v18;
        v16 = v10;

        [v16 prepareForDisplayWithCompletionHandler:v14];

        _Block_release(v14);
        return;
      }

      v11 = v10;
      sub_10004C458(v10);

      [v7 setNeedsLayout];
      v12 = v17;
      goto LABEL_8;
    }
  }

  sub_10004C458(0);
  [v7 setNeedsLayout];
  v12 = v18;
LABEL_8:
}

uint64_t sub_100AFC65C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011B4F00);
  v22 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_100AFEA04;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010E1718;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a3;
  v18 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100AFE700(&qword_1011B1148, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_1011B1150);
  sub_100024964();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_100AFC944(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [a4 artworkCatalog];
  v9 = v8;
  if (!Strong)
  {
    if (v8)
    {

      return;
    }

LABEL_7:
    if (a2)
    {
      v11 = a2;
      sub_10004C458(a2);
    }

    else
    {
      if (qword_1011B0628 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000060E4(v12, static Logger.artwork);
      v13 = a3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to prepare image: %@", v16, 0xCu);
        sub_1000095E8(v17, &qword_1011B1160);
      }

      sub_10004C458(v13);
    }

    [a4 setNeedsLayout];
    return;
  }

  if (!v8)
  {

    return;
  }

  sub_100009F78(0, &qword_1011B1168);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    goto LABEL_7;
  }
}

void (*sub_100AFCC50(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.View.typedConfiguration.modify(v2);
  return sub_100260668;
}

uint64_t sub_100AFCCC0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Artwork(0);
  a1[4] = sub_100AFE700(&qword_1011B0E48, type metadata accessor for Artwork);
  v3 = sub_10001C8B8(a1);
  v4 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return sub_10004A5F0(v1 + v4, v3, type metadata accessor for Artwork);
}

uint64_t sub_100AFCD80(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v6);
  v8 = v12 - v7 + 40;
  sub_100008FE4(a1, v12);
  sub_10010FC20(&qword_1011B1140);
  swift_dynamicCast();
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_10004A5F0(v1 + v9, v5, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_10004D8C8(v8, v1 + v9);
  swift_endAccess();
  sub_10004D9B8(v5);
  sub_10004BEBC(v8, type metadata accessor for Artwork);
  sub_10004BEBC(v5, type metadata accessor for Artwork);
  return sub_10000959C(a1);
}

void (*sub_100AFCEFC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  *(v3 + 24) = type metadata accessor for Artwork(0);
  v4[4] = sub_100AFE700(&qword_1011B0E48, type metadata accessor for Artwork);
  v5 = sub_10001C8B8(v4);
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_10004A5F0(v1 + v6, v5, type metadata accessor for Artwork);
  return sub_100AFD000;
}

void sub_100AFD000(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100008FE4(*a1, v2 + 40);
    sub_100AFCD80(v2 + 40);
    sub_10000959C(v2);
  }

  else
  {
    sub_100AFCD80(*a1);
  }

  free(v2);
}

uint64_t sub_100AFD068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

uint64_t Artwork.Caching.reference.setter()
{
  swift_weakAssign();
}

uint64_t (*Artwork.Caching.reference.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_100AFD14C;
}

uint64_t sub_100AFD14C()
{
  swift_weakAssign();
}

uint64_t Artwork.Caching.init(reference:identifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_weakInit();
  *a3 = a1;
  a3[1] = a2;
  swift_weakAssign();
}

uint64_t Artwork.Caching.init(reference:)@<X0>(void *a1@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x8000000100E64760;
  return result;
}

uint64_t static Artwork.Content.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100009F78(0, &unk_1011B7C00);
  if (static NSObject.== infix(_:_:)())
  {
    if (a2)
    {
      if (a4)
      {
        sub_100009F78(0, &qword_1011B4940);
        v6 = a4;
        v7 = a2;
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100AFD358(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_100009F78(0, &unk_1011B7C00);
  if (static NSObject.== infix(_:_:)())
  {
    if (v2)
    {
      if (v3)
      {
        sub_100009F78(0, &qword_1011B4940);
        v4 = v3;
        v5 = v2;
        v6 = static NSObject.== infix(_:_:)();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Artwork.Decoration.border.getter()
{
  v1 = *v0;
  v2 = v0[2];
  return v1;
}

void Artwork.Decoration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

id Artwork.Decoration.fillColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Artwork.Decoration(0) + 24));

  return v1;
}

void Artwork.Decoration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Artwork.Decoration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Artwork.Decoration.fillAxes.setter(uint64_t a1)
{
  result = type metadata accessor for Artwork.Decoration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t static Artwork.Decoration.with(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = v4[5];
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[6];
  *&a2[v7] = [objc_opt_self() blackColor];
  *&a2[v4[7]] = 1;
  return a1(a2);
}

BOOL static Artwork.Size.Dimension.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t sub_100AFD820(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100AFD96C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Artwork.Decoration(0);
  sub_100006080(v10, a2);
  v11 = sub_1000060E4(v10, a2);
  if (qword_1011B0528 != -1)
  {
    swift_once();
  }

  v12 = static UIView.Border.artwork;
  v13 = byte_10121B5E8;
  v14 = *a3;
  v15 = qword_10121B5F0;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for UIView.Corner();
  v17 = sub_1000060E4(v16, a4);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v9, v17, v16);
  (*(v18 + 56))(v9, 0, 1, v16);
  v19 = [objc_opt_self() blackColor];
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  result = sub_100AFE950(v9, v11 + v10[5]);
  *(v11 + v10[6]) = v19;
  *(v11 + v10[7]) = 1;
  return result;
}

uint64_t sub_100AFDB9C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Artwork.Decoration(0);

  return sub_1000060E4(v3, a2);
}

uint64_t sub_100AFDC14()
{
  v0 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for Artwork.Decoration(0);
  sub_100006080(v3, static Artwork.Decoration.round);
  v4 = sub_1000060E4(v3, static Artwork.Decoration.round);
  if (qword_1011B0528 != -1)
  {
    swift_once();
  }

  v5 = static UIView.Border.artwork;
  v6 = byte_10121B5E8;
  v7 = qword_10121B5F0;
  v8 = qword_10121B5F0;
  static UIView.Corner.rounded.getter();
  v9 = type metadata accessor for UIView.Corner();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  v10 = [objc_opt_self() blackColor];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  result = sub_100AFE950(v2, v4 + v3[5]);
  *(v4 + v3[6]) = v10;
  *(v4 + v3[7]) = 1;
  return result;
}

uint64_t sub_100AFDDEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Artwork.Decoration(0);
  v6 = sub_1000060E4(v5, a2);
  return sub_10004A5F0(v6, a3, type metadata accessor for Artwork.Decoration);
}

uint64_t Artwork.Decoration.scaled(using:compatibleWith:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for UIView.Corner.Radius();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v30 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  sub_10004A5F0(v4, a3, type metadata accessor for Artwork.Decoration);
  if (*(v4 + 16) && *(a3 + 16))
  {
    v17 = *(v4 + 8);
    [a1 scaledValueForValue:a2 compatibleWithTraitCollection:*v4];
    *a3 = v18;
    *(a3 + 8) = v17 & 1;
  }

  v31 = a1;
  v32 = a2;
  v19 = type metadata accessor for Artwork.Decoration(0);
  sub_1000089F8(v4 + *(v19 + 20), v10, &qword_1011B7710);
  v20 = type metadata accessor for UIView.Corner();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v10, 1, v20) == 1)
  {
    return sub_1000095E8(v10, &qword_1011B7710);
  }

  UIView.Corner.radius.getter();
  (*(v21 + 8))(v10, v20);
  v24 = (*(v12 + 88))(v16, v11);
  if (v24 != enum case for UIView.Corner.Radius.value(_:))
  {
    return (*(v12 + 8))(v16, v11);
  }

  v25 = v24;
  (*(v12 + 96))(v16, v11);
  result = (v22)(a3 + *(v19 + 20), 1, v20);
  if (!result)
  {
    v26 = v16[8];
    [v31 scaledValueForValue:v32 compatibleWithTraitCollection:*v16];
    v27 = v30;
    *v30 = v28;
    *(v27 + 8) = v26;
    (*(v12 + 104))(v27, v25, v11);
    return UIView.Corner.radius.setter();
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v3 & 1) != 0))
  {
    Strong = swift_weakLoadStrong();
    v6 = swift_weakLoadStrong();
    if (Strong)
    {
      if (v6)
      {
        v7 = v6;

        return Strong == v7;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UIView.Corner();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v8 - 8);
  v36 = &v33 - v9;
  v10 = sub_10010FC20(&qword_1011B1188);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = a1[2];
  v14 = a2[2];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v34 = v4;
    v35 = v7;
    v16 = *a1;
    v15 = a1[1];
    v33 = v5;
    v17 = a1;
    v19 = *a2;
    v18 = a2[1];
    v20 = v14;
    v38 = v15 & 1;
    v21 = v18 & 1;
    a1 = v17;
    v37 = v21;
    v22 = v19;
    v5 = v33;
    v4 = v34;
    v23 = static UIView.Border.__derived_struct_equals(_:_:)(v16, v15 & 1, v13, v22, v21);

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v35 = v7;
    if (v14)
    {
      return 0;
    }
  }

  v24 = type metadata accessor for Artwork.Decoration(0);
  v25 = *(v24 + 20);
  v26 = *(v10 + 48);
  sub_1000089F8(a1 + v25, v12, &qword_1011B7710);
  sub_1000089F8(a2 + v25, &v12[v26], &qword_1011B7710);
  v27 = *(v5 + 48);
  if (v27(v12, 1, v4) != 1)
  {
    v28 = v36;
    sub_1000089F8(v12, v36, &qword_1011B7710);
    if (v27(&v12[v26], 1, v4) != 1)
    {
      v29 = v35;
      (*(v5 + 32))(v35, &v12[v26], v4);
      sub_100AFE700(&qword_1011B1190, &type metadata accessor for UIView.Corner);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v5 + 8);
      v31(v29, v4);
      v31(v28, v4);
      sub_1000095E8(v12, &qword_1011B7710);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v28, v4);
LABEL_11:
    sub_1000095E8(v12, &qword_1011B1188);
    return 0;
  }

  if (v27(&v12[v26], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1000095E8(v12, &qword_1011B7710);
LABEL_13:
  sub_100009F78(0, &unk_1011B7C00);
  if (static NSObject.== infix(_:_:)())
  {
    return *(a1 + *(v24 + 28)) == *(a2 + *(v24 + 28));
  }

  return 0;
}

uint64_t sub_100AFE67C(uint64_t a1)
{
  *(a1 + 8) = sub_100AFE700(&qword_1011B0E40, type metadata accessor for Artwork);
  result = sub_100AFE700(&qword_1011B0E48, type metadata accessor for Artwork);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100AFE700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100AFE790(uint64_t a1)
{
  result = sub_100AFE700(&qword_1011B0E98, type metadata accessor for Artwork.View);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_100AFE84C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100AFE860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100AFE8A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}