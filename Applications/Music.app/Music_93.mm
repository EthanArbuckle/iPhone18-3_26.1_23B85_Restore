uint64_t sub_100A3BD64()
{

  return _swift_task_switch(sub_100A3BE7C, 0, 0);
}

uint64_t sub_100A3BE7C()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[39] = v3;
  if (v3)
  {
    v4 = v0[23];
    v0[10] = v4;
    v0[13] = &type metadata for Player.ReplaceCommand;
    v0[14] = &protocol witness table for Player.ReplaceCommand;
    v0[11] = 3;
    v5 = v4;

    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_100A3BFCC;
    v7 = v0[26];

    return Player.perform(_:options:issuer:)((v0 + 10), 0x10000, 0, 0, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100A3BFCC(void *a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_100A3C178;
  }

  else
  {

    sub_10000959C(v4 + 80);
    v5 = sub_100A3C10C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A3C10C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A3C178()
{
  v32 = v0;

  sub_10000959C(v0 + 80);
  v1 = *(v0 + 328);
  *(v0 + 160) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      sub_100A5181C(v2, 0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      sub_100A517E8(v2, 0);
      if (os_log_type_enabled(v23, v24))
      {
        v26 = *(v0 + 192);
        v25 = *(v0 + 200);
        v27 = swift_slowAlloc();
        v31[0] = swift_slowAlloc();
        *v27 = 136446466;
        *(v27 + 4) = sub_100010678(v26, v25, v31);
        *(v27 + 12) = 2082;
        *(v0 + 176) = v2;
        sub_100A51840(v2);
        v28 = String.init<A>(describing:)();
        v30 = sub_100010678(v28, v29, v31);

        *(v27 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v27, 0x16u);
        swift_arrayDestroy();

        sub_100A517E8(v2, 0);
      }

      else
      {

        sub_100A517E8(v2, 0);
      }

      goto LABEL_14;
    }

    if (v3 == 3 && v2 == 2)
    {

      goto LABEL_8;
    }

    sub_100A517E8(*(v0 + 144), v3);
  }

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_100A52FE8(&qword_1011ACA58, &type metadata accessor for CocoaError.Code);
  v7 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_8:

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100010678(v11, v10, v31);
      _os_log_impl(&_mh_execute_header, v8, v9, "Intent id=%{public}s) — User cancelled", v12, 0xCu);
      sub_10000959C(v13);
LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v14))
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100010678(v16, v15, v31);
    *(v17 + 12) = 2082;
    *(v0 + 168) = v1;
    swift_errorRetain();
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v31);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v14, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100A3C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[126] = v4;
  v5[125] = a4;
  v5[124] = a3;
  v5[123] = a2;
  v5[122] = a1;
  v6 = type metadata accessor for UUID();
  v5[127] = v6;
  v5[128] = *(v6 - 8);
  v5[129] = swift_task_alloc();
  type metadata accessor for Locale();
  v5[130] = swift_task_alloc();
  v7 = type metadata accessor for String.LocalizationValue();
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[135] = v8;
  v5[136] = *(v8 - 8);
  v5[137] = swift_task_alloc();
  v5[138] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = type metadata accessor for MainActor();
  v5[149] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[150] = v10;
  v5[151] = v9;

  return _swift_task_switch(sub_100A3C8F4, v10, v9);
}

uint64_t sub_100A3C8F4()
{
  v18 = v0;
  v1 = v0[126];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v0[152] = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[153] = v3;
  if (v3)
  {
    v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v3 + v4) == 2)
    {
    }

    else
    {
      v8 = qword_1011A6A60;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000060E4(v9, static Logger.playbackController);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[124];
        v13 = v0[123];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_100010678(v13, v12, &v17);
        _os_log_impl(&_mh_execute_header, v10, v11, "Intent id=%{public}s) — Awaiting for engine to start", v14, 0xCu);
        sub_10000959C(v15);
      }
    }

    v16 = swift_task_alloc();
    v0[154] = v16;
    *v16 = v0;
    v16[1] = sub_100A3CC5C;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    sub_100A5172C();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100A3CC5C()
{
  v1 = *v0;

  v2 = *(v1 + 1208);
  v3 = *(v1 + 1200);

  return _swift_task_switch(sub_100A3CD7C, v3, v2);
}

uint64_t sub_100A3CD7C()
{
  v1 = *(v0 + 1000);
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = *(v0 + 960);
    v1 = [v2 route];
  }

  *(v0 + 1240) = v1;
  v3 = *(v0 + 976);
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v0 + 1248) = v4;
  *(v0 + 1256) = *(v3 + v4[5]);
  if ((*(v3 + v4[10]) & 1) != 0 || *(v3 + v4[9]) == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + v4[6]);
  }

  *(v0 + 1264) = v5;
  v6 = *(v0 + 1000);
  v7 = swift_task_alloc();
  *(v0 + 1272) = v7;
  *v7 = v0;
  v7[1] = sub_100A3CEEC;
  v8 = *(v0 + 976);

  return sub_100A44BC8(v1, v8);
}

uint64_t sub_100A3CEEC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 218) = a1;
  *(v4 + 1280) = v1;

  v5 = *(v3 + 1208);
  v6 = *(v3 + 1200);
  if (v1)
  {
    v7 = sub_100A40A44;
  }

  else
  {
    v7 = sub_100A3D034;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100A3D034()
{
  v81 = v0;
  if (*(v0 + 218) == 2)
  {
    v1 = *(v0 + 1240);

    v2 = *(v0 + 8);

    return v2();
  }

  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 1288) = sub_1000060E4(v4, static Logger.playbackController);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 218);
    v8 = *(v0 + 992);
    v9 = *(v0 + 984);
    v10 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_100010678(v9, v8, &v80);
    *(v10 + 12) = 2082;
    *(v0 + 217) = v7 & 1;
    v11 = String.init<A>(describing:)();
    v13 = sub_100010678(v11, v12, &v80);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Intent id=%{public}s) — Resolved Playability Options=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_100A51780(*(v0 + 976), *(v0 + 1176), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *(v0 + 1176);
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    (*(v17 + 32))(v16, v15, v18);
    v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v19 = *v15;
  }

  v20 = [v19 sharedListeningProperties];

  if (v20)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v21 = *(v0 + 952);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = [*(v0 + 952) isSharedListeningSession];

    if (!v22)
    {
      goto LABEL_25;
    }

    sub_100A51780(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = *(v0 + 1160);
    if (v23 == 1)
    {
      v25 = *(v0 + 1096);
      v26 = *(v0 + 1088);
      v27 = *(v0 + 1080);
      (*(v26 + 32))(v25, v24, v27);
      v28 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v28 = *v24;
    }

    v43 = [v28 tracklistSource];

    if (v43 == 100)
    {
LABEL_25:
      v44 = *(v0 + 1264);
      *(v0 + 1360) = *(v0 + 1256);
      *(v0 + 1352) = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v45 = *(v0 + 944);
      v46 = [v45 route];
      *(v0 + 1368) = v46;

      if (!v46)
      {
        v52 = *(v0 + 1240);
        goto LABEL_34;
      }

      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      *(v0 + 1376) = v47;
      if (!v47)
      {
        goto LABEL_31;
      }

      v48 = v47;
      v49 = v46;
      if ([v48 isDeviceRoute])
      {
LABEL_30:

LABEL_31:
        v52 = *(v0 + 1240);
LABEL_32:

LABEL_34:
        *(v0 + 1408) = v52;
        sub_100A51780(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v53 = swift_getEnumCaseMultiPayload();
        v54 = *(v0 + 1144);
        if (v53 == 1)
        {
          v55 = *(v0 + 1096);
          v56 = *(v0 + 1088);
          v57 = *(v0 + 1080);
          (*(v56 + 32))(v55, v54, v57);
          v58 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
          (*(v56 + 8))(v55, v57);
        }

        else
        {
          v58 = *v54;
        }

        *(v0 + 1416) = v58;
        *(v0 + 220) = *(*(v0 + 1248) + 32);
        *(v0 + 1424) = static MainActor.shared.getter();
        v60 = dispatch thunk of Actor.unownedExecutor.getter();
        *(v0 + 1432) = v60;
        *(v0 + 1440) = v59;

        return _swift_task_switch(sub_100A3EE00, v60, v59);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v50 = *(v0 + 760);
      v51 = *(v0 + 218);
      if (v50)
      {

        if ((v51 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((*(v0 + 218) & 1) == 0)
      {
        sub_100A51780(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v71 = swift_getEnumCaseMultiPayload();
        v72 = *(v0 + 1152);
        if (v71 == 1)
        {
          v73 = *(v0 + 1096);
          v74 = *(v0 + 1088);
          v75 = *(v0 + 1080);
          (*(v74 + 32))(v73, v72, v75);
          v76 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
          (*(v74 + 8))(v73, v75);
        }

        else
        {
          v76 = *v72;
        }

        v77 = [v76 prefersEnqueuingUsingAirPlay];

        if ((v77 & 1) == 0)
        {
          v79 = [v48 supportsRemoteControl];

          if (v79 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
          {
            v52 = *(v0 + 1240);
            if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
            {
              [*(v0 + 1376) establishGroup];
            }

            goto LABEL_32;
          }

          goto LABEL_51;
        }
      }

LABEL_51:
      v78 = swift_task_alloc();
      *(v0 + 1384) = v78;
      *v78 = v0;
      v78[1] = sub_100A3EB58;

      return Player.prepareForBufferedAirPlay()();
    }

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 992);
      v64 = *(v0 + 984);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_100010678(v64, v63, &v80);
      _os_log_impl(&_mh_execute_header, v61, v62, "Intent id=%{public}s) — Offering Shared Listening options", v65, 0xCu);
      sub_10000959C(v66);
    }

    v67 = swift_task_alloc();
    *(v0 + 1320) = v67;
    *v67 = v0;
    v67[1] = sub_100A3E4A4;
    v68 = *(v0 + 992);
    v69 = *(v0 + 984);
    v70 = *(v0 + 976);

    return sub_100A45714(v70, v69, v68);
  }

  else
  {
    sub_100A51780(*(v0 + 976), *(v0 + 1168), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *(v0 + 1168);
    if (v29 == 1)
    {
      v31 = *(v0 + 1096);
      v32 = *(v0 + 1088);
      v33 = *(v0 + 1080);
      (*(v32 + 32))(v31, v30, v33);
      v34 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v34 = *v30;
    }

    *(v0 + 1296) = v34;
    v35 = *(v0 + 1248);
    v36 = *(v0 + 976);
    v37 = (*(v0 + 1008) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v38 = v37[3];
    v39 = v37[4];
    sub_10000954C(v37, v38);
    *(v0 + 1304) = (*(v39 + 40))(v38, v39);
    v40 = *(v36 + *(v35 + 44));
    v41 = v34;
    v42 = swift_task_alloc();
    *(v0 + 1312) = v42;
    *v42 = v0;
    v42[1] = sub_100A3DB84;

    return GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(v34, v40, v40);
  }
}

uint64_t sub_100A3DB84(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  *(*v1 + 219) = a1;

  v4 = *(v2 + 1208);
  v5 = *(v2 + 1200);

  return _swift_task_switch(sub_100A3DCE8, v5, v4);
}

uint64_t sub_100A3DCE8()
{
  v51 = v0;
  v1 = *(v0 + 219);

  if (v1 == 1)
  {
    v2 = *(v0 + 1240);

    v3 = *(v0 + 8);

    return v3();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(v0 + 952);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [*(v0 + 952) isSharedListeningSession];

  if (!v6)
  {
    goto LABEL_11;
  }

  sub_100A51780(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 1160);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v0 + 1096);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1080);
    (*(v10 + 32))(v9, v8, v11);
    v12 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v12 = *v8;
  }

  v13 = [v12 tracklistSource];

  if (v13 == 100)
  {
LABEL_11:
    v14 = *(v0 + 1264);
    *(v0 + 1360) = *(v0 + 1256);
    *(v0 + 1352) = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = *(v0 + 944);
    v16 = [v15 route];
    *(v0 + 1368) = v16;

    if (!v16)
    {
      v22 = *(v0 + 1240);
      goto LABEL_20;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    *(v0 + 1376) = v17;
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = v17;
    v19 = v16;
    if ([v18 isDeviceRoute])
    {
LABEL_16:

LABEL_17:
      v22 = *(v0 + 1240);
LABEL_18:

LABEL_20:
      *(v0 + 1408) = v22;
      sub_100A51780(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v23 = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 1144);
      if (v23 == 1)
      {
        v25 = *(v0 + 1096);
        v26 = *(v0 + 1088);
        v27 = *(v0 + 1080);
        (*(v26 + 32))(v25, v24, v27);
        v28 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v26 + 8))(v25, v27);
      }

      else
      {
        v28 = *v24;
      }

      *(v0 + 1416) = v28;
      *(v0 + 220) = *(*(v0 + 1248) + 32);
      *(v0 + 1424) = static MainActor.shared.getter();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 1432) = v30;
      *(v0 + 1440) = v29;

      return _swift_task_switch(sub_100A3EE00, v30, v29);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = *(v0 + 760);
    v21 = *(v0 + 218);
    if (v20)
    {

      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(v0 + 218) & 1) == 0)
    {
      sub_100A51780(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v41 = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 1152);
      if (v41 == 1)
      {
        v43 = *(v0 + 1096);
        v44 = *(v0 + 1088);
        v45 = *(v0 + 1080);
        (*(v44 + 32))(v43, v42, v45);
        v46 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v44 + 8))(v43, v45);
      }

      else
      {
        v46 = *v42;
      }

      v47 = [v46 prefersEnqueuingUsingAirPlay];

      if ((v47 & 1) == 0)
      {
        v49 = [v18 supportsRemoteControl];

        if (v49 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
        {
          v22 = *(v0 + 1240);
          if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
          {
            [*(v0 + 1376) establishGroup];
          }

          goto LABEL_18;
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v48 = swift_task_alloc();
    *(v0 + 1384) = v48;
    *v48 = v0;
    v48[1] = sub_100A3EB58;

    return Player.prepareForBufferedAirPlay()();
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 992);
    v34 = *(v0 + 984);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_100010678(v34, v33, &v50);
    _os_log_impl(&_mh_execute_header, v31, v32, "Intent id=%{public}s) — Offering Shared Listening options", v35, 0xCu);
    sub_10000959C(v36);
  }

  v37 = swift_task_alloc();
  *(v0 + 1320) = v37;
  *v37 = v0;
  v37[1] = sub_100A3E4A4;
  v38 = *(v0 + 992);
  v39 = *(v0 + 984);
  v40 = *(v0 + 976);

  return sub_100A45714(v40, v39, v38);
}

uint64_t sub_100A3E4A4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 1328) = v3;

  if (v3)
  {
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_100A40B90;
  }

  else
  {
    *(v8 + 297) = a3;
    *(v8 + 1336) = a2;
    *(v8 + 1344) = a1;
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_100A3E5EC;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100A3E5EC()
{
  if (*(v0 + 297))
  {
    v1 = *(v0 + 1240);

    sub_100A5172C();
    swift_allocError();
    *v2 = 2;
    *(v2 + 8) = 3;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 1336);
  *(v0 + 1360) = *(v0 + 1344);
  *(v0 + 1352) = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(v0 + 944);
  v7 = [v6 route];
  *(v0 + 1368) = v7;

  if (!v7)
  {
    v13 = *(v0 + 1240);
    goto LABEL_14;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  *(v0 + 1376) = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = v7;
  if ([v9 isDeviceRoute])
  {
LABEL_10:

LABEL_11:
    v13 = *(v0 + 1240);
LABEL_12:

LABEL_14:
    *(v0 + 1408) = v13;
    sub_100A51780(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v0 + 1144);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v0 + 1096);
      v17 = *(v0 + 1088);
      v18 = *(v0 + 1080);
      (*(v17 + 32))(v16, v15, v18);
      v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v19 = *v15;
    }

    *(v0 + 1416) = v19;
    *(v0 + 220) = *(*(v0 + 1248) + 32);
    *(v0 + 1424) = static MainActor.shared.getter();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1432) = v21;
    *(v0 + 1440) = v20;

    return _swift_task_switch(sub_100A3EE00, v21, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = *(v0 + 760);
  v12 = *(v0 + 218);
  if (v11)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if (*(v0 + 218))
  {
    goto LABEL_25;
  }

  sub_100A51780(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v22 = swift_getEnumCaseMultiPayload();
  v23 = *(v0 + 1152);
  if (v22 == 1)
  {
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 1080);
    (*(v25 + 32))(v24, v23, v26);
    v27 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v27 = *v23;
  }

  v28 = [v27 prefersEnqueuingUsingAirPlay];

  if (v28)
  {
LABEL_25:

    goto LABEL_26;
  }

  v30 = [v9 supportsRemoteControl];

  if (v30 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
  {
    v13 = *(v0 + 1240);
    if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
    {
      [*(v0 + 1376) establishGroup];
    }

    goto LABEL_12;
  }

LABEL_26:
  v29 = swift_task_alloc();
  *(v0 + 1384) = v29;
  *v29 = v0;
  v29[1] = sub_100A3EB58;

  return Player.prepareForBufferedAirPlay()();
}

uint64_t sub_100A3EB58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1392) = v1;

  if (v1)
  {
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_100A40CDC;
  }

  else
  {
    v4[175] = a1;
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_100A3EC88;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100A3EC88()
{
  v1 = *(v0 + 1400);
  if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
  {
    [*(v0 + 1376) establishGroup];
  }

  *(v0 + 1408) = v1;
  sub_100A51780(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 1144);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1088);
    v6 = *(v0 + 1080);
    (*(v5 + 32))(v4, v3, v6);
    v7 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v7 = *v3;
  }

  *(v0 + 1416) = v7;
  *(v0 + 220) = *(*(v0 + 1248) + 32);
  *(v0 + 1424) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1432) = v9;
  *(v0 + 1440) = v8;

  return _swift_task_switch(sub_100A3EE00, v9, v8);
}

uint64_t sub_100A3EE00()
{
  v21 = v0;
  v1 = sub_100A463B8(*(v0 + 1416), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1448) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_100010678(v5, v4, v20);
      *(v6 + 12) = 2082;
      sub_10010FC20(&qword_1011ACA60);
      v7 = Array.description.getter();
      v9 = sub_100010678(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 220);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1464) = v13;
    *v13 = v0;
    v13[1] = sub_100A406D8;
    v14 = *(v0 + 1408);

    return sub_100A43F80(v1, 0x10000, 1, v14, v11, v12 + v10);
  }

  else
  {

    sub_100A5172C();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1456) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_100A3F09C, v19, v18);
  }
}

