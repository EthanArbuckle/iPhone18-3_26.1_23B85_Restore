uint64_t sub_100001DF0()
{
  v0 = type metadata accessor for Logger();
  sub_100002BF0(v0, qword_100030938);
  sub_100002B24(v0, qword_100030938);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100001EE8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonProxy];
  v3 = [v2 getGamedFiredUp];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v7 = *(v0 + 8);

  return v7();
}

id sub_100001FE4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002020(uint64_t *a1)
{
  v1 = *a1;
  if (sub_100020D14(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100002088(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_100020D14(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10000217C();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100002B5C(&qword_100030990, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_10000217C()
{
  result = qword_100030988;
  if (!qword_100030988)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030988);
  }

  return result;
}

uint64_t sub_1000021C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002234()
{
  v0 = (*(*(sub_1000021C8(&unk_100030AE0, &qword_100023650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v2 = &v46 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = sub_1000021C8(&qword_100031130, &qword_100023658);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11 - 8);
  v14 = &v46 - v13;
  [objc_opt_self() recordProcessLaunchTimestamp];
  static TaskPriority.high.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_100003D7C(0, 0, v14, &unk_100023668, v16);

  sub_100002A70(v14);
  v17 = [objc_opt_self() sharedApplication];
  sub_100017938();

  v18 = objc_opt_self();
  v19 = [v18 sharedURLCache];
  [v19 setDiskCapacity:104857600];

  v20 = [v18 sharedURLCache];
  [v20 setMemoryCapacity:20971520];

  v21 = objc_opt_self();
  [v21 setFlushTimerEnabled:0];
  [v21 setDisableBackgroundMetrics:1];
  sub_100002AD8();
  static AVAudioSession.set(category:mode:options:completion:)();
  v22 = objc_opt_self();
  v23 = [v22 standardUserDefaults];
  if (__OFADD__(NSUserDefaults.appLaunchCount.getter(), 1))
  {
    __break(1u);
  }

  else
  {
    v48 = v10;
    NSUserDefaults.appLaunchCount.setter();

    if (qword_100030930 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v24 = type metadata accessor for Logger();
  sub_100002B24(v24, qword_100030938);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v46 = v3;
    v47 = v4;
    v28 = v2;
    v29 = v8;
    v30 = v27;
    *v27 = 134349056;
    v31 = [v22 standardUserDefaults];
    v32 = NSUserDefaults.appLaunchCount.getter();

    *(v30 + 1) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "appLaunchCount set to %{public}ld", v30, 0xCu);
    v8 = v29;
    v2 = v28;
    v3 = v46;
    v4 = v47;
  }

  v33 = v48;
  Date.init()();
  v34 = [v22 standardUserDefaults];
  v35 = *(v4 + 16);
  v35(v2, v33, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  NSUserDefaults.appLastLaunchDate.setter();

  v35(v8, v33, v3);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v49 = v39;
    *v38 = 136446210;
    sub_100002B5C(&qword_100030AF8, &type metadata accessor for Date);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = *(v4 + 8);
    v43(v8, v3);
    v44 = sub_100013C50(v40, v42, &v49);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "appLastLaunchDate set to %{public}s", v38, 0xCu);
    sub_100002BA4(v39);
    v33 = v48;
  }

  else
  {

    v43 = *(v4 + 8);
    v43(v8, v3);
  }

  static MoltresTips.setup(shouldReset:)();
  return (v43)(v33, v3);
}

uint64_t sub_100002898()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000028D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000297C;

  return sub_100001EC8(a1);
}

uint64_t sub_10000297C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002A70(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031130, &qword_100023658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002AD8()
{
  result = qword_100030AF0;
  if (!qword_100030AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100030AF0);
  }

  return result;
}

uint64_t sub_100002B24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002B5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002BA4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_100002BF0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100002C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CompoundAction();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1000021C8(&qword_100030BC8, &unk_1000236F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100002DA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CompoundAction();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  else
  {
    v11 = sub_1000021C8(&qword_100030BC8, &unk_1000236F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100002EF8()
{
  type metadata accessor for CompoundAction();
  if (v0 <= 0x3F)
  {
    sub_100003838(319, &qword_100030C38, &qword_100030C40, &qword_100023728, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10000389C(319, &unk_100030C48, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100002FF0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BootstrapResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000021C8(&qword_100030C88, &qword_100023738);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_1000031B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BootstrapResult();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000021C8(&qword_100030C88, &qword_100023738);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_10000333C()
{
  type metadata accessor for BootstrapResult();
  if (v0 <= 0x3F)
  {
    sub_10000389C(319, &qword_100030CF8, &type metadata accessor for FlowAuthorityProvider, &type metadata accessor for Bindable);
    if (v1 <= 0x3F)
    {
      sub_100003838(319, &qword_100030D00, &unk_100030D08, &qword_100023768, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100003454(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Bootstrap();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100003514(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Bootstrap();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000035D8()
{
  sub_100003754();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bootstrap();
    if (v1 <= 0x3F)
    {
      sub_1000037E8();
      if (v2 <= 0x3F)
      {
        sub_10000389C(319, &qword_100030DC0, &type metadata accessor for GamesSettings, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100003838(319, &qword_100030DC8, &qword_100030DD0, &qword_100023788, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10000389C(319, &unk_100030DD8, &type metadata accessor for ImpedimentFlowDestinationStates, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100003754()
{
  if (!qword_100030DA8)
  {
    type metadata accessor for NativeIntentDispatchableKinds();
    sub_1000126A0(&qword_100030DB0, &type metadata accessor for NativeIntentDispatchableKinds);
    v0 = type metadata accessor for JSNativeIntentDispatcher();
    if (!v1)
    {
      atomic_store(v0, &qword_100030DA8);
    }
  }
}

void sub_1000037E8()
{
  if (!qword_100030DB8)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100030DB8);
    }
  }
}

void sub_100003838(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100002FF0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10000389C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100003914(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Bootstrap();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for BootstrapResult();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for Player();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for TabsInfoProvider();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100003AC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Bootstrap();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for BootstrapResult();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for Player();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for TabsInfoProvider();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100003C7C()
{
  type metadata accessor for Bootstrap();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BootstrapResult();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Player();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TabsInfoProvider();
        if (v3 <= 0x3F)
        {
          sub_100003754();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100003D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000021C8(&qword_100031130, &qword_100023658) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100016928(a3, v26 - v10, &qword_100031130, &qword_100023658);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000169B0(v11, &qword_100031130, &qword_100023658);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100004034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000021C8(&qword_100031130, &qword_100023658);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100016928(a3, v27 - v11, &qword_100031130, &qword_100023658);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000169B0(v12, &qword_100031130, &qword_100023658);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000042F4()
{
  v0 = type metadata accessor for Bag.Profile();
  sub_100002BF0(v0, qword_100030B60);
  sub_100002B24(v0, qword_100030B60);
  return Bag.Profile.init(name:version:)();
}

uint64_t sub_10000435C(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v5 = async function pointer to makeGamesPrerequisites(objectGraph:jsNativeIntentDispatcher:)[1];
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_10000441C;

  return makeGamesPrerequisites(objectGraph:jsNativeIntentDispatcher:)(a1, a2);
}

uint64_t sub_10000441C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  v5[5] = v1;

  v8 = v5[3];
  v9 = v5[2];
  if (v3)
  {
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v13 = sub_100004604;
  }

  else
  {
    v5[6] = a1;
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v14;
    v13 = sub_10000459C;
  }

  return _swift_task_switch(v13, v10, v12);
}

uint64_t sub_10000459C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2(v3);
}

uint64_t sub_100004604()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void *sub_100004668()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100015048(0, &qword_100031158, UIScene_ptr);
  sub_1000147DC();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100004804(v2);
  v4 = v3;

  v5 = sub_100004BF0(v4);

  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 isKeyWindow])
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void sub_100004804(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100015048(0, &qword_100031158, UIScene_ptr);
    sub_1000147DC();
    Set.Iterator.init(_cocoa:)();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100015048(0, &qword_100031158, UIScene_ptr), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_100014844();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_100004A70(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = &_swiftEmptyArrayStorage;
  v16 = &_swiftEmptyArrayStorage;
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for StoreTab();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

void *sub_100004BF0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = &_swiftEmptyArrayStorage;
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_100015048(0, &qword_100031168, UIWindow_ptr);
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
LABEL_40:
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
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v33 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_100016DD4(&qword_100031178, &qword_100031170, &qword_100023B88);
            for (i = 0; i != v17; ++i)
            {
              sub_1000021C8(&qword_100031170, &qword_100023B88);
              v20 = sub_100014754(v32, i, v8);
              v22 = *v21;
              (v20)(v32, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100004F84@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = type metadata accessor for StoreTab();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_100005158()
{
  v0 = type metadata accessor for Logger();
  sub_100002BF0(v0, qword_100030B78);
  sub_100002B24(v0, qword_100030B78);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000520C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v160 = a1;
  v159 = sub_1000021C8(&qword_100030998, &qword_100023608);
  v158 = *(v159 - 8);
  v3 = *(v158 + 64);
  __chkstk_darwin(v159);
  v172 = &v137 - v4;
  v156 = sub_1000021C8(&qword_100031000, &qword_100023A70);
  v157 = *(v156 - 8);
  v5 = *(v157 + 64);
  __chkstk_darwin(v156);
  v155 = &v137 - v6;
  v154 = sub_1000021C8(&qword_100031008, &qword_100023A78);
  v7 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v152 = &v137 - v8;
  v151 = sub_1000021C8(&qword_100031010, &qword_100023A80);
  v153 = *(v151 - 8);
  v9 = *(v153 + 64);
  __chkstk_darwin(v151);
  v171 = &v137 - v10;
  v170 = sub_1000021C8(&qword_100031018, &qword_100023A88);
  v150 = *(v170 - 8);
  v11 = *(v150 + 64);
  __chkstk_darwin(v170);
  v148 = &v137 - v12;
  v147 = sub_1000021C8(&qword_100031020, &qword_100023A90);
  v149 = *(v147 - 8);
  v13 = *(v149 + 64);
  __chkstk_darwin(v147);
  v169 = &v137 - v14;
  v168 = sub_1000021C8(&qword_100031028, &qword_100023A98);
  v146 = *(v168 - 8);
  v15 = *(v146 + 64);
  __chkstk_darwin(v168);
  v167 = &v137 - v16;
  v145 = sub_1000021C8(&qword_100031030, &qword_100023AA0);
  v166 = *(v145 - 8);
  v17 = *(v166 + 64);
  v18 = __chkstk_darwin(v145);
  v165 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v164 = &v137 - v20;
  v21 = type metadata accessor for AppBootstrapView(0);
  v22 = v21[5];
  v23 = type metadata accessor for Bootstrap();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v144 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (*(v26 + 16))();
  v28 = *(v21 - 1);
  v21 -= 2;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v162 = v2;
  sub_10001237C(v2, &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView);
  v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v143 = swift_allocObject();
  sub_1000123E8(&v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v143 + v30, type metadata accessor for AppBootstrapView);
  v31 = v2 + v21[8];
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 16);
  v175 = v32;
  v176 = v33;
  LOBYTE(v177) = v31;
  sub_1000021C8(&qword_100031038, &qword_100023AA8);
  Binding.projectedValue.getter();
  v142 = v179;
  v141 = v180;
  v140 = v181;
  v139 = sub_1000021C8(&qword_100031040, &qword_100023AB0);
  v138 = sub_100002FF0(&qword_100031048, &qword_100023AB8);
  v137 = sub_100002FF0(&unk_100031050, &unk_100023AC0);
  v34 = sub_100002FF0(&unk_1000309B0, &qword_100023618);
  v35 = sub_100002FF0(&qword_100031060, &qword_100023AD0);
  v36 = sub_100002FF0(&qword_100031068, &qword_100023AD8);
  v37 = sub_100013018();
  v38 = type metadata accessor for MediaArtwork.URLImageProtocol();
  v39 = sub_100002FF0(&qword_100030DD0, &qword_100023788);
  v40 = sub_1000126A0(&qword_1000310B8, &type metadata accessor for MediaArtwork.URLImageProtocol);
  v41 = sub_100016DD4(&qword_1000310C0, &qword_100030DD0, &qword_100023788);
  v175 = v38;
  v176 = v39;
  v161 = v39;
  v177 = v40;
  v178 = v41;
  v42 = v41;
  v173 = v41;
  v174 = &opaque type descriptor for <<opaque return type of MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v175 = v35;
  v176 = v36;
  v177 = v37;
  v178 = OpaqueTypeConformance2;
  v163 = &opaque type descriptor for <<opaque return type of View.mediaArtworkProtocol<A>(_:)>>;
  v44 = swift_getOpaqueTypeConformance2();
  v175 = v34;
  v176 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = type metadata accessor for ThreeDimensionalAppIconProtocol();
  v47 = sub_1000126A0(&qword_1000310C8, &type metadata accessor for ThreeDimensionalAppIconProtocol);
  v175 = v46;
  v176 = v39;
  v177 = v47;
  v178 = v42;
  v48 = swift_getOpaqueTypeConformance2();
  v175 = v138;
  v176 = v137;
  v177 = v45;
  v178 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v164;
  BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)();
  v50 = v162;
  v51 = sub_100004668();
  v52 = [v51 rootViewController];

  v53 = v165;
  v54 = v145;
  BootstrapView.with(rootViewController:)();

  v55 = *(v166 + 8);
  v55(v49, v54);
  v142 = sub_100016DD4(&qword_1000310D0, &qword_100031030, &qword_100023AA0);
  View.optOutFromMetricsValidations()();
  v55(v53, v54);
  v143 = sub_1000021C8(&qword_1000310D8, &qword_100023B00);
  v144 = *(v143 - 8);
  v56 = (*(v144 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v143);
  v58 = &v137 - v57;
  v59 = type metadata accessor for AppIconProtocol();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  __chkstk_darwin(v59);
  v63 = &v137 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppIconProtocol.init()();
  v64 = (v50 + v21[11]);
  v65 = *v64;
  v165 = v64[1];
  v166 = v65;
  v175 = v65;
  v176 = v165;
  v164 = sub_1000021C8(&qword_1000310E0, &qword_100023B08);
  State.wrappedValue.getter();
  v66 = sub_1000126A0(&qword_1000310E8, &type metadata accessor for AppIconProtocol);
  v67 = v161;
  v68 = v173;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v60 + 8))(v63, v59);
  v175 = v54;
  v176 = v142;
  v142 = swift_getOpaqueTypeConformance2();
  v175 = v59;
  v176 = v67;
  v177 = v66;
  v178 = v68;
  v145 = swift_getOpaqueTypeConformance2();
  v69 = v168;
  v70 = v143;
  v71 = v167;
  View.mediaArtworkProtocol<A>(_:)();
  v72 = v58;
  v73 = v70;
  (*(v144 + 1))(v72, v70);
  (*(v146 + 8))(v71, v69);
  v146 = sub_1000021C8(&qword_1000310F0, &qword_100023B10);
  v167 = *(v146 - 8);
  v74 = (*(v167 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v146);
  v76 = &v137 - v75;
  v77 = type metadata accessor for PlayerMonogramProtocol();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  __chkstk_darwin(v77);
  v81 = &v137 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlayerMonogramProtocol.init()();
  v175 = v166;
  v176 = v165;
  State.wrappedValue.getter();
  v82 = sub_1000126A0(&qword_1000310F8, &type metadata accessor for PlayerMonogramProtocol);
  v83 = v173;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v78 + 8))(v81, v77);
  v175 = v168;
  v176 = v73;
  v177 = v142;
  v178 = v145;
  v84 = swift_getOpaqueTypeConformance2();
  v175 = v77;
  v176 = v67;
  v177 = v82;
  v178 = v83;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v148;
  v87 = v147;
  v88 = v146;
  v89 = v169;
  View.mediaArtworkProtocol<A>(_:)();
  v90 = v88;
  (*(v167 + 1))(v76, v88);
  v91 = v87;
  (*(v149 + 8))(v89, v87);
  v92 = type metadata accessor for MediaArtwork.BundleImageProtocol();
  v93 = *(v92 - 8);
  v94 = *(v93 + 64);
  __chkstk_darwin(v92);
  v96 = &v137 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009944();
  v175 = v91;
  v176 = v90;
  v177 = v84;
  v178 = v85;
  v167 = swift_getOpaqueTypeConformance2();
  v168 = sub_1000126A0(&qword_100031100, &type metadata accessor for MediaArtwork.BundleImageProtocol);
  v97 = v170;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v93 + 8))(v96, v92);
  (*(v150 + 8))(v86, v97);
  v162 = sub_1000021C8(&qword_100031108, &qword_100023B18);
  v169 = *(v162 - 8);
  v98 = (*(v169 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v162);
  v100 = &v137 - v99;
  v101 = type metadata accessor for ContactAvatarProtocol();
  v102 = *(v101 - 8);
  v103 = *(v102 + 64);
  __chkstk_darwin(v101);
  v105 = &v137 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactAvatarProtocol.init()();
  v175 = v166;
  v176 = v165;
  State.wrappedValue.getter();
  v106 = sub_1000126A0(&qword_100031110, &type metadata accessor for ContactAvatarProtocol);
  v107 = v161;
  v108 = v173;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v102 + 8))(v105, v101);
  v175 = v170;
  v176 = v92;
  v177 = v167;
  v178 = v168;
  swift_getOpaqueTypeConformance2();
  v175 = v101;
  v176 = v107;
  v177 = v106;
  v178 = v108;
  swift_getOpaqueTypeConformance2();
  v109 = v152;
  v110 = v151;
  v111 = v162;
  v112 = v171;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v169 + 1))(v100, v111);
  (*(v153 + 8))(v112, v110);
  v113 = static Edge.Set.all.getter();
  v114 = v154;
  *(v109 + *(v154 + 36)) = v113;
  v115 = sub_1000131B4();
  v116 = v155;
  View.registerGamesPPTs()();
  sub_1000169B0(v109, &qword_100031008, &qword_100023A78);
  v175 = v114;
  v176 = v115;
  swift_getOpaqueTypeConformance2();
  v117 = v156;
  View.withDebugNotificationView()();
  (*(v157 + 8))(v116, v117);
  type metadata accessor for MainActor();
  v118 = static MainActor.shared.getter();
  v119 = swift_allocObject();
  *(v119 + 16) = v118;
  *(v119 + 24) = &protocol witness table for MainActor;
  v120 = type metadata accessor for TaskPriority();
  v121 = *(v120 - 8);
  v122 = *(v121 + 64);
  __chkstk_darwin(v120);
  v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = &v137 - v123;
  static TaskPriority.userInitiated.getter();
  if (sub_100020D14(2, 26, 4, 0))
  {
    v173 = type metadata accessor for _TaskModifier2();
    v174 = &v137;
    v171 = *(v173 - 8);
    v125 = *(v171 + 8);
    __chkstk_darwin(v173);
    v127 = &v137 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
    v175 = 0;
    v176 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v175 = 0xD000000000000029;
    v176 = 0x80000001000266A0;
    v179 = 203;
    v128._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v128);

    __chkstk_darwin(v129);
    (*(v121 + 16))(&v137 - v123, &v137 - v123, v120);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v121 + 8))(&v137 - v123, v120);
    v130 = v160;
    (*(v158 + 32))(v160, v172, v159);
    v131 = sub_1000021C8(&qword_1000309A0, &qword_100023610);
    return (*(v171 + 4))(v130 + *(v131 + 36), v127, v173);
  }

  else
  {
    v133 = sub_1000021C8(&qword_1000309A8, &unk_100023B40);
    v134 = v160;
    v135 = (v160 + *(v133 + 36));
    v136 = type metadata accessor for _TaskModifier();
    (*(v121 + 32))(&v135[*(v136 + 20)], v124, v120);
    *v135 = &unk_100023B30;
    *(v135 + 1) = v119;
    return (*(v158 + 32))(v134, v172, v159);
  }
}

uint64_t sub_100006858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a3;
  v162 = a1;
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ArtworkLoaderURLSession();
  BaseObjectGraph.inject<A>(_:)();

  v4 = v163;
  v5 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration();
  v160 = v5;
  v144 = *(v5 - 8);
  v6 = v144;
  v146 = *(v144 + 64);
  v7 = __chkstk_darwin(v5);
  v145 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v159 = &v124 - v145;
  __chkstk_darwin(v7);
  v10 = &v124 - v9;
  MediaArtwork.URLImageProtocol.Configuration.init()();
  v152 = v4;
  v11 = [v4 session];
  MediaArtwork.URLImageProtocol.Configuration.withURLSession(_:takeOwnership:)();

  v150 = *(v6 + 8);
  v151 = v6 + 8;
  v150(v10, v5);
  v12 = sub_1000021C8(&qword_100031048, &qword_100023AB8);
  v148 = *(v12 - 8);
  v149 = v12;
  v13 = *(v148 + 64);
  __chkstk_darwin(v12);
  v158 = &v124 - v14;
  v157 = sub_1000021C8(&unk_1000309B0, &qword_100023618);
  v147 = *(v157 - 8);
  v15 = *(v147 + 64);
  __chkstk_darwin(v157);
  v156 = &v124 - v16;
  v161 = sub_1000021C8(&qword_100031060, &qword_100023AD0);
  v17 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v154 = &v124 - v18;
  BootstrapResult.objectGraph.getter();
  v19 = type metadata accessor for Dependency();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpedimentFlowDestinationStates();
  v24 = type metadata accessor for AppBootstrapView(0);
  v25 = (a2 + *(v24 + 40));
  v27 = *v25;
  v26 = v25[1];
  v163 = v27;
  v164 = v26;
  sub_1000021C8(&qword_100031180, &qword_100023B90);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  v142 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v20 + 8))(v23, v19);
  v141 = sub_100004668();
  v28 = type metadata accessor for ImpedimentFlowConfig();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v140 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  (*(v34 + 104))(&v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ImpedimentFlowConfig.UseCase.moltres(_:));
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  v35 = *(v24 - 8);
  v143 = v24 - 8;
  v36 = *(v24 + 28);
  v155 = a2;
  v139 = *(a2 + v36);
  v37 = v35;
  v38 = *(v35 + 64);
  v39 = __chkstk_darwin(a2);
  v41 = v40;
  v127 = v40;
  v138 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = &v124 - v138;
  v125 = type metadata accessor for AppBootstrapView;
  sub_10001237C(v39, &v124 - v138, type metadata accessor for AppBootstrapView);
  v43 = type metadata accessor for BootstrapResult();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v128 = v45;
  v132 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = &v124 - v132;
  v47 = *(v44 + 16);
  v130 = v44 + 16;
  v131 = v47;
  v126 = v43;
  v47(&v124 - v132, v162, v43);
  v129 = *(v37 + 80);
  v48 = (v129 + 16) & ~v129;
  v134 = *(v44 + 80);
  v135 = v41 + v134;
  v49 = (v41 + v134 + v48) & ~v134;
  v133 = v129 | v134;
  v50 = swift_allocObject();
  sub_1000123E8(v42, v50 + v48, type metadata accessor for AppBootstrapView);
  v51 = *(v44 + 32);
  v136 = v44 + 32;
  v137 = v51;
  v51(v50 + v49, v46, v43);
  type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  sub_1000126A0(&qword_100031188, type metadata accessor for AppBootstrapView.TabBasedRootView);

  v52 = v154;
  ImpedimentFlowView.init<>(objectGraph:window:config:inAppSettings:content:)();
  KeyPath = swift_getKeyPath();
  v54 = &v52[*(sub_1000021C8(&qword_100031080, &qword_100023AE0) + 36)];
  v55 = *(sub_1000021C8(&qword_1000310A0, &qword_100023AF0) + 28);
  v56 = enum case for ColorScheme.dark(_:);
  v57 = type metadata accessor for ColorScheme();
  (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
  *v54 = KeyPath;
  v58 = static MoltresTint.selectiveAccent.getter();
  v59 = swift_getKeyPath();
  v163 = v58;
  v60 = AnyShapeStyle.init<A>(_:)();
  v61 = &v52[*(v161 + 36)];
  *v61 = v59;
  v61[1] = v60;
  v62 = sub_1000021C8(&qword_100031068, &qword_100023AD8);
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v65 = __chkstk_darwin(v62);
  v67 = &v124 - v66;
  __chkstk_darwin(v65);
  (*(v144 + 16))(&v124 - v145, v159, v160);
  v68 = type metadata accessor for MediaArtwork.URLImageProtocol();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v167 = MediaArtwork.URLImageProtocol.init(_:)();
  v71 = (v155 + *(v143 + 44));
  v73 = *v71;
  v72 = v71[1];
  v143 = v73;
  v163 = v73;
  v164 = v72;
  v142 = v72;
  v141 = sub_1000021C8(&qword_1000310E0, &qword_100023B08);
  State.wrappedValue.getter();
  v74 = sub_1000021C8(&qword_100030DD0, &qword_100023788);
  v75 = sub_1000126A0(&qword_1000310B8, &type metadata accessor for MediaArtwork.URLImageProtocol);
  v76 = sub_100016DD4(&qword_1000310C0, &qword_100030DD0, &qword_100023788);
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  v77 = sub_100013018();
  v163 = v68;
  v164 = v74;
  v145 = v74;
  v165 = v75;
  v166 = v76;
  v144 = v76;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v140 = v77;
  v139 = OpaqueTypeConformance2;
  v79 = v154;
  View.mediaArtworkProtocol<A>(_:)();
  v80 = *(v63 + 8);
  v146 = v62;
  v80(v67, v62);
  v81 = sub_1000169B0(v79, &qword_100031060, &qword_100023AD0);
  __chkstk_darwin(v81);
  v82 = &v124 - v138;
  v83 = v125;
  v84 = sub_10001237C(v155, &v124 - v138, v125);
  __chkstk_darwin(v84);
  v85 = &v124 - v132;
  v86 = v126;
  v131(&v124 - v132, v162, v126);
  type metadata accessor for MainActor();
  v87 = static MainActor.shared.getter();
  v88 = (v129 + 32) & ~v129;
  v89 = (v135 + v88) & ~v134;
  v90 = swift_allocObject();
  *(v90 + 16) = v87;
  *(v90 + 24) = &protocol witness table for MainActor;
  sub_1000123E8(v82, v90 + v88, v83);
  v137(v90 + v89, v85, v86);
  v91 = type metadata accessor for TaskPriority();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  __chkstk_darwin(v91);
  v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = &v124 - v94;
  static TaskPriority.userInitiated.getter();
  if (sub_100020D14(2, 26, 4, 0))
  {
    v154 = type metadata accessor for _TaskModifier2();
    v155 = &v124;
    v138 = *(v154 - 1);
    v96 = *(v138 + 64);
    __chkstk_darwin(v154);
    v98 = &v124 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
    v163 = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v163 = 0xD000000000000029;
    v164 = 0x80000001000266A0;
    v167 = 161;
    v99._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v99);

    __chkstk_darwin(v100);
    (*(v92 + 16))(&v124 - v94, v95, v91);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v92 + 8))(v95, v91);
    v101 = v158;
    (*(v147 + 32))(v158, v156, v157);
    v102 = sub_1000021C8(&unk_100031190, &qword_100023620);
    (*(v138 + 32))(&v101[*(v102 + 36)], v98, v154);
  }

  else
  {
    v103 = sub_1000021C8(&unk_1000309C0, &qword_100023C10);
    v104 = v158;
    v105 = &v158[*(v103 + 36)];
    v106 = type metadata accessor for _TaskModifier();
    (*(v92 + 32))(&v105[*(v106 + 20)], &v124 - v94, v91);
    *v105 = &unk_100023C00;
    *(v105 + 1) = v90;
    (*(v147 + 32))(v104, v156, v157);
  }

  v155 = sub_1000021C8(&unk_100031050, &unk_100023AC0);
  v156 = &v124;
  v107 = *(v155 - 1);
  v108 = *(v107 + 64);
  __chkstk_darwin(v155);
  v110 = &v124 - v109;
  v111 = type metadata accessor for ThreeDimensionalAppIconProtocol();
  v154 = &v124;
  v112 = *(v111 - 8);
  v113 = *(v112 + 64);
  __chkstk_darwin(v111);
  v115 = &v124 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  ThreeDimensionalAppIconProtocol.init(objectGraph:)();
  v163 = v143;
  v164 = v142;
  State.wrappedValue.getter();
  v116 = sub_1000126A0(&qword_1000310C8, &type metadata accessor for ThreeDimensionalAppIconProtocol);
  v117 = v145;
  v118 = v144;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v112 + 8))(v115, v111);
  v163 = v161;
  v164 = v146;
  v165 = v140;
  v166 = v139;
  v119 = swift_getOpaqueTypeConformance2();
  v163 = v157;
  v164 = v119;
  swift_getOpaqueTypeConformance2();
  v163 = v111;
  v164 = v117;
  v165 = v116;
  v166 = v118;
  swift_getOpaqueTypeConformance2();
  v120 = v149;
  v121 = v155;
  v122 = v158;
  View.mediaArtworkProtocol<A>(_:)();

  (*(v107 + 8))(v110, v121);
  (*(v148 + 8))(v122, v120);
  return (v150)(v159, v160);
}

void sub_100007AD0(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AppBootstrapView(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for Bootstrap();
  (*(*(v10 - 8) + 16))(a4, a2 + v9, v10);
  v11 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v12 = v11[5];
  v13 = type metadata accessor for BootstrapResult();
  (*(*(v13 - 8) + 16))(a4 + v12, a3, v13);
  v14 = v11[6];
  v15 = type metadata accessor for Player();
  (*(*(v15 - 8) + 16))(a4 + v14, a1, v15);
  sub_100007C68(a1, a4 + v11[7]);
  v16 = *a2;
  v17 = sub_100004668();
  v18 = *(v8 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(a4 + v11[8]) = v16;
  v19 = v11[9];
  swift_unknownObjectWeakInit();

  v20 = v11[10];
  swift_unknownObjectWeakInit();
}

uint64_t sub_100007C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v33 = type metadata accessor for Player();
  v31 = *(v33 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v33);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v27 = type metadata accessor for StoreTab.Identifier();
  v7 = *(v27 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  __chkstk_darwin(v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = static Bag.tabsKey.getter();
  sub_1000021C8(&qword_1000311D8, &qword_100023C58);
  v12 = *(v7 + 72);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100023680;
  static StoreTab.Identifier.playNow.getter();
  sub_1000021C8(&qword_1000311E0, &qword_100023C60);
  v14 = *(type metadata accessor for StoreTab() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100023690;
  static StoreTab.Identifier.playNow.getter();
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 1, 1, v17);
  sub_100015160(&_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.playTogether.getter();
  v18(v6, 1, 1, v17);
  sub_100015160(&_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.library.getter();
  v18(v6, 1, 1, v17);
  sub_100015160(&_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  (*(v8 + 104))(v11, enum case for StoreTab.Identifier.search(_:), v27);
  v18(v6, 1, 1, v17);
  sub_100015160(&_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v20 = v30;
  v19 = v31;
  v21 = v33;
  (*(v31 + 16))(v30, v34, v33);
  v22 = v19;
  v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v24 = swift_allocObject();
  (*(v22 + 32))(v24 + v23, v20, v21);
  return TabsInfoProvider.init(tabsBagKey:defaultTabIdentifiers:fallbackTabs:overrideTabs:tabsToFlowActionsConverter:)();
}

uint64_t sub_100008154(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10000821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for BootstrapResult();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v4[6] = *(v6 + 64);
  v4[7] = swift_task_alloc();
  v7 = *(type metadata accessor for AppBootstrapView(0) - 8);
  v4[8] = v7;
  v4[9] = *(v7 + 64);
  v4[10] = swift_task_alloc();
  v8 = *(*(sub_1000021C8(&qword_100031130, &qword_100023658) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000083B0, v10, v9);
}

uint64_t sub_1000083B0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v16 = v0[9];
  v17 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_10001237C(v9, v3, type metadata accessor for AppBootstrapView);
  (*(v6 + 16))(v4, v8, v7);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v16 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1000123E8(v3, v13 + v11, type metadata accessor for AppBootstrapView);
  (*(v6 + 32))(v13 + v12, v4, v7);
  sub_100004034(0, 0, v2, &unk_100023C20, v13);

  sub_1000169B0(v2, &qword_100031130, &qword_100023658);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100008598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v6 = swift_task_alloc();
  *(v5 + 32) = v6;
  *v6 = v5;
  v6[1] = sub_10000862C;

  return sub_100008D38();
}

uint64_t sub_10000862C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100008728, 0, 0);
}

uint64_t sub_100008728()
{
  v1 = v0[3];
  v0[5] = BootstrapResult.objectGraph.getter();
  v2 = type metadata accessor for ArcadeSubscriptionManager();
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1000087E4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_1000087E4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100008994;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100008900;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100008900()
{
  v1 = *(v0 + 16);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  v2 = v1;
  dispatch thunk of MetricsActivity.arcadeSubscriptionManager.setter();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100008994()
{
  v1 = v0[5];

  v0[8] = type metadata accessor for MainActor();
  v0[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100008A34, v3, v2);
}

uint64_t sub_100008A34()
{
  v1 = *(v0 + 72);

  if (qword_100030958 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 80) = sub_100002B24(v2, qword_100030B78);

  return _swift_task_switch(sub_100008AE4, 0, 0);
}

uint64_t sub_100008AE4()
{
  v1 = *(v0 + 64);
  *(v0 + 88) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100008B70, v3, v2);
}

uint64_t sub_100008B70()
{
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_100008BD8, 0, 0);
}

uint64_t sub_100008BD8()
{
  v1 = v0[10];
  v2 = v0[7];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to set arcadeSubscriptionManager: %@", v7, 0xCu);
    sub_1000169B0(v8, &qword_1000311A0, &qword_100023C30);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100008D38()
{
  v1 = type metadata accessor for UTType();
  v0[24] = v1;
  v2 = *(v1 - 8);
  v0[25] = v2;
  v3 = *(v2 + 64) + 15;
  v0[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[27] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v5;
  v0[29] = v4;

  return _swift_task_switch(sub_100008E28, v5, v4);
}

uint64_t sub_100008E28()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  static UTType.text.getter();
  v4 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v49 = [v4 initWithContentType:isa];
  *(v0 + 240) = v49;

  (*(v2 + 8))(v1, v3);
  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x8000000100026780;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = localizedString(_:comment:)(v6, v7);
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x80000001000267A0;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = localizedString(_:comment:)(v9, v10);
  v12._countAndFlagsBits = 0xD000000000000018;
  v12._object = 0x80000001000267D0;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = localizedString(_:comment:)(v12, v13);
  if (v8._countAndFlagsBits == 0xD000000000000015 && 0x8000000100026780 == v8._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11._countAndFlagsBits == 0xD000000000000022 && 0x80000001000267A0 == v11._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14._countAndFlagsBits == 0xD000000000000018 && 0x80000001000267D0 == v14._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = *(v0 + 216);

    if (qword_100030970 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100002B24(v16, qword_100030BB0);
    v17 = static os_log_type_t.error.getter();
    v18 = Logger.logObject.getter();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, v17, "Skipping Spotlight Index. Reason: Title, Description and Keywords must be localised.", v19, 2u);
    }

    v20 = *(v0 + 208);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = String._bridgeToObjectiveC()();

    [v49 setTitle:v23];

    v24 = String._bridgeToObjectiveC()();

    [v49 setContentDescription:v24];

    *(v0 + 168) = v14;
    sub_100014FF4();
    v25 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

    v26 = *(v25 + 16);
    if (v26)
    {
      sub_1000141F8(0, v26, 0);
      v27 = (v25 + 56);
      do
      {
        v29 = *(v27 - 3);
        v28 = *(v27 - 2);
        v30 = *(v27 - 1);
        v31 = *v27;

        v32 = static String._fromSubstring(_:)();
        v34 = v33;

        v36 = _swiftEmptyArrayStorage[2];
        v35 = _swiftEmptyArrayStorage[3];
        if (v36 >= v35 >> 1)
        {
          sub_1000141F8((v35 > 1), v36 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v36 + 1;
        v37 = &_swiftEmptyArrayStorage[2 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        v27 += 4;
        --v26;
      }

      while (v26);
    }

    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v49 setKeywords:v38];

    v39 = objc_allocWithZone(CSSearchableItem);
    v40 = v49;
    v41 = String._bridgeToObjectiveC()();
    v42 = String._bridgeToObjectiveC()();
    v43 = [v39 initWithUniqueIdentifier:v41 domainIdentifier:v42 attributeSet:v40];
    *(v0 + 248) = v43;

    v44 = [objc_opt_self() defaultSearchableIndex];
    *(v0 + 256) = v44;
    sub_1000021C8(&qword_100031138, &qword_100023B78);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1000236A0;
    *(v45 + 32) = v43;
    sub_100015048(0, &qword_1000311B0, CSSearchableItem_ptr);
    v46 = v43;
    v47 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 264) = v47;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000094D4;
    v48 = swift_continuation_init();
    *(v0 + 136) = sub_1000021C8(&qword_1000311B8, &qword_100023C38);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000FB44;
    *(v0 + 104) = &unk_10002DF90;
    *(v0 + 112) = v48;
    [v44 indexSearchableItems:v47 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1000094D4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_100009744;
  }

  else
  {
    v6 = sub_100009604;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100009604()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[27];

  if (qword_100030970 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002B24(v4, qword_100030BB0);
  v5 = static os_log_type_t.info.getter();
  v6 = Logger.logObject.getter();
  v7 = os_log_type_enabled(v6, v5);
  v9 = v0[30];
  v8 = v0[31];
  if (v7)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, v5, "Index completed.", v10, 2u);
  }

  v11 = v0[26];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100009744()
{
  v25 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[27];

  swift_willThrow();

  if (qword_100030970 != -1)
  {
    swift_once();
  }

  v5 = v0[34];
  v6 = type metadata accessor for Logger();
  sub_100002B24(v6, qword_100030BB0);
  v7 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();

  v9 = os_log_type_enabled(v8, v7);
  v10 = v0[34];
  v12 = v0[30];
  v11 = v0[31];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[20];
    v18 = Error.localizedDescription.getter();
    v20 = sub_100013C50(v18, v19, &v24);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v7, "%s", v13, 0xCu);
    sub_100002BA4(v14);
  }

  else
  {
  }

  v21 = v0[26];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100009944()
{
  v0 = type metadata accessor for MediaArtwork.BundleImageProtocol.Configuration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  MediaArtwork.BundleImageProtocol.Configuration.init()();
  sub_1000021C8(&qword_100031138, &qword_100023B78);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000236B0;
  *(v6 + 32) = [objc_opt_self() mainBundle];
  sub_100015048(0, &qword_100031140, NSBundle_ptr);
  *(v6 + 40) = static NSBundle.currentStoreKit.getter();
  v8[1] = v6;
  sub_1000021C8(&qword_100031148, &qword_100023B80);
  sub_100016DD4(&qword_100031150, &qword_100031148, &qword_100023B80);
  MediaArtwork.BundleImageProtocol.Configuration.withAllowedBundles<A>(_:)();

  (*(v1 + 8))(v5, v0);
  return MediaArtwork.BundleImageProtocol.init(_:)();
}

uint64_t sub_100009B34()
{
  v1 = *(*(sub_1000021C8(&qword_100031130, &qword_100023658) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009C00, v3, v2);
}

uint64_t sub_100009C00()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_100004034(0, 0, v2, &unk_100023B58, v4);

  sub_1000169B0(v2, &qword_100031130, &qword_100023658);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100009D04()
{
  type metadata accessor for GameCenter();
  v1 = async function pointer to static GameCenter.notifyWillLaunchGameCenterUI()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10000297C;

  return static GameCenter.notifyWillLaunchGameCenterUI()();
}

uint64_t sub_100009DA0()
{
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  qword_100030B90 = result;
  return result;
}

uint64_t sub_100009E08@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v2);
  v7 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for TabsInfoProvider();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BootstrapResult();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  (*(v18 + 16))(&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(v3 + 28));
  (*(v11 + 16))(v14, v1 + *(v3 + 36), v10);
  sub_10001237C(v1, v9, type metadata accessor for AppBootstrapView.TabBasedRootView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1000123E8(v9, v20 + v19, type metadata accessor for AppBootstrapView.TabBasedRootView);
  sub_10001237C(v1, v7, type metadata accessor for AppBootstrapView.TabBasedRootView);
  v21 = swift_allocObject();
  sub_1000123E8(v7, v21 + v19, type metadata accessor for AppBootstrapView.TabBasedRootView);
  sub_1000021C8(&qword_100031238, &qword_100023C90);
  sub_100016DD4(&qword_100031240, &qword_100031238, &qword_100023C90);
  v22 = v30;
  AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)();
  v23 = (v22 + *(sub_1000021C8(&qword_100031248, &qword_100023C98) + 36));
  *v23 = sub_10000CB30;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = 0;
  v24 = static Alignment.center.getter();
  v26 = v25;
  result = sub_1000021C8(&qword_100031250, &qword_100023CA0);
  v28 = (v22 + *(result + 36));
  *v28 = v24;
  v28[1] = v26;
  return result;
}

uint64_t sub_10000A194(uint64_t a1)
{
  v2 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = type metadata accessor for Dependency();
  v16 = *(v6 - 8);
  v17 = v6;
  v7 = *(v16 + 64);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 28);
  BootstrapResult.metricsPipelineTransformer.getter();
  v15[0] = MetricsPipelineTransformer.copy()();

  sub_10001F690(a1 + *(v3 + 32));

  v15[1] = static GameObjectGraphBuilder.frameworkObjects(metricsPipelineTransformer:)();
  sub_1000021C8(&qword_100030FC0, &qword_100023A40);
  sub_10001237C(a1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.TabBasedRootView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1000123E8(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AppBootstrapView.TabBasedRootView);
  Dependency.init<A>(satisfying:with:)();
  static GameObjectGraphBuilder.playerDependentMetricsPipelineDependencies(player:bootstrapResult:metricsPipelineTransformer:)();

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v13 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  (*(v16 + 8))(v9, v17);
  return v13;
}

uint64_t sub_10000A470@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v47 = a2;
  v2 = sub_1000021C8(&qword_100031288, &qword_100023D18);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = &v37 - v6;
  v7 = sub_1000021C8(&qword_100030EE0, &qword_100023920);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v41 = sub_1000021C8(&qword_100030FC0, &qword_100023A40);
  v44 = *(v41 - 8);
  v11 = *(v44 + 64);
  v12 = __chkstk_darwin(v41);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v39 = &v37 - v14;
  v15 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  v40 = type metadata accessor for BaseObjectGraph();
  v42 = static BaseObjectGraph.current.getter();
  type metadata accessor for FlowAuthorityProvider();
  BaseObjectGraph.inject<A>(_:)();
  sub_1000126A0(&qword_100031278, &type metadata accessor for FlowAuthorityProvider);
  Bindable<A>.init(wrappedValue:)();
  v38 = v22;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v23 = *(v16 + 8);
  v48 = v16 + 8;
  v49 = v23;
  v23(v20, v15);
  v24 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v25 = *(v24 + 40);
  Strong = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for FlowAction();
  sub_1000126A0(&qword_100030F38, &type metadata accessor for FlowAction);
  sub_1000126A0(&qword_100030F40, &type metadata accessor for FlowAction);
  v27 = v39;
  static ActionDispatcherFactory.mainActionDispatcher<A>(following:windowScene:)();

  sub_1000169B0(v10, &qword_100030EE0, &qword_100023920);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v49(v20, v15);
  v28 = *(v24 + 36);
  v29 = swift_unknownObjectWeakLoadStrong();
  v30 = v43;
  static GameObjectGraphBuilder.actionDispatcher<A>(following:window:)();

  sub_1000169B0(v10, &qword_100030EE0, &qword_100023920);
  v31 = v44;
  v32 = v45;
  v33 = *(v44 + 16);
  v34 = v41;
  v33(v45, v27, v41);
  (*(v31 + 56))(v32, 0, 1, v34);
  v33(v47, v30, v34);
  sub_100016928(v32, v46, &qword_100031288, &qword_100023D18);
  ActionDispatcher.next.setter();

  sub_1000169B0(v32, &qword_100031288, &qword_100023D18);
  v35 = *(v31 + 8);
  v35(v30, v34);
  v35(v27, v34);
  return (v49)(v38, v15);
}

uint64_t sub_10000AA0C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000021C8(&unk_100030FF0, &unk_100023A60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100016928(a1, &v9 - v6, &unk_100030FF0, &unk_100023A60);
  v7 = *a2;
  return FlowAuthorityProvider.flowAuthority.setter();
}

uint64_t sub_10000AAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v96 = a2;
  v4 = BootstrapResult.objectGraph.getter();
  sub_1000021C8(&qword_1000311F8, &qword_100023C78);
  v97 = v4;
  BaseObjectGraph.inject<A>(_:)();
  v92 = sub_1000021C8(&qword_100031258, &qword_100023CA8);
  v5 = *(*(v92 - 8) + 64);
  v6 = __chkstk_darwin(v92);
  v93 = v7;
  v94 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v79 - v8;
  v89 = sub_1000021C8(&qword_100031260, &qword_100023CB0);
  v9 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v90 = &v79 - v10;
  v11 = sub_1000021C8(&qword_100031268, &qword_100023CB8);
  v87 = *(v11 - 8);
  v88 = v11;
  v12 = *(v87 + 64);
  __chkstk_darwin(v11);
  v86 = &v79 - v13;
  v14 = sub_1000021C8(&qword_100031270, &qword_100023CC0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v79 - v16;
  v18 = type metadata accessor for BootstrapResult();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  type metadata accessor for FlowAuthorityProvider();
  BaseObjectGraph.inject<A>(_:)();
  v84 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v19 = *(v84 + 40);
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = type metadata accessor for AppBootstrapView.AppContentView(0);
  v22 = v21[5];
  sub_1000126A0(&qword_100031278, &type metadata accessor for FlowAuthorityProvider);
  Bindable<A>.init(wrappedValue:)();
  v23 = v21[6];
  swift_unknownObjectWeakInit();

  v24 = v21[7];
  v25 = sub_1000021C8(&unk_100030D08, &qword_100023768);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  type metadata accessor for FlowAction();
  sub_1000126A0(&qword_100030F38, &type metadata accessor for FlowAction);
  sub_1000126A0(&qword_100030F40, &type metadata accessor for FlowAction);
  v29 = FlowFullScreenCoverAuthority.init()();
  __chkstk_darwin(v29);
  (*(v26 + 16))(&v79 - v28, &v79 - v28, v25);
  v85 = v17;
  State.init(wrappedValue:)();
  v30 = (*(v26 + 8))(&v79 - v28, v25);
  v31 = *(v84 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_10001237C(v96, &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.TabBasedRootView);
  type metadata accessor for MainActor();
  v33 = v97;

  v34 = static MainActor.shared.getter();
  v35 = *(v31 + 80);
  v36 = (v35 + 32) & ~v35;
  v84 = v32;
  v82 = v32 + 7;
  v83 = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = &protocol witness table for MainActor;
  sub_1000123E8(&v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for AppBootstrapView.TabBasedRootView);
  *(v37 + ((v32 + 7 + v36) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v38 = type metadata accessor for TaskPriority();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_100020D14(2, 26, 4, 0))
  {
    v80 = type metadata accessor for _TaskModifier2();
    v81 = &v79;
    v79 = *(v80 - 8);
    v42 = *(v79 + 64);
    __chkstk_darwin(v80);
    v44 = &v79 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v99 = 0xD000000000000029;
    v100 = 0x80000001000266A0;
    v98 = 312;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v45);

    __chkstk_darwin(v46);
    (*(v39 + 16))(&v79 - v41, &v79 - v41, v38);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v39 + 8))(&v79 - v41, v38);
    v47 = v86;
    sub_100015CA4(v85, v86, &qword_100031270, &qword_100023CC0);
    v48 = sub_1000021C8(&qword_1000309D0, &qword_100023628);
    (*(v79 + 32))(v47 + *(v48 + 36), v44, v80);
  }

  else
  {
    v49 = sub_1000021C8(&qword_1000309D8, &qword_100023CE0);
    v47 = v86;
    v50 = (v86 + *(v49 + 36));
    v51 = type metadata accessor for _TaskModifier();
    (*(v39 + 32))(&v50[*(v51 + 20)], &v79 - v41, v38);
    *v50 = &unk_100023CD0;
    *(v50 + 1) = v37;
    sub_100015CA4(v85, v47, &qword_100031270, &qword_100023CC0);
  }

  v52 = v83;
  sub_10001511C(v101, v101[3]);
  v53 = type metadata accessor for BoolSettingKey();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  v57 = &v79 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v54 + 104))(v57, enum case for BoolSettingKey.useArcadeOrangeAsAppKeyColor(_:), v53);
  v58 = dispatch thunk of DebugSettingsProvider.isEnabled(debugSetting:)();
  (*(v54 + 8))(v57, v53);
  if (v58)
  {
    v59 = static MoltresTint.selectiveAccent.getter();
  }

  else
  {
    v59 = static MoltresTint.standard.getter();
  }

  v60 = v59;
  KeyPath = swift_getKeyPath();
  v99 = v60;
  v62 = AnyShapeStyle.init<A>(_:)();
  v63 = v90;
  v64 = (*(v87 + 32))(v90, v47, v88);
  v65 = (v63 + *(v89 + 36));
  *v65 = KeyPath;
  v65[1] = v62;
  __chkstk_darwin(v64);
  v67 = &v79 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001237C(v96, v67, type metadata accessor for AppBootstrapView.TabBasedRootView);
  v68 = (v52 + 16) & ~v52;
  v69 = (v82 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  sub_1000123E8(v67, v70 + v68, type metadata accessor for AppBootstrapView.TabBasedRootView);
  *(v70 + v69) = v97;
  v71 = v91;
  sub_100015CA4(v63, v91, &qword_100031260, &qword_100023CB0);
  v72 = (v71 + *(v92 + 36));
  *v72 = sub_100015C18;
  v72[1] = v70;
  v72[2] = 0;
  v72[3] = 0;
  v73 = v71;
  v74 = v94;
  v75 = sub_100015CA4(v73, v94, &qword_100031258, &qword_100023CA8);
  __chkstk_darwin(v75);
  v77 = &v79 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015D0C(v74, v77);
  sub_100015D0C(v77, v95);
  sub_1000169B0(v74, &qword_100031258, &qword_100023CA8);
  sub_1000169B0(v77, &qword_100031258, &qword_100023CA8);
  return sub_100002BA4(v101);
}

uint64_t sub_10000B64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000B6E4, v6, v5);
}

uint64_t sub_10000B6E4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) + 32));

  JSNativeIntentDispatcher.objectGraph.setter();
  v5 = v0[1];

  return v5();
}

uint64_t sub_10000B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021C8(&qword_100031130, &qword_100023658);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v25 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v18 = v17;
  (*(v13 + 8))(v16, v12);
  if (qword_100030960 != -1)
  {
    swift_once();
  }

  AppStorage.wrappedValue.getter();

  if (v18 - v25[1] >= 86400.0)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_10001237C(a1, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.TabBasedRootView);
    type metadata accessor for MainActor();

    v21 = static MainActor.shared.getter();
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = (v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = &protocol witness table for MainActor;
    sub_1000123E8(v7, v24 + v22, type metadata accessor for AppBootstrapView.TabBasedRootView);
    *(v24 + v23) = a2;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    sub_10000C830(0, 0, v11, &unk_100023CF0, v24);
  }

  return result;
}

uint64_t sub_10000BA90(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a1;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v7 = type metadata accessor for PrivateIdentifiersProvider();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 80) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 88) = v11;
  *(v6 + 96) = v10;

  return _swift_task_switch(sub_10000BB88, v11, v10);
}

