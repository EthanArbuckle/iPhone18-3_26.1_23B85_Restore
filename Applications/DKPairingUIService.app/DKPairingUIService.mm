void sub_100001B3C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v1[OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert])
  {
    v42 = OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert;
    (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_logger], v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Pushing uncertified alert to stack...", v9, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v10 = objc_opt_self();
    v11 = [v10 mainBundle];
    v49._object = 0x8000000100011D00;
    v12._countAndFlagsBits = 0xD00000000000002ELL;
    v12._object = 0x8000000100011CB0;
    v13._object = 0x8000000100011CE0;
    v49._countAndFlagsBits = 0xD000000000000029;
    v13._countAndFlagsBits = 0xD000000000000015;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v49);

    v14 = [v10 mainBundle];
    v50._object = 0x8000000100011DC0;
    v15._countAndFlagsBits = 0xD00000000000002CLL;
    v15._object = 0x8000000100011D30;
    v16._countAndFlagsBits = 0xD00000000000005DLL;
    v16._object = 0x8000000100011D60;
    v50._countAndFlagsBits = 0xD00000000000005CLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v50);

    v17 = String._bridgeToObjectiveC()();

    v18 = String._bridgeToObjectiveC()();

    v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

    v20 = v42;
    v21 = *&v1[v42];
    *&v1[v42] = v19;
    v22 = v19;

    if (v22)
    {
      v23 = [v10 mainBundle];
      v51._object = 0x8000000100011E50;
      v24._countAndFlagsBits = 0x77796E4120646441;
      v25._countAndFlagsBits = 0xD000000000000020;
      v25._object = 0x8000000100011E20;
      v51._countAndFlagsBits = 0xD00000000000003ALL;
      v24._object = 0xEA00000000007961;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v23, v24, v51);

      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v27 = String._bridgeToObjectiveC()();

      v47 = sub_100002A98;
      v48 = v26;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100005480;
      v46 = &unk_1000187E0;
      v28 = _Block_copy(&aBlock);

      v29 = objc_opt_self();
      v30 = [v29 actionWithTitle:v27 style:1 handler:v28];
      _Block_release(v28);

      [v22 addAction:v30];
      v31 = *&v1[v20];
      if (v31)
      {
        v32 = v31;
        v33 = [v10 mainBundle];
        v52._object = 0x8000000100011ED0;
        v34._countAndFlagsBits = 0x6C65636E6143;
        v35._countAndFlagsBits = 0xD00000000000001DLL;
        v35._object = 0x8000000100011EB0;
        v52._countAndFlagsBits = 0xD000000000000038;
        v34._object = 0xE600000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v33, v34, v52);

        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v37 = String._bridgeToObjectiveC()();

        v47 = sub_100002AB8;
        v48 = v36;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_100005480;
        v46 = &unk_100018808;
        v38 = _Block_copy(&aBlock);

        v39 = [v29 actionWithTitle:v37 style:0 handler:v38];
        _Block_release(v38);

        [v32 addAction:v39];
        v40 = *&v1[v20];
        if (v40)
        {
          [v1 presentViewController:v40 animated:1 completion:0];
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000021A0()
{
  v0 = (*(*(sub_100002AC0(&qword_10001D8D0, &qword_100011140) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v26 - v1 + 16;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v7, Strong + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_logger, v3);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Add Anyway pressed", v12, 2u);
    }

    (*(v4 + 8))(v7, v3);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_100002B08(v13 + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_delegate, v26);

    if (v27)
    {
      v15 = sub_100002BE0(v26, v27);
      v16 = *v15;
      v17 = *(*v15 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
      type metadata accessor for MainActor();
      v19 = v17;
      v20 = v16;
      v21 = static MainActor.shared.getter();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = &protocol witness table for MainActor;
      v22[4] = v20;
      v22[5] = v19;
      sub_100003F8C(0, 0, v2, &unk_100010EA0, v22);

      sub_100002C7C(v26);
    }

    else
    {
      sub_100002B78(v26);
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    [v23 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000024EC()
{
  v0 = (*(*(sub_100002AC0(&qword_10001D8D0, &qword_100011140) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v30 - v1 + 16;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v7, Strong + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_logger, v3);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Cancel pressed", v12, 2u);
    }

    (*(v4 + 8))(v7, v3);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_100002B08(v13 + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_delegate, v30);

    if (v31)
    {
      v15 = sub_100002BE0(v30, v31);
      v16 = *v15;
      v17 = *(*v15 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = objc_allocWithZone(type metadata accessor for DockKitCorePairingService());
      v19 = v17;
      v20 = [v18 init];
      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v2, 1, 1, v21);
      type metadata accessor for MainActor();
      v22 = v19;
      v23 = v16;
      v24 = v20;
      v25 = static MainActor.shared.getter();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = &protocol witness table for MainActor;
      v26[4] = v23;
      v26[5] = v24;
      v26[6] = v22;
      v26[7] = 0;
      sub_100003F8C(0, 0, v2, &unk_100010FB0, v26);

      sub_100002C7C(v30);
    }

    else
    {
      sub_100002B78(v30);
    }
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    [v27 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1000028A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKUncertifiedAlertView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DKUncertifiedAlertView()
{
  result = qword_10001D780;
  if (!qword_10001D780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000029BC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002A60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002AC0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AC0(&unk_10001D7F0, &unk_100010E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002B78(uint64_t a1)
{
  v2 = sub_100002AC0(&unk_10001D7F0, &unk_100010E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100002BE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002C24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100002C7C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002CC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002DD0;

  return sub_10000592C(a1, v4, v5, v7, v6);
}

uint64_t sub_100002DD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002ECC()
{
  if ([v0 _remoteViewControllerProxy])
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
    sub_100002AC0(&qword_10001D8E8, &unk_100010F90);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100009DC8(v5, &qword_10001D8E0, &unk_100010F80);
    return 0;
  }
}

void sub_10000314C(char a1, char *a2, void (*a3)(void))
{
  v6 = (*(*(sub_100002AC0(&qword_10001D8D0, &qword_100011140) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v53 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v53 - v16;
  __chkstk_darwin(v15);
  v19 = &v53 - v18;
  if (a1)
  {
    v20 = *&a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context];
    if (v20)
    {
      v21 = v20;
      sub_100004820(v21);

      v22 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_controller;
      v23 = *&a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_controller];

      LOBYTE(v21) = sub_10000BAF0();

      if (v21)
      {
        v24 = *&a2[v22];
        v25 = objc_allocWithZone(type metadata accessor for DKPairingAlertView());

        v27 = sub_10000CC80(v26);
        (*(v10 + 16))(v19, &a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger], v9);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Showing alert...", v30, 2u);
        }

        (*(v10 + 8))(v19, v9);
        v31 = *&a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard];
        if (v31)
        {
          v32 = [v31 navigationController];
          if (v32)
          {
            v33 = v32;
            [v32 presentViewController:v27 animated:1 completion:0];
          }
        }
      }

      else
      {
        (*(v10 + 16))(v17, &a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger], v9);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Bluetooth and Wi-Fi already enabled, continuing with pairing setup.", v52, 2u);
        }

        (*(v10 + 8))(v17, v9);
      }

      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  (*(v10 + 16))(v14, &a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger], v9);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unable to proceed with prox card!", v36, 2u);
  }

  (*(v10 + 8))(v14, v9);
  v37 = *&a2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context];
  if (!v37)
  {
    goto LABEL_23;
  }

  v38 = objc_allocWithZone(type metadata accessor for DockKitCorePairingService());
  v39 = v37;
  v40 = [v38 init];
  v41 = type metadata accessor for TaskPriority();
  (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
  type metadata accessor for MainActor();
  v42 = v39;
  v43 = a2;
  v44 = v40;
  v45 = static MainActor.shared.getter();
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = &protocol witness table for MainActor;
  v46[4] = v43;
  v46[5] = v44;
  v46[6] = v42;
  v46[7] = 0;
  sub_100003F8C(0, 0, v8, &unk_100010FB0, v46);

  if (a3)
  {
    a3();
  }

  v47 = sub_100002ECC();
  if (v47)
  {
    [v47 dismiss];
    swift_unknownObjectRelease();
  }

  v48 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient;
  [*&v43[OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient] invalidate];
  v49 = *&v43[v48];
  *&v43[v48] = 0;
}

uint64_t sub_1000036E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100003800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = type metadata accessor for Logger();
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[27] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[28] = v12;
  v7[29] = v11;

  return _swift_task_switch(sub_100003904, v12, v11);
}

id sub_100003904()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger;
  *(v0 + 240) = OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger;
  v6 = *(v3 + 16);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Canceling current pairing session...", v9, 2u);
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);

  v14 = *(v12 + 8);
  *(v0 + 264) = v14;
  v14(v10, v11);
  result = [v13 userInfo];
  if (!result)
  {
    goto LABEL_10;
  }

  v16 = result;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 120) = 0x6E656B6F74;
  *(v0 + 128) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = sub_1000081EC(v0 + 16), (v19 & 1) == 0))
  {

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1000094BC(*(v17 + 56) + 32 * v18, v0 + 88);
  sub_100009468(v0 + 16);

  sub_100009840((v0 + 88), (v0 + 56));
  swift_dynamicCast();
  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  *(v0 + 272) = v20;
  v22 = *(&async function pointer to dispatch thunk of DockKitCorePairingService.cancelPairAccessory(info:delegate:) + 1);
  v26 = (&async function pointer to dispatch thunk of DockKitCorePairingService.cancelPairAccessory(info:delegate:) + async function pointer to dispatch thunk of DockKitCorePairingService.cancelPairAccessory(info:delegate:));
  v23 = swift_task_alloc();
  *(v0 + 280) = v23;
  *v23 = v0;
  v23[1] = sub_100003B7C;
  v24 = *(v0 + 152);
  v25 = *(v0 + 160);

  return v26(v21, v20, v24);
}

uint64_t sub_100003B7C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_100003D54;
  }

  else
  {
    v7 = v2[34];

    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_100003C98;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100003C98()
{
  v1 = v0[27];

  v2 = v0[19];
  v3 = v0[20];
  dispatch thunk of DockKitCorePairingService.disconnect()();
  v4 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  if (v4)
  {
    v5 = v4;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v6 = *(v0[19] + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  if (v6)
  {
    v7 = v6;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v9 = v0[25];
  v8 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100003D54()
{
  v1 = v0[36];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[19];

  v4(v7, v9 + v5, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[36];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed pairing attempt: %@", v13, 0xCu);
    sub_100009DC8(v14, &qword_10001D8D8, &qword_100010F68);
  }

  v16 = v0[33];
  v18 = v0[24];
  v17 = v0[25];
  v20 = v0[22];
  v19 = v0[23];

  v16(v17, v19);
  v21 = v0[36];
  if (v20)
  {
    v22 = v0[22];
    v23 = v0[19];
    v24 = v0[36];
    swift_errorRetain();
    sub_100009850(v22);
  }

  v25 = v0[19];
  v26 = v0[20];
  dispatch thunk of DockKitCorePairingService.disconnect()();
  v27 = *(v25 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  if (v27)
  {
    v28 = v27;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v29 = *(v0[19] + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  if (v29)
  {
    v30 = v29;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v32 = v0[25];
  v31 = v0[26];

  v33 = v0[1];

  return v33();
}

uint64_t sub_100003F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100002AC0(&qword_10001D8D0, &qword_100011140) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100009628(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009DC8(v11, &qword_10001D8D0, &qword_100011140);
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

      sub_100009DC8(a3, &qword_10001D8D0, &qword_100011140);

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

  sub_100009DC8(a3, &qword_10001D8D0, &qword_100011140);
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

uint64_t sub_10000427C()
{
  result = *(v0 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
  if (result)
  {
    result = [result userInfo];
    if (result)
    {
      v2 = result;
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = objc_opt_self();
      v5 = [v4 mainBundle];
      v34._object = 0x8000000100012810;
      v6._countAndFlagsBits = 0xD000000000000023;
      v6._object = 0x80000001000127C0;
      v7._object = 0x80000001000127F0;
      v34._countAndFlagsBits = 0xD000000000000056;
      v7._countAndFlagsBits = 0xD000000000000011;
      v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v34);
      object = v8._object;

      v10 = [v4 mainBundle];
      v35._object = 0x80000001000128A0;
      v11._countAndFlagsBits = 0xD000000000000027;
      v11._object = 0x8000000100012870;
      v12._countAndFlagsBits = 0xD000000000000015;
      v12._object = 0x8000000100011CE0;
      v35._countAndFlagsBits = 0xD000000000000071;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v35)._countAndFlagsBits;

      v13 = [v4 mainBundle];
      v36._object = 0x8000000100012950;
      v14._object = 0xED00006B636F4420;
      v15._countAndFlagsBits = 0xD000000000000029;
      v15._object = 0x8000000100012920;
      v36._countAndFlagsBits = 0xD000000000000039;
      v14._countAndFlagsBits = 0x676E696B63617254;
      v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v13, v14, v36)._countAndFlagsBits;

      v16 = [v4 mainBundle];
      v37._object = 0x80000001000129E0;
      v17._countAndFlagsBits = 0xD00000000000002BLL;
      v17._object = 0x8000000100012990;
      v18._countAndFlagsBits = 0xD000000000000019;
      v18._object = 0x80000001000129C0;
      v37._countAndFlagsBits = 0xD000000000000054;
      v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v37)._countAndFlagsBits;

      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v20 = sub_1000081EC(v32), (v21 & 1) != 0))
      {
        sub_1000094BC(*(v3 + 56) + 32 * v20, v33);
        sub_100009468(v32);
        v22 = v8._countAndFlagsBits;
        if (swift_dynamicCast())
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v29 = v28 ^ 1;
        }

        else
        {
          v29 = 1;
        }
      }

      else
      {
        sub_100009468(v32);
        v29 = 1;
        v22 = v8._countAndFlagsBits;
      }

      v33[0] = 1701869940;
      v33[1] = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v23 = sub_1000081EC(v32), (v24 & 1) != 0))
      {
        sub_1000094BC(*(v3 + 56) + 32 * v23, v33);
        sub_100009468(v32);
        if (swift_dynamicCast())
        {
          v22 = 0x6569666974726563;

          object = 0xE900000000000064;
        }
      }

      else
      {
        sub_100009468(v32);
      }

      if (v22 == 0x676E696B63617254 && object == 0xED0000646E617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (v29)
        {
          v25 = v31;
        }

        else
        {
          v25 = v19;
        }
      }

      else
      {

        if (v29)
        {
          v25 = v22;
        }

        else
        {
          v25 = countAndFlagsBits;
        }
      }

      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v26 = sub_1000081EC(v32), (v27 & 1) != 0))
      {
        sub_1000094BC(*(v3 + 56) + 32 * v26, v33);
        sub_100009468(v32);

        if (swift_dynamicCast())
        {

          return 1701667182;
        }
      }

      else
      {

        sub_100009468(v32);
      }

      return v25;
    }
  }

  return result;
}

void sub_100004820(void *a1)
{
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_1000081EC(v10), (v7 & 1) == 0))
  {

    sub_100009468(v10);
LABEL_9:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_10;
  }

  sub_1000094BC(*(v5 + 56) + 32 * v6, &v11);
  sub_100009468(v10);

  if (!*(&v12 + 1))
  {
LABEL_10:
    sub_100009DC8(&v11, &qword_10001D8E0, &unk_100010F80);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) != 0 && v10[0] == 1)
  {
    v8 = sub_100008D80();
    v9 = [v1 presentProxCardFlowWithDelegate:v1 initialViewController:v8];

    return;
  }