uint64_t sub_100A3F09C()
{
  v147 = v0;
  v1 = *(v0 + 1456);

  *(v0 + 936) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  if (!swift_dynamicCast())
  {
    v15 = *(v0 + 1408);

    swift_willThrow();

LABEL_9:

    v16 = *(v0 + 8);
LABEL_10:

    return v16();
  }

  v2 = *(v0 + 720);
  *(v0 + 1480) = v2;
  v3 = *(v0 + 728);
  *(v0 + 1488) = v3;
  v4 = _convertErrorToNSError(_:)();
  *(v0 + 1496) = v4;
  _s3__C4CodeOMa_0(0);
  *(v0 + 928) = 1;
  sub_100A52FE8(&qword_1011A79D0, _s3__C4CodeOMa_0);
  v5 = v4;
  v6 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v6)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 992);
      v10 = *(v0 + 984);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v146[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_100010678(v10, v9, v146);
      _os_log_impl(&_mh_execute_header, v7, v8, "Intent id=%{public}s) — Offering replace intent options to user", v11, 0xCu);
      sub_10000959C(v12);
    }

    *(v0 + 1504) = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1512) = v14;
    *(v0 + 1520) = v13;

    return _swift_task_switch(sub_100A40E30, v14, v13);
  }

  *(v0 + 888) = 5;
  v17 = v5;
  v18 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v18)
  {
    v143 = *(v0 + 1408);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1008);
    v21 = *(v0 + 976);

    v22 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v23 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000954C((v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
    sub_1000089F8(v21 + *(v19 + 28), v0 + 144, &qword_1011ACCA0);
    *(v0 + 216) = 2;
    (*(v23 + 8))(v0 + 144, v22, v23);
    sub_100A52D6C(v0 + 144);
    sub_100A5172C();
    swift_allocError();
    *v24 = 1;
    *(v24 + 8) = 3;
    swift_willThrow();

    goto LABEL_9;
  }

  *(v0 + 856) = 3;
  v25 = v17;
  v26 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v26)
  {
    sub_100A51780(*(v0 + 976), *(v0 + 1128), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *(v0 + 1128);
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(v0 + 1096);
      v30 = *(v0 + 1088);
      v31 = *(v0 + 1080);
      (*(v30 + 32))(v29, v28, v31);
      v32 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v30 + 8))(v29, v31);
    }

    else
    {
      v32 = *v28;
    }

    *(v0 + 1608) = v32;
    v41 = *(v0 + 220);
    v42 = *(v0 + 976);
    v43 = swift_task_alloc();
    *(v0 + 1616) = v43;
    *v43 = v0;
    v43[1] = sub_100A41B6C;
    v44 = *(v0 + 992);
    v45 = *(v0 + 984);

    return sub_100A3B22C(v32, v45, v44, v42 + v41);
  }

  _s3__C4CodeOMa_1(0);
  *(v0 + 848) = 1001;
  sub_100A52FE8(&unk_1011ACC70, _s3__C4CodeOMa_1);
  v33 = v25;
  v34 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v34 & 1) == 0)
  {
    v46 = *(v0 + 1408);

LABEL_56:
    sub_100A516D8();
    swift_allocError();
    *v87 = v2;
    v87[1] = v3;
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_9;
  }

  sub_100A51780(*(v0 + 976), *(v0 + 1120), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *(v0 + 1120);
  if (v35 == 1)
  {
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1080);
    (*(v38 + 32))(v37, v36, v39);
    v40 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v40 = *v36;
  }

  v47 = [v40 sharedListeningProperties];

  if (!v47)
  {
    goto LABEL_41;
  }

  v48 = [v33 userInfo];
  v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v49 + 16))
  {

    goto LABEL_43;
  }

  v52 = sub_100019C28(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

  sub_10000DD18(*(v49 + 56) + 32 * v52, v0 + 576);

  type metadata accessor for MPCPlayerRequestError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:

LABEL_44:
    if (!*(*(v0 + 1008) + *(v0 + 1216)))
    {
      goto LABEL_55;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v72 = *(v0 + 840);
    if (!v72)
    {
      goto LABEL_55;
    }

    v73 = [v33 userInfo];
    v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v74 + 16))
    {
      v77 = sub_100019C28(v75, v76);
      v79 = v78;

      if (v79)
      {
        v80 = (v0 + 832);
        sub_10000DD18(*(v74 + 56) + 32 * v77, v0 + 608);

        type metadata accessor for MPCMusicBehaviorError(0);
        if (swift_dynamicCast())
        {
          v81 = *v80;
          *(v0 + 800) = *v80;
          sub_100A52FE8(&qword_1011A7950, type metadata accessor for MPCMusicBehaviorError);
          _BridgedStoredNSError.code.getter();
          if (*(v0 + 792) == 6)
          {
            v145 = v0;
            *(v0 + 968) = v81;
            v82 = _BridgedStoredNSError.userInfo.getter();
            v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(v82 + 16) && (v85 = sub_100019C28(v83, v84), (v86 & 1) != 0))
            {
              sub_10000DD18(*(v82 + 56) + 32 * v85, v0 + 512);
            }

            else
            {
              *(v0 + 512) = 0u;
              *(v0 + 528) = 0u;
            }

            if (!*(v0 + 536))
            {

              sub_1000095E8(v0 + 512, &qword_1011ABB20);
              goto LABEL_55;
            }

            v88 = v0 + 768;
            sub_10010FC20(&qword_1011ACC80);
            if (swift_dynamicCast())
            {
              v144 = v81;
              if (*(*v88 + 16))
              {
                v89 = *(*v88 + 32);

                *(v145 + 776) = v89;
                _BridgedStoredNSError.code.getter();
                if (*(v145 + 784) == 4)
                {
                  v142 = v89;
                  *(v145 + 752) = v89;
                  v90 = _BridgedStoredNSError.userInfo.getter();
                  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  if (*(v90 + 16) && (v93 = sub_100019C28(v91, v92), (v94 & 1) != 0))
                  {
                    v0 = v145;
                    sub_10000DD18(*(v90 + 56) + 32 * v93, v145 + 640);
                  }

                  else
                  {
                    v0 = v145;
                    *(v145 + 640) = 0u;
                    *(v145 + 656) = 0u;
                  }

                  if (*(v0 + 664))
                  {
                    v95 = v0 + 808;
                    sub_10010FC20(&qword_1011ACC88);
                    if (swift_dynamicCast())
                    {
                      if (*(*v95 + 16))
                      {
                        v96 = *(*v95 + 32);

                        *(v145 + 816) = v96;
                        type metadata accessor for MPCError(0);
                        sub_100A52FE8(&qword_1011A79A0, type metadata accessor for MPCError);
                        _BridgedStoredNSError.code.getter();

                        if (*(v145 + 824) == 61)
                        {

                          v97 = Logger.logObject.getter();
                          v98 = static os_log_type_t.default.getter();

                          if (os_log_type_enabled(v97, v98))
                          {
                            v99 = *(v145 + 992);
                            v100 = *(v145 + 984);
                            v101 = swift_slowAlloc();
                            v102 = swift_slowAlloc();
                            v146[0] = v102;
                            *v101 = 136446210;
                            *(v101 + 4) = sub_100010678(v100, v99, v146);
                            _os_log_impl(&_mh_execute_header, v97, v98, "Intent id=%{public}s) — SharePlayTogether content not available in host's storefront", v101, 0xCu);
                            sub_10000959C(v102);
                          }

                          v141 = (v145 + 376);
                          v103 = *(v145 + 1072);
                          v104 = *(v145 + 1064);
                          v105 = *(v145 + 1056);
                          v106 = *(v145 + 1048);
                          String.LocalizationValue.init(stringLiteral:)();
                          v137 = *(v105 + 16);
                          v137(v104, v103, v106);
                          if (qword_1011A6740 != -1)
                          {
                            swift_once();
                          }

                          v107 = *(v145 + 1072);
                          v108 = *(v145 + 1064);
                          v109 = *(v145 + 1056);
                          v110 = *(v145 + 1048);
                          v136 = *(v145 + 1032);
                          v138 = *(v145 + 1024);
                          v139 = *(v145 + 1016);
                          v140 = *(v145 + 1008);
                          v111 = qword_101219808;
                          static Locale.current.getter();
                          v112 = v111;
                          v113 = String.init(localized:table:bundle:locale:comment:)();
                          v134 = v114;
                          v135 = v113;
                          v115 = *(v109 + 8);
                          v115(v107, v110);
                          String.LocalizationValue.init(stringLiteral:)();
                          v137(v108, v107, v110);
                          static Locale.current.getter();
                          v116 = String.init(localized:table:bundle:locale:comment:)();
                          v132 = v117;
                          v133 = v116;
                          v115(v107, v110);
                          sub_10010FC20(&qword_1011A7C00);
                          v118 = swift_allocObject();
                          *(v118 + 16) = xmmword_100EBC6B0;
                          String.LocalizationValue.init(stringLiteral:)();
                          v137(v108, v107, v110);
                          static Locale.current.getter();
                          v119 = String.init(localized:table:bundle:locale:comment:)();
                          v121 = v120;
                          v115(v107, v110);
                          UUID.init()();
                          v122 = UUID.uuidString.getter();
                          v124 = v123;
                          (*(v138 + 8))(v136, v139);
                          *(v118 + 32) = v122;
                          *(v118 + 40) = v124;
                          *(v118 + 48) = v119;
                          *(v118 + 56) = v121;
                          *(v118 + 64) = 2;
                          *(v118 + 72) = 0;
                          *(v118 + 80) = 0;
                          LOBYTE(v146[0]) = 1;
                          *(v145 + 376) = v135;
                          *(v145 + 384) = v134;
                          *(v145 + 392) = v133;
                          *(v145 + 400) = v132;
                          *(v145 + 408) = 0;
                          *(v145 + 416) = 0;
                          *(v145 + 424) = 1;
                          *(v145 + 432) = v118;
                          *(v145 + 440) = 0;
                          v125 = *(v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                          v126 = *(v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                          sub_10000954C((v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v125);
                          v127 = *(v145 + 424);
                          *(v145 + 256) = *(v145 + 408);
                          *(v145 + 272) = v127;
                          *(v145 + 288) = *(v145 + 440);
                          v128 = *(v145 + 392);
                          *(v145 + 224) = *v141;
                          *(v145 + 240) = v128;
                          *(v145 + 296) = 0;
                          v129 = *(v126 + 8);
                          sub_10053A574(v141, v145 + 304);
                          v129(v145 + 224, v125, v126);

                          sub_100344A84(v141);

                          sub_100A52D6C(v145 + 224);
                          v130 = *(v145 + 1408);

                          v16 = *(v145 + 8);
                          goto LABEL_10;
                        }
                      }

                      else
                      {
                      }
                    }

                    v0 = v145;
                  }

                  else
                  {

                    sub_1000095E8(v0 + 640, &qword_1011ABB20);
                  }
                }

                else
                {

                  v0 = v145;
                }
              }

              else
              {
              }

              goto LABEL_55;
            }
          }
        }

LABEL_55:
        v46 = *(v0 + 1408);
        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  v55 = *(v0 + 864);
  *(v0 + 1632) = v55;
  *(v0 + 872) = v55;
  sub_100A52FE8(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError);
  _BridgedStoredNSError.code.getter();
  if (*(v0 + 880) != 1000)
  {

    goto LABEL_44;
  }

  *(v0 + 896) = v55;
  v56 = _BridgedStoredNSError.userInfo.getter();
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v56 + 16))
  {

    goto LABEL_68;
  }

  v59 = sub_100019C28(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  sub_10000DD18(*(v56 + 56) + 32 * v59, v0 + 544);

  type metadata accessor for MPCError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:

LABEL_70:

    goto LABEL_44;
  }

  v62 = *(v0 + 904);
  *(v0 + 1640) = v62;
  *(v0 + 912) = v62;
  sub_100A52FE8(&qword_1011A79A0, type metadata accessor for MPCError);
  _BridgedStoredNSError.code.getter();
  if (*(v0 + 920) != 58)
  {

    goto LABEL_70;
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 992);
    v66 = *(v0 + 984);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v146[0] = v68;
    *v67 = 136446210;
    *(v67 + 4) = sub_100010678(v66, v65, v146);
    _os_log_impl(&_mh_execute_header, v63, v64, "Intent id=%{public}s) — SharedListening requires system route", v67, 0xCu);
    sub_10000959C(v68);
  }

  v69 = objc_opt_self();
  *(v0 + 1648) = v69;
  v70 = [v69 systemRoute];
  *(v0 + 1656) = v70;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_100A41C90;
  v71 = swift_continuation_init();
  *(v0 + 504) = sub_10010FC20(&unk_1011AD160);
  *(v0 + 448) = _NSConcreteStackBlock;
  *(v0 + 456) = 1107296256;
  *(v0 + 464) = sub_100950FD0;
  *(v0 + 472) = &unk_1010DA7D8;
  *(v0 + 480) = v71;
  [v69 setActiveRoute:v70 completion:v0 + 448];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100A406D8()
{
  v2 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100A409C8;
  }

  else
  {

    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100A40814;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A40814()
{
  v1 = v0[177];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_100A40884, v3, v2);
}

uint64_t sub_100A40884()
{
  v1 = *(v0 + 1408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A409C8()
{

  v0[182] = v0[184];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_100A3F09C, v2, v1);
}

uint64_t sub_100A40A44()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A40B90()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A40CDC()
{
  v1 = v0[171];
  v2 = v0[155];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A40E30()
{
  v1 = static MainActor.shared.getter();
  *(v0 + 1528) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100A40EC4, v2, v4);
}

uint64_t sub_100A40EC4()
{
  v1 = v0[126];
  v0[2] = v0;
  v0[7] = v0 + 92;
  v0[3] = sub_100A40F78;
  v2 = swift_continuation_init();
  sub_100A46948(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100A40F78()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 1536) = *(*v0 + 736);
  *(v2 + 298) = *(v2 + 744);
  v3 = *(v1 + 1520);
  v4 = *(v1 + 1512);

  return _swift_task_switch(sub_100A4109C, v4, v3);
}

uint64_t sub_100A4109C()
{

  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_100A41104, v2, v1);
}

uint64_t sub_100A41104()
{
  if (*(v0 + 298))
  {
    v1 = *(v0 + 1496);
    v2 = *(v0 + 1408);

    sub_100A5172C();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 3;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_100A51780(*(v0 + 976), *(v0 + 1136), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 1136);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1088);
      v10 = *(v0 + 1080);
      (*(v9 + 32))(v8, v7, v10);
      v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v11 = *v7;
    }

    *(v0 + 1544) = v11;
    *(v0 + 1552) = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1560) = v13;
    *(v0 + 1568) = v12;

    return _swift_task_switch(sub_100A413C0, v13, v12);
  }
}

uint64_t sub_100A413C0()
{
  v21 = v0;
  v1 = sub_100A463B8(*(v0 + 1544), *(v0 + 1360), *(v0 + 1536));
  *(v0 + 1576) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_100010678(v5, v4, v20);
      *(v6 + 12) = 2082;
      sub_10010FC20(&qword_1011ACA60);
      v7 = Array.description.getter();
      v9 = sub_100010678(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1544);
    v11 = *(v0 + 220);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1592) = v13;
    *v13 = v0;
    v13[1] = sub_100A417D8;
    v14 = *(v0 + 1408);

    return sub_100A43F80(v1, 0x10000, 0, v14, v10, v12 + v11);
  }

  else
  {

    sub_100A5172C();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1584) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_100A4165C, v19, v18);
  }
}

uint64_t sub_100A4165C()
{
  v1 = v0[193];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A417D8()
{
  v2 = *v1;
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v3 = *(v2 + 1568);
    v4 = *(v2 + 1560);
    v5 = sub_100A41AF0;
  }

  else
  {

    v3 = *(v2 + 1568);
    v4 = *(v2 + 1560);
    v5 = sub_100A41914;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A41914()
{
  v1 = v0[193];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_100A41984, v3, v2);
}

uint64_t sub_100A41984()
{
  v1 = v0[187];

  v2 = v0[176];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A41AF0()
{

  v0[198] = v0[200];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_100A4165C, v2, v1);
}

uint64_t sub_100A41B6C()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  if (v0)
  {
    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_100A42704;
  }

  else
  {

    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_100A53DC8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A41C90()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1664) = v2;
  v3 = *(v1 + 1208);
  v4 = *(v1 + 1200);
  if (v2)
  {
    v5 = sub_100A42880;
  }

  else
  {
    v5 = sub_100A41DC0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A41DC0()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 976);

  sub_100A51780(v2, v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 1112);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 1096);
    v6 = *(v0 + 1088);
    v7 = *(v0 + 1080);
    (*(v6 + 32))(v5, v4, v7);
    v8 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = *v4;
  }

  *(v0 + 1672) = v8;
  *(v0 + 1680) = [*(v0 + 1648) systemRoute];
  *(v0 + 1688) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1696) = v10;
  *(v0 + 1704) = v9;

  return _swift_task_switch(sub_100A41F18, v10, v9);
}