uint64_t sub_10000BB88()
{
  v1 = v0[4];
  v2 = v1 + *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) + 24);
  v0[13] = Player.playerID.getter();
  v0[14] = v3;
  if (qword_100030968 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[15] = sub_100002B24(v4, qword_100030B98);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "TabBasedRootView: Posting map event.", v7, 2u);
  }

  v8 = sub_1000021C8(&qword_100031280, &qword_100023D10);
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_10000BD20;
  v11 = v0[5];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v8, v8);
}

uint64_t sub_10000BD20()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[14];

    v5 = v2[11];
    v6 = v2[12];
    v7 = sub_10000C3B8;
  }

  else
  {
    v5 = v2[11];
    v6 = v2[12];
    v7 = sub_10000BE3C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10000BE3C()
{
  v1 = v0[2];
  v0[18] = v1;
  v2 = async function pointer to PrivateIdentifiersProvider.init(bag:)[1];
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_10000BEEC;
  v4 = v0[9];

  return PrivateIdentifiersProvider.init(bag:)(v4, v1);
}

uint64_t sub_10000BEEC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[14];

    v5 = v2[11];
    v6 = v2[12];
    v7 = sub_10000C524;
  }

  else
  {
    v5 = v2[11];
    v6 = v2[12];
    v7 = sub_10000C008;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10000C008()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xEF73656D61672E65;
    v3 = 0x6C7070612E6D6F63;
  }

  v0[21] = v5;
  v6 = async function pointer to static GamesMapEventHelper.postGamesMapEvent(provider:canonicalID:actionType:hostAppBundleId:)[1];
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10000C140;
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[9];

  return static GamesMapEventHelper.postGamesMapEvent(provider:canonicalID:actionType:hostAppBundleId:)(v10, v8, v9, 1802398060, 0xE400000000000000, v3, v5);
}