LABEL_11:
  sub_1000049B8(a1);
}

void sub_1000049B8(void *a1)
{
  v3 = (*(*(sub_100002AC0(&qword_10001D8D0, &qword_100011140) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v25 - v4;
  v6 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v6 setDismissalType:1];
  v7 = v6;
  sub_10000427C();
  v8 = String._bridgeToObjectiveC()();

  [v7 setTitle:v8];

  v9 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
  v10 = *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService];
  *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService] = v9;

  v11 = *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard];
  *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard] = v7;
  v12 = v7;

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = v12;
  v15 = v1;
  v16 = a1;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v15;
  v18[5] = v16;
  v18[6] = v14;
  sub_100003F8C(0, 0, v5, &unk_100010F78, v18);

  sub_100008B54();
  if (v19)
  {
    v20 = v19;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100010EC0;
    *(v21 + 32) = v20;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v22 = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setImages:isa];
  }

  v24 = [v15 presentProxCardFlowWithDelegate:v15 initialViewController:v14];
}

uint64_t sub_100004C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = type metadata accessor for Logger();
  v6[22] = v7;
  v8 = *(v7 - 8);
  v6[23] = v8;
  v9 = *(v8 + 64) + 15;
  v6[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[25] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[26] = v11;
  v6[27] = v10;

  return _swift_task_switch(sub_100004D6C, v11, v10);
}