uint64_t sub_100A41F18()
{
  v22 = v0;
  v1 = sub_100A463B8(*(v0 + 1672), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1712) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_100010678(v5, v4, v21);
      *(v6 + 12) = 2082;
      sub_10010FC20(&qword_1011ACA60);
      v7 = Array.description.getter();
      v9 = sub_100010678(v7, v8, v21);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1680);
    v11 = *(v0 + 1672);
    v12 = *(v0 + 220);
    v13 = *(v0 + 976);
    v14 = swift_task_alloc();
    *(v0 + 1728) = v14;
    *v14 = v0;
    v14[1] = sub_100A4234C;

    return sub_100A43F80(v1, 0x10000, 1, v10, v11, v13 + v12);
  }

  else
  {
    v16 = *(v0 + 1680);

    sub_100A5172C();
    v17 = swift_allocError();
    *v18 = v1;
    *(v18 + 8) = 1;
    swift_willThrow();

    *(v0 + 1720) = v17;
    v19 = *(v0 + 1208);
    v20 = *(v0 + 1200);

    return _swift_task_switch(sub_100A421C0, v20, v19);
  }
}

uint64_t sub_100A421C0()
{
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100A4234C()
{
  v2 = *v1;
  *(*v1 + 1736) = v0;

  if (v0)
  {
    v3 = *(v2 + 1704);
    v4 = *(v2 + 1696);
    v5 = sub_100A4267C;
  }

  else
  {

    v3 = *(v2 + 1704);
    v4 = *(v2 + 1696);
    v5 = sub_100A42488;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A42488()
{
  v1 = v0[210];
  v2 = v0[209];

  v3 = v0[151];
  v4 = v0[150];

  return _swift_task_switch(sub_100A42500, v4, v3);
}

uint64_t sub_100A42500()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[187];

  v4 = v0[176];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100A4267C()
{

  *(v0 + 1720) = *(v0 + 1736);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_100A421C0, v2, v1);
}

uint64_t sub_100A42704()
{
  v1 = v0[201];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A42880()
{
  v1 = v0[207];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100A42A14(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v4;
  v2[30] = v3;

  return _swift_task_switch(sub_100A42AAC, v4, v3);
}

uint64_t sub_100A42AAC()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 248) = v3;
  if (v3)
  {

    if (sub_100A51CD0(&_mh_execute_header))
    {
      if (qword_1011A6A60 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      *(v0 + 272) = sub_1000060E4(v4, static Logger.playbackController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "[Auto-Sing] Awaiting for Vocals Command…", v7, 2u);
      }

      *(v0 + 160) = &type metadata for Player.VocalsCommand;
      *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
      *(v0 + 140) = 1;
      *(v0 + 136) = 0;
      v8 = swift_task_alloc();
      *(v0 + 280) = v8;
      *v8 = v0;
      v8[1] = sub_100A430B8;
      v9 = *(v0 + 208);
      v10 = 5.0;
      v11 = v0 + 136;
    }

    else
    {
      if (qword_1011A6A60 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000060E4(v14, static Logger.playbackController);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "[Auto-Sing] Preparing VA…", v17, 2u);
      }

      *(v0 + 120) = &type metadata for Player.VocalsCommand.Prepare;
      *(v0 + 128) = &protocol witness table for Player.VocalsCommand.Prepare;
      v18 = swift_task_alloc();
      *(v0 + 256) = v18;
      *v18 = v0;
      v18[1] = sub_100A42DFC;
      v9 = *(v0 + 208);
      v11 = v0 + 96;
      v10 = 5.0;
    }

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v11, 0, 0, 0, v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100A42DFC(void *a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_100A43328;
  }

  else
  {

    sub_10000959C(v4 + 96);
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_100A42F28;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100A42F28()
{
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 272) = sub_1000060E4(v1, static Logger.playbackController);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Auto-Sing] Awaiting for Vocals Command…", v4, 2u);
  }

  *(v0 + 160) = &type metadata for Player.VocalsCommand;
  *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 140) = 1;
  *(v0 + 136) = 0;
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_100A430B8;
  v6 = *(v0 + 208);

  return Player.performWhenAvailable(_:options:issuer:timeout:)(v0 + 136, 0, 0, 0, v6, 5.0);
}

uint64_t sub_100A430B8(void *a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_100A43568;
  }

  else
  {

    sub_10000959C(v4 + 136);
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_100A431E4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100A431E4()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Auto-Sing] Vocals command performed", v3, 2u);
  }

  v4 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v5 = v4[3];
  v6 = v4[4];
  sub_10000954C(v4, v5);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v6 + 8))(v0 + 16, v5, v6);

  sub_100A52D6C(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100A43328()
{
  v16 = v0;

  sub_10000959C(v0 + 96);
  v1 = *(v0 + 264);
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_10000954C(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_100A52D6C(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100A43568()
{
  v16 = v0;

  sub_10000959C(v0 + 136);
  v1 = *(v0 + 288);
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_10000954C(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_100A52D6C(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

BOOL PlaybackController.canPerform(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = sub_10000954C(a1, v5);

    v8 = sub_100A6CF80(v7, v4, v5, v6);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t PlaybackController.canPerform(anyOf:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    v4 = Player.canPerform(anyOf:)(a1);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t PlaybackController.performWhenAvailable(_:issuer:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return _swift_task_switch(sub_100A43990, v6, v5);
}

uint64_t sub_100A43990()
{
  v1 = *(v0 + 8);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 12) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 13) = v4;
    *v4 = v0;
    v4[1] = sub_100A43AAC;
    v5 = v0[7];
    v7 = *(v0 + 5);
    v6 = *(v0 + 6);

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v7, 0x10000, 1, 0, v6, v5);
  }

  else
  {

    v9 = *(v0 + 1);

    return v9(0);
  }
}

uint64_t sub_100A43AAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100A43C44;
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100A43BDC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100A43BDC()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100A43C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A43D98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1003EF994;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100A43F18;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100A43F18()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100A43F80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = v6;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 89) = a3;
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
  type metadata accessor for MainActor();
  *(v7 + 192) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 200) = v9;
  *(v7 + 208) = v8;

  return _swift_task_switch(sub_100A44024, v9, v8);
}

uint64_t sub_100A44024()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 216) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 224) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_100A44144;
    v5 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 89);
    v9 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v9, v6, v8, v7, v5);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100A44144(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_100A4462C;
  }

  else
  {

    v4[31] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_100A44274;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100A44274()
{
  v37 = v1;
  v2 = *(v1 + 248);

  v3 = (v2 & 0xFFFFFFFFFFFFFF8);
  if (v2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_12:
      sub_100A53D54(v4);
      goto LABEL_13;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v5 = *(v2 + 32);
  }

  v3 = v5;
  v6 = [v5 dialog];
  if (!v6)
  {

    v4 = 0;
    goto LABEL_12;
  }

  v0 = v6;
  if (qword_1011A6A60 != -1)
  {
LABEL_20:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, static Logger.playbackController);

  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v34 = v8;
  v35 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136446466;
    sub_10010FC20(&qword_1011ACA60);
    v12 = Array.description.getter();
    v14 = sub_100010678(v12, v13, &v36);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = v8;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100010678(v17, v19, &v36);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "⤵️ 🛑 Commands %{public}s — Perform error -> Presenting dialog for status=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v1 + 216);
  v22 = *(v1 + 184);
  v23 = *(v1 + 168);
  v24 = (v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v25 = *(v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v26 = *(v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v25);
  v27 = (*(v26 + 40))(v25, v26);
  v28 = *(v22 + v21);
  v29 = v24[3];
  v30 = v24[4];
  sub_10000954C(v24, v29);
  v31 = v23;

  MPCPlayerCommandDialog.alert(context:completion:)(v23, v27, v28, 0, 0, (v1 + 16));
  *(v1 + 88) = 0;
  (*(v30 + 8))(v1 + 16, v29, v30);
  sub_100A52D6C(v1 + 16);

LABEL_13:
  v32 = *(v1 + 8);

  return v32(v2);
}

uint64_t sub_100A4462C()
{
  v46 = v0;
  v2 = *(v0 + 240);

  *(v0 + 136) = v2;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = (v3 >> 62);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;
  v1 = &selRef_compoundStringWithElements_;
  v8 = [v6 dialog];

  if (!v8)
  {
LABEL_27:
    sub_100A516D8();
    swift_allocError();
    *v38 = v4;
    v38[1] = v3;
    swift_willThrow();

    goto LABEL_28;
  }

  v2 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_33;
  }

  v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_21:
    sub_100A53D54(v4);
    goto LABEL_22;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v10 = *(v3 + 32);
  }

  v5 = v10;
  v9 = [v10 v1[21]];
  if (!v9)
  {

    goto LABEL_21;
  }

  v42 = (v0 + 16);
  if (qword_1011A6A60 != -1)
  {
LABEL_37:
    v40 = v9;
    swift_once();
    v9 = v40;
  }

  v44 = v9;
  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, static Logger.playbackController);

  v12 = v5;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v43 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v15 = 136446466;
    sub_10010FC20(&qword_1011ACA60);
    v16 = Array.description.getter();
    v18 = sub_100010678(v16, v17, v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = v12;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_100010678(v21, v23, v45);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "⤵️ 🛑 Commands %{public}s — Perform error -> Presenting dialog for status=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v25 = *(v0 + 216);
  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v29 = *(v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v30 = *(v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v29);
  v31 = (*(v30 + 40))(v29, v30);
  v32 = *(v26 + v25);
  v33 = v28[3];
  v34 = v28[4];
  sub_10000954C(v28, v33);
  v41 = v27;

  MPCPlayerCommandDialog.alert(context:completion:)(v27, v31, v32, 0, 0, v42);
  *(v0 + 88) = 0;
  (*(v34 + 8))(v42, v33, v34);
  sub_100A52D6C(v42);
  if (v4)
  {

    sub_100A516D8();
    swift_allocError();
    *v35 = v4;
    v35[1] = v3;
    swift_willThrow();

LABEL_28:
    v39 = *(v0 + 8);

    return v39();
  }

LABEL_22:
  v36 = *(v0 + 8);

  return v36(v3);
}

uint64_t sub_100A44BC8(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[32] = swift_task_alloc();
  v3[33] = type metadata accessor for MainActor();
  v3[34] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[35] = v6;
  v3[36] = v5;

  return _swift_task_switch(sub_100A44CF4, v6, v5);
}

uint64_t sub_100A44CF4()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 296) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v1 + v2) && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v3 = *(v0 + 192), (*(v0 + 304) = v3) != 0))
  {
    v5 = *(v0 + 200);
    v4 = [objc_opt_self() sharedController];
    LODWORD(v5) = sub_100A47BEC(v5);

    if (v5)
    {
      sub_100A51780(*(v0 + 208), *(v0 + 256), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v0 + 256);
      if (EnumCaseMultiPayload == 1)
      {
        v9 = *(v0 + 232);
        v8 = *(v0 + 240);
        v10 = *(v0 + 224);
        (*(v9 + 32))(v8, v7, v10);
        v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v9 + 8))(v8, v10);
      }

      else
      {
        v11 = *v7;
      }

      v17 = [v11 tracklistToken];

      if (v17)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19 && (v20 = [v19 request]) != 0 && (v21 = v20, objc_opt_self(), v22 = swift_dynamicCastObjCClass(), v21, v22) && *(v1 + v2))
        {

          v23 = Player.supportsDelegation.getter();
          swift_unknownObjectRelease();

          if (v23)
          {
            v24 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
            swift_beginAccess();
            if (v3[v24])
            {
              LOBYTE(v5) = 1;
              goto LABEL_7;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v25 = *&v3[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
      if (!v25)
      {
        __break(1u);
        return _swift_task_switch(v25, v18, v15);
      }

      if ([v25 isPlaceholder])
      {
        v26 = static MainActor.shared.getter();
        *(v0 + 312) = v26;
        if (v26)
        {
          swift_getObjectType();
          v13 = dispatch thunk of Actor.unownedExecutor.getter();
          v15 = v27;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_100A45098;
        goto LABEL_28;
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = *(v0 + 200);
    v3 = [objc_opt_self() sharedController];
    LOBYTE(v5) = sub_100A47BEC(v5);
  }

LABEL_7:

  *(v0 + 345) = v5;
  v12 = static MainActor.shared.getter();
  *(v0 + 328) = v12;
  if (v12)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_100A45408;
LABEL_28:
  v25 = v16;
  v18 = v13;

  return _swift_task_switch(v25, v18, v15);
}

uint64_t sub_100A45098()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = sub_100A45194;
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    Player.requestSharePlayTogether(completion:)(sub_100A53A9C, v8);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_100A45194()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_100A4537C;
  }

  else
  {

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_100A452DC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A452DC()
{
  *(v0 + 345) = 0;
  v1 = static MainActor.shared.getter();
  *(v0 + 328) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100A45408, v2, v4);
}

uint64_t sub_100A4537C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A45408()
{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = sub_100A454C0;
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  sub_100A47D68(v5, v4, v3, v2);

  return _swift_continuation_await(v1);
}

uint64_t sub_100A454C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_100A45690;
  }

  else
  {

    *(v1 + 346) = *(v1 + 344);
    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_100A45610;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A45610()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

uint64_t sub_100A45690()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A45714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  type metadata accessor for Locale();
  v4[42] = swift_task_alloc();
  v5 = type metadata accessor for String.LocalizationValue();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[51] = swift_task_alloc();
  v4[52] = type metadata accessor for MainActor();
  v4[53] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[54] = v8;
  v4[55] = v7;

  return _swift_task_switch(sub_100A458D4, v8, v7);
}

uint64_t sub_100A458D4()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  sub_1000089F8(v1 + *(v2 + 28), v0 + 80, &qword_1011ACCA0);
  sub_1000089F8(v0 + 80, v0 + 200, &qword_1011ACCA0);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    sub_10000954C((v0 + 200), *(v0 + 224));
    sub_100A489B0(v3, v4, (v0 + 160));
    sub_10000959C(v0 + 200);
    if (*(v0 + 184))
    {
      sub_100059A8C((v0 + 160), v0 + 120);
      sub_10000954C((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (qword_1011A6B48 != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = (off_1011AFB48 + 32);
      v7 = *(off_1011AFB48 + 2) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 2;
        if (v8 == DynamicType)
        {
          sub_10000959C(v0 + 120);
          goto LABEL_11;
        }
      }

      sub_100A51780(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *(v0 + 408);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = *(v0 + 376);
        (*(v34 + 32))(v33, v32, v35);
        v36 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v34 + 8))(v33, v35);
      }

      else
      {
        v36 = *v32;
      }

      *(v0 + 448) = v36;
      v37 = *(v0 + 304);
      v38 = *(v2 + 32);
      v39 = swift_task_alloc();
      *(v0 + 456) = v39;
      *v39 = v0;
      v39[1] = sub_100A45DFC;
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return sub_100A3B22C(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    sub_1000095E8(v0 + 200, &qword_1011ACCA0);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  sub_1000095E8(v0 + 160, &qword_1011ACCA0);
LABEL_11:
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, static Logger.sharedListening);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  sub_1000089F8(v0 + 80, v0 + 240, &qword_1011ACCA0);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    sub_10000954C((v0 + 240), *(v0 + 264));
    v15 = sub_100A48E74(v13, v14);
    v17 = v16;
    sub_10000959C(v0 + 240);
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    sub_1000095E8(v0 + 240, &qword_1011ACCA0);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v21 + 16))(v18, v19, v20);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = qword_101219808;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    v17 = v26;
    (*(v24 + 8))(v22, v23);
  }

  *(v0 + 472) = v17;
  *(v0 + 480) = v15;
  v27 = static MainActor.shared.getter();
  *(v0 + 488) = v27;
  if (v27)
  {
    swift_getObjectType();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return _swift_task_switch(sub_100A4601C, v28, v30);
}