uint64_t sub_10000C140()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  v2[23] = v0;

  v5 = v2[21];
  v6 = v2[14];

  v7 = v2[11];
  v8 = v2[12];
  if (v0)
  {
    v9 = sub_10000C69C;
  }

  else
  {
    v9 = sub_10000C2AC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10000C2AC()
{
  v1 = v0[10];

  if (qword_100030960 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v0[3] = v0[6];

  AppStorage.wrappedValue.setter();

  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000C3B8()
{
  v1 = v0[10];

  v2 = v0[17];
  v3 = v0[15];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "TabBasedRootView: Error posting map event: %@", v6, 0xCu);
    sub_1000169B0(v7, &qword_1000311A0, &qword_100023C30);
  }

  else
  {
  }

  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000C524()
{
  v1 = v0[18];
  v2 = v0[10];

  swift_unknownObjectRelease();
  v3 = v0[20];
  v4 = v0[15];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "TabBasedRootView: Error posting map event: %@", v7, 0xCu);
    sub_1000169B0(v8, &qword_1000311A0, &qword_100023C30);
  }

  else
  {
  }

  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000C69C()
{
  v1 = v0[18];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  swift_unknownObjectRelease();
  (*(v5 + 8))(v3, v4);
  v6 = v0[23];
  v7 = v0[15];
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "TabBasedRootView: Error posting map event: %@", v10, 0xCu);
    sub_1000169B0(v11, &qword_1000311A0, &qword_100023C30);
  }

  else
  {
  }

  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000021C8(&qword_100031130, &qword_100023658);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100016928(a3, v27 - v11, &qword_100031130, &qword_100023658);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000169B0(v12, &qword_100031130, &qword_100023658);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000169B0(a3, &qword_100031130, &qword_100023658);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000169B0(a3, &qword_100031130, &qword_100023658);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_10000CB30()
{
  v0 = objc_opt_self();
  [v0 setFlushTimerEnabled:1];

  return [v0 setDisableBackgroundMetrics:0];
}

uint64_t sub_10000CBD0@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v2 = type metadata accessor for TabBarOnlyTabViewStyle();
  v3 = *(v2 - 8);
  v108 = v2;
  v109 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v107 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetricsPipeline();
  v7 = *(v6 - 8);
  v105 = v6;
  v106 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v103 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppBootstrapView.AppContentView(0);
  v11 = v10 - 8;
  v76 = *(v10 - 8);
  v12 = *(v76 + 64);
  __chkstk_darwin(v10);
  v13 = sub_1000021C8(&qword_100030EE0, &qword_100023920);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v75 = &v75 - v15;
  v16 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v75 - v19;
  v82 = sub_1000021C8(&qword_100030EE8, &qword_100023928);
  v83 = *(v82 - 8);
  v21 = *(v83 + 64);
  __chkstk_darwin(v82);
  v77 = &v75 - v22;
  v85 = sub_1000021C8(&qword_100030EF0, &qword_100023930);
  v23 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v78 = &v75 - v24;
  v88 = sub_1000021C8(&qword_100030EF8, &qword_100023938);
  v90 = *(v88 - 8);
  v25 = *(v90 + 64);
  __chkstk_darwin(v88);
  v80 = &v75 - v26;
  v91 = sub_1000021C8(&qword_100030F00, &qword_100023940);
  v92 = *(v91 - 8);
  v27 = *(v92 + 64);
  __chkstk_darwin(v91);
  v84 = &v75 - v28;
  v93 = sub_1000021C8(&qword_100030F08, &qword_100023948);
  v94 = *(v93 - 8);
  v29 = *(v94 + 64);
  __chkstk_darwin(v93);
  v86 = &v75 - v30;
  v98 = sub_1000021C8(&qword_100030F10, &qword_100023950);
  v99 = *(v98 - 8);
  v31 = *(v99 + 64);
  __chkstk_darwin(v98);
  v87 = &v75 - v32;
  v101 = sub_1000021C8(&qword_100030F18, &qword_100023958);
  v104 = *(v101 - 8);
  v33 = *(v104 + 64);
  __chkstk_darwin(v101);
  v89 = &v75 - v34;
  v102 = sub_1000021C8(&qword_100030F20, &qword_100023960);
  v100 = *(v102 - 8);
  v35 = *(v100 + 64);
  __chkstk_darwin(v102);
  v95 = &v75 - v36;
  v97 = sub_1000021C8(&qword_100030F28, &qword_100023968);
  v37 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v96 = &v75 - v38;
  v81 = *(v11 + 28);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v79 = v16;
  Bindable<A>.subscript.getter();

  (*(v17 + 8))(v20, v16);
  sub_10001237C(v1, &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.AppContentView);
  v39 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v40 = swift_allocObject();
  sub_1000123E8(&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39, type metadata accessor for AppBootstrapView.AppContentView);
  sub_10001237C(v1, &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.AppContentView);
  v41 = swift_allocObject();
  sub_1000123E8(&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v39, type metadata accessor for AppBootstrapView.AppContentView);
  type metadata accessor for FlowAction();
  sub_1000021C8(&qword_100030F30, &qword_1000239A8);
  sub_1000126A0(&qword_100030F38, &type metadata accessor for FlowAction);
  sub_1000126A0(&qword_100030F40, &type metadata accessor for FlowAction);
  sub_1000126E8();
  v42 = type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(255);
  v43 = sub_1000126A0(&qword_100030F50, type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView);
  v113 = v42;
  v114 = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v77;
  FlowView.init(following:tabLabels:destinations:)();
  v112 = v1;
  sub_1000021C8(&qword_100030F58, &qword_1000239B0);
  sub_100016DD4(&qword_100030F60, &qword_100030F58, &qword_1000239B0);
  v45 = v78;
  v46 = v82;
  FlowView.customPresentation<A>(_:)();
  (*(v83 + 8))(v44, v46);
  v47 = type metadata accessor for GSKDeepLinkWithReferrerIntent();
  v48 = sub_10001279C();
  v49 = sub_1000126A0(&qword_100030F78, &type metadata accessor for GSKDeepLinkWithReferrerIntent);
  v50 = v80;
  v51 = v85;
  View.onDeepLink<A>(prepare:recover:)();
  sub_1000169B0(v45, &qword_100030EF0, &qword_100023930);
  BootstrapResult.objectGraph.getter();
  v52 = v103;
  v53 = v105;
  BaseObjectGraph.inject<A>(_:)();

  v54 = *(v11 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  v113 = v51;
  v114 = v47;
  v115 = v48;
  v116 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v84;
  v58 = v88;
  View.appMetrics(pipeline:scene:)();

  (*(v106 + 8))(v52, v53);
  (*(v90 + 8))(v50, v58);
  BootstrapResult.objectGraph.getter();
  v113 = v58;
  v114 = OpaqueTypeConformance2;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v86;
  v61 = v91;
  View.withInternalSettingsGesture(using:)();

  (*(v92 + 8))(v57, v61);
  BootstrapResult.objectGraph.getter();
  v113 = v61;
  v114 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v87;
  v64 = v93;
  View.withDebugMetricsOverlay(using:)();

  (*(v94 + 8))(v60, v64);
  BootstrapResult.objectGraph.getter();
  Bindable.wrappedValue.getter();
  v113 = v64;
  v114 = v62;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v89;
  v67 = v98;
  View.gameControllerTabNavigation(objectGraph:flowAuthorityProvider:)();

  (*(v99 + 8))(v63, v67);
  BootstrapResult.objectGraph.getter();
  v111 = v1;
  type metadata accessor for BaseObjectGraph();
  v113 = v67;
  v114 = v65;
  swift_getOpaqueTypeConformance2();
  v68 = v95;
  v69 = v101;
  View.actionDispatcher<A>(with:implementations:)();

  (*(v104 + 8))(v66, v69);
  v70 = v96;
  sub_10000EAFC(&v96[*(v97 + 36)]);
  v71 = v70;
  (*(v100 + 32))(v70, v68, v102);
  v72 = v107;
  TabBarOnlyTabViewStyle.init()();
  sub_100012888();
  v73 = v108;
  View.tabViewStyle<A>(_:)();
  (*(v109 + 8))(v72, v73);
  return sub_1000169B0(v71, &qword_100030F28, &qword_100023968);
}