id sub_100004D6C()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = *(v0 + 160);
    v1;
    result = [v2 userInfo];
    if (result)
    {
      v4 = result;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 120) = 0x6E656B6F74;
      *(v0 + 128) = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16))
      {
        v6 = sub_1000081EC(v0 + 16);
        if (v7)
        {
          sub_1000094BC(*(v5 + 56) + 32 * v6, v0 + 88);
          sub_100009468(v0 + 16);

          sub_100009840((v0 + 88), (v0 + 56));
          swift_dynamicCast();
          v8 = *(v0 + 136);
          v9 = *(v0 + 144);
          *(v0 + 232) = v9;
          v10 = *(&async function pointer to dispatch thunk of DockKitCorePairingService.registerCard(info:delegate:) + 1);
          v21 = (&async function pointer to dispatch thunk of DockKitCorePairingService.registerCard(info:delegate:) + async function pointer to dispatch thunk of DockKitCorePairingService.registerCard(info:delegate:));
          v11 = swift_task_alloc();
          *(v0 + 240) = v11;
          *v11 = v0;
          v11[1] = sub_100005048;
          v12 = *(v0 + 152);

          return v21(v8, v9, v12);
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v13 = *(v0 + 200);

  v14 = *(v0 + 168);
  v15 = [objc_opt_self() mainBundle];
  v23._object = 0x8000000100012750;
  v16._object = 0x8000000100012710;
  v17._object = 0x8000000100012730;
  v23._countAndFlagsBits = 0xD000000000000066;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v17._countAndFlagsBits = 0x100000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v23);

  v18 = String._bridgeToObjectiveC()();

  [v14 setBodyText:v18];

  v19 = *(v0 + 192);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100005048()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v12 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v5 = v2[28];
    v4 = v2[29];

    v6 = v2[26];
    v7 = v2[27];
    v8 = sub_1000052B0;
  }

  else
  {
    v10 = v2[28];
    v9 = v2[29];

    v6 = v2[26];
    v7 = v2[27];
    v8 = sub_100005174;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100005174()
{
  v1 = v0[25];

  v2 = v0[21];
  v3 = [objc_opt_self() mainBundle];
  v11._object = 0x8000000100012750;
  v4._object = 0x8000000100012710;
  v5._object = 0x8000000100012730;
  v11._countAndFlagsBits = 0xD000000000000066;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v5._countAndFlagsBits = 0x100000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v11);

  v6 = String._bridgeToObjectiveC()();

  [v2 setBodyText:v6];

  v7 = v0[24];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000052B0()
{
  v1 = v0[31];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[19];

  (*(v5 + 16))(v3, v6 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed pairing attempt: %@", v10, 0xCu);
    sub_100009DC8(v11, &qword_10001D8D8, &qword_100010F68);
  }

  v13 = v0[31];
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[19];

  (*(v15 + 8))(v14, v16);
  swift_errorRetain();
  sub_100009850(v17);

  v19 = v0[24];

  v20 = v0[1];

  return v20();
}

void sub_100005480(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000054E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  return dispatch thunk of DockKitCorePairingService.saveSecureTrackingUserPreference(enabled:)();
}

void sub_100005564(void *a1)
{
  v3 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v3 setDismissalType:1];
  v4 = v3;
  sub_10000427C();
  v5 = String._bridgeToObjectiveC()();

  [v4 setTitle:v5];

  sub_100008B54();
  if (v6)
  {
    v7 = v6;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100010EC0;
    *(v8 + 32) = v7;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v9 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setImages:isa];
  }

  v11 = [objc_opt_self() mainBundle];
  v23._object = 0x80000001000126B0;
  v12._countAndFlagsBits = 0x7463656E6E6F43;
  v13._object = 0x8000000100012690;
  v23._countAndFlagsBits = 0xD00000000000005ELL;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v12._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v11, v12, v23);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v14;
  v16 = v1;

  v17 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100009CA8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005480;
  aBlock[3] = &unk_100018A50;
  v18 = _Block_copy(aBlock);
  v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];

  _Block_release(v18);

  if (a1)
  {
    v20 = [a1 navigationController];
    if (v20)
    {
      v21 = v20;
      [v20 pushViewController:v4 animated:1];
    }
  }
}

void sub_1000058AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v2;
    sub_100005FC8(v4, Strong);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = type metadata accessor for Logger();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[25] = v10;
  v5[26] = v9;

  return _swift_task_switch(sub_100005A20, v10, v9);
}

id sub_100005A20()
{
  v1 = *(v0 + 152);
  v2 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
  *(v0 + 216) = v2;
  v3 = *(v1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  *(v1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService) = v2;
  v4 = v2;

  if (v4)
  {
    result = [*(v0 + 160) userInfo];
    if (result)
    {
      v6 = result;
      v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 120) = 0x6E656B6F74;
      *(v0 + 128) = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v7 + 16))
      {
        v8 = sub_1000081EC(v0 + 16);
        if (v9)
        {
          sub_1000094BC(*(v7 + 56) + 32 * v8, v0 + 88);
          sub_100009468(v0 + 16);

          sub_100009840((v0 + 88), (v0 + 56));
          swift_dynamicCast();
          v10 = *(v0 + 136);
          v11 = *(v0 + 144);
          *(v0 + 224) = v11;
          v12 = *(&async function pointer to dispatch thunk of DockKitCorePairingService.pairAccessory(info:delegate:) + 1);
          v18 = (&async function pointer to dispatch thunk of DockKitCorePairingService.pairAccessory(info:delegate:) + async function pointer to dispatch thunk of DockKitCorePairingService.pairAccessory(info:delegate:));
          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_100005C50;
          v14 = *(v0 + 152);

          return v18(v10, v11, v14);
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v15 = *(v0 + 192);

  v16 = *(v0 + 184);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100005C50()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v11 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = *(v2 + 216);
    v4 = *(v2 + 224);

    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_100005DE8;
  }

  else
  {
    v9 = *(v2 + 224);

    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_100005D80;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100005D80()
{
  v1 = v0[24];

  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100005DE8()
{
  v1 = v0[30];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[19];

  (*(v5 + 16))(v3, v6 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[30];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed pairing attempt: %@", v10, 0xCu);
    sub_100009DC8(v11, &qword_10001D8D8, &qword_100010F68);
  }

  v13 = v0[30];
  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[21];
  v17 = v0[19];

  (*(v15 + 8))(v14, v16);
  v18 = *(v17 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
  swift_errorRetain();
  v19 = v18;
  sub_100009850(v18);

  v20 = v0[23];

  v21 = v0[1];

  return v21();
}

void sub_100005FC8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v60 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v15 setDismissalType:1];
  v16 = v15;
  sub_10000427C();
  v17 = String._bridgeToObjectiveC()();

  [v16 setTitle:v17];

  v18 = [objc_opt_self() mainBundle];
  v69._object = 0x8000000100012580;
  v19._countAndFlagsBits = 0x697463656E6E6F43;
  v19._object = 0xAD0000A680E2676ELL;
  v20._object = 0x8000000100012560;
  v69._countAndFlagsBits = 0xD000000000000048;
  v20._countAndFlagsBits = 0xD00000000000001CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v18, v19, v69);

  v21 = String._bridgeToObjectiveC()();

  [v16 setBodyText:v21];

  v22 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard;
  v23 = *&v3[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard];
  *&v3[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard] = v16;
  v24 = v16;

  sub_100008B54();
  if (v25)
  {
    v26 = v25;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100010EC0;
    *(v27 + 32) = v26;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v28 = v26;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 setImages:isa];
  }

  if (a2)
  {
    v30 = [a2 navigationController];
    if (v30)
    {
      v31 = v30;
      [v30 pushViewController:v24 animated:1];
    }
  }

  v32 = [a1 userInfo];
  if (!v32)
  {
    goto LABEL_14;
  }

  v33 = v32;
  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = 0x6569666974726563;
  v64 = 0xE900000000000064;
  AnyHashable.init<A>(_:)();
  if (!*(v34 + 16) || (v35 = sub_1000081EC(v65), (v36 & 1) == 0))
  {

    sub_100009468(v65);
    goto LABEL_14;
  }

  sub_1000094BC(*(v34 + 56) + 32 * v35, v68);
  sub_100009468(v65);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    type metadata accessor for MainActor();
    v38 = v3;
    v39 = a1;
    v40 = static MainActor.shared.getter();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = &protocol witness table for MainActor;
    v41[4] = v38;
    v41[5] = v39;
    sub_100003F8C(0, 0, v9, &unk_100010EA0, v41);

    goto LABEL_15;
  }

  if (v63 != 28494 || v64 != 0xE200000000000000)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_17:
  v66 = type metadata accessor for ViewController();
  v67 = &off_100018880;
  v65[0] = v3;
  v43 = objc_allocWithZone(type metadata accessor for DKUncertifiedAlertView());
  v44 = v66;
  v45 = sub_100009518(v65, v66);
  v46 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = (&v60 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v48;
  v51 = v3;
  v52 = sub_1000088F8(v50, v43);
  sub_100002C7C(v65);
  v53 = v61;
  (*(v62 + 16))(v14, &v51[OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger], v61);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Showing alert...", v56, 2u);
  }

  (*(v62 + 8))(v14, v53);
  v57 = *&v3[v22];
  if (v57)
  {
    v58 = [v57 navigationController];
    if (v58)
    {
      v59 = v58;
      [v58 presentViewController:v52 animated:1 completion:0];
    }
  }

  v24 = v52;
LABEL_15:
}