uint64_t sub_100A45DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_100A462EC;
  }

  else
  {
    v6 = sub_100A45F50;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100A45F50()
{

  sub_10000959C(v0 + 120);
  sub_1000095E8(v0 + 80, &qword_1011ACCA0);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_100A4601C()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_100A460F4;
  v5 = swift_continuation_init();
  sub_100A49A64(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100A460F4()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(sub_100A46210, v4, v3);
}

uint64_t sub_100A46210()
{

  sub_1000095E8(v0 + 80, &qword_1011ACCA0);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

uint64_t sub_100A462EC()
{

  sub_10000959C(v0 + 120);
  sub_1000095E8(v0 + 80, &qword_1011ACCA0);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100A463B8(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v43 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && sub_100A51850(v10, a3))
    {
      v9 = sub_10089CBF8(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_10089CBF8((v11 > 1), v12 + 1, 1, v9);
      }

      v41 = &type metadata for Player.ReplaceCommand;
      v42 = &protocol witness table for Player.ReplaceCommand;
      *&v40 = v10;
      *(&v40 + 1) = a3;
      v9[2] = v12 + 1;
      v13 = &v9[5 * v12];
      goto LABEL_34;
    }

    if (a2)
    {
      sub_10010FC20(&unk_1011ACA30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBDC20;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (sub_100A51A80(v19, 0) && sub_100A51BB0(1))
      {
        sub_1008A623C(inited);
        v41 = &type metadata for Player.ReplaceCommand;
        v42 = &protocol witness table for Player.ReplaceCommand;
        *&v40 = v19;
        *(&v40 + 1) = a3;
        v20 = v19;
      }

      else
      {

        v41 = &type metadata for Player.ReplaceCommand;
        v42 = &protocol witness table for Player.ReplaceCommand;
        *&v40 = v19;
        *(&v40 + 1) = a3;
        sub_100008FE4(&v40, v39);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10089CBF8(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_10089CBF8((v25 > 1), v26 + 1, 1, v9);
        }

        v27 = sub_100309A88(v39, v39[3]);
        v28 = __chkstk_darwin(v27);
        v30 = (&v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v31 + 16))(v30, v28);
        v32 = *v30;
        v33 = v30[1];
        v37 = &type metadata for Player.ReplaceCommand;
        v38 = &protocol witness table for Player.ReplaceCommand;
        *&v36 = v32;
        *(&v36 + 1) = v33;
        v9[2] = v26 + 1;
        sub_100059A8C(&v36, &v9[5 * v26 + 4]);
        sub_10000959C(v39);
        v43 = v9;
      }

      sub_10000959C(&v40);
      if (!sub_100A5196C(0))
      {

        return v43;
      }

      v9 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10089CBF8(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v34 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v34 >> 1)
      {
        v9 = sub_10089CBF8((v34 > 1), v17 + 1, 1, v9);
      }

      v41 = &type metadata for Player.PlaybackCommand;
      v42 = &protocol witness table for Player.PlaybackCommand;
      LOBYTE(v40) = 0;
    }

    else
    {
      if ((a2 & 4) != 0)
      {
        v14 = v10;
        v15 = sub_100A51A80(v14, 0);

        if (v15)
        {
          v9 = sub_10089CBF8(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = sub_10089CBF8((v16 > 1), v17 + 1, 1, v9);
          }

          v41 = &type metadata for Player.InsertCommand;
          v42 = &protocol witness table for Player.InsertCommand;
          v40 = v14;
          v9[2] = v17 + 1;
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = sub_100A51A80(v10, 1), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = sub_10089CBF8(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        v9 = sub_10089CBF8((v22 > 1), v17 + 1, 1, v9);
      }

      v41 = &type metadata for Player.InsertCommand;
      v42 = &protocol witness table for Player.InsertCommand;
      *&v40 = v10;
      *(&v40 + 1) = 1;
    }

    v9[2] = v23;
LABEL_33:
    v13 = &v9[5 * v17];
LABEL_34:
    sub_100059A8C(&v40, (v13 + 4));
  }

  return v9;
}

uint64_t sub_100A46948(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v61 = a1;
  v63 = type metadata accessor for UUID();
  v2 = *(v63 - 8);
  __chkstk_darwin(v63);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  String.LocalizationValue.init(stringLiteral:)();
  v62 = *(v7 + 16);
  v55 = v7 + 16;
  v62(v9, v12, v6);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v13 = qword_101219808;
  v14 = qword_101219808;
  v53 = v13;
  v15 = v14;
  static Locale.current.getter();
  v59 = v15;
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v50 = v16;
  v42 = *(v7 + 8);
  v42(v12, v6);
  v49 = swift_allocObject();
  v17 = v61;
  *(v49 + 16) = v61;
  UUID.init()();
  v48 = UUID.uuidString.getter();
  v60 = v18;
  v54 = *(v2 + 8);
  v54(v4, v63);
  String.LocalizationValue.init(stringLiteral:)();
  v62(v9, v12, v6);
  static Locale.current.getter();
  v59 = v59;
  v41 = v7 + 8;
  v47 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v19;
  v20 = v42;
  v42(v12, v6);
  v46 = swift_allocObject();
  *(v46 + 16) = v17;
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v56 = v21;
  v54(v4, v63);
  String.LocalizationValue.init(stringLiteral:)();
  v22 = v62;
  v62(v9, v12, v6);
  static Locale.current.getter();
  v23 = v59;
  v44 = String.init(localized:table:bundle:locale:comment:)();
  v59 = v24;
  v20(v12, v6);
  v58 = swift_allocObject();
  *(v58 + 16) = v61;
  UUID.init()();
  v61 = UUID.uuidString.getter();
  v43 = v25;
  v54(v4, v63);
  String.LocalizationValue.init(stringLiteral:)();
  v22(v9, v12, v6);
  static Locale.current.getter();
  v63 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  v20(v12, v6);
  sub_10010FC20(&qword_1011A7C00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBE260;
  v29 = v60;
  *(v28 + 32) = v48;
  *(v28 + 40) = v29;
  v30 = v50;
  *(v28 + 48) = v51;
  *(v28 + 56) = v30;
  *(v28 + 64) = 2;
  v31 = v49;
  *(v28 + 72) = &unk_100EF74E0;
  *(v28 + 80) = v31;
  v32 = v56;
  *(v28 + 88) = v45;
  *(v28 + 96) = v32;
  v33 = v57;
  *(v28 + 104) = v47;
  *(v28 + 112) = v33;
  *(v28 + 120) = 1;
  v34 = v46;
  *(v28 + 128) = &unk_100EF74F0;
  *(v28 + 136) = v34;
  v35 = v43;
  *(v28 + 144) = v61;
  *(v28 + 152) = v35;
  v36 = v59;
  *(v28 + 160) = v44;
  *(v28 + 168) = v36;
  *(v28 + 176) = 0;
  v37 = v58;
  *(v28 + 184) = &unk_100EF7500;
  *(v28 + 192) = v37;
  LOBYTE(v65[0]) = 1;
  v68 = 0uLL;
  *&v69 = v63;
  *(&v69 + 1) = v27;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = 0;
  LOBYTE(v71) = 1;
  *(&v71 + 1) = v28;
  v72 = 0;
  v38 = *(v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v39 = *(v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v63 = sub_10000954C((v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v38);
  v65[2] = v70;
  v65[3] = v71;
  v66 = v72;
  v65[0] = v68;
  v65[1] = v69;
  v67 = 0;
  v62 = *(v39 + 8);

  sub_10053A574(&v68, v64);
  v62(v65, v38, v39);
  sub_100344A84(&v68);

  return sub_100A52D6C(v65);
}

uint64_t sub_100A4718C()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 2;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A47234()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 1;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A472DC()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A47364(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v56 = a1;
  v52 = type metadata accessor for UUID();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v55 = *(v6 + 16);
  v55(v8, v11, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v12 = qword_101219808;
  v13 = qword_101219808;
  v41 = v12;
  v14 = v13;
  static Locale.current.getter();
  v45 = v14;
  v50 = String.init(localized:table:bundle:locale:comment:)();
  v49 = v15;
  v54 = *(v6 + 8);
  v54(v11, v5);
  v48 = swift_allocObject();
  *(v48 + 16) = v56;
  UUID.init()();
  v47 = UUID.uuidString.getter();
  v46 = v16;
  v40 = v6 + 8;
  v39 = *(v51 + 8);
  v17 = v52;
  v39(v3, v52);
  String.LocalizationValue.init(stringLiteral:)();
  v55(v8, v11, v5);
  static Locale.current.getter();
  v42 = v45;
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v45 = v18;
  v54(v11, v5);
  v44 = swift_allocObject();
  *(v44 + 16) = v56;
  UUID.init()();
  v43 = UUID.uuidString.getter();
  v56 = v19;
  v39(v3, v17);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = v55;
  v55(v8, v11, v5);
  static Locale.current.getter();
  v21 = v42;
  v52 = String.init(localized:table:bundle:locale:comment:)();
  v42 = v22;
  v23 = v54;
  v54(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v20(v8, v11, v5);
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v23(v11, v5);
  sub_10010FC20(&qword_1011A7C00);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBDC20;
  v28 = v46;
  *(v27 + 32) = v47;
  *(v27 + 40) = v28;
  v29 = v49;
  *(v27 + 48) = v50;
  *(v27 + 56) = v29;
  *(v27 + 64) = 2;
  v30 = v48;
  *(v27 + 72) = &unk_100EF7530;
  *(v27 + 80) = v30;
  v31 = v56;
  *(v27 + 88) = v43;
  *(v27 + 96) = v31;
  v32 = v45;
  *(v27 + 104) = v51;
  *(v27 + 112) = v32;
  *(v27 + 120) = 0;
  v33 = v44;
  *(v27 + 128) = &unk_100EF7540;
  *(v27 + 136) = v33;
  LOBYTE(v58[0]) = 1;
  *&v61 = v52;
  *(&v61 + 1) = v42;
  *&v62 = v24;
  *(&v62 + 1) = v26;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = 0;
  LOBYTE(v64) = 1;
  *(&v64 + 1) = v27;
  v65 = 0;
  v34 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v35 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v55 = sub_10000954C((v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v34);
  v58[2] = v63;
  v58[3] = v64;
  v59 = v65;
  v58[0] = v61;
  v58[1] = v62;
  v60 = 0;
  v36 = *(v35 + 8);

  sub_10053A574(&v61, v57);
  v36(v58, v34, v35);
  sub_100344A84(&v61);

  return sub_100A52D6C(v58);
}

uint64_t sub_100A47AD0()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A47B70()
{
  **(*(*(v0 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A47BEC(uint64_t result)
{
  if (result)
  {
    if (([result isDeviceRoute] & 1) == 0)
    {
      v2 = [v1 musicSubscriptionStatus];
      if (!v2)
      {
LABEL_8:
        v6 = [objc_opt_self() sharedController];
        v7 = [v6 isCloudLibraryEnabled];

        if (v7)
        {
          return 0;
        }

        else
        {
          return 2;
        }
      }

      v3 = v2;
      v4 = [v2 capabilities];
      v5 = [v3 capabilities];

      if ((v5 & 2) == 0)
      {
        if ((v4 & 1) == 0)
        {
          return 1;
        }

        goto LABEL_8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100A47CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10010FC20(&qword_1011AB640);
    swift_allocError();
    *v4 = a3;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100A47D68(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v70 = a3;
  v72 = a1;
  v6 = type metadata accessor for UUID();
  v69 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v71 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 applicationState];

  if (!a2)
  {
LABEL_8:
    **(*(v72 + 64) + 40) = 0;

    return swift_continuation_throwingResume();
  }

  if (v17 == 2)
  {
    if (qword_1011A6A60 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, static Logger.playbackController);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Music is background so bypass the requires subscription alert and use buffered AirPlay", v21, 2u);
    }

    goto LABEL_8;
  }

  v68 = a4;
  if (v70)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v23 = v71;
    (*(v71 + 16))(v12, v15, v10);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v24 = qword_101219808;
    static Locale.current.getter();
    v67 = String.init(localized:table:bundle:locale:comment:)();
    v66 = v25;
    (*(v23 + 8))(v15, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = v72;
    UUID.init()();
    v65 = UUID.uuidString.getter();
    v64 = v27;
    (*(v69 + 8))(v8, v6);
    v28 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_10089CAD0((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[56 * v30];
    v32 = v64;
    *(v31 + 4) = v65;
    *(v31 + 5) = v32;
    v33 = v66;
    *(v31 + 6) = v67;
    *(v31 + 7) = v33;
    v31[64] = 2;
    *(v31 + 9) = &unk_100EF7520;
    *(v31 + 10) = v26;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v34 = v71;
  v67 = v6;
  String.LocalizationValue.init(stringLiteral:)();
  v35 = *(v34 + 16);
  v66 = v34 + 16;
  v65 = v35;
  v35(v12, v15, v10);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v36 = qword_101219808;
  v37 = qword_101219808;
  static Locale.current.getter();
  v38 = v37;
  v64 = v36;
  v62 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v39;
  v63 = *(v34 + 8);
  v63(v15, v10);
  v41 = swift_allocObject();
  *(v41 + 16) = v72;
  UUID.init()();
  v60 = UUID.uuidString.getter();
  v43 = v42;
  (*(v69 + 8))(v8, v67);
  v72 = v43;

  v69 = v41;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v34 + 8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_10089CAD0(0, *(v28 + 2) + 1, 1, v28);
  }

  v46 = *(v28 + 2);
  v45 = *(v28 + 3);
  if (v46 >= v45 >> 1)
  {
    v28 = sub_10089CAD0((v45 > 1), v46 + 1, 1, v28);
  }

  *(v28 + 2) = v46 + 1;
  v47 = &v28[56 * v46];
  v48 = v72;
  *(v47 + 4) = v60;
  *(v47 + 5) = v48;
  *(v47 + 6) = v62;
  *(v47 + 7) = v40;
  v61 = v40;
  v47[64] = 0;
  v49 = v69;
  *(v47 + 9) = &unk_100EF7510;
  *(v47 + 10) = v49;
  v50 = sub_100A48760(v70);
  v52 = v51;
  String.LocalizationValue.init(stringLiteral:)();
  v65(v12, v15, v10);
  static Locale.current.getter();
  v53 = String.init(localized:table:bundle:locale:comment:)();
  v55 = v54;
  v63(v15, v10);
  LOBYTE(v74[0]) = 1;
  *&v77 = v50;
  *(&v77 + 1) = v52;
  *&v78 = v53;
  *(&v78 + 1) = v55;
  LOBYTE(v79) = 0;
  *(&v79 + 1) = 0;
  LOBYTE(v80) = 1;
  *(&v80 + 1) = v28;
  v81 = 0;
  v56 = *(v68 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v57 = *(v68 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v68 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v56);
  v74[2] = v79;
  v74[3] = v80;
  v75 = v81;
  v74[0] = v77;
  v74[1] = v78;
  v76 = 0;
  v58 = *(v57 + 8);
  sub_10053A574(&v77, v73);
  v58(v74, v56, v57);
  sub_100344A84(&v77);

  return sub_100A52D6C(v74);
}

uint64_t sub_100A48640()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A486E0()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A48760(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v14[-v9];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v10, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v10, v3);
  return v12;
}

uint64_t sub_100A489B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v40 = a2;
  v48 = type metadata accessor for GenericMusicItem();
  v41 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v38 - v6;
  v7 = type metadata accessor for Playlist.Entry.InternalItem();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Playlist.Entry();
  v43 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Track();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v20 = *(a1 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v20 + 16);
  v25(v24, v51, a1, v22);
  if (swift_dynamicCast())
  {
    (*(v14 + 32))(v16, v19, v13);
    Track.musicItem.getter(v50);
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v27 = v49;
    v26 = v50;
    if (swift_dynamicCast())
    {
      v29 = v42;
      v28 = v43;
      (*(v43 + 32))(v42, v12, v27);
      v30 = v44;
      Playlist.Entry.internalItem.getter();
      Playlist.Entry.InternalItem.musicItem.getter(v26);
      (*(v45 + 8))(v30, v46);
      (*(v28 + 8))(v29, v27);
    }

    else
    {
      v32 = v47;
      v31 = v48;
      if (swift_dynamicCast())
      {
        v33 = v41;
        v34 = v39;
        (*(v41 + 32))(v39, v32, v31);
        GenericMusicItem.innerMusicItem.getter(v26);
        (*(v33 + 8))(v34, v31);
      }

      else
      {
        v35 = v40;
        v26[3] = a1;
        v26[4] = v35;
        v36 = sub_10001C8B8(v26);
        (v25)(v36, v51, a1);
      }
    }
  }

  return (*(v20 + 8))(v24, a1);
}

uint64_t sub_100A48E74(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for Station();
  v40[0] = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MusicMovie();
  v40[1] = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TVEpisode();
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Playlist();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Album();
  v49 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for MusicVideo();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v56 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v40 - v18;
  v20 = type metadata accessor for Song();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A489B0(a1, a2, v58);
  if (!v58[3])
  {
    goto LABEL_31;
  }

  sub_1000089F8(v58, v57, &qword_1011ACCA0);
  sub_10010FC20(&qword_1011ACCA8);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v14 + 16))(v16, v19, v13);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v24 = qword_101219808;
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    (*(v14 + 8))(v19, v13);
    (*(v21 + 8))(v23, v20);
    goto LABEL_20;
  }

  v26 = v55;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v14 + 16))(v16, v19, v13);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v27 = qword_101219808;
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    (*(v14 + 8))(v19, v13);
    (*(v52 + 8))(v10, v26);
    goto LABEL_20;
  }

  v29 = v53;
  v28 = v54;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v14 + 16))(v16, v19, v13);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v30 = qword_101219808;
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    (*(v14 + 8))(v19, v13);
    v31 = v49;
    goto LABEL_19;
  }

  v29 = v50;
  v28 = v51;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v14 + 16))(v16, v19, v13);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v32 = qword_101219808;
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    (*(v14 + 8))(v19, v13);
    v33 = &v62;
LABEL_18:
    v31 = *(v33 - 32);
LABEL_19:
    (*(v31 + 8))(v29, v28);
LABEL_20:
    sub_10000959C(v57);
    sub_1000095E8(v58, &qword_1011ACCA0);
    return v25;
  }

  v34 = v46;
  v35 = v47;
  if (!swift_dynamicCast())
  {
    v34 = v44;
    v35 = v45;
    if (swift_dynamicCast())
    {
      v36 = &v60;
      goto LABEL_25;
    }

    v29 = v41;
    v28 = v42;
    if (swift_dynamicCast())
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v14 + 16))(v16, v19, v13);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v37 = qword_101219808;
      static Locale.current.getter();
      v25 = String.init(localized:table:bundle:locale:comment:)();
      (*(v14 + 8))(v19, v13);
      v33 = &v59;
      goto LABEL_18;
    }

    sub_10000959C(v57);
LABEL_31:
    sub_1000095E8(v58, &qword_1011ACCA0);
    goto LABEL_32;
  }

  v36 = &v61;
LABEL_25:
  (*(*(v36 - 32) + 8))(v34, v35);
  sub_10000959C(v57);
  sub_1000095E8(v58, &qword_1011ACCA0);
LABEL_32:
  String.LocalizationValue.init(stringLiteral:)();
  (*(v14 + 16))(v16, v19, v13);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v38 = qword_101219808;
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  (*(v14 + 8))(v19, v13);
  return v25;
}

uint64_t sub_100A49A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v106 = a4;
  *(&v106 + 1) = a5;
  v124 = a1;
  v125 = a3;
  v107 = a2;
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v103 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v123);
  v102 = (&v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v111 = &v101 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.LocalizationValue();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v101 - v22;
  String.LocalizationValue.init(stringLiteral:)();
  v113 = *(v18 + 16);
  v114 = v18 + 16;
  v113(v20, v23, v17);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v24 = qword_101219808;
  v108 = qword_101219808;
  static Locale.current.getter();
  v115 = v20;
  v112 = v24;
  v118 = v16;
  v25 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  v28 = *(v18 + 8);
  v116 = v23;
  v117 = v18 + 8;
  v119 = v17;
  v110 = v28;
  v28(v23, v17);
  v29 = swift_allocObject();
  *(v29 + 16) = v124;
  UUID.init()();
  v30 = UUID.uuidString.getter();
  v32 = v31;
  v33 = *(v11 + 8);
  v120 = v13;
  v121 = v11 + 8;
  v122 = v10;
  v109 = v33;
  v33(v13, v10);
  v34 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_10089CAD0((v35 > 1), v36 + 1, 1, v34);
  }

  v37 = v107;
  *(v34 + 2) = v36 + 1;
  v38 = &v34[56 * v36];
  *(v38 + 4) = v30;
  *(v38 + 5) = v32;
  *(v38 + 6) = v25;
  *(v38 + 7) = v27;
  v38[64] = 2;
  *(v38 + 9) = &unk_100EF74A0;
  *(v38 + 10) = v29;
  v39 = v111;
  sub_100A51780(v37, v111, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v103;
    v41 = v104;
    v42 = v39;
    v43 = v105;
    (*(v104 + 32))(v103, v42, v105);
    v111 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v41 + 8))(v40, v43);
  }

  else
  {
    v111 = *v39;
  }

  v44 = v120;
  v45 = v116;
  v46 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v47 = v125;
  swift_beginAccess();
  if (*(v47 + v46))
  {

    v48 = v111;
    v49 = sub_100A51A80(v48, 0);

    if (v49)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v50 = v119;
      v113(v115, v45, v119);
      v51 = v108;
      static Locale.current.getter();
      v52 = String.init(localized:table:bundle:locale:comment:)();
      v54 = v53;
      v110(v45, v50);
      v55 = swift_allocObject();
      *(v55 + 16) = v124;
      UUID.init()();
      v56 = UUID.uuidString.getter();
      v58 = v57;
      v109(v44, v122);
      v60 = *(v34 + 2);
      v59 = *(v34 + 3);
      if (v60 >= v59 >> 1)
      {
        v34 = sub_10089CAD0((v59 > 1), v60 + 1, 1, v34);
      }

      *(v34 + 2) = v60 + 1;
      v61 = &v34[56 * v60];
      *(v61 + 4) = v56;
      *(v61 + 5) = v58;
      *(v61 + 6) = v52;
      *(v61 + 7) = v54;
      v61[64] = 2;
      *(v61 + 9) = &unk_100EF74D0;
      *(v61 + 10) = v55;
      v44 = v120;
      v45 = v116;
      v37 = v107;
    }
  }

  v62 = v102;
  sub_100A51780(v37, v102, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = v103;
    v64 = v104;
    v65 = v62;
    v66 = v105;
    (*(v104 + 32))(v103, v65, v105);
    v67 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v64 + 8))(v63, v66);
  }

  else
  {
    v67 = *v62;
  }

  v68 = *(v125 + v46);
  v123 = v67;
  if (v68 && (, v69 = v67, v70 = sub_100A51A80(v69, 1), v69, , v70))
  {
    String.LocalizationValue.init(stringLiteral:)();
    v71 = v119;
    v113(v115, v45, v119);
    v72 = v108;
    static Locale.current.getter();
    v73 = String.init(localized:table:bundle:locale:comment:)();
    v74 = v45;
    v76 = v75;
    v110(v74, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v124;
    UUID.init()();
    v78 = UUID.uuidString.getter();
    v80 = v79;
    v109(v44, v122);
    v82 = *(v34 + 2);
    v81 = *(v34 + 3);
    if (v82 >= v81 >> 1)
    {
      v34 = sub_10089CAD0((v81 > 1), v82 + 1, 1, v34);
    }

    *(v34 + 2) = v82 + 1;
    v83 = &v34[56 * v82];
    *(v83 + 4) = v78;
    *(v83 + 5) = v80;
    *(v83 + 6) = v73;
    *(v83 + 7) = v76;
    v83[64] = 2;
    *(v83 + 9) = &unk_100EF74C0;
    *(v83 + 10) = v77;
    v84 = v124;
    v44 = v120;
    v45 = v116;
  }

  else
  {
    v84 = v124;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v85 = v119;
  v113(v115, v45, v119);
  v86 = v108;
  static Locale.current.getter();
  v87 = String.init(localized:table:bundle:locale:comment:)();
  v89 = v88;
  v110(v45, v85);
  v90 = swift_allocObject();
  *(v90 + 16) = v84;
  UUID.init()();
  v91 = UUID.uuidString.getter();
  v93 = v92;
  v109(v44, v122);
  v95 = *(v34 + 2);
  v94 = *(v34 + 3);
  if (v95 >= v94 >> 1)
  {
    v34 = sub_10089CAD0((v94 > 1), v95 + 1, 1, v34);
  }

  *(v34 + 2) = v95 + 1;
  v96 = &v34[56 * v95];
  *(v96 + 4) = v91;
  *(v96 + 5) = v93;
  *(v96 + 6) = v87;
  *(v96 + 7) = v89;
  v96[64] = 0;
  *(v96 + 9) = &unk_100EF74B0;
  *(v96 + 10) = v90;
  LOBYTE(v127[0]) = 1;
  v130 = 0uLL;
  v131 = v106;
  LOBYTE(v132) = 0;
  *(&v132 + 1) = 0;
  LOBYTE(v133) = 1;
  *(&v133 + 1) = v34;
  v134 = 0;
  v97 = *(v125 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v98 = *(v125 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v125 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v97);
  v127[2] = v132;
  v127[3] = v133;
  v128 = v134;
  v127[0] = v130;
  v127[1] = v131;
  v129 = 0;
  v99 = *(v98 + 8);

  sub_10053A574(&v130, &v126);
  v99(v127, v97, v98);
  sub_100344A84(&v130);

  return sub_100A52D6C(v127);
}

uint64_t sub_100A4A54C()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = vdupq_n_s64(2uLL);
  v1[1].i8[0] = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A4A5F8()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_100EE9540;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A4A6A4()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_100EE9550;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A4A750()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

id PlaybackController.requestedPropertySet(for:)()
{
  if (qword_1011A6B38 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_100A4A920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100A4A9B8, v6, v5);
}

uint64_t sub_100A4A9B8()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000954C(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100A4AA98;

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

uint64_t sub_100A4AA98()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1001AB73C, v3, v2);
}

uint64_t sub_100A4ABDC(uint64_t a1)
{
  v36 = a1;
  v35 = type metadata accessor for UUID();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  static Locale.current.getter();
  v12 = v11;
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v13;
  v14 = *(v4 + 8);
  v14(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v6, v9, v3);
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v15;
  v14(v9, v3);
  sub_10010FC20(&qword_1011A7C00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBC6B0;
  String.LocalizationValue.init(stringLiteral:)();
  v10(v6, v9, v3);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  v14(v9, v3);
  v20 = v33;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v34 + 8))(v20, v35);
  *(v16 + 32) = v21;
  *(v16 + 40) = v23;
  *(v16 + 48) = v17;
  *(v16 + 56) = v19;
  *(v16 + 64) = 2;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  LOBYTE(v38[0]) = 1;
  *&v41 = v32;
  *(&v41 + 1) = v31;
  *&v42 = v30;
  *(&v42 + 1) = v29;
  LOBYTE(v43) = 0;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = v16;
  v45 = 0;
  v24 = *(v36 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v25 = *(v36 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v36 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v24);
  v38[2] = v43;
  v38[3] = v44;
  v39 = v45;
  v38[0] = v41;
  v38[1] = v42;
  v40 = 0;
  v26 = *(v25 + 8);
  sub_10053A574(&v41, v37);
  v26(v38, v24, v25);
  sub_100344A84(&v41);
  return sub_100A52D6C(v38);
}

void sub_100A4B11C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = &type metadata for String;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v4 = a3 + 16 * a1;
  v5 = *(v4 + 40);
  *&v13 = *(v4 + 32);
  *(&v13 + 1) = v5;
  sub_100016270(&v13, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  sub_1008B9E1C(v17, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v7 = v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100008FE4(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v13);

    v10 = v14;
    v11 = v15;
    sub_10000954C(&v13, v14);
    (*(v11 + 24))(v7, v10, v11);

    sub_10000959C(&v13);
  }

  else
  {
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v12[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  }
}

void sub_100A4B298(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v54 = a1;
  v55 = a2;
  v53 = type metadata accessor for UUID();
  v6 = *(v53 - 8);
  *&v7 = __chkstk_darwin(v53).n128_u64[0];
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v4 buttons];
  sub_100009F78(0, &qword_1011ACBA0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_20;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v4;
  for (i = a3; v12; i = a3)
  {
    v13 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 & 0xC000000000000001;
    v14 = _swiftEmptyArrayStorage;
    v47 = (v6 + 8);
    v48 = v12;
    v49 = v11;
    while (1)
    {
      if (v51)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v50 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(v11 + 8 * v13 + 32);
      }

      v15 = v11;
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v58 = [v11 type] != 2;
      v16 = [v15 title];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v19;
        v57 = v18;
      }

      else
      {
        v56 = 0xE000000000000000;
        v57 = 0;
      }

      v20 = swift_allocObject();
      v22 = v54;
      v21 = v55;
      v20[2] = v15;
      v20[3] = v22;
      v20[4] = v21;
      v20[5] = v13;
      v23 = v15;
      sub_100030444(v22);
      v24 = v52;
      UUID.init()();
      v25 = UUID.uuidString.getter();
      v4 = v26;
      (*v47)(v24, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10089CAD0(0, *(v14 + 2) + 1, 1, v14);
      }

      a3 = *(v14 + 2);
      v27 = *(v14 + 3);
      if (a3 >= v27 >> 1)
      {
        v14 = sub_10089CAD0((v27 > 1), a3 + 1, 1, v14);
      }

      v28 = 2 * v58;

      *(v14 + 2) = a3 + 1;
      v29 = &v14[56 * a3];
      *(v29 + 4) = v25;
      *(v29 + 5) = v4;
      v30 = v56;
      *(v29 + 6) = v57;
      *(v29 + 7) = v30;
      v29[64] = v28;
      *(v29 + 9) = &unk_100EF72D8;
      *(v29 + 10) = v20;
      ++v13;
      v11 = v49;
      if (v6 == v48)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v31 = v11;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v31;
    v45 = v4;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_22:

  v32 = v45;
  v33 = [v45 message];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = i;
  v39 = [v32 explanation];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  *v38 = v35;
  *(v38 + 8) = v37;
  *(v38 + 16) = v41;
  *(v38 + 24) = v43;
  *(v38 + 32) = 0;
  *(v38 + 40) = 0;
  *(v38 + 48) = 1;
  *(v38 + 56) = v14;
  *(v38 + 64) = 0;
}

uint64_t sub_100A4B66C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) = 1;
    v6 = result;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = v7;

    sub_100A4B298(sub_100A534A8, v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000954C((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    sub_10053A574(v16, v12);
    v11(v13, v9, v10);
    sub_100344A84(v16);
    return sub_100A52D6C(v13);
  }

  return result;
}

uint64_t PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100009F78(0, &qword_1011A9F80);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A52860, v6);
}