uint64_t sub_10000DAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100012DA8(a1, a2);
  v3 = *(type metadata accessor for AppBootstrapView.AppContentView(0) + 20);
  sub_1000021C8(&qword_100030C80, &qword_100023730);
  Bindable.wrappedValue.getter();
  v4 = FlowAuthorityProvider.tabs.getter();

  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_10000DB28(uint64_t a1)
{
  v2 = type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowAction.Destination();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  *&v5[*(v2 + 20)] = BootstrapResult.objectGraph.getter();
  sub_1000126A0(&qword_100030F50, type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView);
  View.providePageContextMetrics()();
  return sub_100012D4C(v5);
}

uint64_t sub_10000DC48()
{
  v0 = sub_1000021C8(&qword_100030FB0, &qword_100023A30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = *(type metadata accessor for AppBootstrapView.AppContentView(0) + 28);
  sub_1000021C8(&qword_100030C88, &qword_100023738);
  State.projectedValue.getter();

  sub_1000021C8(&qword_100030F30, &qword_1000239A8);
  type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(255);
  sub_1000126A0(&qword_100030F50, type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView);
  swift_getOpaqueTypeConformance2();
  return FlowFullScreenCoverViewModifier.init(following:destinations:)();
}

uint64_t sub_10000DDA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DeepLink();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for ReferrerData();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_1000021C8(&qword_100030FE0, &unk_100023A50) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v13 = type metadata accessor for AppStoreDeepLink();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = *(*(sub_1000021C8(&qword_100030FE8, &qword_1000241D0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v17 = type metadata accessor for ReferrerData.Kind();
  v2[19] = v17;
  v18 = *(v17 - 8);
  v2[20] = v18;
  v19 = *(v18 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10000E05C, 0, 0);
}

uint64_t sub_10000E05C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[3];
  DeepLink.referrerKind.getter();
  v5 = *(v2 + 48);
  v6 = v5(v3, 1, v1);
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];
  if (v6 == 1)
  {
    v11 = enum case for ReferrerData.Kind.unspecified(_:);
    v12 = *(v9 + 104);
    v12(v7, enum case for ReferrerData.Kind.unspecified(_:), v0[19]);
    if (v5(v10, 1, v8) != 1)
    {
      sub_1000169B0(v0[18], &qword_100030FE8, &qword_1000241D0);
    }
  }

  else
  {
    (*(v9 + 32))(v7, v0[18], v0[19]);
    v11 = enum case for ReferrerData.Kind.unspecified(_:);
    v12 = *(v9 + 104);
  }

  v13 = v0[21];
  v14 = v0[19];
  v15 = v0[20];
  v12(v13, v11, v14);
  v16 = static ReferrerData.Kind.== infix(_:_:)();
  v17 = *(v15 + 8);
  v17(v13, v14);
  if (v16)
  {
    v18 = v0[3];
    v19 = DeepLink.sourceProcess.getter();
    if (v20)
    {
      if (v19 == 0xD000000000000012 && v20 == 0x8000000100026760)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v22 = v0[22];
      v23 = v0[19];
      v17(v22, v23);
      v12(v22, enum case for ReferrerData.Kind.appStore(_:), v23);
    }
  }

LABEL_12:
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[11];
  v27 = v0[12];
  v28 = v0[10];
  v29 = v0[3];
  DeepLink.url.getter();
  DeepLink.url.getter();
  DeepLink.sourceApplication.getter();
  static AppStoreDeepLink.sourceApplicationFromRefBundleID(url:refBundleID:)();

  v30 = *(v27 + 8);
  v30(v25, v26);
  DeepLink.referrerURL.getter();
  v52 = v17;
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    sub_1000169B0(v0[10], &qword_100030FE0, &unk_100023A50);
  }

  else
  {
    v32 = v0[10];
    v31 = v0[11];
    URL.absoluteString.getter();
    v30(v32, v31);
  }

  v33 = v0[22];
  v34 = v0[19];
  v35 = v0[17];
  v36 = v0[16];
  v48 = v34;
  v49 = v0[15];
  v37 = v0[14];
  v50 = v0[18];
  v38 = v0[9];
  v51 = v0[10];
  v39 = v0[8];
  v40 = v0[5];
  v45 = v0[6];
  v46 = v0[4];
  v43 = v0[7];
  v44 = v0[3];
  v47 = v0[2];
  (*(v0[20] + 16))(v0[21], v33);
  AppStoreDeepLink.init(url:refApp:refUrl:refKind:)();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  AppStoreDeepLink.referral.getter();
  dispatch thunk of MetricsActivity.setReferrerData(_:)();

  (*(v39 + 8))(v38, v43);
  (*(v40 + 16))(v45, v44, v46);
  GSKDeepLinkWithReferrerIntent.init(with:)();
  (*(v36 + 8))(v35, v49);
  v52(v33, v48);

  v41 = v0[1];

  return v41();
}

uint64_t sub_10000E4E0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Models.AlertAction();
  a1[4] = &protocol witness table for Models.AlertAction;
  sub_1000154BC(a1);
  swift_errorRetain();

  return Models.AlertAction.init(contentUnavailableError:retry:)();
}

uint64_t sub_10000E558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v51 = a2;
  v2 = sub_1000021C8(&qword_100030FA8, &qword_100023A28);
  v3 = *(v2 - 8);
  v46 = v2;
  v47 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v45 = v37 - v5;
  v6 = sub_1000021C8(&qword_100030FB0, &qword_100023A30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v37 - v8;
  v10 = sub_1000021C8(&qword_100030FB8, &qword_100023A38);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v37 - v13;
  v15 = sub_1000021C8(&qword_100030FC0, &qword_100023A40);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v37 - v22;
  __chkstk_darwin(v21);
  v25 = v37 - v24;
  v50 = v37 - v24;
  v41 = *(type metadata accessor for AppBootstrapView.AppContentView(0) + 28);
  v39 = sub_1000021C8(&qword_100030C88, &qword_100023738);
  v37[1] = v9;
  State.projectedValue.getter();
  v48 = type metadata accessor for BaseObjectGraph();
  FullScreenCoverFlowActionImplementation.init(following:)();
  ActionDispatcher.init()();
  v49 = *(v16 + 16);
  v49(v25, v23, v15);
  sub_100016DD4(&qword_100030FC8, &qword_100030FB8, &qword_100023A38);
  v26 = v43;
  ActionDispatcher.add<A>(_:)();
  v27 = *(v16 + 8);
  v16 += 8;
  v27(v23, v15);
  v38 = v27;
  (*(v44 + 8))(v14, v26);
  State.projectedValue.getter();
  v28 = v45;
  FullScreenCoverFlowBackActionImplementation.init(following:)();
  ActionDispatcher.init()();
  v49(v23, v20, v15);
  sub_100016DD4(&qword_100030FD0, &qword_100030FA8, &qword_100023A28);
  v29 = v46;
  v42 = v23;
  ActionDispatcher.add<A>(_:)();
  v27(v20, v15);
  (*(v47 + 8))(v28, v29);
  sub_1000021C8(&qword_100030FD8, &qword_100023A48);
  v30 = *(v16 + 64);
  v31 = (*(v16 + 72) + 32) & ~*(v16 + 72);
  v32 = swift_allocObject() + v31;
  v33 = v49;
  v49(v32, v50, v15);
  v33(v32 + v30, v23, v15);
  v34 = v33;
  ActionDispatcher.init()();
  v33(v20, v32, v15);
  ActionDispatcher.add(contentsOf:)();
  v35 = v38;
  v38(v20, v15);
  v34(v20, v32 + v30, v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  ActionDispatcher.add(contentsOf:)();
  v35(v20, v15);
  v35(v42, v15);
  return (v35)(v50, v15);
}

uint64_t sub_10000EAFC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ActionMetrics();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  static ActionMetrics.notInstrumented.getter();
  sub_1000021C8(&qword_100030F90, &qword_1000239C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000236C0;
  static ActionMetrics.notInstrumented.getter();
  *(v8 + 56) = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  *(v8 + 64) = sub_1000126A0(&qword_100030F98, &type metadata accessor for ResetRequestReviewPropertiesIfNeededAction);
  sub_1000154BC((v8 + 32));
  static ResetRequestReviewPropertiesIfNeededAction.appLaunch(actionMetrics:)();
  (*(v3 + 8))(v7, v2);
  *(v8 + 96) = type metadata accessor for PresentPromptAction();
  *(v8 + 104) = sub_1000126A0(&qword_100030FA0, &type metadata accessor for PresentPromptAction);
  sub_1000154BC((v8 + 72));
  static PresentPromptAction.appLaunch()();
  CompoundAction.init(actionMetrics:subactions:)();
  v9 = type metadata accessor for PerformActionOnAppLaunchModifier(0);
  v10 = a1 + *(v9 + 20);
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  v11 = *(v9 + 24);
  *(a1 + v11) = swift_getKeyPath();
  sub_1000021C8(&unk_100030EC8, &qword_1000238F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000ED3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_1000021C8(&qword_1000313B8, &qword_100023E88);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = sub_1000021C8(&qword_1000313C0, &qword_100023E90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_1000021C8(&qword_1000313C8, &qword_100023E98);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v16 = sub_1000021C8(&qword_1000313D0, &qword_100023EA0);
  v17 = *(v16 - 8);
  v30 = v16;
  v31 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  sub_10000F0D8(v2, v6);
  v21 = *(v2 + *(type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0) + 20));
  v22 = sub_100016ADC();
  View.componentContentBuilder(with:)();
  sub_1000169B0(v6, &qword_1000313B8, &qword_100023E88);
  v33 = v3;
  v34 = v22;
  swift_getOpaqueTypeConformance2();
  View.videoPlaybackCoordinator(objectGraph:)();
  (*(v8 + 8))(v11, v7);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v23 = v33;
  sub_1000126A0(&qword_100031400, &type metadata accessor for ArtworkLoader);
  v24 = static ObservableObject.environmentStore.getter();
  v25 = &v15[*(v12 + 36)];
  *v25 = v24;
  v25[1] = v23;
  v26 = sub_100016C9C();
  View.limitDynamicTypeSizeForSeedBuild()();
  sub_1000169B0(v15, &qword_1000313C8, &qword_100023E98);
  v33 = v12;
  v34 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v30;
  View.gameControllerTabOcclusionReporting()();
  return (*(v31 + 8))(v20, v27);
}

uint64_t sub_10000F0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = sub_1000021C8(&qword_100031420, &qword_100023EC8);
  v81 = *(v83 - 8);
  v3 = *(v81 + 64);
  __chkstk_darwin(v83);
  v80 = &v61 - v4;
  v84 = sub_1000021C8(&qword_100031428, &qword_100023ED0);
  v5 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v86 = &v61 - v6;
  v7 = type metadata accessor for BackgroundThemeStyle();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  __chkstk_darwin(v7);
  v74 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  done = type metadata accessor for FlowSheetDoneButtonLabelStyle();
  v70 = *(done - 8);
  v71 = done;
  v11 = *(v70 + 64);
  __chkstk_darwin(done);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000021C8(&qword_1000313F8, &qword_100023EB8);
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  __chkstk_darwin(v13);
  v65 = &v61 - v15;
  v16 = sub_1000021C8(&qword_1000313F0, &qword_100023EB0);
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  __chkstk_darwin(v16);
  v67 = &v61 - v18;
  v19 = sub_1000021C8(&qword_100031430, &qword_100023ED8);
  v73 = *(v19 - 8);
  v20 = *(v73 + 64);
  __chkstk_darwin(v19);
  v72 = &v61 - v21;
  v22 = type metadata accessor for FlowDestination();
  v78 = *(v22 - 8);
  v79 = v22;
  v23 = *(v78 + 64);
  v24 = __chkstk_darwin(v22);
  v77 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = type metadata accessor for FlowAction.Destination();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v82 = (&v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v32 = &v61 - v31;
  v33 = *(v27 + 16);
  v33(&v61 - v31, a1, v26);
  v34 = *(v27 + 88);
  v87 = v32;
  v35 = v32;
  v36 = a1;
  v37 = v26;
  v38 = v86;
  if (v34(v35, v37) != enum case for FlowAction.Destination.games(_:))
  {
    goto LABEL_5;
  }

  v62 = v36;
  v63 = v16;
  v64 = v19;
  v39 = v82;
  v33(v82, v87, v37);
  (*(v27 + 96))(v39, v37);
  if (!swift_dynamicCast())
  {
    sub_100002BA4(v82);
    v38 = v86;
    v16 = v63;
    v36 = v62;
LABEL_5:
    v54 = *(v36 + *(type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0) + 20));
    v55 = v80;
    static DestinationViewFactory.makeView(for:objectGraph:)();
    v56 = v81;
    v57 = v83;
    (*(v81 + 16))(v38, v55, v83);
    swift_storeEnumTagMultiPayload();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v88 = v13;
    v89 = OpaqueTypeConformance2;
    v59 = swift_getOpaqueTypeConformance2();
    v88 = v16;
    v89 = v59;
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v56 + 8))(v55, v57);
    return (*(v27 + 8))(v87, v37);
  }

  (*(v78 + 32))();
  v40 = *(v62 + *(type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0) + 20));
  v41 = v65;
  FlowDestination.callAsFunction(asPartOf:)();
  v43 = v70;
  v42 = v71;
  v44 = v68;
  (*(v70 + 104))(v68, enum case for FlowSheetDoneButtonLabelStyle.iconOnly(_:), v71);
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v67;
  View.flowSheetDoneButtonLabelStyle(_:)();
  (*(v43 + 8))(v44, v42);
  (*(v66 + 8))(v41, v13);
  v48 = v74;
  v47 = v75;
  v49 = v76;
  (*(v75 + 104))(v74, enum case for BackgroundThemeStyle.system(_:), v76);
  v88 = v13;
  v89 = v45;
  v81 = swift_getOpaqueTypeConformance2();
  v50 = v72;
  v51 = v63;
  View.backgroundTheme(_:)();
  (*(v47 + 8))(v48, v49);
  (*(v69 + 8))(v46, v51);
  v52 = v73;
  v53 = v64;
  (*(v73 + 16))(v86, v50, v64);
  swift_storeEnumTagMultiPayload();
  v88 = v51;
  v89 = v81;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v52 + 8))(v50, v53);
  (*(v78 + 8))(v77, v79);
  sub_100002BA4(v82);
  return (*(v27 + 8))(v87, v37);
}

uint64_t sub_10000FA94(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100002BF0(v3, a2);
  sub_100002B24(v3, a2);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000FB44(uint64_t a1, void *a2)
{
  v3 = sub_10001511C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000021C8(&qword_1000311C8, &qword_100023C48);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10000FC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PerformActionOnAppLaunchModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_10001237C(v2, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PerformActionOnAppLaunchModifier);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_1000123E8(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PerformActionOnAppLaunchModifier);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_100020D14(2, 26, 4, 0))
  {
    v30 = type metadata accessor for _TaskModifier2();
    v31 = &v27;
    v29 = *(v30 - 8);
    v15 = *(v29 + 64);
    __chkstk_darwin(v30);
    v28 = a2;
    v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v33 = 0xD000000000000029;
    v34 = 0x80000001000266A0;
    v32 = 533;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = a1;
    String.append(_:)(v18);

    __chkstk_darwin(v19);
    (*(v12 + 16))(&v27 - v14, &v27 - v14, v11);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v12 + 8))(&v27 - v14, v11);
    v20 = sub_1000021C8(&qword_1000309E0, &unk_100023900);
    v21 = v28;
    (*(*(v20 - 8) + 16))(v28, v27, v20);
    v22 = sub_1000021C8(&qword_1000309E8, &qword_100023630);
    return (*(v29 + 32))(v21 + *(v22 + 36), v17, v30);
  }

  else
  {
    v24 = (a2 + *(sub_1000021C8(&qword_1000309F0, &qword_100023910) + 36));
    v25 = type metadata accessor for _TaskModifier();
    (*(v12 + 32))(&v24[*(v25 + 20)], &v27 - v14, v11);
    *v24 = &unk_1000238F8;
    *(v24 + 1) = v10;
    v26 = sub_1000021C8(&qword_1000309E0, &unk_100023900);
    return (*(*(v26 - 8) + 16))(a2, a1, v26);
  }
}

uint64_t sub_1000100A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  v4 = type metadata accessor for OpaqueMetricsFieldsContext();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001019C, v8, v7);
}