void sub_1000066D4(void *a1)
{
  v2 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v2 setDismissalType:0];
  v15 = v2;
  sub_10000427C();
  v3 = String._bridgeToObjectiveC()();

  [v15 setTitle:v3];

  v4 = [objc_opt_self() mainBundle];
  v17._object = 0x80000001000124F0;
  v5._object = 0x8000000100012480;
  v6._countAndFlagsBits = 0xD000000000000046;
  v6._object = 0x80000001000124A0;
  v17._countAndFlagsBits = 0xD000000000000061;
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v17);

  v7 = String._bridgeToObjectiveC()();

  [v15 setBodyText:v7];

  sub_100008B54();
  if (v8)
  {
    v9 = v8;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100010EC0;
    *(v10 + 32) = v9;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v11 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setImages:isa];
  }

  if (a1)
  {
    v13 = [a1 navigationController];
    if (v13)
    {
      v14 = v13;
      [v13 pushViewController:v15 animated:1];
    }
  }
}

void sub_10000691C(void *a1, char a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
    if (v4)
    {
      v5 = v4;
      dispatch thunk of DockKitCorePairingService.disconnect()();
    }

    v6 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
    if (v6)
    {
      v7 = v6;
      dispatch thunk of DockKitCorePairingService.disconnect()();
    }

    v8 = sub_100008D80();
    if (a1)
    {
      v11 = v8;
      v9 = [a1 navigationController];
      if (v9)
      {
        v10 = v9;
        [v9 pushViewController:v11 animated:1];
      }
    }

    else
    {

      _objc_release_x1(v8, v8);
    }
  }

  else
  {

    sub_100006A40(a1);
  }
}

void sub_100006A40(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v4 setDismissalType:1];
  v5 = v4;
  sub_10000427C();
  v6 = String._bridgeToObjectiveC()();

  [v5 setTitle:v6];

  sub_100008B54();
  if (v7)
  {
    v8 = v7;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100010EC0;
    *(v9 + 32) = v8;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v10 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setImages:isa];
  }

  v12 = [objc_opt_self() mainBundle];
  v26._object = 0x80000001000120A0;
  v13._object = 0x8000000100012080;
  v26._countAndFlagsBits = 0xD00000000000004ELL;
  v13._countAndFlagsBits = 0xD000000000000016;
  v14._countAndFlagsBits = 1701736260;
  v14._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v26);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100008D4C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005480;
  aBlock[3] = &unk_1000188C0;
  v17 = _Block_copy(aBlock);
  v18 = [objc_opt_self() actionWithTitle:v16 style:0 handler:v17];

  _Block_release(v17);

  v19 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  if (v19)
  {
    v20 = v19;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v21 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  if (v21)
  {
    v22 = v21;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  if (a1)
  {
    v23 = [a1 navigationController];
    if (v23)
    {
      v24 = v23;
      [v23 pushViewController:v5 animated:1];
    }
  }
}

void sub_100006DA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100006E08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v109 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v108 = &v100 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v100 - v16;
  v18 = __chkstk_darwin(v15);
  v107 = &v100 - v19;
  __chkstk_darwin(v18);
  v106 = &v100 - v20;
  v112 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_context;
  v21 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_context);
  if (!v21 || (v22 = [v21 userInfo]) == 0)
  {
LABEL_33:
    if (v109 > 2)
    {
      if (v109 <= 4)
      {
        if (v109 == 3)
        {
          v88 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
          v89 = v88;
          sub_1000066D4(v88);

          (*(v8 + 16))(v12, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&_mh_execute_header, v90, v91, "Moved from Pairing -> One-time setup", v92, 2u);
          }

          (*(v8 + 8))(v12, v7);
        }

        else
        {
          v61 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
          v62 = v61;
          sub_100006A40(v61);
        }

        return;
      }

      if (v109 == 5)
      {
        v93 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
        v94 = v93;
        sub_10000691C(v93, 1);

        return;
      }

      if (v109 == 6)
      {
        (*(v8 + 16))(v17, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
        v68 = a4;
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v73 = a4;
          v74 = v72;
          v117[0] = v72;
          *v71 = 136315138;
          if (v73)
          {
            v75 = [v68 localizedDescription];
            v105 = v17;
            v76 = a1;
            v77 = v75;
            v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v80 = v79;

            a1 = v76;
            v17 = v105;
          }

          else
          {
            v78 = 0x206E776F6E6B6E55;
            v80 = 0xED0000726F727245;
          }

          v97 = sub_10000C470(v78, v80, v117);

          *(v71 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v69, v70, "Pairing Failed: %s", v71, 0xCu);
          sub_100002C7C(v74);
        }

        (*(v8 + 8))(v17, v7);
        v98 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
        v99 = v98;
        sub_100009850(v98);

        return;
      }

      goto LABEL_49;
    }

    if (v109)
    {
      if (v109 == 1)
      {
        v95 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
        v96 = v95;
        sub_100005564(v95);

        v63 = v107;
        (*(v8 + 16))(v107, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          v67 = "Validating accessory";
          goto LABEL_57;
        }
      }

      else
      {
        if (v109 != 2)
        {
LABEL_49:
          v81 = *(a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard);
          if (v81)
          {
            v82 = objc_opt_self();
            v83 = v81;
            v84 = [v82 mainBundle];
            v118._object = 0x8000000100012A60;
            v85._countAndFlagsBits = 0x206E776F6E6B6E55;
            v85._object = 0xED0000726F727245;
            v86._object = 0x8000000100012A40;
            v118._countAndFlagsBits = 0xD000000000000046;
            v86._countAndFlagsBits = 0xD00000000000001FLL;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v86, 0, v84, v85, v118);

            v87 = String._bridgeToObjectiveC()();

            [v83 setBodyText:v87];
          }

          return;
        }

        v63 = v108;
        (*(v8 + 16))(v108, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          v67 = "Ignoring in progress state";
LABEL_57:
          _os_log_impl(&_mh_execute_header, v64, v65, v67, v66, 2u);
        }
      }
    }

    else
    {
      v63 = v106;
      (*(v8 + 16))(v106, a1 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_logger, v7);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        v67 = "Ignoring started state";
        goto LABEL_57;
      }
    }

    (*(v8 + 8))(v63, v7);
    return;
  }

  v101 = v12;
  v102 = a4;
  v105 = v17;
  v103 = v7;
  v104 = v8;

  v23 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 64);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  v110 = a1;
  v111 = a2;
  if (v26)
  {
    while (1)
    {
LABEL_10:
      v30 = *(a1 + v112);
      if (!v30)
      {
        goto LABEL_67;
      }

      v31 = (v28 << 10) | (16 * __clz(__rbit64(v26)));
      v32 = (*(a2 + 48) + v31);
      v33 = (*(a2 + 56) + v31);
      v34 = *v33;
      v35 = v33[1];
      v36 = v32[1];
      *&v115 = *v32;
      *(&v115 + 1) = v36;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v37 = v30;
      AnyHashable.init<A>(_:)();
      v116 = &type metadata for String;
      *&v115 = v34;
      *(&v115 + 1) = v35;

      v38 = [v37 userInfo];
      if (!v38)
      {
        goto LABEL_66;
      }

      v39 = v38;
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      if (v116)
      {
        break;
      }

      sub_100009DC8(&v115, &qword_10001D8E0, &unk_100010F80);
      v50 = sub_1000081EC(v117);
      if (v51)
      {
        v52 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = v40;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100008754();
          v40 = v113;
        }

        sub_100009468(v40[6] + 40 * v52);
        sub_100009840((v40[7] + 32 * v52), v114);
        sub_1000085B0(v52, v40);
        sub_100009468(v117);
        sub_100009DC8(v114, &qword_10001D8E0, &unk_100010F80);
        goto LABEL_29;
      }

      sub_100009468(v117);
      memset(v114, 0, sizeof(v114));
      sub_100009DC8(v114, &qword_10001D8E0, &unk_100010F80);
      if (v40)
      {
        goto LABEL_29;
      }

      isa = 0;
LABEL_30:
      a1 = v110;
      v26 &= v26 - 1;
      [v37 setUserInfo:isa];

      a2 = v111;
      if (!v26)
      {
        goto LABEL_6;
      }
    }

    sub_100009840(&v115, v114);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v40;
    v42 = sub_1000081EC(v117);
    v44 = v40[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_64;
    }

    v48 = v43;
    if (v40[3] >= v47)
    {
      if ((v41 & 1) == 0)
      {
        v57 = v42;
        sub_100008754();
        v42 = v57;
        v54 = v113;
        if (v48)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1000082F8(v47, v41);
      v42 = sub_1000081EC(v117);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_68;
      }
    }

    v54 = v113;
    if (v48)
    {
LABEL_23:
      v55 = (v54[7] + 32 * v42);
      sub_100002C7C(v55);
      sub_100009840(v114, v55);
      sub_100009468(v117);
LABEL_29:
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_30;
    }