void sub_100A4B904(uint64_t a1, uint64_t a2, void *a3)
{
  v166 = a3;
  v169 = a2;
  v4 = sub_10010FC20(&qword_1011A8FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v154 - v5;
  v7 = sub_10010FC20(&unk_1011ACB80);
  __chkstk_darwin(v7 - 8);
  v9 = &v154 - v8;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, static Logger.playbackController);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v173 = v6;
  v175 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v177 = v15;
    *v14 = 136446210;
    *&v202 = a1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v16 = String.init<A>(describing:)();
    v18 = sub_100010678(v16, v17, &v177);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "didFailToPlayFirstItem with error=%{public}s", v14, 0xCu);
    sub_10000959C(v15);
  }

  if ((*(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v159 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v19 = _convertErrorToNSError(_:)();
    v20 = [v19 userInfo];
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v21 + 16);
    v163 = v19;
    if (v22 && (v23 = sub_100019C28(0x676F6C616964, 0xE600000000000000), (v24 & 1) != 0))
    {
      sub_10000DD18(*(v21 + 56) + 32 * v23, &v177);

      sub_10010FC20(&qword_1011A98D8);
      if (swift_dynamicCast())
      {

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          *&v177 = v174;
          *v27 = 136446210;
          v28 = Dictionary.description.getter();
          v30 = sub_100010678(v28, v29, &v177);

          *(v27 + 4) = v30;
          v19 = v163;
          _os_log_impl(&_mh_execute_header, v25, v26, "Found an error dialog=%{public}s", v27, 0xCu);
          sub_10000959C(v174);
        }

        v31 = objc_allocWithZone(ICStoreDialogResponse);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v33 = [v31 initWithResponseDictionary:isa];

        sub_100A4B298(0, 0, &v177);
        v199 = v179;
        v200 = v180;
        v201 = v181;
        v197 = v177;
        v198 = v178;
LABEL_14:
        v34 = [v19 userInfo];
        v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v35 + 16))
        {
          v38 = sub_100019C28(v36, v37);
          v40 = v39;

          if (v40)
          {
            sub_10000DD18(*(v35 + 56) + 32 * v38, &v177);

            sub_100009F78(0, &qword_1011A7EC0);
            if (swift_dynamicCast())
            {
              v41 = v202;
              goto LABEL_21;
            }

LABEL_20:
            v41 = 0;
LABEL_21:
            v42 = swift_allocObject();
            *(v42 + 16) = 0;
            v174 = (v42 + 16);
            v43 = swift_allocObject();
            *(v43 + 16) = 0;
            v172 = (v43 + 16);
            v44 = swift_allocObject();
            *(v44 + 16) = 0;
            v171 = (v44 + 16);
            sub_100A4D090(a1, v43, v44, v42);
            if (v41)
            {
              v45 = v41;
              sub_100A4D090(v45, v43, v44, v42);
            }

            v161 = v43;
            v162 = v44;
            v164 = v41;
            v160 = v42;
            if (!v166)
            {
              v52 = 0;
              goto LABEL_47;
            }

            v46 = v166;
            v47 = [v46 stationStringID];
            if (v47)
            {
              v48 = v47;
              v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = v50;
            }

            else
            {
              v49 = 0;
              v51 = 0;
            }

            v53 = [v46 stationID];
            v54 = [v46 stationHash];
            if (v54)
            {
              v55 = v54;
              v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;

              v19 = v163;
              if (v51)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v56 = 0;
              v58 = 0;
              if (v51)
              {
LABEL_30:
                v59 = HIBYTE(v51) & 0xF;
                if ((v51 & 0x2000000000000000) == 0)
                {
                  v59 = v49 & 0xFFFFFFFFFFFFLL;
                }

                if (v59 | v53)
                {
LABEL_40:
                  sub_100009F78(0, &qword_1011AF0D0);
                  v61 = [swift_getObjCClassFromMetadata() identityKind];
                  v170 = &v154;
                  __chkstk_darwin(v61);
                  *(&v154 - 6) = v49;
                  *(&v154 - 5) = v51;
                  *(&v154 - 4) = v53;
                  *(&v154 - 3) = v56;
                  *(&v154 - 2) = v58;
                  v62 = objc_allocWithZone(MPIdentifierSet);
                  v63 = swift_allocObject();
                  *(v63 + 16) = sub_100A53030;
                  *(v63 + 24) = &v154 - 8;
                  *&v179 = sub_1001EBE40;
                  *(&v179 + 1) = v63;
                  *&v177 = _NSConcreteStackBlock;
                  *(&v177 + 1) = 1107296256;
                  *&v178 = sub_10006BD7C;
                  *(&v178 + 1) = &unk_1010DA4E0;
                  v64 = _Block_copy(&v177);

                  v65 = [v62 initWithModelKind:v61 block:v64];

                  _Block_release(v64);

                  LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

                  if (v61)
                  {
                    __break(1u);
                  }

                  else
                  {
                    __chkstk_darwin(v66);
                    *(&v154 - 2) = v46;
                    v67 = objc_allocWithZone(MPModelRadioStation);
                    v68 = swift_allocObject();
                    *(v68 + 16) = sub_100A53048;
                    *(v68 + 24) = &v154 - 4;
                    *&v179 = sub_1001EBE40;
                    *(&v179 + 1) = v68;
                    *&v177 = _NSConcreteStackBlock;
                    *(&v177 + 1) = 1107296256;
                    *&v178 = sub_10006BD7C;
                    *(&v178 + 1) = &unk_1010DA530;
                    v69 = _Block_copy(&v177);

                    v52 = [v67 initWithIdentifiers:v65 block:v69];

                    _Block_release(v69);

                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    v42 = v160;
                    if ((isEscapingClosureAtFileLocation & 1) == 0)
                    {
                      v19 = v163;
LABEL_46:
                      v41 = v164;
LABEL_47:
                      v71 = v174;
                      swift_beginAccess();
                      v72 = *v71;
                      v73 = v52;
                      v165 = v52;
                      if (v72 == 1)
                      {
                        if (v52)
                        {
                          sub_100008FE4(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v202);
                          v74 = *(&v203 + 1);
                          v75 = v204;
                          sub_10000954C(&v202, *(&v203 + 1));
                          v76 = type metadata accessor for Station();
                          v77 = v52;
                          v78 = v175;
                          dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                          v79 = *(v76 - 8);
                          if ((*(v79 + 48))(v78, 1, v76) == 1)
                          {
                            sub_1000095E8(v78, &unk_1011ACB80);
                            v177 = 0u;
                            v178 = 0u;
                            *&v179 = 0;
                          }

                          else
                          {
                            *(&v178 + 1) = v76;
                            *&v179 = &protocol witness table for Station;
                            v93 = sub_10001C8B8(&v177);
                            (*(v79 + 32))(v93, v78, v76);
                          }

                          v41 = v164;
                          v182 = 2;
                          (*(v75 + 8))(&v177, v74, v75);
                          sub_100A52D6C(&v177);
                          sub_10000959C(&v202);
                          v95 = v197;
                          v94 = v198;
                          v87 = v199;
                          v194[0] = *(&v199 + 1);
                          *(v194 + 3) = DWORD1(v199);
                          v86 = *(&v199 + 1);
                          v88 = v200;
                          v193[0] = *(&v200 + 1);
                          *(v193 + 3) = DWORD1(v200);
                          v85 = *(&v200 + 1);
                          v96 = v201;
                          v97 = v165;
                          v19 = v163;
                          goto LABEL_62;
                        }

                        v73 = 0;
                      }

                      v80 = v172;
                      swift_beginAccess();
                      if (*v80)
                      {
                        v81 = v52;
                        sub_100980DD0(v73, &v202);
LABEL_56:
                        sub_1000095E8(&v197, &qword_1011A9570);

                        v85 = v207;
                        v84 = v208;
                        v86 = v205;
                        v87 = v204;
                        v88 = v206;
                        v167 = v202;
                        v168 = v203;
                        v177 = v202;
                        v178 = v203;
                        LOBYTE(v179) = v204;
                        *(&v179 + 1) = v205;
                        LOBYTE(v180) = v206;
                        *(&v180 + 1) = v207;
                        v181 = v208;
                        v89 = &v188;
LABEL_57:
                        sub_10053A574(&v177, v89);
                        v157 = v87;
                        goto LABEL_64;
                      }

                      v82 = v171;
                      swift_beginAccess();
                      if (*v82)
                      {
                        v83 = v52;
                        sub_100981C90(v73, 0, &v202);
                        goto LABEL_56;
                      }

                      v90 = v52;

                      v91 = _convertErrorToNSError(_:)();
                      v92 = [objc_opt_self() playbackAlertControllerForItem:v166 contentType:0 error:v91 dismissalBlock:0];

                      if (v92)
                      {
                        sub_100A4D424(&v177);
                        sub_1000095E8(&v197, &qword_1011A9570);

                        v190 = v179;
                        v191 = v180;
                        v192 = v181;
                        v188 = v177;
                        v189 = v178;
                      }

                      else
                      {
                        sub_1000095E8(&v197, &qword_1011A9570);
                        v188 = 0u;
                        v189 = 0u;
                        v190 = 0u;
                        v191 = 0u;
                        v192 = 0;
                      }

                      v135 = v161;
                      v134 = v162;
                      sub_100A4D80C(a1, v42, v162, v161);
                      if (v41)
                      {
                        v136 = v41;
                        sub_100A4D80C(v136, v42, v134, v135);
                      }

                      if (!v166)
                      {
                        goto LABEL_117;
                      }

                      v137 = v166;
                      v138 = [v137 modelGenericObject];
                      v97 = v165;
                      if (v138)
                      {
                        v139 = v138;
                        v140 = [v138 innermostModelObject];
                      }

                      else
                      {
                        v140 = 0;
                      }

                      if (*v174 == 1)
                      {
                        v141 = [v137 modelPlayEvent];
                        if (v141)
                        {
                          v142 = v141;
                          v143 = [v141 itemType];
                          if (v143 == 3)
                          {
                            v144 = [v142 playlist];
LABEL_115:
                            v145 = v144;

                            if (!v145)
                            {

LABEL_117:
                              v95 = v188;
                              v94 = v189;
                              v87 = v190;
                              v194[0] = *(&v190 + 1);
                              *(v194 + 3) = DWORD1(v190);
                              v86 = *(&v190 + 1);
                              v88 = v191;
                              v193[0] = *(&v191 + 1);
                              *(v193 + 3) = DWORD1(v191);
                              v85 = *(&v191 + 1);
                              v96 = v192;
                              v97 = v165;
LABEL_62:
                              if (!v85)
                              {
                                v177 = v95;
                                v178 = v94;
                                LOBYTE(v179) = v87;
                                *(&v179 + 1) = v194[0];
                                DWORD1(v179) = *(v194 + 3);
                                *(&v179 + 1) = v86;
                                LOBYTE(v180) = v88;
                                *(&v180 + 1) = v193[0];
                                DWORD1(v180) = *(v193 + 3);
                                *(&v180 + 1) = 0;
                                v181 = v96;
                                if (v41)
                                {
LABEL_74:
                                  v121 = [v41 domain];
                                  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  v124 = v123;

                                  v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  if (v124)
                                  {
                                    if (v122 == v125 && v124 == v126)
                                    {

LABEL_80:
                                      if ([v41 code] != 40)
                                      {

                                        sub_1000095E8(&v177, &qword_1011A9570);

LABEL_107:

                                        v19 = v165;
                                        goto LABEL_108;
                                      }

                                      if (!v166)
                                      {
                                        v131 = 0;
                                        v133 = 0;
                                        v130 = 0;
LABEL_106:
                                        sub_100A4F0A0(v131, v133, 0, 0);

                                        sub_1000095E8(&v177, &qword_1011A9570);

                                        goto LABEL_107;
                                      }

                                      v128 = [v166 modelGenericObject];
                                      if (v128)
                                      {
                                        v129 = v128;
                                        v130 = [v128 flattenedGenericObject];

                                        if (v130)
                                        {
                                          v131 = MPModelObject.bestIdentifier(for:)(2, 1u);
                                          v133 = v132;
                                        }

                                        else
                                        {
                                          v131 = 0;
                                          v133 = 0;
                                        }

                                        goto LABEL_106;
                                      }

LABEL_129:
                                      __break(1u);
                                      return;
                                    }

                                    v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                    if (v127)
                                    {
                                      goto LABEL_80;
                                    }

                                    sub_1000095E8(&v177, &qword_1011A9570);

LABEL_108:

                                    return;
                                  }

                                  v97 = v165;
LABEL_87:

                                  sub_1000095E8(&v177, &qword_1011A9570);

                                  goto LABEL_108;
                                }

LABEL_86:
                                static String._unconditionallyBridgeFromObjectiveC(_:)();
                                goto LABEL_87;
                              }

                              v177 = v95;
                              v178 = v94;
                              LOBYTE(v179) = v87;
                              *(&v179 + 1) = v194[0];
                              DWORD1(v179) = *(v194 + 3);
                              *(&v179 + 1) = v86;
                              LOBYTE(v180) = v88;
                              *(&v180 + 1) = v193[0];
                              DWORD1(v180) = *(v193 + 3);
                              *(&v180 + 1) = v85;
                              v181 = v96;
                              v84 = v96;
                              v167 = v95;
                              v168 = v94;
                              sub_10053A574(&v177, &v202);
                              v196[0] = v194[0];
                              *(v196 + 3) = *(v194 + 3);
                              v195[0] = v193[0];
                              *(v195 + 3) = *(v193 + 3);
                              v157 = v87;
                              LOBYTE(v87) = v87 & 1;
LABEL_64:
                              v99 = v167;
                              v98 = v168;
                              v188 = v167;
                              v189 = v168;
                              LOBYTE(v190) = v87;
                              v158 = v86;
                              *(&v190 + 1) = v86;
                              v156 = v88;
                              LOBYTE(v191) = v88 & 1;
                              *(&v191 + 1) = v85;
                              v192 = v84;
                              v155 = v84;
                              v100 = *(v85 + 16);
                              if (v100)
                              {

                                v101 = _swiftEmptyArrayStorage;
                                v154 = v85;
                                v102 = (v85 + 80);
                                do
                                {
                                  v172 = v101;
                                  v175 = v100;
                                  v103 = *(v102 - 6);
                                  v104 = *(v102 - 5);
                                  v105 = *(v102 - 4);
                                  v106 = *(v102 - 3);
                                  LODWORD(v170) = *(v102 - 16);
                                  v108 = *(v102 - 1);
                                  v107 = *v102;
                                  v109 = swift_allocObject();
                                  swift_unknownObjectWeakInit();
                                  v110 = swift_allocObject();
                                  v173 = v105;
                                  v174 = v103;
                                  *(v110 + 16) = v103;
                                  *(v110 + 24) = v104;
                                  v101 = v172;
                                  v111 = v170;
                                  *(v110 + 32) = v105;
                                  *(v110 + 40) = v106;
                                  v112 = v111;
                                  *(v110 + 48) = v111;
                                  *(v110 + 49) = v209[0];
                                  *(v110 + 52) = *(v209 + 3);
                                  *(v110 + 56) = v108;
                                  *(v110 + 64) = v107;
                                  *(v110 + 72) = v109;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  sub_100030444(v108);

                                  v171 = v107;
                                  sub_100030444(v108);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v101 = sub_10089CAD0(0, *(v101 + 2) + 1, 1, v101);
                                  }

                                  v114 = *(v101 + 2);
                                  v113 = *(v101 + 3);
                                  if (v114 >= v113 >> 1)
                                  {
                                    v101 = sub_10089CAD0((v113 > 1), v114 + 1, 1, v101);
                                  }

                                  v102 += 7;

                                  sub_100020438(v108);
                                  *(v101 + 2) = v114 + 1;
                                  v115 = &v101[56 * v114];
                                  v116 = v173;
                                  *(v115 + 4) = v174;
                                  *(v115 + 5) = v104;
                                  *(v115 + 6) = v116;
                                  *(v115 + 7) = v106;
                                  v115[64] = v112;
                                  *(v115 + 9) = &unk_100EF72C8;
                                  *(v115 + 10) = v110;
                                  v100 = v175 - 1;
                                }

                                while (v175 != 1);
                                v85 = v154;

                                v19 = v163;
                                v99 = v167;
                                v98 = v168;
                              }

                              else
                              {
                                v101 = _swiftEmptyArrayStorage;
                              }

                              v167 = v99;
                              v168 = v98;
                              LOBYTE(v177) = 1;
                              v183 = v99;
                              v184 = v98;
                              LOBYTE(v185) = 0;
                              *(&v185 + 1) = 0;
                              LOBYTE(v186) = 1;
                              *(&v186 + 1) = v101;
                              v187 = 0;
                              v117 = v169;
                              *(v169 + v159) = 1;
                              v118 = *(v117 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                              v119 = *(v117 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                              sub_10000954C((v117 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v118);
                              v179 = v185;
                              v180 = v186;
                              v181 = v187;
                              v177 = v183;
                              v178 = v184;
                              v182 = 0;
                              v120 = *(v119 + 8);

                              sub_10053A574(&v183, &v176);
                              v120(&v177, v118, v119);
                              sub_100344A84(&v188);
                              sub_100344A84(&v183);
                              sub_100A52D6C(&v177);
                              v177 = v167;
                              v178 = v168;
                              LOBYTE(v179) = v157;
                              *(&v179 + 1) = v196[0];
                              DWORD1(v179) = *(v196 + 3);
                              *(&v179 + 1) = v158;
                              LOBYTE(v180) = v156;
                              *(&v180 + 1) = v195[0];
                              DWORD1(v180) = *(v195 + 3);
                              *(&v180 + 1) = v85;
                              v181 = v155;
                              v41 = v164;
                              v97 = v165;
                              if (v164)
                              {
                                goto LABEL_74;
                              }

                              goto LABEL_86;
                            }

LABEL_121:
                            v146 = v145;
                            sub_100008FE4(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v202);
                            v147 = *(&v203 + 1);
                            v148 = v204;
                            sub_10000954C(&v202, *(&v203 + 1));
                            v149 = v146;
                            v150 = v173;
                            GenericMusicItem.init(_:)();
                            v151 = type metadata accessor for GenericMusicItem();
                            v152 = *(v151 - 8);
                            if ((*(v152 + 48))(v150, 1, v151) == 1)
                            {
                              sub_1000095E8(v150, &qword_1011A8FF8);
                              v177 = 0u;
                              v178 = 0u;
                              *&v179 = 0;
                            }

                            else
                            {
                              *(&v178 + 1) = v151;
                              *&v179 = sub_100A52FE8(&unk_1011ACB90, &type metadata accessor for GenericMusicItem);
                              v153 = sub_10001C8B8(&v177);
                              (*(v152 + 32))(v153, v150, v151);
                            }

                            v182 = 2;
                            (*(v148 + 8))(&v177, v147, v148);

                            sub_100A52D6C(&v177);
                            sub_10000959C(&v202);
                            v95 = v188;
                            v94 = v189;
                            v87 = v190;
                            v194[0] = *(&v190 + 1);
                            *(v194 + 3) = DWORD1(v190);
                            v86 = *(&v190 + 1);
                            v88 = v191;
                            v193[0] = *(&v191 + 1);
                            *(v193 + 3) = DWORD1(v191);
                            v85 = *(&v191 + 1);
                            v96 = v192;
                            v19 = v163;
                            v41 = v164;
                            v97 = v165;
                            goto LABEL_62;
                          }

                          if (v143 == 1)
                          {
                            v144 = [v142 album];
                            goto LABEL_115;
                          }
                        }

                        if (v140)
                        {
                          v145 = v140;
                          goto LABEL_121;
                        }

LABEL_126:
                        v95 = v188;
                        v94 = v189;
                        v87 = v190;
                        v194[0] = *(&v190 + 1);
                        *(v194 + 3) = DWORD1(v190);
                        v86 = *(&v190 + 1);
                        v88 = v191;
                        v193[0] = *(&v191 + 1);
                        *(v193 + 3) = DWORD1(v191);
                        v85 = *(&v191 + 1);
                        v96 = v192;
                        goto LABEL_62;
                      }

                      if (*v172)
                      {
                        sub_100980DD0(v140, &v202);
                      }

                      else
                      {
                        if ((*v171 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        sub_100981C90(v140, 0, &v202);
                      }

                      sub_1000095E8(&v188, &qword_1011A9570);

                      v85 = v207;
                      v84 = v208;
                      v86 = v205;
                      v87 = v204;
                      v88 = v206;
                      v167 = v202;
                      v168 = v203;
                      v177 = v202;
                      v178 = v203;
                      LOBYTE(v179) = v204;
                      *(&v179 + 1) = v205;
                      LOBYTE(v180) = v206;
                      *(&v180 + 1) = v207;
                      v181 = v208;
                      v89 = &v183;
                      goto LABEL_57;
                    }
                  }

                  __break(1u);
                  goto LABEL_129;
                }

LABEL_36:
                if (v58)
                {
                  v60 = HIBYTE(v58) & 0xF;
                  if ((v58 & 0x2000000000000000) == 0)
                  {
                    v60 = v56 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v60)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                }

                v52 = 0;
                v42 = v160;
                goto LABEL_46;
              }
            }

            if (v53)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }
        }

        else
        {
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0;
    goto LABEL_14;
  }
}

void sub_100A4D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _convertErrorToNSError(_:)();
  v8 = _convertErrorToNSError(_:)();
  Category = MPCRadioPlaybackErrorGetCategory();

  switch(Category)
  {
    case 3:
      v10 = (a4 + 16);
      break;
    case 2:
      v10 = (a3 + 16);
      break;
    case 1:
      v10 = (a2 + 16);
      break;
    default:
      return;
  }

  swift_beginAccess();
  *v10 = 1;
}

uint64_t sub_100A4D138(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100A532F8;
  *(v13 + 24) = v12;
  v16[4] = sub_1002CF914;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1002B8A68;
  v16[3] = &unk_1010DA670;
  v14 = _Block_copy(v16);

  [a1 setRadioIdentifiersWithBlock:v14];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_100A4D2BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [a1 setStationStringID:v9];

  [a1 setStationID:a4];
  if (a6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a1 setStationHash:?];
}

void sub_100A4D38C(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void sub_100A4D424(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = type metadata accessor for UUID();
  v4 = *(v48 - 8);
  *&v5 = __chkstk_darwin(v48).n128_u64[0];
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 actions];
  sub_100009F78(0, &unk_1011ACC18);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_21:

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  v41 = v2;
  v42 = a1;
  v10 = 0;
  v43 = (v4 + 8);
  v44 = v8 & 0xC000000000000001;
  v11 = _swiftEmptyArrayStorage;
  v45 = v9;
  v46 = v8;
  do
  {
    if (v44)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = [v12 handler];
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v14 = sub_10054CD3C;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 title];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v19;
      v50 = v18;
    }

    else
    {
      v49 = 0xE000000000000000;
      v50 = 0;
    }

    v20 = swift_allocObject();
    v20[2] = v14;
    v20[3] = v15;
    v20[4] = v13;
    sub_100030444(v14);
    v21 = v13;
    v22 = v47;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*v43)(v22, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10089CAD0(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    if (v27 >= v26 >> 1)
    {
      v11 = sub_10089CAD0((v26 > 1), v27 + 1, 1, v11);
    }

    ++v10;

    sub_100020438(v14);
    *(v11 + 2) = v27 + 1;
    v28 = &v11[56 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    v29 = v49;
    *(v28 + 6) = v50;
    *(v28 + 7) = v29;
    v28[64] = 2;
    *(v28 + 9) = &unk_100EF7328;
    *(v28 + 10) = v20;
    v8 = v46;
  }

  while (v45 != v10);

  v2 = v41;
  a1 = v42;
LABEL_22:
  v30 = [v2 title];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [v2 message];
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *a1 = v32;
  *(a1 + 8) = v34;
  *(a1 + 16) = v37;
  *(a1 + 24) = v39;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
}

void sub_100A4D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  type metadata accessor for MPCError(0);
  if (swift_dynamicCast())
  {
    sub_100A52FE8(&qword_1011A79A0, type metadata accessor for MPCError);
    _BridgedStoredNSError.code.getter();

    switch(v7)
    {
      case 10:
        swift_beginAccess();
        *(a4 + 16) = 1;
        break;
      case 11:
        swift_beginAccess();
        *(a3 + 16) = 1;
        break;
      case 17:
        swift_beginAccess();
        *(a2 + 16) = 1;
        break;
    }
  }
}

uint64_t sub_100A4D960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_10010FC20(&qword_1011A7F00);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_100A4DA00, 0, 0);
}