uint64_t sub_10001019C()
{
  v1 = v0[16];
  v2 = v0[12];

  v3 = type metadata accessor for PerformActionOnAppLaunchModifier(0);
  v4 = v2 + *(v3 + 20);
  sub_100011FE0((v0 + 2));
  if (v0[5])
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[12];
    v8 = v0[13];
    v9 = v0[6];
    sub_10001511C(v0 + 2, v0[5]);
    v10 = type metadata accessor for CompoundAction();
    v0[10] = v10;
    v0[11] = &protocol witness table for CompoundAction;
    v11 = sub_1000154BC(v0 + 7);
    (*(*(v10 - 8) + 16))(v11, v7, v10);
    v12 = v7 + *(v3 + 24);
    sub_100012154(v5);
    PerformAction.callAsFunction(_:withMetrics:)();
    (*(v6 + 8))(v5, v8);
    sub_100002BA4(v0 + 7);
    sub_100002BA4(v0 + 2);
  }

  else
  {
    sub_1000169B0((v0 + 2), &qword_100030C40, &qword_100023728);
  }

  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10001034C()
{
  v1 = type metadata accessor for PerformActionOnAppLaunchModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for CompoundAction();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v0 + v3 + *(v1 + 20);
  if (*(v8 + 40))
  {
    if (*(v8 + 24))
    {
      sub_100002BA4(v8);
    }
  }

  else
  {
    v9 = *v8;
  }

  v10 = *(v1 + 24);
  sub_1000021C8(&unk_100030EC8, &qword_1000238F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpaqueMetricsFieldsContext();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000104CC()
{
  v2 = *(type metadata accessor for PerformActionOnAppLaunchModifier(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100016FCC;

  return sub_1000100A8(v4, v5, v0 + v3);
}

uint64_t sub_1000105A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000021C8(&qword_100031368, &qword_100023E58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v29 - v6;
  v32 = sub_1000021C8(&qword_100031370, &qword_100023E60);
  v8 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v33 = v29 - v9;
  v34 = sub_1000021C8(&qword_100031378, &qword_100023E68);
  v31 = *(v34 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v34);
  v30 = v29 - v11;
  v12 = sub_1000021C8(&qword_100031380, &qword_100023E70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v29 - v14;
  v16 = type metadata accessor for StoreTab();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 40);
  v35 = v1;
  sub_100004F84(sub_100016990, v21, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000169B0(v15, &qword_100031380, &qword_100023E70);
    v36 = AnyHashable.description.getter();
    v37 = v22;
    sub_100014FF4();
    Label<>.init<A>(_:systemImage:)();
    (*(v4 + 16))(v33, v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_100016DD4(&qword_100031388, &qword_100031378, &qword_100023E68);
    sub_100016DD4(&qword_100031390, &qword_100031368, &qword_100023E58);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v24 = (*(v17 + 32))(v20, v15, v16);
    v29[2] = v29;
    v25 = __chkstk_darwin(v24);
    v29[-2] = v20;
    __chkstk_darwin(v25);
    v29[-2] = v20;
    v29[1] = sub_1000021C8(&qword_100031398, &qword_100023E78);
    v29[4] = v3;
    sub_1000021C8(&qword_1000313A0, &qword_100023E80);
    v29[3] = a1;
    sub_100016A20(&qword_1000313A8, &qword_100031398, &qword_100023E78);
    sub_100016A20(&qword_1000313B0, &qword_1000313A0, &qword_100023E80);
    v26 = v30;
    Label.init(title:icon:)();
    v27 = v31;
    v28 = v34;
    (*(v31 + 16))(v33, v26, v34);
    swift_storeEnumTagMultiPayload();
    sub_100016DD4(&qword_100031388, &qword_100031378, &qword_100023E68);
    sub_100016DD4(&qword_100031390, &qword_100031368, &qword_100023E58);
    _ConditionalContent<>.init(storage:)();
    (*(v27 + 8))(v26, v28);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_100010B9C()
{
  v0 = type metadata accessor for StoreTab.Identifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  StoreTab.identifier.getter();
  v5 = StoreTab.Identifier.rawValue.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[1] = v5;
  v9[2] = v7;
  AnyHashable.init<A>(_:)();
  LOBYTE(v5) = static AnyHashable.== infix(_:_:)();
  sub_100016A88(v10);
  return v5 & 1;
}

uint64_t sub_100010CCC@<X0>(uint64_t *a1@<X8>)
{
  StoreTab.tabTitleText.getter();
  if (v2)
  {
    sub_100014FF4();
    result = Text.init<A>(_:)();
    v6 = v5 & 1;
  }

  else
  {
    result = 0;
    v6 = 0;
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v2;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_100010D38@<X0>(uint64_t *a1@<X8>)
{
  StoreTab.tabImageName.getter();
  if (v2)
  {
    result = Image.init(_internalSystemName:)();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

void *sub_100010D78(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NetworkConnectionMonitor.ConnectionState();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  v6 = __chkstk_darwin(v4);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v69 - v8;
  v94 = type metadata accessor for StoreTab.Identifier();
  v71 = *(v94 - 8);
  v9 = *(v71 + 64);
  v10 = __chkstk_darwin(v94);
  v82 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v81 = &v69 - v13;
  v14 = __chkstk_darwin(v12);
  v91 = &v69 - v15;
  __chkstk_darwin(v14);
  v90 = &v69 - v16;
  v17 = type metadata accessor for StoreTab();
  v76 = *(v17 - 8);
  v18 = *(v76 + 64);
  v19 = __chkstk_darwin(v17);
  v79 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v80 = &v69 - v22;
  v23 = __chkstk_darwin(v21);
  v89 = &v69 - v24;
  __chkstk_darwin(v23);
  v26 = &v69 - v25;
  v27 = type metadata accessor for BoolSettingKey();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000021C8(&qword_1000311F8, &qword_100023C78);
  v72 = a1;
  BaseObjectGraph.inject<A>(_:)();
  sub_10001511C(&v99, v101);
  (*(v28 + 104))(v31, enum case for BoolSettingKey.showArcadeTab(_:), v27);
  LOBYTE(a1) = dispatch thunk of DebugSettingsProvider.isEnabled(debugSetting:)();
  v32 = v31;
  v33 = v17;
  (*(v28 + 8))(v32, v27);
  sub_100002BA4(&v99);
  v93 = v17;
  if (a1)
  {
    v92 = a2;
  }

  else
  {
    v70 = v4;
    v34 = a2[2];
    if (v34)
    {
      v87 = *(v76 + 16);
      v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v35 = a2 + v78;
      v36 = *(v76 + 72);
      v86 = enum case for StoreTab.Identifier.arcade(_:);
      v84 = (v71 + 8);
      v85 = (v71 + 104);
      v83 = (v76 + 32);
      v88 = v76 + 16;
      v77 = (v76 + 8);
      v92 = &_swiftEmptyArrayStorage;
      v37 = v90;
      do
      {
        v95 = v34;
        v87(v26, v35, v33);
        StoreTab.identifier.getter();
        v38 = v26;
        v39 = v91;
        v40 = v33;
        v41 = v94;
        (*v85)(v91, v86, v94);
        sub_1000126A0(&qword_100031200, &type metadata accessor for StoreTab.Identifier);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        v43 = *v84;
        (*v84)(v39, v41);
        v43(v37, v41);
        if (v42)
        {
          (*v77)(v38, v40);
          v26 = v38;
          v33 = v40;
        }

        else
        {
          v44 = *v83;
          (*v83)(v89, v38, v40);
          v45 = v92;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = v45;
          v26 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100014218(0, *(v45 + 16) + 1, 1);
            v45 = v99;
          }

          v48 = *(v45 + 16);
          v47 = *(v45 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_100014218(v47 > 1, v48 + 1, 1);
            v45 = v99;
          }

          *(v45 + 16) = v48 + 1;
          v92 = v45;
          v33 = v93;
          v44((v45 + v78 + v48 * v36), v89, v93);
        }

        v35 += v36;
        v34 = v95 - 1;
      }

      while (v95 != 1);
    }

    else
    {
      v92 = &_swiftEmptyArrayStorage;
    }

    v4 = v70;
  }

  type metadata accessor for NetworkConnectionMonitor();
  BaseObjectGraph.inject<A>(_:)();
  v49 = v99;
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  v50 = ASKBagContract.offlineModeHideTabsDisabled.getter();

  if (v50)
  {
    goto LABEL_21;
  }

  NetworkConnectionMonitor.connectionStateObservationIgnored.getter();
  (*(v75 + 104))(v73, enum case for NetworkConnectionMonitor.ConnectionState.offline(_:), v4);
  sub_1000126A0(&qword_100031208, &type metadata accessor for NetworkConnectionMonitor.ConnectionState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v99 == v97 && v100 == v98)
  {
    v51 = *(v75 + 8);
    v51(v73, v4);
    v51(v74, v4);
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v53 = *(v75 + 8);
    v53(v73, v4);
    v53(v74, v4);

    if ((v52 & 1) == 0)
    {
LABEL_21:

      return v92;
    }
  }

  if (NetworkConnectionMonitor.hasEverBeenConfirmedOnlineObservationIgnored.getter())
  {
    goto LABEL_21;
  }

  v88 = v49;
  result = v92;
  v91 = v92[2];
  if (v91)
  {
    v55 = 0;
    v90 = (v76 + 16);
    v56 = (v71 + 8);
    v89 = (v76 + 8);
    v95 = (v76 + 32);
    v57 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v55 >= result[2])
      {
        __break(1u);
        return result;
      }

      v58 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v59 = *(v76 + 72);
      (*(v76 + 16))(v80, result + v58 + v59 * v55, v93);
      StoreTab.identifier.getter();
      static StoreTab.Identifier.library.getter();
      sub_1000126A0(&qword_100031210, &type metadata accessor for StoreTab.Identifier);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v99 == v97 && v100 == v98)
      {
        break;
      }

      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v63 = *v56;
      v64 = v94;
      (*v56)(v82, v94);
      v63(v81, v64);

      if (v62)
      {
        goto LABEL_31;
      }

      (*v89)(v80, v93);
LABEL_25:
      ++v55;
      result = v92;
      if (v91 == v55)
      {
        goto LABEL_37;
      }
    }

    v60 = *v56;
    v61 = v94;
    (*v56)(v82, v94);
    v60(v81, v61);

LABEL_31:
    v65 = *v95;
    (*v95)(v79, v80, v93);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v57;
    if ((v66 & 1) == 0)
    {
      sub_100014218(0, v57[2] + 1, 1);
      v57 = v96;
    }

    v68 = v57[2];
    v67 = v57[3];
    if (v68 >= v67 >> 1)
    {
      sub_100014218(v67 > 1, v68 + 1, 1);
      v57 = v96;
    }

    v57[2] = v68 + 1;
    v65(v57 + v58 + v68 * v59, v79, v93);
    goto LABEL_25;
  }

  v57 = &_swiftEmptyArrayStorage;
LABEL_37:

  return v57;
}

uint64_t sub_1000118B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a3;
  v58 = a2;
  v53 = a1;
  v70 = a4;
  v4 = type metadata accessor for FlowOrigin();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  __chkstk_darwin(v4);
  v69 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FlowAnimationBehavior();
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  __chkstk_darwin(v65);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowPresentationContext();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  __chkstk_darwin(v9);
  v64 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000021C8(&qword_1000311E8, &qword_100023C68);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v56 = &v53 - v17;
  v18 = sub_1000021C8(&qword_1000311F0, &qword_100023C70);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v55 = &v53 - v20;
  v21 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v53 - v23;
  v54 = type metadata accessor for FlowPage();
  v57 = *(v54 - 8);
  v25 = *(v57 + 8);
  __chkstk_darwin(v54);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StoreTab.Identifier();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v53 - v34;
  StoreTab.identifier.getter();
  v36 = StoreTab.Identifier.rawValue.getter();
  v38 = v37;
  v39 = *(v29 + 8);
  v39(v35, v28);
  *&v71 = v36;
  *(&v71 + 1) = v38;
  v40 = v56;
  AnyHashable.init<A>(_:)();
  v41 = *(v57 + 13);
  v57 = v27;
  v42 = v55;
  v41(v27, enum case for FlowPage.games(_:), v54);
  v43 = type metadata accessor for URL();
  v44 = *(*(v43 - 8) + 56);
  v54 = v24;
  v44(v24, 1, 1, v43);
  v45 = type metadata accessor for ReferrerData();
  (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
  StoreTab.identifier.getter();
  StoreTab.Identifier.gamesTabDestination(player:asPartOf:)();
  v39(v33, v28);
  v46 = type metadata accessor for FlowDestination();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v40, 1, v46) == 1)
  {
    sub_1000169B0(v40, &qword_1000311E8, &qword_100023C68);
    v71 = 0u;
    v72 = 0u;
  }

  else
  {
    *(&v72 + 1) = v46;
    v48 = sub_1000154BC(&v71);
    (*(v47 + 32))(v48, v40, v46);
  }

  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v60 + 104))(v64, enum case for FlowPresentationContext.infer(_:), v61);
  (*(v63 + 104))(v66, enum case for FlowAnimationBehavior.infer(_:), v65);
  (*(v67 + 104))(v69, enum case for FlowOrigin.inapp(_:), v68);
  v49 = type metadata accessor for FlowAction();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  result = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  *v70 = result;
  return result;
}

uint64_t sub_100011FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100016928(v2, v12, &qword_100030ED8, &qword_100023918);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_100012154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000021C8(&unk_100030EC8, &qword_1000238F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100016928(v2, &v17 - v11, &unk_100030EC8, &qword_1000238F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for OpaqueMetricsFieldsContext();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000123E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for AppBootstrapView.AppContentView(0) - 8) + 80);

  return sub_10000DAA8(a1, a2);
}

uint64_t sub_1000124D0()
{
  v1 = (type metadata accessor for AppBootstrapView.AppContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for BootstrapResult();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  swift_unknownObjectWeakDestroy();
  v9 = v0 + v3 + v1[9];
  v10 = sub_1000021C8(&unk_100030D08, &qword_100023768);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + *(sub_1000021C8(&qword_100030C88, &qword_100023738) + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000126A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000126E8()
{
  result = qword_100030F48;
  if (!qword_100030F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030F48);
  }

  return result;
}

uint64_t sub_10001275C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001279C()
{
  result = qword_100030F68;
  if (!qword_100030F68)
  {
    sub_100002FF0(&qword_100030EF0, &qword_100023930);
    sub_100016DD4(&qword_100030F70, &qword_100030EE8, &qword_100023928);
    sub_100016DD4(&qword_100030F60, &qword_100030F58, &qword_1000239B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030F68);
  }

  return result;
}

unint64_t sub_100012888()
{
  result = qword_100030F80;
  if (!qword_100030F80)
  {
    sub_100002FF0(&qword_100030F28, &qword_100023968);
    sub_100002FF0(&qword_100030F18, &qword_100023958);
    type metadata accessor for BaseObjectGraph();
    sub_100002FF0(&qword_100030F10, &qword_100023950);
    sub_100002FF0(&qword_100030F08, &qword_100023948);
    sub_100002FF0(&qword_100030F00, &qword_100023940);
    sub_100002FF0(&qword_100030EF8, &qword_100023938);
    sub_100002FF0(&qword_100030EF0, &qword_100023930);
    type metadata accessor for GSKDeepLinkWithReferrerIntent();
    sub_10001279C();
    sub_1000126A0(&qword_100030F78, &type metadata accessor for GSKDeepLinkWithReferrerIntent);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000126A0(&qword_100030F88, type metadata accessor for PerformActionOnAppLaunchModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030F80);
  }

  return result;
}

uint64_t sub_100012B24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000021C8(&qword_100031358, &unk_100023E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100016928(v2, &v16 - v11, &qword_100031358, &unk_100023E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100015CA4(v12, a1, &qword_100031360, &qword_1000240C0);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100012D4C(uint64_t a1)
{
  v2 = type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012E04()
{
  v1 = (type metadata accessor for AppBootstrapView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for Bootstrap();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = (v0 + v3 + v1[8]);
  v8 = *v7;

  v9 = v7[1];

  v10 = *(v0 + v3 + v1[9]);

  v11 = v1[10];
  swift_unknownObjectWeakDestroy();
  v12 = (v0 + v3 + v1[11]);
  v13 = *v12;

  v14 = v12[1];

  v15 = (v0 + v3 + v1[12]);
  v16 = *v15;

  v17 = v15[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012F80(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_100013018()
{
  result = qword_100031070;
  if (!qword_100031070)
  {
    sub_100002FF0(&qword_100031060, &qword_100023AD0);
    sub_1000130D0();
    sub_100016DD4(&qword_1000310A8, &qword_1000310B0, &qword_100023AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031070);
  }

  return result;
}

unint64_t sub_1000130D0()
{
  result = qword_100031078;
  if (!qword_100031078)
  {
    sub_100002FF0(&qword_100031080, &qword_100023AE0);
    sub_100016DD4(&qword_100031088, &qword_100031090, &qword_100023AE8);
    sub_100016DD4(&qword_100031098, &qword_1000310A0, &qword_100023AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031078);
  }

  return result;
}

unint64_t sub_1000131B4()
{
  result = qword_100031118;
  if (!qword_100031118)
  {
    sub_100002FF0(&qword_100031008, &qword_100023A78);
    sub_100002FF0(&qword_100031010, &qword_100023A80);
    sub_100002FF0(&qword_100031108, &qword_100023B18);
    sub_100002FF0(&qword_100031018, &qword_100023A88);
    type metadata accessor for MediaArtwork.BundleImageProtocol();
    sub_100002FF0(&qword_100031020, &qword_100023A90);
    sub_100002FF0(&qword_1000310F0, &qword_100023B10);
    sub_100002FF0(&qword_100031028, &qword_100023A98);
    sub_100002FF0(&qword_1000310D8, &qword_100023B00);
    sub_100002FF0(&qword_100031030, &qword_100023AA0);
    sub_100016DD4(&qword_1000310D0, &qword_100031030, &qword_100023AA0);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AppIconProtocol();
    sub_100002FF0(&qword_100030DD0, &qword_100023788);
    sub_1000126A0(&qword_1000310E8, &type metadata accessor for AppIconProtocol);
    sub_100016DD4(&qword_1000310C0, &qword_100030DD0, &qword_100023788);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PlayerMonogramProtocol();
    sub_1000126A0(&qword_1000310F8, &type metadata accessor for PlayerMonogramProtocol);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000126A0(&qword_100031100, &type metadata accessor for MediaArtwork.BundleImageProtocol);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for ContactAvatarProtocol();
    sub_1000126A0(&qword_100031110, &type metadata accessor for ContactAvatarProtocol);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100016DD4(&qword_100031120, &qword_100031128, &qword_100023B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031118);
  }

  return result;
}

uint64_t sub_1000135D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001360C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100016FCC;

  return sub_100009B34();
}

uint64_t sub_1000136A4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100016FCC;

  return sub_100009D04();
}

uint64_t sub_100013750(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013848;

  return v7(a1);
}

uint64_t sub_100013848()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100013940(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100016FCC;

  return sub_100013750(a1, v5);
}

unint64_t sub_1000139F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for EditorialPageKey();
  sub_1000126A0(&qword_100031228, &type metadata accessor for EditorialPageKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100013A90(a1, v5);
}

unint64_t sub_100013A90(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for EditorialPageKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1000126A0(&qword_100031230, &type metadata accessor for EditorialPageKey);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_100013C50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100013D1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000150A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002BA4(v11);
  return v7;
}

unint64_t sub_100013D1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100013E28(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100013E28(uint64_t a1, unint64_t a2)
{
  v4 = sub_100013E74(a1, a2);
  sub_100013FA4(&off_10002DCF8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100013E74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100014090(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100014090(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100013FA4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100014104(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100014090(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000021C8(&qword_1000311C0, &qword_100023C40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100014104(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C8(&qword_1000311C0, &qword_100023C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000141F8(char *a1, int64_t a2, char a3)
{
  result = sub_100014238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100014218(size_t a1, int64_t a2, char a3)
{
  result = sub_100014344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014238(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C8(&qword_1000311D0, &qword_100023C50);
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

size_t sub_100014344(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000021C8(&qword_1000311E0, &qword_100023C60);
  v10 = *(type metadata accessor for StoreTab() - 8);
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
  v15 = *(type metadata accessor for StoreTab() - 8);
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

uint64_t sub_10001451C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_100014610;

  return v6(v2 + 16);
}

uint64_t sub_100014610()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v4 = *(v1 + 24);
  *v3 = *(v1 + 16);
  v3[1] = v4;
  v5 = *(v7 + 8);

  return v5();
}

void (*sub_100014754(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000147D4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000147DC()
{
  result = qword_100031160;
  if (!qword_100031160)
  {
    sub_100015048(255, &qword_100031158, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031160);
  }

  return result;
}

uint64_t sub_10001484C()
{
  v1 = (type metadata accessor for AppBootstrapView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for BootstrapResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);

  v12 = v1[7];
  v13 = type metadata accessor for Bootstrap();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v14 = (v11 + v1[8]);
  v15 = *v14;

  v16 = v14[1];

  v17 = *(v11 + v1[9]);

  v18 = v1[10];
  swift_unknownObjectWeakDestroy();
  v19 = (v11 + v1[11]);
  v20 = *v19;

  v21 = v19[1];

  v22 = (v11 + v1[12]);
  v23 = *v22;

  v24 = v22[1];

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

void sub_100014A20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppBootstrapView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BootstrapResult() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_100007AD0(a1, (v2 + v6), v9, a2);
}

uint64_t sub_100014B2C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100014B58(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_100014B88()
{
  v2 = *(type metadata accessor for AppBootstrapView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for BootstrapResult() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100016FCC;

  return sub_10000821C(v7, v8, v0 + v3, v0 + v6);
}

uint64_t sub_100014CC8()
{
  v1 = (type metadata accessor for AppBootstrapView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for BootstrapResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = (v0 + v3);

  v13 = v1[7];
  v14 = type metadata accessor for Bootstrap();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);
  v15 = (v12 + v1[8]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(v12 + v1[9]);

  v19 = v1[10];
  swift_unknownObjectWeakDestroy();
  v20 = (v12 + v1[11]);
  v21 = *v20;

  v22 = v20[1];

  v23 = (v12 + v1[12]);
  v24 = *v23;

  v25 = v23[1];

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100014EA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppBootstrapView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BootstrapResult() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100016FCC;

  return sub_100008598(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_100014FF4()
{
  result = qword_1000311A8;
  if (!qword_1000311A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000311A8);
  }

  return result;
}

uint64_t sub_100015048(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000150A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10001511C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100015160(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031218, &qword_100023C80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000021C8(&qword_100031220, &qword_100023C88);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016928(v10, v6, &qword_100031218, &qword_100023C80);
      result = sub_1000139F8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for EditorialPageKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100015380()
{
  v1 = type metadata accessor for Player();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_100015408(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Player() - 8);
  v7[2] = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7[3] = a1;
  return sub_100004A70(sub_1000154A0, v7, a2);
}

uint64_t *sub_1000154BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100015524()
{
  v1 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000A194(v2);
}

uint64_t sub_100015584()
{
  v1 = (type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Bootstrap();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for BootstrapResult();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = type metadata accessor for Player();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  v11 = type metadata accessor for TabsInfoProvider();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  v12 = v1[11];
  swift_unknownObjectWeakDestroy();
  v13 = v1[12];
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001576C()
{
  v1 = (type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for Bootstrap();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = type metadata accessor for BootstrapResult();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v1[8];
  v11 = type metadata accessor for Player();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v1[9];
  v13 = type metadata accessor for TabsInfoProvider();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);

  v14 = v1[11];
  swift_unknownObjectWeakDestroy();
  v15 = v1[12];
  swift_unknownObjectWeakDestroy();
  v16 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10001593C()
{
  v2 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000297C;

  return sub_10000B64C(v4, v5, v0 + v3, v6);
}

uint64_t sub_100015A50()
{
  v1 = (type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Bootstrap();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for BootstrapResult();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for Player();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[9];
  v12 = type metadata accessor for TabsInfoProvider();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  v13 = v1[11];
  swift_unknownObjectWeakDestroy();
  v14 = v1[12];
  swift_unknownObjectWeakDestroy();
  v15 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100015C18()
{
  v1 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000B764(v0 + v2, v3);
}

uint64_t sub_100015CA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021C8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_100031258, &qword_100023CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015D7C()
{
  v1 = (type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for Bootstrap();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = type metadata accessor for BootstrapResult();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v1[8];
  v11 = type metadata accessor for Player();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v1[9];
  v13 = type metadata accessor for TabsInfoProvider();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);

  v14 = v1[11];
  swift_unknownObjectWeakDestroy();
  v15 = v1[12];
  swift_unknownObjectWeakDestroy();
  v16 = *(v0 + v4);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100015F5C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100016FCC;

  return sub_10000BA90(v10, a1, v7, v8, v1 + v5, v9);
}

uint64_t sub_100016094()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000160CC@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000A470(v4, a1);
}

uint64_t sub_10001613C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100016FCC;

  return sub_10001451C(a1, v5);
}

uint64_t sub_1000161F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000297C;

  return sub_10001451C(a1, v5);
}

uint64_t sub_1000162C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowAction.Destination();
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

    return (v10 + 1);
  }
}

uint64_t sub_100016390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FlowAction.Destination();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100016448()
{
  result = type metadata accessor for FlowAction.Destination();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BaseObjectGraph();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1000164CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000164E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100016528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100016584()
{
  sub_100002FF0(&qword_1000309E0, &unk_100023900);
  sub_100016DD4(&qword_100031320, &qword_1000309E0, &unk_100023900);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001661C()
{
  sub_100002FF0(&qword_100030F28, &qword_100023968);
  type metadata accessor for TabBarOnlyTabViewStyle();
  sub_100012888();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100016698()
{
  sub_100002FF0(&qword_100030998, &qword_100023608);
  sub_100002FF0(&qword_100031000, &qword_100023A70);
  sub_100002FF0(&qword_100031008, &qword_100023A78);
  sub_1000131B4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100016780()
{
  result = qword_100031328;
  if (!qword_100031328)
  {
    sub_100002FF0(&qword_100031250, &qword_100023CA0);
    sub_100016838();
    sub_100016DD4(&qword_100031348, &qword_100031350, &qword_100023D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031328);
  }

  return result;
}

unint64_t sub_100016838()
{
  result = qword_100031330;
  if (!qword_100031330)
  {
    sub_100002FF0(&qword_100031248, &qword_100023C98);
    sub_100016DD4(&qword_100031338, &qword_100031340, "~ ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031330);
  }

  return result;
}

uint64_t sub_100016928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000169B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000021C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100016A20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002FF0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100016ADC()
{
  result = qword_1000313D8;
  if (!qword_1000313D8)
  {
    sub_100002FF0(&qword_1000313B8, &qword_100023E88);
    sub_100016B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000313D8);
  }

  return result;
}

unint64_t sub_100016B60()
{
  result = qword_1000313E0;
  if (!qword_1000313E0)
  {
    sub_100002FF0(&qword_1000313E8, &qword_100023EA8);
    sub_100002FF0(&qword_1000313F0, &qword_100023EB0);
    sub_100002FF0(&qword_1000313F8, &qword_100023EB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000313E0);
  }

  return result;
}

unint64_t sub_100016C9C()
{
  result = qword_100031408;
  if (!qword_100031408)
  {
    sub_100002FF0(&qword_1000313C8, &qword_100023E98);
    sub_100002FF0(&qword_1000313C0, &qword_100023E90);
    sub_100002FF0(&qword_1000313B8, &qword_100023E88);
    sub_100016ADC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100016DD4(&qword_100031410, &qword_100031418, &qword_100023EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031408);
  }

  return result;
}

uint64_t sub_100016DD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002FF0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100016E20()
{
  result = qword_100031438;
  if (!qword_100031438)
  {
    sub_100002FF0(&unk_100031440, &unk_100023EE0);
    sub_100016DD4(&qword_100031388, &qword_100031378, &qword_100023E68);
    sub_100016DD4(&qword_100031390, &qword_100031368, &qword_100023E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031438);
  }

  return result;
}

uint64_t sub_100016F00()
{
  sub_100002FF0(&qword_1000313D0, &qword_100023EA0);
  sub_100002FF0(&qword_1000313C8, &qword_100023E98);
  sub_100016C9C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100016FEC()
{
  result = BaseObjectGraph.optional<A>(_:)();
  if (v7 == 2 || (v7 & 1) == 0)
  {
    v1 = type metadata accessor for ASDInAppPurchaseStateProvider();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    ASDInAppPurchaseStateProvider.init()();
    v4 = type metadata accessor for InAppPurchaseStateDataSource();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    InAppPurchaseStateDataSource.init(withStateProvider:)();
    InAppPurchaseStateDataSource.refreshData()();
    type metadata accessor for InAppPurchaseInstallPagePresenter();
    static InAppPurchaseInstallPagePresenter.use(stateDataSource:)();
    type metadata accessor for InAppPurchaseOfferButtonPresenter();
    static InAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
    type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
    static StreamlinedInAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
  }

  return result;
}

uint64_t sub_1000170D8(void *a1)
{
  v76 = a1;
  v1 = type metadata accessor for ModernAppStateDataSource();
  v2 = *(v1 - 8);
  v74 = v1;
  v75 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v80 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = v65 - v6;
  v68 = type metadata accessor for AppStoreType();
  v7 = *(v68 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v68);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeviceAppQuery();
  v67 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ASDDeviceAppFetcher();
  v73 = *(v16 - 8);
  v17 = v73;
  v18 = *(v73 + 64);
  __chkstk_darwin(v16);
  v20 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016FEC();
  updated = type metadata accessor for DeviceUpdateRegistry();
  v79 = DeviceUpdateRegistry.__allocating_init()();
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  ASDDeviceAppFetcher.init(regulatoryLogger:)();
  v77 = type metadata accessor for DeviceAppStateDataSource();
  v21 = v12 + 104;
  v22 = *(v12 + 104);
  *&v66 = v21;
  v23 = v15;
  v22(v15, enum case for DeviceAppQuery.betaApps(_:), v11);
  v78 = v16;
  *(&v87 + 1) = v16;
  v88 = &protocol witness table for ASDDeviceAppFetcher;
  v24 = sub_1000154BC(&v86);
  v25 = *(v17 + 16);
  v70 = v20;
  v25(v24, v20, v16);
  v71 = v25;
  v72 = v17 + 16;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v26 = enum case for AppStoreType.default(_:);
  v27 = v7 + 104;
  v28 = *(v7 + 104);
  v65[1] = v27;
  v29 = v68;
  v28(v10, enum case for AppStoreType.default(_:), v68);
  v65[0] = v23;
  v69 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  v22(v23, enum case for DeviceAppQuery.allStoreApps(_:), v67);
  v30 = v78;
  *(&v87 + 1) = v78;
  v88 = &protocol witness table for ASDDeviceAppFetcher;
  v31 = sub_1000154BC(&v86);
  v25(v31, v20, v30);
  *(&v84 + 1) = updated;
  v85 = &protocol witness table for DeviceUpdateRegistry;
  *&v83 = v79;
  v28(v10, v26, v29);

  v67 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  type metadata accessor for PurchaseHistoryAppStateDataSource();

  v32 = PurchaseHistoryAppStateDataSource.__allocating_init(asPartOf:)();
  sub_1000021C8(&qword_100031450, &qword_100023F48);
  v33 = type metadata accessor for App.Kind();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v66 = xmmword_100023680;
  *(v37 + 16) = xmmword_100023680;
  v38 = enum case for App.Kind.store(_:);
  v39 = *(v34 + 104);
  v39(v37 + v36, enum case for App.Kind.store(_:), v33);
  v68 = v32;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  type metadata accessor for RemotePersonalizationAppStateDataSource();

  v40 = RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)();
  v41 = swift_allocObject();
  *(v41 + 16) = v66;
  v39(v41 + v36, v38, v33);
  v76 = v40;
  v42 = v80;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  sub_1000021C8(&qword_100031458, &qword_100023F50);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100023EF0;
  v44 = type metadata accessor for WaitingAppStateDataSource();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = WaitingAppStateDataSource.init()();
  *(v43 + 56) = v44;
  *(v43 + 64) = &protocol witness table for WaitingAppStateDataSource;
  *(v43 + 32) = v47;
  v48 = v77;
  *(v43 + 96) = v77;
  *(v43 + 104) = &protocol witness table for DeviceAppStateDataSource;
  *(v43 + 72) = v69;
  *(v43 + 136) = v48;
  *(v43 + 144) = &protocol witness table for DeviceAppStateDataSource;
  *(v43 + 112) = v67;
  v49 = v74;
  *(v43 + 176) = v74;
  v50 = sub_1000178E0();
  *(v43 + 184) = v50;
  v51 = sub_1000154BC((v43 + 152));
  v52 = v75;
  v53 = *(v75 + 16);
  v53(v51, v82, v49);
  *(v43 + 216) = v49;
  *(v43 + 224) = v50;
  v54 = sub_1000154BC((v43 + 192));
  v53(v54, v42, v49);
  v55 = type metadata accessor for DefaultAppStateDataSource();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();

  v58 = DefaultAppStateDataSource.init()();
  *(v43 + 256) = v55;
  *(v43 + 264) = &protocol witness table for DefaultAppStateDataSource;
  *(v43 + 232) = v58;
  v59 = v78;
  *(&v87 + 1) = v78;
  v88 = &protocol witness table for ASDDeviceAppFetcher;
  v60 = sub_1000154BC(&v86);
  v61 = v70;
  v71(v60, v70, v59);
  *(&v84 + 1) = updated;
  v85 = &protocol witness table for DeviceUpdateRegistry;
  *&v83 = v79;

  v62 = makeModernAppStateController(deviceAppFetcher:updateRegistry:dataSources:)();

  v63 = *(v52 + 8);
  v63(v80, v49);
  v63(v82, v49);
  (*(v73 + 8))(v61, v59);
  sub_100002BA4(&v83);
  sub_100002BA4(&v86);
  return v62;
}

unint64_t sub_1000178E0()
{
  result = qword_100031460;
  if (!qword_100031460)
  {
    type metadata accessor for ModernAppStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031460);
  }

  return result;
}

void sub_100017938()
{
  v1 = type metadata accessor for BoolSettingKey();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin();
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [v0 launchedToTest];
  v6 = objc_opt_self();
  v7 = [v6 processInfo];
  v8 = [v7 environment];

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16) && (v10 = sub_100018070(0x446B636F4D657355, 0xEB00000000617461), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v13 = v5;
    v14 = *v12;
    v15 = v12[1];

    v16 = String._bridgeToObjectiveC()();
    v5 = v13;

    v17 = [v16 BOOLValue];
  }

  else
  {

    v17 = 2;
  }

  v18 = objc_opt_self();
  v19 = [v18 standardUserDefaults];
  v20 = v2[13];
  v55 = enum case for BoolSettingKey.mockPlayNowFeed(_:);
  v56 = v2 + 13;
  v54 = v20;
  v20(v5);
  BoolSettingKey.rawValue.getter();
  v53 = v2[1];
  v53(v5, v1);
  v21 = String._bridgeToObjectiveC()();

  v22 = [v19 valueForKey:v21];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61[0] = v59;
  v61[1] = v60;
  if (*(&v60 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = v58;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    sub_1000180E8(v61);
    v23 = 2;
  }

  v24 = [v6 processInfo];
  v25 = [v24 environment];

  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v26 + 16) && (v27 = sub_100018070(0xD000000000000015, 0x8000000100026870), (v28 & 1) != 0))
  {
    v29 = (*(v26 + 56) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];

    v32 = String._bridgeToObjectiveC()();

    v57 = [v32 BOOLValue];
  }

  else
  {
  }

  v33 = v57;
  HIDWORD(v52) = v23;
  if (v23 != 2)
  {
    v33 = v23;
  }

  if (v17 == 2)
  {
    v34 = v33;
  }

  else
  {
    v34 = v17;
  }

  if (qword_100030978 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100002B24(v35, qword_100031468);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *&v61[0] = swift_slowAlloc();
    *v38 = 67109890;
    *(v38 + 4) = v34 & 1;
    *(v38 + 8) = 2080;
    v39 = 1702195828;
    if ((v17 & 1) == 0)
    {
      v39 = 0x65736C6166;
    }

    v40 = 0xE500000000000000;
    if (v17)
    {
      v40 = 0xE400000000000000;
    }

    if (v17 == 2)
    {
      v41 = 7104878;
    }

    else
    {
      v41 = v39;
    }

    LODWORD(v52) = v34;
    if (v17 == 2)
    {
      v42 = 0xE300000000000000;
    }

    else
    {
      v42 = v40;
    }

    v43 = sub_100013C50(v41, v42, v61);

    *(v38 + 10) = v43;
    *(v38 + 18) = 2080;
    v44 = 0x65736C6166;
    if ((v52 & 0x100000000) != 0)
    {
      v44 = 1702195828;
    }

    v45 = 0xE400000000000000;
    if ((v52 & 0x100000000) == 0)
    {
      v45 = 0xE500000000000000;
    }

    if (HIDWORD(v52) == 2)
    {
      v46 = 7104878;
    }

    else
    {
      v46 = v44;
    }

    if (HIDWORD(v52) == 2)
    {
      v47 = 0xE300000000000000;
    }

    else
    {
      v47 = v45;
    }

    v48 = sub_100013C50(v46, v47, v61);

    *(v38 + 20) = v48;
    v49 = v52;
    *(v38 + 28) = 1024;
    *(v38 + 30) = v57;
    _os_log_impl(&_mh_execute_header, v36, v37, "Mock data enablement: %{BOOL}d; enabledViaEnvironment: %s, enabledViaUserDefaults: %s, isLaunchedForPerformanceTesting: %{BOOL}d", v38, 0x22u);
    swift_arrayDestroy();
  }

  else
  {

    v49 = v34;
  }

  v50 = [v18 standardUserDefaults];
  v54(v5, v55, v1);
  BoolSettingKey.rawValue.getter();
  v53(v5, v1);
  v51 = String._bridgeToObjectiveC()();

  [v50 setBool:v49 & 1 forKey:v51];
}

uint64_t sub_100017FC0()
{
  v0 = type metadata accessor for Logger();
  sub_100002BF0(v0, qword_100031468);
  sub_100002B24(v0, qword_100031468);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100018070(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100018194(a1, a2, v6);
}

uint64_t sub_1000180E8(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031480, &qword_100023F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100018150(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001824C(a1, v4);
}

unint64_t sub_100018194(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10001824C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012DA8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100016A88(v8);
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

uint64_t sub_100018314@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for MoltresApp(0);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000021C8(&qword_100031548, &qword_100023FF0);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = sub_1000021C8(&qword_100031550, &qword_100023FF8);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_1000021C8(&qword_100031558, &qword_100024000);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_1000021C8(&qword_100031560, &qword_100024008);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  sub_10001E690(v2, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoltresApp);
  v23 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v24 = swift_allocObject();
  sub_10001E6FC(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for MoltresApp);
  sub_1000021C8(&qword_100031568, &qword_100024010);
  v25 = sub_100002FF0(&qword_100031570, &qword_100024018);
  v26 = type metadata accessor for MoltresApp.WindowContentView(255);
  v27 = sub_10001D7A4(&qword_100031578, type metadata accessor for MoltresApp.WindowContentView);
  v45 = v26;
  v46 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v25;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  v29 = sub_100016DD4(&qword_100031580, &qword_100031548, &qword_100023FF0);
  Scene.extendedLaunchTestName(_:)();
  (*(v38 + 8))(v8, v5);
  sub_10001D95C(&off_10002DD20);
  sub_10001DAC4(&unk_10002DD40);
  v45 = v5;
  v46 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  Scene.handlesExternalEvents(matching:)();

  (*(v39 + 8))(v12, v9);
  v31 = sub_1000021C8(&qword_100031588, &qword_100024020);
  v45 = v9;
  v46 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_100016DD4(&qword_100031590, &qword_100031588, &qword_100024020);
  v34 = v40;
  Scene.commands<A>(content:)();
  (*(v41 + 8))(v17, v34);
  v45 = v34;
  v46 = v31;
  v47 = v32;
  v48 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v42;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v43 + 8))(v22, v35);
}

uint64_t sub_10001893C()
{
  started = type metadata accessor for JetStartUpDecoration();
  v1 = *(started - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(started);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MoltresApp.WindowContentView(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000021C8(&qword_100031570, &qword_100024018);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  sub_100018E90(0, v8);
  (*(v1 + 104))(v4, enum case for JetStartUpDecoration.tabBar(_:), started);
  v14 = sub_10001D7A4(&qword_100031578, type metadata accessor for MoltresApp.WindowContentView);
  View.startUpDecoration(_:)();
  (*(v1 + 8))(v4, started);
  sub_10001E630(v8, type metadata accessor for MoltresApp.WindowContentView);
  sub_10001D95C(&off_10002DD50);
  sub_10001DAC4(&unk_10002DD70);
  sub_10001D95C(&off_10002DD80);
  sub_10001DAC4(&unk_10002DDA0);
  v16[0] = v5;
  v16[1] = v14;
  swift_getOpaqueTypeConformance2();
  View.handlesExternalEvents(preferring:allowing:)();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100018C1C()
{
  v0 = sub_1000021C8(&qword_100031598, &qword_100024028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v18 - v2;
  v4 = type metadata accessor for CommandGroupPlacement();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000021C8(&qword_1000315A0, &qword_100024030);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  static CommandGroupPlacement.sidebar.getter();
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.toolbar.getter();
  CommandGroup.init(replacing:addition:)();
  v14 = *(v0 + 48);
  v15 = v7[2];
  v15(v3, v13, v6);
  v15(&v3[v14], v11, v6);
  TupleCommandContent.init(_:)();
  v16 = v7[1];
  v16(v11, v6);
  return (v16)(v13, v6);
}

uint64_t sub_100018E90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a1;
  v3 = sub_1000021C8(&qword_1000315B0, &qword_100024040);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for OpenDeepLinkAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  JSNativeIntent = makeJSNativeIntentDispatcher()();
  sub_1000021C8(&qword_1000315B8, &qword_100024048);
  State.init(wrappedValue:)();
  v18 = v31;
  *a2 = v30;
  a2[1] = v18;
  v19 = type metadata accessor for MoltresApp.WindowContentView(0);
  v20 = v19[5];
  OpenDeepLinkAction.init(forSceneDelegate:)();
  (*(v11 + 16))(v15, v17, v10);
  State.init(wrappedValue:)();
  (*(v11 + 8))(v17, v10);
  v21 = a2 + v19[6];
  LOBYTE(JSNativeIntent) = 0;
  State.init(wrappedValue:)();
  v22 = v31;
  *v21 = v30;
  *(v21 + 1) = v22;
  v23 = v19[7];
  v24 = type metadata accessor for DeepLink();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  sub_100016928(v9, v7, &qword_1000315B0, &qword_100024040);
  State.init(wrappedValue:)();
  sub_1000169B0(v9, &qword_1000315B0, &qword_100024040);
  v25 = v19[8];
  *(a2 + v25) = swift_getKeyPath();
  sub_1000021C8(&qword_1000315C0, &qword_100024080);
  swift_storeEnumTagMultiPayload();
  v26 = v19[9];
  *(a2 + v26) = swift_getKeyPath();
  sub_1000021C8(&qword_100031358, &unk_100023E40);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v19[10]) = v28;
  return result;
}

uint64_t sub_1000191B4()
{
  v0 = type metadata accessor for Logger();
  sub_100002BF0(v0, qword_100031488);
  sub_100002B24(v0, qword_100031488);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100019264@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021C8(&qword_1000315C0, &qword_100024080);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MoltresApp.WindowContentView(0);
  sub_100016928(v1 + *(v12 + 32), v11, &qword_1000315C0, &qword_100024080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10001946C@<X0>(uint64_t a1@<X8>)
{
  v177 = a1;
  v178 = type metadata accessor for OpenDeepLinkAction();
  v176 = *(v178 - 8);
  v2 = *(v176 + 64);
  __chkstk_darwin(v178);
  v175 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for ScenePhase();
  v173 = *(v174 - 8);
  v4 = *(v173 + 64);
  __chkstk_darwin(v174);
  v172 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MoltresApp.WindowContentView(0);
  v171 = *(v6 - 8);
  v7 = *(v171 + 64);
  __chkstk_darwin(v6);
  v184 = v8;
  v185 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for UserInterfaceSizeClass();
  v152 = *(v148 - 8);
  v9 = *(v152 + 64);
  __chkstk_darwin(v148);
  v133 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1000021C8(&qword_1000316C0, &unk_100024158);
  v11 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v151 = &v133 - v12;
  v13 = sub_1000021C8(&qword_100031360, &qword_1000240C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v134 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v180 = &v133 - v18;
  __chkstk_darwin(v17);
  v181 = &v133 - v19;
  v163 = type metadata accessor for TabBarScrollCollapseMode();
  v162 = *(v163 - 8);
  v20 = *(v162 + 64);
  __chkstk_darwin(v163);
  v159 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v144 = &v133 - v24;
  v143 = type metadata accessor for ASKBootstrapV2.TargetType();
  v141 = *(v143 - 8);
  v25 = *(v141 + 64);
  __chkstk_darwin(v143);
  v142 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000021C8(&qword_1000316C8, &qword_100024168);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v140 = &v133 - v29;
  v139 = type metadata accessor for Bag.Profile();
  v30 = *(v139 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v139);
  v33 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000021C8(&qword_1000316D0, &qword_100024170);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v133 - v36;
  v38 = type metadata accessor for AppBootstrapView(0);
  v39 = *(*(v38 - 1) + 64);
  __chkstk_darwin(v38);
  v41 = (&v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = sub_1000021C8(&qword_1000316D8, &qword_100024178);
  v150 = *(v154 - 8);
  v42 = *(v150 + 64);
  __chkstk_darwin(v154);
  v179 = &v133 - v43;
  v156 = sub_1000021C8(&qword_1000316E0, &qword_100024180);
  v155 = *(v156 - 8);
  v44 = *(v155 + 64);
  __chkstk_darwin(v156);
  v153 = &v133 - v45;
  v160 = sub_1000021C8(&qword_1000316E8, &qword_100024188);
  v157 = *(v160 - 8);
  v46 = *(v157 + 64);
  __chkstk_darwin(v160);
  v183 = &v133 - v47;
  v165 = sub_1000021C8(&qword_1000316F0, &qword_100024190);
  v161 = *(v165 - 8);
  v48 = *(v161 + 64);
  __chkstk_darwin(v165);
  v158 = &v133 - v49;
  v168 = sub_1000021C8(&qword_1000316F8, &qword_100024198);
  v166 = *(v168 - 8);
  v50 = *(v166 + 64);
  __chkstk_darwin(v168);
  v164 = &v133 - v51;
  v170 = sub_1000021C8(&qword_100031700, &qword_1000241A0);
  v169 = *(v170 - 8);
  v52 = *(v169 + 64);
  __chkstk_darwin(v170);
  v167 = &v133 - v53;
  v54 = v1 + *(v6 + 24);
  v55 = *v54;
  v56 = *(v54 + 1);
  v147 = v55;
  LOBYTE(v187) = v55;
  v146 = v56;
  *(&v187 + 1) = v56;
  v145 = sub_1000021C8(&qword_100031708, &qword_1000241A8);
  State.projectedValue.getter();
  v138 = v190;
  v137 = v191;
  v136 = v192;
  v57 = v1[1];
  v190 = *v1;
  v191 = v57;
  sub_1000021C8(&qword_100031710, &unk_1000241B0);
  State.wrappedValue.getter();
  v58 = v187;
  v182 = v6;
  v59 = *(v6 + 40);
  v186 = v1;
  v60 = *(v1 + v59);
  v61 = v38[8];
  swift_unknownObjectWeakInit();
  v62 = (v41 + v38[9]);
  v63 = sub_1000021C8(&qword_100030DD0, &qword_100023788);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v135 = v60;

  *&v187 = LRUMultiCache.init(keyLimit:valueLimit:)();
  State.init(wrappedValue:)();
  v66 = v191;
  *v62 = v190;
  v62[1] = v66;
  v67 = (v41 + v38[10]);
  v68 = sub_1000021C8(&qword_100031718, &qword_1000241C0);
  (*(*(v68 - 8) + 56))(v37, 1, 1, v68);
  v69 = type metadata accessor for ImpedimentFlowDestinationStates();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  *&v187 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
  State.init(wrappedValue:)();
  v72 = v191;
  *v67 = v190;
  v67[1] = v72;
  v73 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.registerGamesDefaults()();

  if (qword_100030950 != -1)
  {
    swift_once();
  }

  v74 = v139;
  v75 = sub_100002B24(v139, qword_100030B60);
  (*(v30 + 16))(v33, v75, v74);
  v76 = v140;
  static BagOfflinePolicy.standard.getter();
  v77 = type metadata accessor for BagOfflinePolicy();
  (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
  v193 = &type metadata for ModernAppStateControllerFactory;
  v194 = sub_10001E40C();
  (*(v141 + 104))(v142, enum case for ASKBootstrapV2.TargetType.app(_:), v143);
  *(swift_allocObject() + 16) = v58;
  v78 = type metadata accessor for URL();
  (*(*(v78 - 8) + 56))(v144, 1, 1, v78);
  v189 = 0;
  v187 = 0u;
  v188 = 0u;
  v79 = v38[5];
  v80 = v58;
  Bootstrap.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:objectGraphName:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)();
  *v41 = v80;
  v81 = v41 + v38[6];
  v82 = v137;
  *v81 = v138;
  *(v81 + 1) = v82;
  v81[16] = v136;
  *(v41 + v38[7]) = v135;
  v83 = sub_10001D7A4(&qword_100031728, type metadata accessor for AppBootstrapView);
  View.limitDynamicTypeSizeForSeedBuild()();
  sub_10001E630(v41, type metadata accessor for AppBootstrapView);
  v84 = v181;
  v85 = v186 + *(v182 + 36);
  sub_100012B24(v181);
  v86 = v152;
  v87 = v180;
  v88 = v148;
  (*(v152 + 104))(v180, enum case for UserInterfaceSizeClass.compact(_:), v148);
  (*(v86 + 56))(v87, 0, 1, v88);
  v89 = *(v149 + 48);
  v90 = v151;
  sub_100016928(v84, v151, &qword_100031360, &qword_1000240C0);
  sub_100016928(v87, v90 + v89, &qword_100031360, &qword_1000240C0);
  v91 = *(v86 + 48);
  if (v91(v90, 1, v88) == 1)
  {
    sub_1000169B0(v180, &qword_100031360, &qword_1000240C0);
    sub_1000169B0(v181, &qword_100031360, &qword_1000240C0);
    if (v91(v90 + v89, 1, v88) == 1)
    {
      sub_1000169B0(v90, &qword_100031360, &qword_1000240C0);
      v92 = v159;
      v93 = v179;
LABEL_11:
      static TabBarScrollCollapseMode.always.getter();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v94 = v134;
  sub_100016928(v90, v134, &qword_100031360, &qword_1000240C0);
  if (v91(v90 + v89, 1, v88) == 1)
  {
    sub_1000169B0(v180, &qword_100031360, &qword_1000240C0);
    sub_1000169B0(v181, &qword_100031360, &qword_1000240C0);
    (*(v86 + 8))(v94, v88);
LABEL_8:
    sub_1000169B0(v90, &qword_1000316C0, &unk_100024158);
    v92 = v159;
    v93 = v179;
    goto LABEL_9;
  }

  v95 = v133;
  (*(v86 + 32))(v133, v90 + v89, v88);
  sub_10001D7A4(&qword_100031738, &type metadata accessor for UserInterfaceSizeClass);
  v96 = v94;
  v97 = dispatch thunk of static Equatable.== infix(_:_:)();
  v98 = *(v86 + 8);
  v98(v95, v88);
  sub_1000169B0(v180, &qword_100031360, &qword_1000240C0);
  sub_1000169B0(v181, &qword_100031360, &qword_1000240C0);
  v98(v96, v88);
  sub_1000169B0(v90, &qword_100031360, &qword_1000240C0);
  v92 = v159;
  v93 = v179;
  if (v97)
  {
    goto LABEL_11;
  }

LABEL_9:
  static TabBarScrollCollapseMode.automatic.getter();
LABEL_12:
  v190 = v38;
  v191 = v83;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = v153;
  v101 = v154;
  View.tabBarCollapsesOnScroll(_:)();
  (*(v162 + 8))(v92, v163);
  (*(v150 + 8))(v93, v101);
  LOBYTE(v190) = v147;
  v191 = v146;
  State.wrappedValue.getter();
  v102 = v185;
  sub_10001E690(v186, v185, type metadata accessor for MoltresApp.WindowContentView);
  v103 = (*(v171 + 80) + 16) & ~*(v171 + 80);
  v181 = *(v171 + 80);
  v104 = swift_allocObject();
  sub_10001E6FC(v102, v104 + v103, type metadata accessor for MoltresApp.WindowContentView);
  v190 = v101;
  v191 = OpaqueTypeConformance2;
  v105 = swift_getOpaqueTypeConformance2();
  v106 = v156;
  View.onChange<A>(of:initial:_:)();

  (*(v155 + 8))(v100, v106);
  v107 = v172;
  v108 = v186;
  sub_100019264(v172);
  v109 = v108;
  v110 = v185;
  sub_10001E690(v109, v185, type metadata accessor for MoltresApp.WindowContentView);
  v111 = swift_allocObject();
  sub_10001E6FC(v110, v111 + v103, type metadata accessor for MoltresApp.WindowContentView);
  v190 = v106;
  v191 = &type metadata for Bool;
  v192 = v105;
  v193 = &protocol witness table for Bool;
  v180 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v179 = swift_getOpaqueTypeConformance2();
  v112 = sub_10001D7A4(&qword_100031730, &type metadata accessor for ScenePhase);
  v113 = v158;
  v114 = v160;
  v115 = v174;
  v116 = v183;
  View.onChange<A>(of:initial:_:)();

  (*(v173 + 8))(v107, v115);
  (*(v157 + 8))(v116, v114);
  v118 = v185;
  v117 = v186;
  sub_10001E690(v186, v185, type metadata accessor for MoltresApp.WindowContentView);
  v119 = swift_allocObject();
  sub_10001E6FC(v118, v119 + v103, type metadata accessor for MoltresApp.WindowContentView);
  v190 = v114;
  v191 = v115;
  v192 = v179;
  v193 = v112;
  v120 = swift_getOpaqueTypeConformance2();
  v121 = v164;
  v122 = v165;
  View.onOpenURL(perform:)();

  (*(v161 + 8))(v113, v122);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v117;
  v124 = v185;
  sub_10001E690(v123, v185, type metadata accessor for MoltresApp.WindowContentView);
  v125 = swift_allocObject();
  sub_10001E6FC(v124, v125 + v103, type metadata accessor for MoltresApp.WindowContentView);
  v190 = v122;
  v191 = v120;
  v126 = swift_getOpaqueTypeConformance2();
  v127 = v167;
  v128 = v168;
  View.onContinueUserActivity(_:perform:)();

  (*(v166 + 8))(v121, v128);
  v129 = *(v182 + 20);
  sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
  v130 = v175;
  State.wrappedValue.getter();
  v190 = v128;
  v191 = v126;
  swift_getOpaqueTypeConformance2();
  v131 = v170;
  View.openDeepLinkAction(_:)();
  (*(v176 + 8))(v130, v178);
  return (*(v169 + 8))(v127, v131);
}

uint64_t sub_10001AB30(uint64_t a1, unsigned __int8 *a2)
{
  v3 = type metadata accessor for ScenePhase();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *a2;
  if (qword_100030980 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100002B24(v12, qword_100031488);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67240192;
    *(v15 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v13, v14, "isBootstrapping changed: %{BOOL,public}d", v15, 8u);
  }

  sub_100019264(v10);
  (*(v4 + 104))(v8, enum case for ScenePhase.active(_:), v3);
  v16 = static ScenePhase.== infix(_:_:)();
  v17 = *(v4 + 8);
  v17(v8, v3);
  v17(v10, v3);
  return sub_10001AD54(v11, v16 & 1);
}

uint64_t sub_10001AD54(char a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  __chkstk_darwin(v5);
  v86 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  v8 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MoltresApp.WindowContentView(0);
  v78 = *(v10 - 8);
  v11 = *(v78 + 64);
  __chkstk_darwin(v10);
  v79 = v12;
  v80 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchTime();
  v83 = *(v90 - 8);
  v13 = *(v83 + 64);
  v14 = __chkstk_darwin(v90);
  v77 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v64 - v16;
  v17 = sub_1000021C8(&qword_1000315B0, &qword_100024040);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v76 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v64 - v22;
  __chkstk_darwin(v21);
  v25 = &v64 - v24;
  v26 = type metadata accessor for DeepLink();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v30 = __chkstk_darwin(v29);
  v32 = &v64 - v31;
  result = __chkstk_darwin(v30);
  if (a1 & 1) == 0 && (a2)
  {
    v36 = v35;
    v81 = &v64 - v34;
    v37 = *(v10 + 28);
    v75 = v2;
    v38 = v2 + v37;
    v39 = sub_1000021C8(&qword_1000315D0, &qword_1000240D0);
    State.wrappedValue.getter();
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      return sub_1000169B0(v25, &qword_1000315B0, &qword_100024040);
    }

    else
    {
      v68 = v39;
      v69 = v38;
      v40 = *(v27 + 32);
      v41 = v81;
      v73 = v27 + 32;
      v72 = v40;
      v40(v81, v25, v26);
      if (qword_100030980 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100002B24(v42, qword_100031488);
      v74 = *(v27 + 16);
      v74(v32, v41, v26);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v45 = 141558274;
        *(v45 + 4) = 1752392040;
        *(v45 + 12) = 2080;
        v74(v36, v32, v26);
        v65 = String.init<A>(describing:)();
        v67 = v27 + 16;
        v47 = v46;
        v48 = *(v27 + 8);
        v70 = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v49 = v32;
        v50 = v36;
        v71 = v48;
        v48(v49, v26);
        v51 = sub_100013C50(v65, v47, aBlock);

        *(v45 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v43, v44, "isBootstrapping - calling openDeepLinkAction with pendingDeepLink %{mask.hash}s", v45, 0x16u);
        sub_100002BA4(v66);
      }

      else
      {

        v52 = *(v27 + 8);
        v70 = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v71 = v52;
        v52(v32, v26);
        v50 = v36;
      }

      (*(v27 + 56))(v23, 1, 1, v26);
      sub_100016928(v23, v76, &qword_1000315B0, &qword_100024040);
      State.wrappedValue.setter();
      sub_1000169B0(v23, &qword_1000315B0, &qword_100024040);
      sub_10001EF88();
      v76 = static OS_dispatch_queue.main.getter();
      v53 = v77;
      static DispatchTime.now()();
      v54 = v82;
      + infix(_:_:)();
      v83 = *(v83 + 8);
      (v83)(v53, v90);
      v55 = v80;
      sub_10001E690(v75, v80, type metadata accessor for MoltresApp.WindowContentView);
      v74(v50, v81, v26);
      v56 = (*(v78 + 80) + 16) & ~*(v78 + 80);
      v57 = (v79 + *(v27 + 80) + v56) & ~*(v27 + 80);
      v58 = swift_allocObject();
      sub_10001E6FC(v55, v58 + v56, type metadata accessor for MoltresApp.WindowContentView);
      v72(v58 + v57, v50, v26);
      aBlock[4] = sub_10001F348;
      aBlock[5] = v58;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001D350;
      aBlock[3] = &unk_10002E328;
      v59 = _Block_copy(aBlock);

      v60 = v84;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10001D7A4(&qword_100031790, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000021C8(&qword_100031798, &qword_100024220);
      sub_100016DD4(&qword_1000317A0, &qword_100031798, &qword_100024220);
      v61 = v86;
      v62 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v63 = v76;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v59);

      (*(v88 + 8))(v61, v62);
      (*(v85 + 8))(v60, v87);
      (v83)(v54, v90);
      return v71(v81, v26);
    }
  }

  return result;
}

uint64_t sub_10001B71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v8, enum case for ScenePhase.active(_:), v4);
  v9 = static ScenePhase.== infix(_:_:)();
  (*(v5 + 8))(v8, v4);
  if (qword_100030980 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002B24(v10, qword_100031488);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = v9 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "isAppActive changed: %{BOOL,public}d", v13, 8u);
  }

  v14 = a3 + *(type metadata accessor for MoltresApp.WindowContentView(0) + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  v18[16] = v15;
  v19 = v16;
  sub_1000021C8(&qword_100031708, &qword_1000241A8);
  State.wrappedValue.getter();
  return sub_10001AD54(v18[15], v9 & 1);
}

uint64_t sub_10001B934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_100031760, &qword_1000241F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeepLink();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  sub_100016928(a2, v7, &qword_100031760, &qword_1000241F8);
  sub_10001BB24(v12, v7, v17);
  sub_10001C088(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_10001BB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000021C8(&qword_100031760, &qword_1000241F8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v41 = &v40 - v11;
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = *(v15 + 16);
  v47 = a1;
  v18(&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v45 = a3;
  DeepLink.init(url:)();
  sub_1000021C8(&qword_100031768, &qword_100024200);
  v19 = (sub_1000021C8(&qword_100031770, &qword_100024208) - 8);
  v20 = *(*v19 + 72);
  v21 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100023680;
  v23 = (v22 + v21);
  v24 = v19[14];
  *v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23[1] = v25;
  v46 = a2;
  sub_100016928(a2, v13, &qword_100031760, &qword_1000241F8);
  v26 = type metadata accessor for OpenURLOptions();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v13, 1, v26);
  v43 = v15;
  v44 = v14;
  if (v29 == 1)
  {
    sub_1000169B0(v13, &qword_100031760, &qword_1000241F8);
    (*(v15 + 56))(v23 + v24, 1, 1, v14);
  }

  else
  {
    OpenURLOptions.referrerURL.getter();
    (*(v27 + 8))(v13, v26);
  }

  v30 = sub_10001EC24(v22);
  swift_setDeallocating();
  sub_1000169B0(v23, &qword_100031770, &qword_100024208);
  swift_deallocClassInstance();
  v49 = sub_1000021C8(&qword_100031778, &qword_100024210);
  v48 = v30;
  DeepLink.annotation.setter();
  v31 = v46;
  v32 = v41;
  sub_100016928(v46, v41, &qword_100031760, &qword_1000241F8);
  v33 = v28(v32, 1, v26);
  v34 = v42;
  if (v33 == 1)
  {
    sub_1000169B0(v32, &qword_100031760, &qword_1000241F8);
  }

  else
  {
    OpenURLOptions.sourceApplication.getter();
    (*(v27 + 8))(v32, v26);
  }

  DeepLink.sourceApplication.setter();
  sub_100016928(v31, v34, &qword_100031760, &qword_1000241F8);
  if (v28(v34, 1, v26) == 1)
  {
    sub_1000169B0(v34, &qword_100031760, &qword_1000241F8);
    v36 = v43;
    v35 = v44;
  }

  else
  {
    v37 = OpenURLOptions.originatingProcess.getter();
    (*(v27 + 8))(v34, v26);
    v36 = v43;
    if (v37)
    {
      v38 = [v37 bundleIdentifier];

      v35 = v44;
      if (v38)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    else
    {
      v35 = v44;
    }
  }

  DeepLink.sourceProcess.setter();
  sub_1000169B0(v31, &qword_100031760, &qword_1000241F8);
  return (*(v36 + 8))(v47, v35);
}

uint64_t sub_10001C088(uint64_t a1)
{
  v74 = a1;
  v2 = sub_1000021C8(&qword_1000315B0, &qword_100024040);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v66 - v6;
  v7 = type metadata accessor for OpenDeepLinkAction();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v67 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeepLink();
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v66 = &v66 - v16;
  __chkstk_darwin(v15);
  v18 = &v66 - v17;
  v19 = type metadata accessor for ScenePhase();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v66 - v25;
  sub_100019264(&v66 - v25);
  (*(v20 + 104))(v24, enum case for ScenePhase.active(_:), v19);
  v27 = static ScenePhase.== infix(_:_:)();
  v28 = *(v20 + 8);
  v28(v24, v19);
  v28(v26, v19);
  v29 = type metadata accessor for MoltresApp.WindowContentView(0);
  v30 = *(v29 + 24);
  v72 = v1;
  v31 = (v1 + v30);
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v76[0]) = v32;
  v76[1] = v33;
  sub_1000021C8(&qword_100031708, &qword_1000241A8);
  State.wrappedValue.getter();
  if ((v75 & 1) != 0 || (v27 & 1) == 0)
  {
    if (qword_100030980 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100002B24(v46, qword_100031488);
    v47 = v73;
    v48 = v74;
    v49 = *(v73 + 16);
    v49(v14, v74, v10);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v69 = v49;
      v54 = v53;
      v76[0] = v53;
      *v52 = 141558274;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2080;
      v69(v66, v14, v10);
      v55 = String.init<A>(describing:)();
      v56 = v29;
      v58 = v57;
      (*(v73 + 8))(v14, v10);
      v59 = v55;
      v47 = v73;
      v60 = sub_100013C50(v59, v58, v76);
      v29 = v56;

      *(v52 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "handleDeepLink - storing pendingDeepLink %{mask.hash}s", v52, 0x16u);
      sub_100002BA4(v54);
      v49 = v69;

      v48 = v74;
    }

    else
    {

      (*(v47 + 8))(v14, v10);
    }

    v61 = v70;
    v49(v70, v48, v10);
    (*(v47 + 56))(v61, 0, 1, v10);
    v62 = *(v29 + 28);
    sub_100016928(v61, v71, &qword_1000315B0, &qword_100024040);
    sub_1000021C8(&qword_1000315D0, &qword_1000240D0);
    State.wrappedValue.setter();
    return sub_1000169B0(v61, &qword_1000315B0, &qword_100024040);
  }

  else
  {
    v71 = v29;
    if (qword_100030980 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100002B24(v34, qword_100031488);
    v35 = v73;
    v36 = *(v73 + 16);
    v36(v18, v74, v10);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v35;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v76[0] = v41;
      *v40 = 141558274;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2080;
      v36(v66, v18, v10);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      (*(v39 + 8))(v18, v10);
      v45 = sub_100013C50(v42, v44, v76);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "handleDeepLink - calling openDeepLinkAction %{mask.hash}s", v40, 0x16u);
      sub_100002BA4(v41);
    }

    else
    {

      (*(v35 + 8))(v18, v10);
    }

    v64 = *(v71 + 20);
    sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
    v65 = v67;
    State.wrappedValue.getter();
    OpenDeepLinkAction.callAsFunction(_:)();
    return (*(v68 + 8))(v65, v69);
  }
}

void sub_10001C848(void *a1, uint64_t a2)
{
  v84 = a2;
  v3 = sub_1000021C8(&qword_100030FE8, &qword_1000241D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v82 = &v73 - v5;
  v83 = type metadata accessor for DeepLink();
  v81 = *(v83 - 8);
  v6 = *(v81 + 64);
  __chkstk_darwin(v83);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v73 - v15;
  __chkstk_darwin(v14);
  v18 = &v73 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v73 - v26;
  __chkstk_darwin(v25);
  v85 = &v73 - v28;
  v29 = [a1 userInfo];
  if (!v29)
  {
    v90 = 0u;
    v89 = 0u;
    goto LABEL_10;
  }

  v30 = v29;
  v78 = v8;
  v79 = v20;
  v80 = v19;
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v32;
  AnyHashable.init<A>(_:)();
  if (!*(v31 + 16) || (v33 = sub_100018150(v88), (v34 & 1) == 0))
  {

    sub_100016A88(v88);
    v89 = 0u;
    v90 = 0u;
    goto LABEL_10;
  }

  sub_1000150A0(*(v31 + 56) + 32 * v33, &v89);
  sub_100016A88(v88);

  if (!*(&v90 + 1))
  {
LABEL_10:
    v39 = &qword_100031480;
    v40 = &qword_100023F60;
    v41 = &v89;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_100030980 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100002B24(v42, qword_100031488);
    v43 = a1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 141558274;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2112;
      *(v46 + 14) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "Spotlight UserActivity not handled %{mask.hash}@", v46, 0x16u);
      sub_1000169B0(v47, &qword_1000311A0, &qword_100023C30);
    }

    return;
  }

  v35 = v88[0];
  v77 = v88[1];
  URL.init(string:)();
  v36 = v79;
  v37 = v79 + 48;
  v38 = v80;
  v76 = *(v79 + 48);
  if (v76(v18, 1, v80) == 1)
  {

    v39 = &qword_100030FE0;
    v40 = &unk_100023A50;
    v41 = v18;
LABEL_11:
    sub_1000169B0(v41, v39, v40);
    goto LABEL_12;
  }

  v75 = v37;
  v49 = *(v36 + 32);
  v49(v85, v18, v38);
  v50 = v77;
  if (v35 == 0xD000000000000014 && 0x80000001000267F0 == v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v74 = v35;
    URL.init(string:)();
    v51 = v80;
    if (v76(v16, 1, v80) == 1)
    {
      __break(1u);
    }

    else
    {
      v49(v27, v16, v51);
      v52 = v79;
      v76 = *(v79 + 16);
      v76(v24, v27, v51);
      v53 = v78;
      DeepLink.init(url:)();
      sub_1000021C8(&qword_100031740, &qword_1000241D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100023680;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v74;
      *(inited + 40) = v56;
      *(inited + 48) = v55;
      *(inited + 56) = v77;
      v57 = sub_10001EE04(inited);
      swift_setDeallocating();
      sub_1000169B0(inited + 32, &qword_100031748, &qword_1000241E0);
      v88[3] = sub_1000021C8(&qword_100031750, &qword_1000241E8);
      v88[0] = v57;
      DeepLink.annotation.setter();
      v58 = v85;
      v76(v13, v85, v51);
      (*(v52 + 56))(v13, 0, 1, v51);
      v59 = a1;
      v60 = v82;
      ReferrerData.Kind.init(userActivity:url:refApp:)();
      v61 = type metadata accessor for ReferrerData.Kind();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      DeepLink.referrerKind.setter();
      sub_10001C088(v53);
      (*(v81 + 8))(v53, v83);
      v62 = *(v52 + 8);
      v62(v27, v51);
      v62(v58, v51);
    }
  }

  else
  {
    v63 = v35;
    if (qword_100030980 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100002B24(v64, qword_100031488);
    v65 = a1;

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v88[0] = v70;
      *v68 = 141558786;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2080;
      v71 = sub_100013C50(v63, v50, v88);

      *(v68 + 14) = v71;
      *(v68 + 22) = 2160;
      *(v68 + 24) = 1752392040;
      *(v68 + 32) = 2112;
      *(v68 + 34) = v65;
      *v69 = v65;
      v72 = v65;
      _os_log_impl(&_mh_execute_header, v66, v67, "Spotlight UserActivity identifier not handled %{mask.hash}s, %{mask.hash}@", v68, 0x2Au);
      sub_1000169B0(v69, &qword_1000311A0, &qword_100023C30);

      sub_100002BA4(v70);
    }

    else
    {
    }

    (*(v79 + 8))(v85, v80);
  }
}

uint64_t sub_10001D250()
{
  v0 = type metadata accessor for OpenDeepLinkAction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for MoltresApp.WindowContentView(0) + 20);
  sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
  State.wrappedValue.getter();
  OpenDeepLinkAction.callAsFunction(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10001D350(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10001D39C()
{
  v0 = type metadata accessor for AppDelegate();

  return UIApplicationDelegateAdaptor.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for MoltresApp(0);
  sub_10001D7A4(&qword_1000314A0, type metadata accessor for MoltresApp);
  static App.main()();
  return 0;
}

uint64_t sub_10001D47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_1000314A8, &qword_100023F90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001D508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_1000314A8, &qword_100023F90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10001D584()
{
  sub_10001E21C(319, &unk_100031518, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10001D63C()
{
  v1 = *(type metadata accessor for MoltresApp(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1000021C8(&qword_1000314A8, &qword_100023F90);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001D714()
{
  v0 = *(*(type metadata accessor for MoltresApp(0) - 8) + 80);

  return sub_10001893C();
}

uint64_t sub_10001D7A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001D7EC(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_10001D8B4(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031360, &qword_1000240C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100016928(a1, &v6 - v4, &qword_100031360, &qword_1000240C0);
  return EnvironmentValues.verticalSizeClass.setter();
}

Swift::Int sub_10001D95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021C8(&qword_1000315A8, &qword_100024038);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10001DB7C(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1000021C8(&qword_1000315D0, &qword_1000240D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_1000021C8(&qword_1000315D8, &qword_1000240D8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_1000021C8(&qword_1000315E0, &unk_1000240E0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

char *sub_10001DD74(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000021C8(&qword_1000315D0, &qword_1000240D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_1000021C8(&qword_1000315D8, &qword_1000240D8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_1000021C8(&qword_1000315E0, &unk_1000240E0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

void sub_10001DF58()
{
  sub_10001E1B8(319, &qword_100031650, &qword_1000315B8, &qword_100024048, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_10001E21C(319, &qword_100031658, &type metadata accessor for OpenDeepLinkAction, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_10001E168();
      if (v2 <= 0x3F)
      {
        sub_10001E1B8(319, &qword_100031668, &qword_1000315B0, &qword_100024040, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10001E21C(319, &qword_100031670, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10001E1B8(319, &unk_100031678, &qword_100031360, &qword_1000240C0, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_10001E21C(319, &qword_100030DC0, &type metadata accessor for GamesSettings, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10001E168()
{
  if (!qword_100031660)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100031660);
    }
  }
}

void sub_10001E1B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100002FF0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10001E21C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10001E280()
{
  sub_100002FF0(&qword_100031558, &qword_100024000);
  sub_100002FF0(&qword_100031588, &qword_100024020);
  sub_100002FF0(&qword_100031550, &qword_100023FF8);
  sub_100002FF0(&qword_100031548, &qword_100023FF0);
  sub_100016DD4(&qword_100031580, &qword_100031548, &qword_100023FF0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100016DD4(&qword_100031590, &qword_100031588, &qword_100024020);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001E40C()
{
  result = qword_100031720;
  if (!qword_100031720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031720);
  }

  return result;
}

uint64_t sub_10001E460()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E498(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001E534;

  return sub_10000435C(a1, v4);
}

uint64_t sub_10001E534(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10001E630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001E690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001E6FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001E764(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for MoltresApp.WindowContentView(0) - 8) + 80);

  return sub_10001AB30(a1, a2);
}

uint64_t sub_10001E7E4()
{
  v1 = type metadata accessor for MoltresApp.WindowContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = v0 + v3 + v1[5];
  v8 = type metadata accessor for OpenDeepLinkAction();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(sub_1000021C8(&qword_1000315C8, &qword_1000240C8) + 28));

  v10 = *(v0 + v3 + v1[6] + 8);

  v11 = v0 + v3 + v1[7];
  v12 = type metadata accessor for DeepLink();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v11 + *(sub_1000021C8(&qword_1000315D0, &qword_1000240D0) + 28));

  v15 = v1[8];
  sub_1000021C8(&qword_1000315C0, &qword_100024080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for ScenePhase();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  v18 = v1[9];
  sub_1000021C8(&qword_100031358, &unk_100023E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for UserInterfaceSizeClass();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }
  }

  else
  {
    v21 = *(v5 + v18);
  }

  v22 = *(v5 + v1[10]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001EB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for MoltresApp.WindowContentView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

void sub_10001EBB4(void *a1)
{
  v3 = *(type metadata accessor for MoltresApp.WindowContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10001C848(a1, v4);
}

unint64_t sub_10001EC24(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031770, &qword_100024208);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000021C8(&qword_100031780, &qword_100024218);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016928(v10, v6, &qword_100031770, &qword_100024208);
      v13 = *v6;
      v12 = v6[1];
      result = sub_100018070(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
      result = sub_10001EF18(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001EE04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021C8(&qword_100031758, &qword_1000241F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100018070(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001EF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001EF88()
{
  result = qword_100031788;
  if (!qword_100031788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100031788);
  }

  return result;
}

uint64_t sub_10001EFD4()
{
  v1 = type metadata accessor for MoltresApp.WindowContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v26 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for DeepLink();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);

  v7 = *(v6 + 8);

  v8 = v6 + v1[5];
  v9 = type metadata accessor for OpenDeepLinkAction();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(v8 + *(sub_1000021C8(&qword_1000315C8, &qword_1000240C8) + 28));

  v11 = *(v6 + v1[6] + 8);

  v12 = v6 + v1[7];
  if (!(*(v4 + 48))(v12, 1, v3))
  {
    (*(v4 + 8))(v12, v3);
  }

  v13 = *(v12 + *(sub_1000021C8(&qword_1000315D0, &qword_1000240D0) + 28));

  v14 = v1[8];
  sub_1000021C8(&qword_1000315C0, &qword_100024080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ScenePhase();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
    v16 = *(v6 + v14);
  }

  v17 = v1[9];
  sub_1000021C8(&qword_100031358, &unk_100023E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for UserInterfaceSizeClass();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v6 + v17, 1, v18))
    {
      (*(v19 + 8))(v6 + v17, v18);
    }
  }

  else
  {
    v20 = *(v6 + v17);
  }

  v21 = v2 | v5;
  v22 = (((v2 + 16) & ~v2) + v26 + v5) & ~v5;
  v23 = *(v6 + v1[10]);

  (*(v4 + 8))(v0 + v22, v3);

  return _swift_deallocObject(v0, v22 + v25, v21 | 7);
}

uint64_t sub_10001F348()
{
  v1 = *(type metadata accessor for MoltresApp.WindowContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for DeepLink() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10001D250();
}

uint64_t sub_10001F414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F42C()
{
  sub_100002FF0(&qword_100031700, &qword_1000241A0);
  sub_100002FF0(&qword_1000316F8, &qword_100024198);
  sub_100002FF0(&qword_1000316F0, &qword_100024190);
  sub_100002FF0(&qword_1000316E8, &qword_100024188);
  type metadata accessor for ScenePhase();
  sub_100002FF0(&qword_1000316E0, &qword_100024180);
  sub_100002FF0(&qword_1000316D8, &qword_100024178);
  type metadata accessor for AppBootstrapView(255);
  sub_10001D7A4(&qword_100031728, type metadata accessor for AppBootstrapView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10001D7A4(&qword_100031730, &type metadata accessor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F690(uint64_t a1)
{
  v69 = type metadata accessor for PlayerID();
  v2 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v64 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Player();
  v60 = *(v63 - 8);
  v4 = *(v60 + 64);
  __chkstk_darwin(v63);
  v61 = v5;
  v62 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000021C8(&qword_100031718, &qword_1000241C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for ShimGameServicesRoot();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v58 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v12;
  __chkstk_darwin(v11);
  v14 = v51 - v13;
  v67 = type metadata accessor for Dependency();
  v59 = *(v67 - 8);
  v15 = *(v59 + 64);
  v16 = __chkstk_darwin(v67);
  v68 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v66 = v51 - v19;
  v20 = __chkstk_darwin(v18);
  v65 = v51 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v51 - v23;
  __chkstk_darwin(v22);
  v26 = v51 - v25;
  sub_1000021C8(&qword_1000317A8, &qword_100024228);
  v70 = v26;
  Dependency.init<A>(satisfying:with:)();
  v57 = a1;
  Player.id.getter();
  Ref<A>.init(internalID:)();
  v27 = v14;
  ShimGameServicesRoot.init(localPlayer:)();
  sub_1000021C8(&qword_1000317B0, &qword_100024238);
  v71[3] = v8;
  v71[4] = sub_100020B54(&qword_1000317B8, &type metadata accessor for ShimGameServicesRoot);
  v28 = sub_1000154BC(v71);
  v29 = *(v9 + 16);
  v55 = v27;
  v29(v28, v27, v8);
  v52 = v24;
  Dependency.init<A>(satisfying:with:)();
  v51[1] = type metadata accessor for LocalPlayerProvider();
  v30 = v60;
  v32 = v62;
  v31 = v63;
  (*(v60 + 16))(v62, v57, v63);
  v33 = v58;
  v34 = v27;
  v35 = v8;
  v53 = v8;
  v29(v58, v34, v8);
  v36 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v37 = v9;
  v54 = v9;
  v38 = (v61 + *(v9 + 80) + v36) & ~*(v9 + 80);
  v39 = swift_allocObject();
  (*(v30 + 32))(v39 + v36, v32, v31);
  (*(v37 + 32))(v39 + v38, v33, v35);
  v40 = v65;
  Dependency.init<A>(satisfying:with:)();
  Player.playerID.getter();
  PlayerID.init(playerID:)();
  v41 = v66;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for NetworkConnectionMonitor();
  v42 = v68;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_1000021C8(&qword_1000317C0, &qword_100024240);
  v43 = v59;
  v44 = *(v59 + 72);
  v45 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100023680;
  v47 = v67;
  (*(v43 + 16))(v46 + v45, v70, v67);
  BaseObjectGraph.__allocating_init(name:_:)();
  v48 = v52;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v69 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v49 = *(v43 + 8);
  v49(v42, v47);
  v49(v41, v47);
  v49(v40, v47);
  v49(v48, v47);
  (*(v54 + 8))(v55, v53);
  v49(v70, v47);
  return v69;
}

uint64_t sub_10001FDAC(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_1000021C8(&qword_1000317C8, &qword_100024248);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for NativeIntentDispatcher();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10001FEEC, 0, 0);
}

uint64_t sub_10001FEEC()
{
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v16 = v0[16];
  v17 = v0[20];
  v6 = v0[13];
  v5 = v0[14];
  type metadata accessor for DeepLinkWithReferrerIntent();
  sub_100020B54(&qword_1000317D0, &type metadata accessor for DeepLinkWithReferrerIntent);
  DeepLinkIntentImplementation.init(dispatching:routes:)();
  NativeIntentDispatcher.init()();
  sub_100020B9C();
  v7 = v1;
  NativeIntentDispatcher.registering<A>(_:)();
  v8 = *(v3 + 8);
  v0[21] = v8;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v16);
  (*(v5 + 8))(v4, v6);
  sub_1000021C8(&qword_1000317E0, &qword_100024250);
  v9 = *(v3 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = *(v3 + 16);
  v0[23] = v12;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v11 + v10, v7, v16);
  NativeIntentDispatcher.init()();
  v12(v2, v11 + v10, v16);
  swift_setDeallocating();
  v8(v11 + v10, v16);
  swift_deallocClassInstance();
  NativeIntentDispatcher.register(contentsOf:)();
  v8(v2, v16);
  v8(v7, v16);
  v13 = async function pointer to static GameObjectGraphBuilder.intentDispatcher()[1];
  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = sub_100020180;

  return static GameObjectGraphBuilder.intentDispatcher()(v0 + 2);
}

uint64_t sub_100020180()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    (*(v2 + 168))(*(v2 + 160), *(v2 + 128));
    v5 = sub_1000203A4;
  }

  else
  {
    v5 = sub_1000202A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000202A4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[16];
  v12 = v0[15];
  v9 = v0[12];
  v9[3] = v8;
  v9[4] = &protocol witness table for NativeIntentDispatcher;
  sub_1000154BC(v9);
  v2();
  sub_100020C00((v0 + 2), (v0 + 7));
  NativeIntentDispatcher.next.setter();
  sub_100020C70((v0 + 2));
  v3(v5, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000203A4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[15];

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_10002043C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MainActor();
  v7[2] = a1;
  v7[3] = a2;
  result = sub_100020898(sub_100020AE4, v7, "Games/ObjectBuilders.swift", 26);
  *a3 = result;
  return result;
}

uint64_t sub_1000204C0()
{
  v1 = type metadata accessor for Player();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ShimGameServicesRoot();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100020608@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Player() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShimGameServicesRoot() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10002043C(v1 + v4, v7, a1);
}

uint64_t sub_1000206DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Player();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  (*(v9 + 16))(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for ArcadeSubscription();
  BaseObjectGraph.inject<A>(_:)();

  v10 = type metadata accessor for ShimGameServicesRoot();
  v16[3] = v10;
  v16[4] = sub_100020B54(&qword_1000317B8, &type metadata accessor for ShimGameServicesRoot);
  v11 = sub_1000154BC(v16);
  (*(*(v10 - 8) + 16))(v11, a2, v10);
  v12 = type metadata accessor for LocalPlayerProvider();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  result = LocalPlayerProvider.init(current:gameServices:arcadeSubscription:)();
  *a3 = result;
  return result;
}

uint64_t sub_100020898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_100020B10(v15);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v12._object = 0x8000000100026910;
  v12._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100020A50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  v2 = type metadata accessor for NetworkConnectionMonitor();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = NetworkConnectionMonitor.init(bagContract:)();

  *a1 = v5;
  return result;
}

void *sub_100020B10@<X0>(void *a1@<X8>)
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

uint64_t sub_100020B54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100020B9C()
{
  result = qword_1000317D8;
  if (!qword_1000317D8)
  {
    sub_100002FF0(&qword_1000317C8, &qword_100024248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000317D8);
  }

  return result;
}

uint64_t sub_100020C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_1000317E8, &qword_100024258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020C70(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_1000317E8, &qword_100024258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020D14(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100031D68 == -1)
  {
    if (qword_100031D70)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000211DC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100031D70)
    {
      return _availability_version_check();
    }
  }

  if (qword_100031D60 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000211F4();
    a3 = v10;
    a4 = v9;
    v8 = dword_100031D50 < v11;
    if (dword_100031D50 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100031D54 > a3)
      {
        return 1;
      }

      if (dword_100031D54 >= a3)
      {
        return dword_100031D58 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100031D50 < a2;
  if (dword_100031D50 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100020EA8(uint64_t result)
{
  v1 = qword_100031D70;
  if (qword_100031D70)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100031D70 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100031D50, &dword_100031D54, &dword_100031D58);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::String __swiftcall localizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  v2 = localizedString(_:comment:)(_._countAndFlagsBits, _._object, comment._countAndFlagsBits, comment._object);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}