LABEL_27:
    v54[(v42 >> 6) + 8] |= 1 << v42;
    v58 = v42;
    sub_1000095CC(v117, v54[6] + 40 * v42);
    sub_100009840(v114, (v54[7] + 32 * v58));
    sub_100009468(v117);
    v59 = v54[2];
    v46 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v46)
    {
      goto LABEL_65;
    }

    v54[2] = v60;
    goto LABEL_29;
  }

LABEL_6:
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      v8 = v104;
      v7 = v103;
      v17 = v105;
      a4 = v102;
      v12 = v101;
      goto LABEL_33;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_10;
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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100007A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context] = 0;
  *&v3[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard] = 0;
  v7 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_controller;
  sub_100009E28(0, &qword_10001D8F0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  type metadata accessor for DKPairingRadioController();
  swift_allocObject();
  *&v4[v7] = sub_10000A6BC(v8);
  *&v4[OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient] = 0;
  *&v4[OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService] = 0;
  *&v4[OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService] = 0;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for ViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100007BD8(void *a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context] = 0;
  *&v1[OBJC_IVAR____TtC18DKPairingUIService14ViewController_currentCard] = 0;
  v4 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_controller;
  sub_100009E28(0, &qword_10001D8F0, OS_dispatch_queue_ptr);
  v5 = static OS_dispatch_queue.main.getter();
  type metadata accessor for DKPairingRadioController();
  swift_allocObject();
  *&v2[v4] = sub_10000A6BC(v5);
  *&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient] = 0;
  *&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService] = 0;
  *&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100007D40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ViewController()
{
  result = qword_10001D848;
  if (!qword_10001D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007E98()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100007F48()
{
  v1 = sub_100002ECC();
  if (v1)
  {
    [v1 deactivate];
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient;
  [*(v0 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient) invalidate];
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;
}

uint64_t sub_100007FFC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000080F4;

  return v7(a1);
}

uint64_t sub_1000080F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1000081EC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100008230(a1, v4);
}

unint64_t sub_100008230(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000095CC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100009468(v8);
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

uint64_t sub_1000082F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002AC0(&unk_10001D910, &qword_100010FA0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100009840((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_1000095CC(v24, &v37);
        sub_1000094BC(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100009840(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000085B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_1000095CC(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_100009468(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100008754()
{
  v1 = v0;
  sub_100002AC0(&unk_10001D910, &qword_100010FA0);
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
        v18 = 40 * v17;
        sub_1000095CC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000094BC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100009840(v22, (*(v4 + 56) + v17));
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

id sub_1000088F8(uint64_t a1, char *a2)
{
  v7[3] = type metadata accessor for ViewController();
  v7[4] = &off_100018880;
  v7[0] = a1;
  Logger.init(subsystem:category:)();
  *&a2[OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert] = 0;
  sub_100009568(v7, &a2[OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_delegate]);
  v6.receiver = a2;
  v6.super_class = type metadata accessor for DKUncertifiedAlertView();
  v4 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  sub_100002C7C(v7);
  return v4;
}

void sub_1000089E0(void (*a1)(void), uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context])
  {
    v5 = OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient;
    v6 = *&v2[OBJC_IVAR____TtC18DKPairingUIService14ViewController_sfClient];
    if (v6)
    {
      [v6 invalidate];
      v7 = *&v2[v5];
      *&v2[v5] = 0;
    }

    v8 = [objc_allocWithZone(SFClient) init];
    v9 = *&v2[v5];
    *&v2[v5] = v8;
    v10 = v8;

    if (v10)
    {
      v11 = swift_allocObject();
      v11[2] = v2;
      v11[3] = a1;
      v11[4] = a2;
      v14[4] = sub_10000A31C;
      v14[5] = v11;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1000036E0;
      v14[3] = &unk_100018B40;
      v12 = _Block_copy(v14);
      v13 = v2;
      sub_10000A328(a1);

      [v10 startProxCardTransactionWithOptions:14 completion:v12];
      _Block_release(v12);
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_100008B54()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:150.0];
  sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100010ED0;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 labelColor];
  *(v2 + 40) = [v3 systemGreenColor];
  sub_100009E28(0, &qword_10001D8C8, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v0 configurationWithPaletteColors:isa];

  v6 = v1;
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() _systemImageNamed:v7 withConfiguration:v6];

  if (v8)
  {
    [v8 imageByApplyingSymbolConfiguration:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100008D14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100008D80()
{
  v0 = [objc_allocWithZone(PRXIconContentViewController) init];
  v1 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
  v2 = v0;
  [v2 setDismissalType:3];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 mainBundle];
  v6._countAndFlagsBits = 0xD000000000000017;
  v7._countAndFlagsBits = 0xD000000000000021;
  v46._object = 0x8000000100012190;
  v7._object = 0x8000000100012140;
  v6._object = 0x8000000100012170;
  v46._countAndFlagsBits = 0xD000000000000043;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v5, v6, v46);

  v8 = String._bridgeToObjectiveC()();

  [v4 setTitle:v8];

  v9 = [v3 mainBundle];
  v10._countAndFlagsBits = 0xD000000000000026;
  v47._object = 0x80000001000122F0;
  v10._object = 0x80000001000121E0;
  v11._countAndFlagsBits = 0xD0000000000000D3;
  v11._object = 0x8000000100012210;
  v47._countAndFlagsBits = 0xD000000000000043;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v47);

  v12 = String._bridgeToObjectiveC()();

  [v4 setSubtitle:v12];

  sub_100008B54();
  if (v13)
  {
    v14 = v13;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100010EC0;
    *(v15 + 32) = v14;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v16 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setImages:isa];
  }

  v18 = [v3 mainBundle];
  v19._countAndFlagsBits = 0xD000000000000024;
  v48._object = 0x8000000100012370;
  v20._countAndFlagsBits = 0x6E4F206E727554;
  v19._object = 0x8000000100012340;
  v48._countAndFlagsBits = 0xD000000000000064;
  v20._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v48);

  v21 = [v3 mainBundle];
  v22._countAndFlagsBits = 0xD000000000000029;
  v49._object = 0x8000000100012410;
  v23._countAndFlagsBits = 0x776F4E20746F4ELL;
  v22._object = 0x80000001000123E0;
  v49._countAndFlagsBits = 0xD00000000000006BLL;
  v23._object = 0xE700000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v49);

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v1;
  v26 = v4;

  v27 = v1;
  v28 = String._bridgeToObjectiveC()();

  v44 = sub_1000093A0;
  v45 = v25;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100005480;
  v43 = &unk_100018910;
  v29 = _Block_copy(&aBlock);
  v30 = objc_opt_self();
  v31 = [v30 actionWithTitle:v28 style:0 handler:v29];

  _Block_release(v29);

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v27;
  v34 = v27;

  v35 = String._bridgeToObjectiveC()();

  v44 = sub_100009400;
  v45 = v33;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100005480;
  v43 = &unk_100018960;
  v36 = _Block_copy(&aBlock);
  v37 = [v30 actionWithTitle:v35 style:1 handler:v36];

  _Block_release(v36);

  v38 = [v26 addAction:v37];
  return v26;
}

uint64_t sub_1000093A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000054E8();
}

uint64_t sub_1000093C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009400()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000054E8();
}

uint64_t sub_100009420()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000094BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009518(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100009568(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009628(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009698()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000096D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A488;

  return sub_100007FFC(a1, v5);
}

uint64_t sub_100009788(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002DD0;

  return sub_100007FFC(a1, v5);
}

_OWORD *sub_100009840(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100009850(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v4 setDismissalType:1];
  v5 = v4;
  sub_10000427C();
  v6 = String._bridgeToObjectiveC()();

  [v5 setTitle:v6];

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v31._object = 0x8000000100012650;
  v9._countAndFlagsBits = 0xD000000000000020;
  v9._object = 0x80000001000125D0;
  v10._countAndFlagsBits = 0xD000000000000046;
  v10._object = 0x8000000100012600;
  v31._countAndFlagsBits = 0xD00000000000003CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v31);

  v11 = String._bridgeToObjectiveC()();

  [v5 setBodyText:v11];

  sub_100008B54();
  if (v12)
  {
    v13 = v12;
    sub_100002AC0(&qword_10001D8B8, &unk_100010F30);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100010EC0;
    *(v14 + 32) = v13;
    sub_100009E28(0, &qword_10001D8C0, UIImage_ptr);
    v15 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setImages:isa];
  }

  v17 = [v7 mainBundle];
  v32._object = 0x80000001000120A0;
  v18._object = 0x8000000100012080;
  v32._countAndFlagsBits = 0xD00000000000004ELL;
  v18._countAndFlagsBits = 0xD000000000000016;
  v19._countAndFlagsBits = 1701736260;
  v19._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v32);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000A4A8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005480;
  aBlock[3] = &unk_100018A00;
  v22 = _Block_copy(aBlock);
  v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  v24 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_registerCardService);
  if (v24)
  {
    v25 = v24;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  v26 = *(v2 + OBJC_IVAR____TtC18DKPairingUIService14ViewController_beginPairingService);
  if (v26)
  {
    v27 = v26;
    dispatch thunk of DockKitCorePairingService.disconnect()();
  }

  if (a1)
  {
    v28 = [a1 navigationController];
    if (v28)
    {
      v29 = v28;
      [v28 pushViewController:v5 animated:1];
    }
  }
}

uint64_t sub_100009C68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009CB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A488;

  return sub_100004C74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100009DC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002AC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009E28(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100009E70(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009E28(0, &qword_10001D8F0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a2;
  v16[4] = a1;
  v16[5] = a3;
  aBlock[4] = sub_10000A16C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000CC68;
  aBlock[3] = &unk_100018AC8;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000A178();
  sub_100002AC0(&qword_10001D900, &unk_1000110C0);
  sub_10000A1D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v21);
}

uint64_t sub_10000A124()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000A178()
{
  result = qword_10001D8F8;
  if (!qword_10001D8F8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D8F8);
  }

  return result;
}

unint64_t sub_10000A1D0()
{
  result = qword_10001D908;
  if (!qword_10001D908)
  {
    sub_10000A234(&qword_10001D900, &unk_1000110C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D908);
  }

  return result;
}

uint64_t sub_10000A234(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000A27C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A28C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A2D4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A328(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A338()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A390(uint64_t a1)
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
  v10[1] = sub_10000A488;

  return sub_100003800(a1, v4, v5, v6, v7, v9, v8);
}

Swift::Int sub_10000A4C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000A538()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000A57C()
{
  v0 = type metadata accessor for Logger();
  sub_10000CA1C(v0, qword_10001D980);
  sub_10000C438(v0, qword_10001D980);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000A600()
{
  result = *(v0 + 24);
  if (result)
  {
    if (!*(v0 + 32))
    {
      return 0;
    }

    if (![result powerOn])
    {
      goto LABEL_6;
    }

    result = *(v0 + 24);
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    if ([result userAutoJoinDisabled])
    {
LABEL_6:
      result = *(v0 + 32);
      if (result)
      {
        _CTServerConnectionGetCellularDataIsEnabled();
        return 0;
      }

      __break(1u);
      goto LABEL_12;
    }

    return 1;
  }

  return result;
}

uint64_t sub_10000A6BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v55 = &v52 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - v12;
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  if (qword_10001D750 != -1)
  {
    swift_once();
  }

  v16 = sub_10000C438(v4, qword_10001D980);
  v57 = v5[2];
  v58 = v16;
  v57(v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Trying to initialize CoreBluetooth", v19, 2u);
  }

  v56 = v5[1];
  v56(v15, v4);
  *(v2 + 48) = a1;
  v20 = objc_allocWithZone(CBController);
  v53 = a1;
  v21 = [v20 init];
  v22 = *(v2 + 16);
  *(v2 + 16) = v21;
  v23 = v21;

  if (!v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v61 = sub_10000CB40;
  v62 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_10000CC68;
  *(&v60 + 1) = &unk_100018C98;
  v24 = _Block_copy(&aBlock);

  [v23 setBluetoothStateChangedHandler:v24];
  _Block_release(v24);

  v25 = *(v2 + 16);
  if (!v25)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v61 = sub_10000CB48;
  v62 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_10000B49C;
  *(&v60 + 1) = &unk_100018CC0;
  v26 = _Block_copy(&aBlock);

  v27 = v25;

  [v27 activateWithCompletion:v26];
  _Block_release(v26);

  (v57)(v13, v58, v4);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Trying to initialize CoreWiFi", v30, 2u);
  }

  v31 = v56;
  v56(v13, v4);
  v32 = [objc_allocWithZone(CWFInterface) init];
  v33 = *(v2 + 24);
  *(v2 + 24) = v32;
  v34 = v32;

  v35 = v55;
  if (!v34)
  {
    goto LABEL_23;
  }

  v61 = sub_10000CB50;
  v62 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_100005480;
  *(&v60 + 1) = &unk_100018CE8;
  v36 = _Block_copy(&aBlock);

  [v34 setEventHandler:v36];
  _Block_release(v36);

  v37 = *(v2 + 24);
  v38 = v54;
  if (!v37)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  [v37 activate];
  v39 = *(v2 + 24);
  if (!v39)
  {
    goto LABEL_25;
  }

  *&aBlock = 0;
  if ([v39 startMonitoringEventType:1 error:&aBlock])
  {
    v40 = aBlock;
  }

  else
  {
    v41 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  (v57)(v35, v58, v4);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Trying to initialize CoreTelephony", v44, 2u);
  }

  v31(v35, v4);
  v61 = 0;
  aBlock = 0u;
  v60 = 0u;
  v45 = String._bridgeToObjectiveC()();
  v46 = _CTServerConnectionCreateAndLaunchWithIdentifier();

  *(v2 + 32) = v46;
  (v57)(v38, v58, v4);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Radio controller initialized!", v49, 2u);

    v50 = v53;
  }

  else
  {
    v50 = v47;
    v47 = v53;
  }

  v31(v38, v4);
  return v2;
}

void *sub_10000AE34(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = type metadata accessor for DispatchQoS();
  v7 = *(v18[0] - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v18[0]);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(a1 + 16);
  if (result)
  {
    if ([result bluetoothState] == 5)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    *(a1 + 40) = v12;
    v13 = *(a1 + 48);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v12;
    aBlock[4] = sub_10000CC28;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000CC68;
    aBlock[3] = &unk_100018D88;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    static DispatchQoS.unspecified.getter();
    v18[1] = &_swiftEmptyArrayStorage;
    sub_10000A178();
    sub_100002AC0(&qword_10001D900, &unk_1000110C0);
    sub_10000A1D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    (*(v7 + 8))(v10, v18[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B10C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10000B150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  if (a1)
  {
    if (qword_10001D750 != -1)
    {
      swift_once();
    }

    v12 = sub_10000C438(v4, qword_10001D980);
    (*(v5 + 16))(v11, v12, v4);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_10000C470(v17, v18, &v27);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to activate Bluetooth controller: %s", v15, 0xCu);
      sub_100002C7C(v16);
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_10001D750 != -1)
    {
      swift_once();
    }

    v21 = sub_10000C438(v4, qword_10001D980);
    (*(v5 + 16))(v9, v21, v4);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Bluetooth controller activated.", v24, 2u);
    }

    (*(v5 + 8))(v9, v4);
    result = *(a2 + 16);
    if (result)
    {
      result = [result bluetoothState];
      if (result == 5)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      *(a2 + 40) = v25;
    }
  }

  return result;
}

void sub_10000B49C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10000B508(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for DispatchQoS();
  v8 = *(v19[0] - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v19[0]);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000A600())
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  *(a2 + 41) = v12;
  v13 = *(a2 + 48);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  aBlock[4] = sub_10000CB90;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000CC68;
  aBlock[3] = &unk_100018D38;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  static DispatchQoS.unspecified.getter();
  v19[1] = &_swiftEmptyArrayStorage;
  sub_10000A178();
  sub_100002AC0(&qword_10001D900, &unk_1000110C0);
  sub_10000A1D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v19[0]);
}