uint64_t sub_100A4DA00()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  *(v0 + 112) = *v3;
  *(v0 + 128) = v3[1];
  v5 = *(v3 + 5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  *(v6 + 80) = *(v3 + 6);
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = *(v2 + 64);
  v11 = *(v2 + 48);
  v12 = *(v2 + 16);
  *(v6 + 120) = *(v2 + 32);
  *(v6 + 136) = v11;
  *(v6 + 152) = v10;
  *(v6 + 104) = v12;
  *(v6 + 88) = *v2;
  sub_100118E9C(v0 + 112, v0 + 144);
  sub_100118E9C(v0 + 128, v0 + 160);
  sub_100030444(v5);
  sub_1000089F8(v2, v0 + 16, &qword_1011A9570);
  sub_100969440(0, 0, v1, &unk_100EF7338, v6);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100A4DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = sub_10002F3F4;

    return v12(a4, a5);
  }

  else
  {
    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009F78(0, &qword_1011A9F80);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A5286C, v10);
}

id sub_100A4DEBC(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void), uint64_t a5)
{
  v123 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v118 = v9;
  v119 = v10;
  __chkstk_darwin(v9);
  v117 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v116 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for String.LocalizationValue();
  v14 = *(v122 - 8);
  __chkstk_darwin(v122);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, static Logger.playbackController);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v23 = os_log_type_enabled(v21, v22);
  v121 = a3;
  v115 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v120 = v14;
    v25 = v24;
    v114 = swift_slowAlloc();
    *&v138[0] = v114;
    *v25 = 136446210;
    v26 = a1;
    *&v130 = a1;
    type metadata accessor for MPCExplicitContentAuthorizationReason(0);
    v27 = String.init<A>(describing:)();
    v29 = v19;
    v30 = sub_100010678(v27, v28, v138);
    v31 = a5;
    v32 = a4;

    *(v25 + 4) = v30;
    v19 = v29;
    a3 = v121;
    _os_log_impl(&_mh_execute_header, v21, v22, "requiresAuthorizationToPlay with reason=%{public}s", v25, 0xCu);
    sub_10000959C(v114);

    v14 = v120;

    if (v26 != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v40 = a1;
    v31 = a5;
    v32 = a4;
    if (v40 != 2)
    {
LABEL_5:
      if (qword_1011A6820 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v140 = v134;
      v141 = v135;
      v142 = v136;
      v143 = v137;
      v138[0] = v130;
      v138[1] = v131;
      v138[2] = v132;
      v139 = v133;
      v33 = v134;
      if (!v134 || (v34 = v141) == 0)
      {
        v120 = v31;
        v121 = v32;
        String.LocalizationValue.init(stringLiteral:)();
        v47 = v115;
        v114 = *(v14 + 16);
        v114(v115, v19, v122);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v48 = qword_101219808;
        static Locale.current.getter();
        v49 = v48;
        v50 = String.init(localized:table:bundle:locale:comment:)();
        v112 = v51;
        v113 = v50;
        v52 = *(v14 + 8);
        v53 = v122;
        v52(v19, v122);
        v54 = v117;
        UUID.init()();
        v55 = UUID.uuidString.getter();
        v110 = v56;
        v111 = v55;
        (*(v119 + 8))(v54, v118);
        String.LocalizationValue.init(stringLiteral:)();
        v114(v47, v19, v53);
        static Locale.current.getter();
        v57 = String.init(localized:table:bundle:locale:comment:)();
        v59 = v58;
        v52(v19, v53);
        sub_10010FC20(&qword_1011A7C00);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_100EBC6B0;
        v61 = v110;
        *(v60 + 32) = v111;
        *(v60 + 40) = v61;
        v62 = v112;
        *(v60 + 48) = v113;
        *(v60 + 56) = v62;
        *(v60 + 64) = 2;
        *(v60 + 72) = 0;
        *(v60 + 80) = 0;
        v125 = 0uLL;
        *&v126 = v57;
        *(&v126 + 1) = v59;
        LOBYTE(v127) = 0;
        *(&v127 + 1) = 0;
        LOBYTE(v128) = 1;
        *(&v128 + 1) = v60;
        v129 = 0;
        v63 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
        v64 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
        sub_10000954C((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v63);
        v132 = v127;
        v133 = v128;
        *&v134 = v129;
        v130 = v125;
        v131 = v126;
        BYTE8(v134) = 0;
        v65 = *(v64 + 8);

        sub_10053A574(&v125, v124);
        v65(&v130, v63, v64);
        sub_100A52D6C(&v130);
        v121(0, 0);
        sub_100344A84(&v125);

        return sub_100014984(v138);
      }

      v109 = *(&v140 + 1);
      v110 = *(&v139 + 1);
      v35 = objc_opt_self();

      v111 = v34;

      v36 = [v35 standardUserDefaults];
      *&v125 = 0xD000000000000012;
      *(&v125 + 1) = 0x8000000100E60D20;
      sub_10000988C();
      NSUserDefaults.subscript.getter(&v125, &v130);

      v112 = v33;
      if (*(&v131 + 1))
      {
        sub_10010FC20(&unk_1011A9FA0);
        v37 = swift_dynamicCast();
        v38 = v121;
        if (v37)
        {
          v39 = v125;
LABEL_24:
          v66 = [v38 cloudUniversalLibraryID];
          if (!v66)
          {

LABEL_29:
            String.LocalizationValue.init(stringLiteral:)();
            v72 = v115;
            v105 = *(v14 + 16);
            v106 = v14 + 16;
            v105(v115, v19, v122);
            if (qword_1011A6740 != -1)
            {
              swift_once();
            }

            v73 = qword_101219808;
            v74 = qword_101219808;
            v103 = v73;
            v75 = v74;
            static Locale.current.getter();
            v76 = v75;
            v108 = String.init(localized:table:bundle:locale:comment:)();
            v114 = v77;
            v78 = *(v14 + 8);
            v120 = v14 + 8;
            v102 = v78;
            v79 = v122;
            v78(v19, v122);
            v80 = swift_allocObject();
            v107 = v80;
            v80[2] = v38;
            v80[3] = v32;
            v80[4] = v31;
            v81 = v38;

            v82 = v117;
            UUID.init()();
            v104 = UUID.uuidString.getter();
            v113 = v83;
            v121 = v32;
            v84 = v118;
            v85 = v19;
            v86 = *(v119 + 8);
            v86(v82, v118);
            String.LocalizationValue.init(stringLiteral:)();
            v105(v72, v85, v79);
            static Locale.current.getter();
            v119 = String.init(localized:table:bundle:locale:comment:)();
            v116 = v87;
            v102(v85, v79);
            v88 = v84;
            v89 = swift_allocObject();
            *(v89 + 16) = v121;
            *(v89 + 24) = v31;

            UUID.init()();
            v90 = UUID.uuidString.getter();
            v92 = v91;
            v122 = v91;
            v86(v82, v88);
            sub_10010FC20(&qword_1011A7C00);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_100EBDC20;
            v95 = v113;
            v94 = v114;
            *(v93 + 32) = v104;
            *(v93 + 40) = v95;
            v96 = v107;
            *(v93 + 48) = v108;
            *(v93 + 56) = v94;
            *(v93 + 64) = 2;
            *(v93 + 72) = &unk_100EF72A8;
            *(v93 + 80) = v96;
            *(v93 + 88) = v90;
            *(v93 + 96) = v92;
            v97 = v116;
            *(v93 + 104) = v119;
            *(v93 + 112) = v97;
            *(v93 + 120) = 0;
            *(v93 + 128) = &unk_100EF72B8;
            *(v93 + 136) = v89;
            LOBYTE(v130) = 1;
            *&v125 = v110;
            *(&v125 + 1) = v112;
            *&v126 = v109;
            *(&v126 + 1) = v111;
            LOBYTE(v127) = 0;
            *(&v127 + 1) = 0;
            LOBYTE(v128) = 1;
            *(&v128 + 1) = v93;
            v129 = 0;
            v98 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
            v99 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
            v123 = sub_10000954C((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v98);
            v132 = v127;
            v133 = v128;
            *&v134 = v129;
            v130 = v125;
            v131 = v126;
            BYTE8(v134) = 0;
            v100 = *(v99 + 8);

            sub_10053A574(&v125, v124);
            v100(&v130, v98, v99);
            sub_100014984(v138);
            sub_100344A84(&v125);

            return sub_100A52D6C(&v130);
          }

          v120 = v14;

          result = [v38 cloudUniversalLibraryID];
          if (result)
          {
            v67 = result;
            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;

            *&v130 = v68;
            *(&v130 + 1) = v70;
            __chkstk_darwin(v71);
            *(&v101 - 2) = &v130;
            LOBYTE(v67) = sub_10044AB94(sub_100A52F18, (&v101 - 4), v39);

            v14 = v120;
            v38 = v121;
            if (v67)
            {

              v32(1, 0);
              return sub_100014984(v138);
            }

            goto LABEL_29;
          }

LABEL_33:
          __break(1u);
          return result;
        }
      }

      else
      {
        sub_1000095E8(&v130, &qword_1011ABB20);
        v38 = v121;
      }

      v39 = _swiftEmptyArrayStorage;
      goto LABEL_24;
    }
  }

  result = [a3 modelGenericObject];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v42 = result;
  v43 = [result flattenedGenericObject];

  if (v43)
  {
    v44 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  sub_100A4F0A0(v44, v46, v32, v31);
}

uint64_t sub_100A4EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_100A4EBDC, 0, 0);
}

uint64_t sub_100A4EBDC()
{
  v19 = v0;
  v1 = [*(v0 + 64) cloudUniversalLibraryID];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x8000000100E60D20;
  sub_10000988C();
  NSUserDefaults.subscript.getter(v0 + 48, (v0 + 16));

  if (*(v0 + 40))
  {
    sub_10010FC20(&unk_1011A9FA0);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 48);
      v9 = *(v8 + 2);
      if (v9 > 0x3E7)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v8;
        if (!isUniquelyReferenced_nonNull_native || *(v8 + 3) <= 0x7CDuLL)
        {
          v8 = sub_10089C4F8(isUniquelyReferenced_nonNull_native, v9, 1, v8);
          v17 = v8;
        }

        sub_10099CEBC(0, v9 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011ABB20);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_10089C4F8(0, *(v8 + 2) + 1, 1, v8);
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_10089C4F8((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v3;
  *(v13 + 5) = v5;
  v14 = [v6 standardUserDefaults];
  v18[3] = sub_10010FC20(&unk_1011A9FA0);
  v18[0] = v8;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000100E60D20;
  NSUserDefaults.subscript.setter(v18, v0 + 16, &type metadata for String);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100A4EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100A4EEA0, 0, 0);
}

uint64_t sub_100A4EEA0()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100A4F030(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_100A4F0A0(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v71 = a4;
  v74 = a3;
  v8 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v8 - 8);
  v70 = &v65 - v9;
  v73 = type metadata accessor for URL();
  v10 = *(v73 - 8);
  __chkstk_darwin(v73);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_1000060E4(v72, static Logger.playbackController);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v69 = a1;
  if (v17)
  {
    v18 = a2;
    v19 = v14;
    v20 = v10;
    v21 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v75[0] = v67;
    *v21 = 136446210;
    v22 = v5;
    v23 = v21;
    *&v80[0] = a1;
    *(&v80[0] + 1) = v18;

    sub_10010FC20(&unk_1011ACB70);
    v24 = String.init<A>(describing:)();
    v26 = sub_100010678(v24, v25, v75);
    v10 = v20;
    v14 = v19;
    a2 = v18;

    v27 = v23;
    *(v23 + 1) = v26;
    v28 = v73;
    v5 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Presenting Age Verification with model identifier=%{public}s", v27, 0xCu);
    sub_10000959C(v67);
  }

  else
  {

    v28 = v73;
  }

  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v80[4] = v76;
  v80[5] = v77;
  v80[6] = v78;
  v80[7] = v79;
  v80[0] = v75[0];
  v80[1] = v75[1];
  v80[2] = v75[2];
  v80[3] = v75[3];
  sub_100014984(v80);
  if (BYTE1(v80[0]) != 1)
  {
    v34 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v35 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000954C((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v34);
    v36 = sub_1009823E4(v75);
    BYTE8(v76) = 0;
    (*(v35 + 8))(v75, v34, v35, v36);
    sub_100A52D6C(v75);
    if (qword_1011A6A68 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v72, qword_1011ACA10);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Device is offline. Age Verification cannot proceed. Displaying fallback alert instead.";
    goto LABEL_20;
  }

  if (qword_1011A7128 != -1)
  {
    swift_once();
  }

  v29 = v70;
  ExplicitRestrictionsController.accountVerificationURL.getter(v70);
  if ((*(v10 + 48))(v29, 1, v28) == 1)
  {
    sub_1000095E8(v29, &qword_1011A77F0);
    if (qword_1011A6A68 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v72, qword_1011ACA10);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "accountVerificationURL is missing. Age Verification cannot proceed.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_21:

    if (v74)
    {
      v74(0, 0);
    }

    return;
  }

  v37 = *(v10 + 32);
  v37(v14, v29, v28);
  v38 = qword_1011A6A68;
  v66 = v5;
  if (a2)
  {
    v70 = v14;

    if (v38 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v72, qword_1011ACA10);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "modelObjectIdentifier parameters found for age verification context", v41, 2u);
    }

    sub_10010FC20(&unk_1011ACB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0x64496D616461;
    v43 = inited + 32;
    v44 = v69;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v44;
    *(inited + 56) = a2;
    v45 = sub_1008BC7B0(inited);
    swift_setDeallocating();
    sub_1000095E8(v43, &qword_1011A98B0);
    v46 = v68;
    v14 = v70;
    URL.parametrize(_:)(v45, v68);

    (*(v10 + 8))(v14, v28);
    v37(v14, v46, v28);
    v47 = v10;
  }

  else
  {
    if (qword_1011A6A68 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v72, qword_1011ACA10);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "modelObjectIdentifier parameters missing for age verification context", v50, 2u);
    }

    v47 = v10;
  }

  v51 = [objc_allocWithZone(_s22AgeVerificationWrapperCMa()) init];
  v52 = swift_allocObject();
  v53 = v66;
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  v55 = v74;
  v56 = v71;
  *(v54 + 2) = v74;
  *(v54 + 3) = v56;
  *(v54 + 4) = v52;
  v57 = &v51[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v58 = *&v51[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  *v57 = sub_100A52D9C;
  v57[1] = v54;
  sub_100030444(v55);

  sub_100020438(v58);

  v59 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v51;
  v60 = v51;

  v61 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v62 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
  v63 = *(v62 + 16);
  v64 = v60;
  v63(v14, v64, v61, v62);

  (*(v47 + 8))(v14, v73);
}

void sub_100A4FA0C(void *a1, char a2, void (*a3)(void, void))
{
  if (a3)
  {
    a3(a2 & 1, 0);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
      v6 = Strong;
      v7 = v5;

      if (v5)
      {

        if (v5 == a1)
        {
          swift_beginAccess();
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            v9 = *&v8[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper];
            *&v8[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
          }
        }
      }
    }
  }
}

uint64_t PlaybackController.displayAgeVerification(modelObject:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1)
  {
    a1 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_100A4F0A0(a1, v6, a2, a3);
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100A4FBFC, v4, v3);
}