uint64_t sub_10000B7CC(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_10000CBB8(v6 + 56, v8);

    if (v9)
    {
      sub_100009568(v8, v7);
      sub_10000CAD8(v8);
      *(*sub_100002BE0(v7, v7[3]) + *a3) = a2;
      return sub_100002C7C(v7);
    }

    else
    {
      return sub_10000CAD8(v8);
    }
  }

  return result;
}

uint64_t sub_10000B89C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7)
  {
    [v7 invalidate];
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    [v8 stopMonitoringEventType:1];
    v9 = *(v1 + 24);
    if (v9)
    {
      [v9 invalidate];
    }
  }

  *(v1 + 32) = 0;
  if (qword_10001D750 != -1)
  {
    swift_once();
  }

  v10 = sub_10000C438(v2, qword_10001D980);
  (*(v3 + 16))(v6, v10, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Radio controller uninitialized!", v13, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_10000CAD8(v1 + 56);
  return v1;
}

uint64_t sub_10000BA98()
{
  sub_10000B89C();

  return _swift_deallocClassInstance(v0, 96, 7);
}

BOOL sub_10000BAF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if ([v1 bluetoothState] == 5)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    *(v0 + 40) = v2;
  }

  else
  {
    v2 = *(v0 + 40);
  }

  if (v2 == 2)
  {
    return 1;
  }

  if (!*(v0 + 24))
  {
    return *(v0 + 41) == 2;
  }

  v4 = sub_10000A600() == 0;
  result = v4;
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(v0 + 41) = v5;
  return result;
}

void sub_10000BB7C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10001D750 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C438(v4, qword_10001D980);
  (*(v5 + 16))(v8, v9, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = a1;
    if (a1)
    {
      v16 = 0x64656C62616E45;
    }

    else
    {
      v16 = 0x64656C6261736944;
    }

    if (a1)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    v18 = sub_10000C470(v16, v17, aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Setting Bluetooth status to: %s", v13, 0xCu);
    sub_100002C7C(v14);

    v2 = v25;
  }

  else
  {
    v15 = a1;
  }

  (*(v5 + 8))(v8, v4);
  v19 = *(v2 + 16);
  if (v19)
  {
    if (v15)
    {
      v20 = 5;
    }

    else
    {
      v20 = 4;
    }

    v21 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10000CAB8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000B49C;
    aBlock[3] = &unk_100018C70;
    v22 = _Block_copy(aBlock);
    v23 = v19;

    [v23 setPowerState:v20 completion:v22];
    _Block_release(v22);
  }
}

uint64_t sub_10000BE90(uint64_t result)
{
  if (!result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_10000BEF0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 3))
  {
    if (qword_10001D750 != -1)
    {
      swift_once();
    }

    v10 = sub_10000C438(v4, qword_10001D980);
    (*(v5 + 16))(v9, v10, v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      if (a1)
      {
        v15 = 0x64656C62616E45;
      }

      else
      {
        v15 = 0x64656C6261736944;
      }

      v24 = v2;
      v16 = a1;
      if (a1)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      v18 = sub_10000C470(v15, v17, &v25);
      a1 = v16;
      v2 = v24;

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Setting Wi-Fi status to: %s", v13, 0xCu);
      sub_100002C7C(v14);
    }

    (*(v5 + 8))(v9, v4);
    v19 = *(v2 + 3);
    if (v19)
    {
      if ([v19 userAutoJoinDisabled] && (a1 & 1) != 0)
      {
        v20 = *(v2 + 3);
        if (!v20)
        {
LABEL_29:
          __break(1u);
          return _objc_retain_x1();
        }

        v25 = 0;
        if (![v20 setUserAutoJoinDisabled:0 error:&v25])
        {
          v23 = v25;
LABEL_25:
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v21 = v25;
      }

      v22 = *(v2 + 3);
      if (v22)
      {
        v25 = 0;
        if ([v22 setPower:a1 & 1 error:&v25])
        {
          *(v2 + 41) = 1;

          return _objc_retain_x1();
        }

        v24 = v25;
        v23 = v25;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C3E4()
{
  result = qword_10001DB48;
  if (!qword_10001DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DB48);
  }

  return result;
}

uint64_t sub_10000C438(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C470(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C53C(v11, 0, 0, 1, a1, a2);
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
    sub_1000094BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002C7C(v11);
  return v7;
}

unint64_t sub_10000C53C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000C648(a5, a6);
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

char *sub_10000C648(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C694(a1, a2);
  sub_10000C7C4(&off_100018790);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000C694(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000C8B0(v5, 0);
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
        v7 = sub_10000C8B0(v10, 0);
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

uint64_t sub_10000C7C4(uint64_t result)
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

  result = sub_10000C924(result, v12, 1, v3);
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

void *sub_10000C8B0(uint64_t a1, uint64_t a2)
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

  sub_100002AC0(&qword_10001DB50, &qword_1000110B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000C924(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002AC0(&qword_10001DB50, &qword_1000110B0);
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

uint64_t *sub_10000CA1C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000CA80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CAC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CAD8(uint64_t a1)
{
  v2 = sub_100002AC0(&qword_10001DB58, &qword_1000110B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CB58()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000CBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AC0(&qword_10001DB58, &qword_1000110B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10000CC80(uint64_t a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert] = 0;
  v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus] = 0;
  v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus] = 0;
  *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller] = a1;
  v3 = type metadata accessor for DKPairingAlertView();
  v19.receiver = v1;
  v19.super_class = v3;

  v4 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  v5 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller;
  v6 = *&v4[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller];
  v18[3] = v3;
  v18[4] = &off_100018DB0;
  v18[0] = v4;
  swift_beginAccess();
  v7 = v4;

  sub_10000E098(v18, v6 + 56);
  swift_endAccess();

  v8 = *&v4[v5];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *&v4[v5];

    if ([v9 bluetoothState] == 5)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 2;
    }

    *(v8 + 40) = v11;
  }

  else
  {
    v11 = *(v8 + 40);
    v12 = *&v4[v5];
  }

  v7[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus] = v11;
  v13 = *&v4[v5];
  v14 = *(v13 + 24);

  if (v14)
  {
    v15 = sub_10000A600();

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    *(v13 + 41) = v16;
  }

  else
  {

    v16 = *(v13 + 41);
  }

  v7[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus] = v16;

  return v7;
}

uint64_t sub_10000CE6C(void *a1)
{
  v3 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger;
  Logger.init(subsystem:category:)();

  v4 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert;
  *(v1 + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert) = 0;
  *(v1 + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus) = 0;
  *(v1 + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus) = 0;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v1 + v3, v5);

  type metadata accessor for DKPairingAlertView();
  v6 = *((swift_isaMask & *v1) + 0x30);
  v7 = *((swift_isaMask & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10000D0AC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v73 - v8;
  v10 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus;
  if (v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__bluetoothStatus] == 2 || v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus] == 2)
  {
    if (*&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert])
    {
      return;
    }

    v78 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert;
    (*(v3 + 16))(v7, &v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger], v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Pushing alert to stack...", v13, 2u);
    }

    (*(v3 + 8))(v7, v2);
    v14 = OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller;
    v15 = *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller];

      if ([v16 bluetoothState] == 5)
      {
        LOBYTE(v18) = 1;
      }

      else
      {
        LOBYTE(v18) = 2;
      }

      *(v15 + 40) = v18;
    }

    else
    {
      v18 = *(v15 + 40);
      v23 = *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller];
    }

    v1[v10] = v18;
    v24 = *&v1[v14];
    if (*(v24 + 24))
    {
      v25 = *&v1[v14];

      if (sub_10000A600())
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      *(v24 + 41) = v26;
    }

    else
    {
      v26 = *(v24 + 41);
      v27 = *&v1[v14];
    }

    v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView__wifiStatus] = v26;
    v28 = objc_opt_self();
    v29 = [v28 mainBundle];
    v30._countAndFlagsBits = 0xD00000000000001BLL;
    v85._object = 0x8000000100012CC0;
    v31._countAndFlagsBits = 0xD000000000000027;
    v31._object = 0x8000000100012C70;
    v30._object = 0x8000000100012CA0;
    v85._countAndFlagsBits = 0xD00000000000003ELL;
    object = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v29, v30, v85)._object;

    v33 = [v28 mainBundle];
    v86._object = 0x8000000100012D80;
    v34._object = 0x8000000100012D00;
    v35._countAndFlagsBits = 0x1000000000000041;
    v35._object = 0x8000000100012D30;
    v86._countAndFlagsBits = 0xD000000000000040;
    v34._countAndFlagsBits = 0xD000000000000025;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v86)._object;

    v37 = MobileGestalt_get_current_device();
    if (v37)
    {
      v38 = v37;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {

        v40 = v28;
        v41 = [v28 mainBundle];
        v42._countAndFlagsBits = 0xD00000000000001ALL;
        v87._object = 0x8000000100012EC0;
        v43._countAndFlagsBits = 0xD000000000000027;
        v43._object = 0x8000000100012E70;
        v42._object = 0x8000000100012EA0;
        v87._countAndFlagsBits = 0xD00000000000003DLL;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v41, v42, v87)._object;

        v44 = [v28 mainBundle];
        v88._object = 0x8000000100012F80;
        v45._object = 0x8000000100012F00;
        v46._object = 0x8000000100012F30;
        v88._countAndFlagsBits = 0xD00000000000003FLL;
        v45._countAndFlagsBits = 0xD000000000000025;
        v46._countAndFlagsBits = 0x1000000000000040;
        v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v88)._object;
      }

      else
      {
        v40 = v28;
      }

      v77 = object;
      v47 = String._bridgeToObjectiveC()();
      v76 = v36;
      v48 = String._bridgeToObjectiveC()();
      v49 = [objc_opt_self() alertControllerWithTitle:v47 message:v48 preferredStyle:1];

      v50 = v78;
      v51 = *&v1[v78];
      *&v1[v78] = v49;
      v52 = v49;

      if (v52)
      {
        v53 = [v40 mainBundle];
        v54._countAndFlagsBits = 0xD00000000000001ELL;
        v89._countAndFlagsBits = 0xD000000000000022;
        v89._object = 0x8000000100012DF0;
        v55._countAndFlagsBits = 0x7373696D736944;
        v54._object = 0x8000000100012DD0;
        v55._object = 0xE700000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v53, v55, v89);
        v74 = v40;

        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v57 = String._bridgeToObjectiveC()();

        v83 = sub_10000E070;
        v84 = v56;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v75 = &v81;
        v81 = sub_100005480;
        v82 = &unk_100018DF0;
        v58 = _Block_copy(&aBlock);

        v59 = objc_opt_self();
        v60 = [v59 actionWithTitle:v57 style:1 handler:v58];
        _Block_release(v58);

        [v52 addAction:v60];
        v61 = *&v1[v50];
        if (v61)
        {
          v62 = v50;
          v63 = v61;
          v64 = [v74 mainBundle];
          v65._countAndFlagsBits = 0xD00000000000001DLL;
          v90._object = 0x8000000100012E40;
          v66._countAndFlagsBits = 0x6E4F206E727554;
          v65._object = 0x8000000100012E20;
          v90._countAndFlagsBits = 0xD00000000000002FLL;
          v66._object = 0xE700000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v90);

          v67 = swift_allocObject();
          swift_unknownObjectWeakInit();

          v68 = String._bridgeToObjectiveC()();

          v83 = sub_10000E090;
          v84 = v67;
          aBlock = _NSConcreteStackBlock;
          v80 = 1107296256;
          v81 = sub_100005480;
          v82 = &unk_100018E18;
          v69 = _Block_copy(&aBlock);

          v70 = [v59 actionWithTitle:v68 style:0 handler:v69];
          _Block_release(v69);

          [v63 addAction:v70];
          v71 = *&v1[v62];
          if (v71)
          {
            v72 = v71;

            [v1 presentViewController:v72 animated:1 completion:0];

            return;
          }