uint64_t sub_100A4FBFC()
{
  v4 = v0[1];
  v0[4].i64[0] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4].i64[1] = v1;
  v1[1] = vextq_s8(v4, v4, 8uLL);
  v2 = swift_task_alloc();
  v0[5].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_100A4FD10;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100A4FD10()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100A4FE98;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100A4FE34;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A4FE34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4FE98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4FF10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_1011ACB50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000954C(a3, a3[3]);
  v9 = dispatch thunk of MusicItem.id.getter();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  sub_100A4F0A0(v9, v11, sub_100A52CE0, v13);
}

uint64_t sub_100A500A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_10010FC20(&unk_1011ACB50);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10010FC20(&unk_1011ACB50);
    return CheckedContinuation.resume(returning:)();
  }
}

id sub_100A50200()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v2)
  {

    v2(0, 0);
    sub_100020438(v2);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100A50338(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100009F78(0, &qword_1011A9F80);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A52BEC, v8);
}

uint64_t sub_100A503F4(uint64_t result)
{
  v1 = (result + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  v2 = *(result + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  if (v2)
  {
    v3 = result;
    v4 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    v5 = [objc_opt_self() defaultManager];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v4;
    v6[4] = v3;
    v9[4] = sub_100A52BE0;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10027D328;
    v9[3] = &unk_1010DA2D8;
    v7 = _Block_copy(v9);
    sub_100030444(v2);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return sub_100020438(v2);
  }

  return result;
}

uint64_t sub_100A50630()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.playbackController);
  sub_1000060E4(v0, static Logger.playbackController);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A5074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_100A50770, 0, 0);
}

uint64_t sub_100A50770()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100A507DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  sub_10010FC20(&qword_1011A7F00);
  v6[6] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v6[7] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100A50924, 0, 0);
}

uint64_t sub_100A50924()
{
  v1 = [*(v0 + 16) action];
  v2 = [v1 type];

  if (v2 != 2 || (v3 = [*(v0 + 16) action], v4 = objc_msgSend(v3, "URLString"), v3, !v4))
  {
LABEL_5:
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    v11 = [objc_opt_self() activeAccount];
    v12 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v11];

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    sub_100969A38(0, 0, v8, &unk_100EF72F0, v14);

    v16 = *(v0 + 24);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(string:)();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1000095E8(*(v0 + 56), &qword_1011A77F0);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  sub_100969740(0, 0, v23, &unk_100EF7300, v27);

  (*(v21 + 8))(v19, v22);
  v16 = *(v0 + 24);
  if (v16)
  {
LABEL_6:
    v16(*(v0 + 40));
  }

LABEL_7:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100A50CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_100A50CF0, 0, 0);
}

uint64_t sub_100A50CF0()
{
  *(v0 + 160) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A50D94, v2, v1);
}

uint64_t sub_100A50D94()
{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_100A50E18, 0, 0);
}