LABEL_33:
          __break(1u);
          return;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v3 + 16))(&v73 - v8, &v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger], v2);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Bluetooth and Wi-Fi enabled, dismissing alert...", v21, 2u);
  }

  (*(v3 + 8))(v9, v2);
  v22 = *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert];
  *&v1[OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_viewAlert] = 0;

  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_10000DA58()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger, v0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Dismiss pressed", v9, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10000DC20()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_logger, v0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Turn On pressed", v9, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC18DKPairingUIService18DKPairingAlertView_controller);
    v12 = v10;

    sub_10000BB7C(1);
    sub_10000BEF0(1);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v13 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_10000DE6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKPairingAlertView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DKPairingAlertView()
{
  result = qword_10001DB88;
  if (!qword_10001DB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DF84()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000E038()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E098(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AC0(&qword_10001DB58, &qword_1000110B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = *(&async function pointer to dispatch thunk of DockKitCorePairingService.setSetupPayload(uri:) + 1);
  v10 = (&async function pointer to dispatch thunk of DockKitCorePairingService.setSetupPayload(uri:) + async function pointer to dispatch thunk of DockKitCorePairingService.setSetupPayload(uri:));
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_10000E29C;

  return v10(a5);
}

uint64_t sub_10000E29C()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10000E45C;
  }

  else
  {
    v8 = sub_10000E3F8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10000E3F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000E45C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

id sub_10000E5D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10000E6BC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for MainActor();
  v12 = v10;
  v13 = static MainActor.shared.getter();
  v14 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = v12;
  (*(v3 + 32))(&v15[v14], v5, v2);
  sub_10000EA9C(0, 0, v9, &unk_100011150, v15);

  return 1;
}

uint64_t sub_10000E8D8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E9A4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002DD0;

  return sub_10000E1CC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100009628(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000F9A0(v11);
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

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000F9A0(a3);

      return v22;
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

  sub_10000F9A0(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000ED60(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000FA08(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10000FA08(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10000F050(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_10000FA08(v3, v5, v2 != 0);
  return v13;
}

id sub_10000EFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000F050(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000F800();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000F800();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
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

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void *sub_10000F250(uint64_t a1)
{
  v2 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  result = sub_10000ED60(a1);
  if (result)
  {
    v14 = result;
    v15 = [result URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    (*(v7 + 16))(v10, v12, v6);
    type metadata accessor for MainActor();
    v18 = v16;
    v19 = static MainActor.shared.getter();
    v20 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = v19;
    *(v21 + 3) = &protocol witness table for MainActor;
    *(v21 + 4) = v18;
    (*(v7 + 32))(&v21[v20], v10, v6);
    sub_10000EA9C(0, 0, v5, &unk_100011190, v21);

    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

uint64_t sub_10000F4F0(uint64_t a1, void *a2)
{
  v3 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v15 = [a2 URLContexts];
    sub_10000F800();
    sub_10000F84C();
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = sub_10000ED60(v16);

    if (v17)
    {
      v18 = [v17 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = [objc_allocWithZone(type metadata accessor for DockKitCorePairingService()) init];
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      (*(v8 + 16))(v11, v13, v7);
      type metadata accessor for MainActor();
      v21 = v19;
      v22 = static MainActor.shared.getter();
      v23 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v24 = swift_allocObject();
      *(v24 + 2) = v22;
      *(v24 + 3) = &protocol witness table for MainActor;
      *(v24 + 4) = v21;
      (*(v8 + 32))(&v24[v23], v11, v7);
      sub_10000EA9C(0, 0, v6, &unk_100011188, v24);

      return (*(v8 + 8))(v13, v7);
    }
  }

  return result;
}

unint64_t sub_10000F800()
{
  result = qword_10001DCC8;
  if (!qword_10001DCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001DCC8);
  }

  return result;
}

unint64_t sub_10000F84C()
{
  result = qword_10001DCD0;
  if (!qword_10001DCD0)
  {
    sub_10000F800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCD0);
  }

  return result;
}

uint64_t sub_10000F8A8(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A488;

  return sub_10000E1CC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000F9A0(uint64_t a1)
{
  v2 = sub_100002AC0(&qword_10001D8D0, &qword_100011140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FA08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000FA14()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000FAE0(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002DD0;

  return sub_10000E1CC(a1, v6, v7, v8, v1 + v5);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}