uint64_t sub_100A50E18@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[22];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v1[23] = v3;
  sub_1008BD18C(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_100A52FE8(&qword_1011A79E0, _s3__C25OpenExternalURLOptionsKeyVMa_0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[24] = isa;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_100A50FD8;
  v6 = swift_continuation_init();
  v1[17] = sub_10010FC20(&qword_1011ACBA8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10072BFC8;
  v1[13] = &unk_1010DA5D0;
  v1[14] = v6;
  [v2 openURL:v4 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_100A50FD8()
{

  return _swift_task_switch(sub_100A510B8, 0, 0);
}

uint64_t sub_100A510B8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100A51130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(sub_100A51154, 0, 0);
}

uint64_t sub_100A51154()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_100A512A0;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_10010FC20(&qword_1011ACBB0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100A514A0;
  *(v0 + 104) = &unk_1010DA5F8;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100A512A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100A5141C;
  }

  else
  {
    v2 = sub_100A513B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A513B0()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A5141C()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  **(v0 + 144) = 2;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A514A0(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011AB640);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100A5156C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_100A515EC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  static Published.subscript.setter();
  sub_100A5B300(v4);
}

unint64_t sub_100A516D8()
{
  result = qword_1011ACA40;
  if (!qword_1011ACA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACA40);
  }

  return result;
}

unint64_t sub_100A5172C()
{
  result = qword_1011ACA48;
  if (!qword_1011ACA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACA48);
  }

  return result;
}

uint64_t sub_100A51780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100A517E8(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_100A5180C(a1);
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

void sub_100A5180C(id a1)
{
  if (a1 >= 5)
  {
  }
}

id sub_100A5181C(id result, char a2)
{
  if (a2 == 2)
  {
    return sub_100A51840(result);
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    return sub_100A51840(result);
  }
}

id sub_100A51840(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL sub_100A51850(void *a1, uint64_t a2)
{
  v7[3] = &type metadata for Player.ReplaceCommand;
  v7[4] = &protocol witness table for Player.ReplaceCommand;
  v7[0] = a1;
  v7[1] = a2;
  sub_10000954C(v7, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  static Published.subscript.getter();

  if (v6)
  {
    v4 = MPCPlayerResponse.canPerform(_:)(v7);
  }

  else
  {
    v4 = 0;
  }

  sub_10000959C(v7);
  return v4;
}

BOOL sub_100A5196C(char a1)
{
  v4[3] = &type metadata for Player.PlaybackCommand;
  v4[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v4[0]) = a1;
  sub_10000954C(v4, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    v1 = MPCPlayerResponse.canPerform(_:)(v4);
  }

  else
  {
    v1 = 0;
  }

  sub_10000959C(v4);
  return v1;
}

BOOL sub_100A51A80(void *a1, void *a2)
{
  v8[3] = &type metadata for Player.InsertCommand;
  v8[4] = &protocol witness table for Player.InsertCommand;
  v8[0] = a1;
  v8[1] = a2;
  sub_10000954C(v8, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_1001DFD48(a2);
  static Published.subscript.getter();

  if (v7)
  {
    v5 = MPCPlayerResponse.canPerform(_:)(v8);
  }

  else
  {
    v5 = 0;
  }

  sub_10000959C(v8);
  return v5;
}

BOOL sub_100A51BB0(void *a1)
{
  v5[3] = &type metadata for Player.ChangeCommand;
  v5[4] = &protocol witness table for Player.ChangeCommand;
  v5[0] = a1;
  sub_10000954C(v5, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100A53A8C(a1);
  static Published.subscript.getter();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  sub_10000959C(v5);
  return v2;
}

BOOL sub_100A51CD0(uint64_t a1)
{
  v4[3] = &type metadata for Player.VocalsCommand;
  v4[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v4[0]) = a1;
  BYTE4(v4[0]) = BYTE4(a1);
  BYTE5(v4[0]) = BYTE5(a1) & 1;
  sub_10000954C(v4, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    v1 = MPCPlayerResponse.canPerform(_:)(v4);
  }

  else
  {
    v1 = 0;
  }

  sub_10000959C(v4);
  return v1;
}

uint64_t sub_100A51DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100A51E54(void *a1)
{
  v2 = v1;
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.sharedListening);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v27[0] = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100010678(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }

  v16 = v5;
  sub_100AC8C14(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    sub_10000954C(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    sub_1000095E8(v25, &unk_1011ACC40);
  }
}

uint64_t sub_100A520E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, static Logger.sharedListening);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = a1;
    v23 = v11;
    *v10 = 136446210;
    swift_errorRetain();
    sub_10010FC20(&qword_1011ADA20);
    v12 = String.init<A>(describing:)();
    v14 = sub_100010678(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Receiving didEndSharedListeningSessionWithError=%{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v2;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  sub_100969440(0, 0, v6, &unk_100EF7358, v18);

  if (a1)
  {
    sub_100009F78(0, &qword_1011A9F80);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v21 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A53568, v20);
  }

  return result;
}

void sub_100A523C4(void *a1)
{
  v2 = v1;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.playbackController);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v8;
    *v7 = 136446210;
    swift_errorRetain();
    sub_10010FC20(&qword_1011ADA20);
    v9 = String.init<A>(describing:)();
    v11 = sub_100010678(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  if (a1)
  {
    v12 = _convertErrorToNSError(_:)();
    v13 = [v12 userInfo];
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      v17 = sub_100019C28(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_10000DD18(*(v14 + 56) + 32 * v17, v35);

        sub_100009F78(0, &qword_1011ACC28);
        if (swift_dynamicCast())
        {
          v20 = [v34 stateReasonDialog];
          if (!v20)
          {

            return;
          }

          v21 = v20;
          v22 = [v12 userInfo];
          v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v23 + 16))
          {
            v26 = sub_100019C28(v24, v25);
            v28 = v27;

            if (v28)
            {
              sub_10000DD18(*(v23 + 56) + 32 * v26, v35);

              sub_10010FC20(&unk_1011ACC30);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = sub_100019C28(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                sub_10000DD18(v34[7] + 32 * v29, v35);
                sub_10010FC20(&unk_1011A9FA0);
                if (swift_dynamicCast())
                {
                  sub_100009F78(0, &qword_1011A9F80);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A5349C, v31);

                  return;
                }

                goto LABEL_19;
              }

              goto LABEL_24;
            }
          }

          else
          {
          }

LABEL_24:
        }

LABEL_19:

        return;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }
}

uint64_t sub_100A52878(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100A5289C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A528D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_100A52928(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_100A52998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A529E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100A52A38(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100A52A50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A52AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100A52B08(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100A52B24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100A52B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100A52BB0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100A52C40()
{

  return swift_deallocObject();
}

uint64_t sub_100A52C98()
{

  return swift_deallocObject();
}

uint64_t sub_100A52CE0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011ACB50);

  return sub_100A500A0(a1, a2);
}

uint64_t sub_100A52DA8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100008F30;

  return sub_100A4EBB8(a1, a2, v6, v7, v8);
}

uint64_t sub_100A52E68(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_100A4EE80(a1, a2, v7, v6);
}

uint64_t sub_100A52F38(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4D960(a1, a2, v2 + 16, v6);
}

uint64_t sub_100A52FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100A53050(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_100A507DC(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100A53114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100A51130(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100A531DC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100A50CD0(a1, v6, v7, v1 + v5);
}

uint64_t sub_100A53328(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100008F30;

  return sub_100A5074C(a1, a2, v6, v7, v8);
}

uint64_t sub_100A533E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_100A4DBC8(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_100A534B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100A4A920(a1, v4, v5, v6);
}

unint64_t sub_100A53570()
{
  result = qword_1011ACC60;
  if (!qword_1011ACC60)
  {
    sub_100009F78(255, &qword_1011ACC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACC60);
  }

  return result;
}

uint64_t sub_100A535D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4A52C(a1, a2, v6);
}

uint64_t sub_100A53684(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4A730(a1, a2, v6);
}

uint64_t sub_100A53730(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4A684(a1, a2, v6);
}

uint64_t sub_100A537DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4A5D8(a1, a2, v6);
}

uint64_t sub_100A53888(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4716C(a1, a2, v6);
}

uint64_t sub_100A53934(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A47214(a1, a2, v6);
}

uint64_t sub_100A539E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A472BC(a1, a2, v6);
}

id sub_100A53A8C(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t sub_100A53AA4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A486C0(a1, a2, v6);
}

uint64_t sub_100A53B50(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A48620(a1, a2, v6);
}

uint64_t sub_100A53BFC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A47AB0(a1, a2, v6);
}

uint64_t sub_100A53CA8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002F3F4;

  return sub_100A47B50(a1, a2, v6);
}

uint64_t sub_100A53D54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100A53E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100A565C4(a1, a2, a3, a4);

  sub_100344C88(a1, a2, a3, a4);
}

uint64_t PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v44 = a7;
  v49 = a4;
  v50 = a11;
  v43 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v48 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v45);
  v46 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v21 = a9 + v20[7];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = a9 + v20[8];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(a9 + v20[9]) = 0;
  *(a9 + v20[10]) = 0;
  *(a9 + v20[11]) = 0;
  v51 = a1;
  sub_100A53E04(a1, a9);
  if ((a6 & 1) == 0)
  {
    sub_100A54CE8(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    sub_100A54CE8(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  sub_100916B40(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  sub_1000089F8(v24, &v52, &qword_1011A8658);
  if (v53)
  {
    sub_100059A8C(&v52, v54);
  }

  else
  {
    if (a10)
    {
      v54[0] = a10;
      v25 = a10;
    }

    else
    {
      v54[0] = 0;
      sub_10010FC20(&qword_1011A9098);
    }

    v26 = String.init<A>(reflecting:)();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      sub_1000095E8(&v52, &qword_1011A8658);
    }
  }

  sub_10006B010(v54, v22, &qword_1011A8658);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  sub_100029CA4(0, 0xF000000000000000);

  sub_10002D6A4(v29, v31);

  sub_100029CA4(v29, v31);
  v32 = a9;
  v33 = v46;
  sub_100A53E04(v32, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v33;

    v40 = String._bridgeToObjectiveC()();

    [v39 setPlayActivityFeatureName:v40];

    if (v31 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_10002BC44(v29, v31);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100029CA4(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    sub_100029CA4(v29, v31);
LABEL_22:
    sub_1000095E8(v24, &qword_1011A8658);
    sub_1000095E8(v23, &qword_1011ACCA0);
    return sub_1008BEEDC(v51);
  }

  v34 = v33;
  v35 = v43;
  (*(v48 + 32))(v47, v34, v43);
  v36 = MusicPlaybackIntentDescriptor.playbackIntent.getter();

  v37 = String._bridgeToObjectiveC()();

  [v36 setPlayActivityFeatureName:v37];

  if (v31 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    sub_10002BC44(v29, v31);
    v38 = Data._bridgeToObjectiveC()().super.isa;
    sub_100029CA4(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  sub_100029CA4(v29, v31);
  sub_1000095E8(v24, &qword_1011A8658);
  sub_1000095E8(v23, &qword_1011ACCA0);
  sub_1008BEEDC(v51);
  return (*(v48 + 8))(v47, v35);
}

void PlaybackIntentDescriptor.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v14);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100A53E04(v5, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v16, v10);
    v17 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    sub_100A565C4(a1, a2, a3, a4);
    sub_100344C88(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = *v16;
    sub_100A565C4(a1, a2, a3, a4);
    sub_100344C88(a1, a2, a3, a4);
  }
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO010underlyingD0So011MPCPlaybackD0Cvg_0()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A53E04(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100029CA4(0, 0xF000000000000000);

  sub_10002D6A4(a3, a4);

  sub_100029CA4(a3, a4);
  return a1;
}

uint64_t PlaybackIntentDescriptor.IntentType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6 = __chkstk_darwin(v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v8 = a1;
    v12 = v5;
    swift_storeEnumTagMultiPayload();
    sub_100A566E0(v8, a2);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v5 + 56);

    return v10(a2, 1, 1, v4, v6);
  }
}

{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_1000095E8(a1, &qword_1011A90A8);
    v12 = *(v16 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, a1, v7);
    v14(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_100A566E0(v6, a2);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

id sub_100A54B50(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100A53E04(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v12 = [v11 *a1];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = *v10;
    v12 = [*v10 *a1];
  }

  return v12;
}

void sub_100A54CE8(uint64_t a1, char a2, SEL *a3)
{
  v5 = v3;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v12);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (&v19 - v14);
  if (a2)
  {
    v16 = -1;
  }

  else
  {
    v16 = a1;
  }

  sub_100A53E04(v5, &v19 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v15, v8);
    v17 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v17 *a3];

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v18 = *v15;
    [*v15 *a3];
  }
}

uint64_t PlaybackIntentDescriptor.intentOptions.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.replaceIntent.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.autoSing.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.isSiriIntent.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.playActivityInformation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100A53E04(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v10 = MPCPlaybackIntent.playActivityInformation.getter();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = *v8;
    v10 = MPCPlaybackIntent.playActivityInformation.getter();
  }

  return v10;
}

uint64_t MPCPlaybackIntent.playActivityInformation.getter()
{
  v1 = [v0 playActivityFeatureName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v0 playActivityRecommendationData];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_100029CA4(0, 0xF000000000000000);

  sub_10002D6A4(v6, v8);

  sub_100029CA4(v6, v8);
  return v3;
}

void (*PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[6] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[7] = v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[8] = v10;
  v11 = *(*(v10 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[9] = swift_coroFrameAlloc();
    v4[10] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[9] = malloc(v11);
    v4[10] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[11] = v12;
  sub_100A53E04(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v5);
    v14 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    (*(v7 + 8))(v9, v5);
  }

  else
  {
    v22 = *v13;
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  *v4 = v15;
  v4[1] = v17;
  v4[2] = v19;
  v4[3] = v21;
  return sub_100A55780;
}

void sub_100A55780(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    sub_100A53E04(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      sub_100344C3C(v4, v3, v6, v5);
      v13 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      sub_100A565C4(v4, v3, v6, v5);
      sub_100344C88(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      sub_100344C3C(v4, v3, v6, v5);
      sub_100A565C4(v4, v3, v6, v5);
      sub_100344C88(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    sub_100344C88(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    sub_100A53E04(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      sub_100A565C4(v4, v3, v6, v5);
      sub_100344C88(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      sub_100A565C4(v4, v3, v6, v5);
      sub_100344C88(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
  }

  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t PlaybackIntentDescriptor.forceSharePlayPrompt.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.recommendationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100029CA4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*MPCPlaybackIntent.playActivityInformation.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = MPCPlaybackIntent.playActivityInformation.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_100A55B78;
}

void sub_100A55B78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_100344C3C(v3, v4, v5, v6);
    sub_100A565C4(v3, v4, v5, v6);
    sub_100344C88(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    sub_100A565C4(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  sub_100344C88(v7, v8, v9, v10);

  free(v2);
}

unint64_t PlaybackIntentDescriptor.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = 0xD000000000000019;
  v43 = 0x8000000100E611E0;
  strcpy(&v39, "intent=");
  v39._object = 0xE700000000000000;
  sub_100A53E04(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
  }

  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 8236;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  String.append(_:)(v39);

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(&v39, "shuffleMode=");
  BYTE5(v39._object) = 0;
  HIWORD(v39._object) = -5120;
  v37._countAndFlagsBits = sub_100A54B50(&selRef_shuffleMode);
  LOBYTE(v37._object) = 0;
  sub_10010FC20(&qword_1011ACD10);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  String.append(_:)(v39);

  strcpy(&v39, "repeatMode=");
  HIDWORD(v39._object) = -352321536;
  v37._countAndFlagsBits = sub_100A54B50(&selRef_repeatMode);
  LOBYTE(v37._object) = 0;
  sub_10010FC20(&qword_1011ACD18);
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  String.append(_:)(v39);

  strcpy(&v39, "options=");
  BYTE1(v39._object) = 0;
  WORD1(v39._object) = 0;
  HIDWORD(v39._object) = -402653184;
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v37._countAndFlagsBits = *(v1 + v20[5]);
  type metadata accessor for MPCPlaybackIntentOptions(0);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  String.append(_:)(v39);

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v39._countAndFlagsBits = 0x206563616C706572;
  v39._object = 0xEF3D746E65746E69;
  v37._countAndFlagsBits = *(v1 + v20[6]);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v23._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  String.append(_:)(v39);

  v25._object = 0x8000000100E61200;
  v25._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v25);
  sub_1000089F8(v1 + v20[7], &v37, &qword_1011ACCA0);
  if (v38)
  {
    sub_100059A8C(&v37._countAndFlagsBits, &v39);
    sub_100008FE4(&v39, &v37);
    sub_10010FC20(&qword_1011ACCA8);
    v37._countAndFlagsBits = String.init<A>(describing:)();
    v37._object = v26;
    v27._countAndFlagsBits = 8236;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    String.append(_:)(v37);

    sub_10000959C(&v39);
  }

  else
  {
    sub_1000095E8(&v37, &qword_1011ACCA0);
    v28._countAndFlagsBits = 0x202C656E6F6ELL;
    v28._object = 0xE600000000000000;
    String.append(_:)(v28);
  }

  v29._countAndFlagsBits = 0x3D726575737369;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  sub_1000089F8(v1 + v20[8], &v37, &qword_1011A8658);
  if (v38)
  {
    sub_100059A8C(&v37._countAndFlagsBits, &v39);
    v30 = v40;
    v31 = v41;
    sub_10000954C(&v39, v40);
    v37._countAndFlagsBits = (*(v31 + 8))(v30, v31);
    v37._object = v32;
    v33._countAndFlagsBits = 8236;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    String.append(_:)(v37);

    sub_10000959C(&v39);
  }

  else
  {
    sub_1000095E8(&v37, &qword_1011A8658);
    v34._countAndFlagsBits = 0x6669636570736E75;
    v34._object = 0xEC0000003D646569;
    String.append(_:)(v34);
  }

  v35._countAndFlagsBits = 41;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  return v42;
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v30 - v14);
  v16 = sub_10010FC20(&qword_1011ACE78);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  v20 = *(v19 + 56);
  sub_100A53E04(a1, &v30 - v17);
  sub_100A53E04(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100A53E04(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v31;
      v22 = *(v31 + 32);
      v22(v9, v12, v4);
      v22(v6, &v18[v20], v4);
      sub_100009F78(0, &qword_1011AAEA0);
      v23 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      v24 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      v25 = static NSObject.== infix(_:_:)();

      v26 = *(v21 + 8);
      v26(v6, v4);
      v26(v9, v4);
LABEL_9:
      sub_1008BEEDC(v18);
      return v25 & 1;
    }

    (*(v31 + 8))(v12, v4);
  }

  else
  {
    sub_100A53E04(v18, v15);
    v27 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *&v18[v20];
      sub_100009F78(0, &qword_1011AAEA0);
      v25 = static NSObject.== infix(_:_:)();

      goto LABEL_9;
    }
  }

  sub_1000095E8(v18, &qword_1011ACE78);
  v25 = 0;
  return v25 & 1;
}