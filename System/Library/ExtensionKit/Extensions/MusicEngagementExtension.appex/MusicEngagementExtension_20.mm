uint64_t PlaybackController.checkForPlayabilityOption(using:descriptor:)()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 296) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v1 + v2) && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v3 = *(v0 + 192), (*(v0 + 304) = v3) != 0))
  {
    v5 = *(v0 + 200);
    v4 = [objc_opt_self() sharedController];
    LODWORD(v5) = MPCloudServiceStatusController.accountPlayabilityStatus(for:)(v5);

    if (v5)
    {
      outlined init with copy of PlaybackIntentDescriptor(*(v0 + 208), *(v0 + 256), type metadata accessor for PlaybackIntentDescriptor.IntentType);
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

        v16 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
        goto LABEL_28;
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = *(v0 + 200);
    v3 = [objc_opt_self() sharedController];
    LOBYTE(v5) = MPCloudServiceStatusController.accountPlayabilityStatus(for:)(v5);
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

  v16 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
LABEL_28:
  v25 = v16;
  v18 = v13;

  return _swift_task_switch(v25, v18, v15);
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    Player.requestSharePlayTogether(completion:)(partial apply for closure #1 in closure #1 in PlaybackController.checkForPlayabilityOption(using:descriptor:), v8);
  }

  return _swift_continuation_await(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  }

  else
  {

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  }

  return _swift_task_switch(v5, v3, v4);
}

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

  return _swift_task_switch(PlaybackController.checkForPlayabilityOption(using:descriptor:), v2, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(v5, v4, v3, v2);

  return _swift_continuation_await(v1);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  }

  else
  {

    *(v1 + 346) = *(v1 + 344);
    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(PlaybackController.userPickedOptionsForShareListening(for:id:), v8, v7);
}

uint64_t PlaybackController.userPickedOptionsForShareListening(for:id:)()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  outlined init with copy of TaskPriority?(v1 + *(v2 + 28), v0 + 80, &_s8MusicKit0A4Item_pSgMd);
  outlined init with copy of TaskPriority?(v0 + 80, v0 + 200, &_s8MusicKit0A4Item_pSgMd);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 200), *(v0 + 224));
    MusicItem.innerItem.getter(v3, v4, (v0 + 160));
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 200);
    if (*(v0 + 184))
    {
      outlined init with take of ActionPerforming((v0 + 160), v0 + 120);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (one-time initialization token for sharedListeningSupportedMusicItems != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = (static SharedListening.sharedListeningSupportedMusicItems + 32);
      v7 = *(static SharedListening.sharedListeningSupportedMusicItems + 2) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 2;
        if (v8 == DynamicType)
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 120);
          goto LABEL_11;
        }
      }

      outlined init with copy of PlaybackIntentDescriptor(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
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
      v39[1] = PlaybackController.userPickedOptionsForShareListening(for:id:);
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 200, &_s8MusicKit0A4Item_pSgMd);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  outlined destroy of TaskPriority?(v0 + 160, &_s8MusicKit0A4Item_pSgMd);
LABEL_11:
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.sharedListening);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  outlined init with copy of TaskPriority?(v0 + 80, v0 + 240, &_s8MusicKit0A4Item_pSgMd);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 240), *(v0 + 264));
    v15 = MusicItem.sharePlayAlertMessage.getter(v13, v14);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 240);
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    outlined destroy of TaskPriority?(v0 + 240, &_s8MusicKit0A4Item_pSgMd);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v21 + 16))(v18, v19, v20);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = static NSBundle.module;
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

  return _swift_task_switch(PlaybackController.userPickedOptionsForShareListening(for:id:), v28, v30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = PlaybackController.userPickedOptionsForShareListening(for:id:);
  }

  else
  {
    v6 = PlaybackController.userPickedOptionsForShareListening(for:id:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 120);
  outlined destroy of TaskPriority?(v0 + 80, &_s8MusicKit0A4Item_pSgMd);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = PlaybackController.userPickedOptionsForShareListening(for:id:);
  v5 = swift_continuation_init();
  closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(PlaybackController.userPickedOptionsForShareListening(for:id:), v4, v3);
}

{

  outlined destroy of TaskPriority?(v0 + 80, &_s8MusicKit0A4Item_pSgMd);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 120);
  outlined destroy of TaskPriority?(v0 + 80, &_s8MusicKit0A4Item_pSgMd);

  v1 = *(v0 + 8);

  return v1();
}

id *PlaybackController.commands(for:options:replaceIntent:)(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && specialized Player.canPerform(_:)(v10, a3))
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
      }

      v40 = &type metadata for Player.ReplaceCommand;
      v41 = &protocol witness table for Player.ReplaceCommand;
      *&v39 = v10;
      *(&v39 + 1) = a3;
      v9[2] = (v12 + 1);
      v13 = &v9[5 * v12];
      goto LABEL_34;
    }

    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004F2EF0;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (specialized Player.canPerform(_:)(v19, 0) && specialized Player.canPerform(_:)(1))
      {
        specialized Array.append<A>(contentsOf:)(inited);
        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        v20 = v19;
      }

      else
      {

        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        outlined init with copy of ActionPerforming(&v39, v38);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v9);
        }

        v27 = __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
        __chkstk_darwin(v27);
        v29 = (&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v30 + 16))(v29);
        v31 = *v29;
        v32 = v29[1];
        v36 = &type metadata for Player.ReplaceCommand;
        v37 = &protocol witness table for Player.ReplaceCommand;
        *&v35 = v31;
        *(&v35 + 1) = v32;
        v9[2] = (v26 + 1);
        outlined init with take of ActionPerforming(&v35, &v9[5 * v26 + 4]);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        v42 = v9;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v39);
      if (!specialized Player.canPerform(_:)(0))
      {

        return v42;
      }

      v9 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v33 = v9[3];
      v23 = (v17 + 1);
      if (v17 >= v33 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.PlaybackCommand;
      v41 = &protocol witness table for Player.PlaybackCommand;
      LOBYTE(v39) = 0;
    }

    else
    {
      if ((a2 & 4) != 0)
      {
        v14 = v10;
        v15 = specialized Player.canPerform(_:)(v14, 0);

        if (v15)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
          }

          v40 = &type metadata for Player.InsertCommand;
          v41 = &protocol witness table for Player.InsertCommand;
          v39 = v14;
          v9[2] = (v17 + 1);
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = specialized Player.canPerform(_:)(v10, 1), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = (v17 + 1);
      if (v17 >= v22 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.InsertCommand;
      v41 = &protocol witness table for Player.InsertCommand;
      *&v39 = v10;
      *(&v39 + 1) = 1;
    }

    v9[2] = v23;
LABEL_33:
    v13 = &v9[5 * v17];
LABEL_34:
    outlined init with take of ActionPerforming(&v39, (v13 + 4));
  }

  return v9;
}

uint64_t closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
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
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  String.LocalizationValue.init(stringLiteral:)();
  v62 = *(v7 + 16);
  v55 = v7 + 16;
  v62(v10, v12, v6);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v13 = static NSBundle.module;
  v14 = static NSBundle.module;
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
  v62(v10, v12, v6);
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
  v62(v10, v12, v6);
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
  v22(v10, v12, v6);
  static Locale.current.getter();
  v63 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v26;
  v20(v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004F2EB0;
  v29 = v60;
  *(v28 + 32) = v48;
  *(v28 + 40) = v29;
  v30 = v50;
  *(v28 + 48) = v51;
  *(v28 + 56) = v30;
  *(v28 + 64) = 2;
  v31 = v49;
  *(v28 + 72) = &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.userPickedReplaceIntent();
  *(v28 + 80) = v31;
  v32 = v56;
  *(v28 + 88) = v45;
  *(v28 + 96) = v32;
  v33 = v57;
  *(v28 + 104) = v47;
  *(v28 + 112) = v33;
  *(v28 + 120) = 1;
  v34 = v46;
  *(v28 + 128) = &async function pointer to partial apply for closure #2 in closure #1 in PlaybackController.userPickedReplaceIntent();
  *(v28 + 136) = v34;
  v35 = v43;
  *(v28 + 144) = v61;
  *(v28 + 152) = v35;
  v36 = v59;
  *(v28 + 160) = v44;
  *(v28 + 168) = v36;
  *(v28 + 176) = 0;
  v37 = v58;
  *(v28 + 184) = &async function pointer to partial apply for closure #3 in closure #1 in PlaybackController.userPickedReplaceIntent();
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
  v63 = __swift_project_boxed_opaque_existential_0Tm((v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v38);
  v65[2] = v70;
  v65[3] = v71;
  v66 = v72;
  v65[0] = v68;
  v65[1] = v69;
  v67 = 0;
  v62 = *(v39 + 8);

  outlined init with copy of Alert(&v68, v64);
  v62(v65, v38, v39);
  outlined destroy of Alert(&v68);

  return outlined destroy of PresentationKind(v65);
}

uint64_t closure #1 in closure #1 in PlaybackController.userPickedReplaceIntent()()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 2;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in closure #1 in PlaybackController.userPickedReplaceIntent()()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 1;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #3 in closure #1 in PlaybackController.userPickedReplaceIntent()()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in PlaybackController.userPickedPlayLocally()(uint64_t a1, uint64_t a2)
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
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v55 = *(v6 + 16);
  v55(v9, v11, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  v13 = static NSBundle.module;
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
  v55(v9, v11, v5);
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
  v55(v9, v11, v5);
  static Locale.current.getter();
  v21 = v42;
  v52 = String.init(localized:table:bundle:locale:comment:)();
  v42 = v22;
  v23 = v54;
  v54(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v20(v9, v11, v5);
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v23(v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004F2EF0;
  v28 = v46;
  *(v27 + 32) = v47;
  *(v27 + 40) = v28;
  v29 = v49;
  *(v27 + 48) = v50;
  *(v27 + 56) = v29;
  *(v27 + 64) = 2;
  v30 = v48;
  *(v27 + 72) = &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.userPickedPlayLocally();
  *(v27 + 80) = v30;
  v31 = v56;
  *(v27 + 88) = v43;
  *(v27 + 96) = v31;
  v32 = v45;
  *(v27 + 104) = v51;
  *(v27 + 112) = v32;
  *(v27 + 120) = 0;
  v33 = v44;
  *(v27 + 128) = &async function pointer to partial apply for closure #2 in closure #1 in PlaybackController.userPickedPlayLocally();
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
  v55 = __swift_project_boxed_opaque_existential_0Tm((v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v34);
  v58[2] = v63;
  v58[3] = v64;
  v59 = v65;
  v58[0] = v61;
  v58[1] = v62;
  v60 = 0;
  v36 = *(v35 + 8);

  outlined init with copy of Alert(&v61, v57);
  v36(v58, v34, v35);
  outlined destroy of Alert(&v61);

  return outlined destroy of PresentationKind(v58);
}

uint64_t closure #1 in closure #1 in PlaybackController.userPickedPlayLocally()()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in closure #1 in PlaybackController.userPickedPlayLocally()()
{
  **(*(*(v0 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MPCloudServiceStatusController.accountPlayabilityStatus(for:)(uint64_t result)
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

uint64_t closure #1 in closure #1 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
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

uint64_t closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(void *a1, char a2, void *a3, uint64_t a4)
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
  v11 = __chkstk_darwin(v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v59 - v14;
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 applicationState];

  if (!a2)
  {
LABEL_8:
    **(v72[8] + 40) = 0;

    return swift_continuation_throwingResume();
  }

  if (v17 == 2)
  {
    if (one-time initialization token for playbackController != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.playbackController);
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
    (*(v71 + 16))(v13, v15, v10);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v24 = static NSBundle.module;
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
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = v28[2];
    v29 = v28[3];
    if (v30 >= v29 >> 1)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
    }

    v28[2] = (v30 + 1);
    v31 = &v28[7 * v30];
    v32 = v64;
    v31[4] = v65;
    v31[5] = v32;
    v33 = v66;
    v31[6] = v67;
    v31[7] = v33;
    *(v31 + 64) = 2;
    v31[9] = &async function pointer to partial apply for closure #1 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:);
    v31[10] = v26;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v34 = v71;
  v67 = v6;
  String.LocalizationValue.init(stringLiteral:)();
  v35 = *(v34 + 16);
  v66 = (v34 + 16);
  v65 = v35;
  v35(v13, v15, v10);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v36 = static NSBundle.module;
  v37 = static NSBundle.module;
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
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
  }

  v46 = v28[2];
  v45 = v28[3];
  if (v46 >= v45 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v28);
  }

  v28[2] = (v46 + 1);
  v47 = &v28[7 * v46];
  v48 = v72;
  v47[4] = v60;
  v47[5] = v48;
  v47[6] = v62;
  v47[7] = v40;
  v61 = v40;
  *(v47 + 64) = 0;
  v49 = v69;
  v47[9] = &async function pointer to partial apply for closure #2 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:);
  v47[10] = v49;
  v50 = Optional<A>.sharedQueueUnsupportedTitle.getter(v70);
  v52 = v51;
  String.LocalizationValue.init(stringLiteral:)();
  v65(v13, v15, v10);
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
  __swift_project_boxed_opaque_existential_0Tm((v68 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v56);
  v74[2] = v79;
  v74[3] = v80;
  v75 = v81;
  v74[0] = v77;
  v74[1] = v78;
  v76 = 0;
  v58 = *(v57 + 8);
  outlined init with copy of Alert(&v77, v73);
  v58(v74, v56, v57);
  outlined destroy of Alert(&v77);

  return outlined destroy of PresentationKind(v74);
}

uint64_t closure #1 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Optional<A>.sharedQueueUnsupportedTitle.getter(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v7, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t MusicItem.innerItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a3;
  v39 = a2;
  v47 = type metadata accessor for GenericMusicItem();
  v40 = *(v47 - 8);
  v4 = __chkstk_darwin(v47);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v37 - v6;
  v7 = type metadata accessor for Playlist.Entry.InternalItem();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Playlist.Entry();
  v42 = *(v48 - 8);
  v9 = __chkstk_darwin(v48);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Track();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - v19;
  v21 = *(a1 - 8);
  __chkstk_darwin(v18);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 16);
  v24(v23, v50, a1);
  if (swift_dynamicCast())
  {
    (*(v14 + 32))(v17, v20, v13);
    Track.musicItem.getter(v49);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v26 = v48;
    v25 = v49;
    if (swift_dynamicCast())
    {
      v28 = v41;
      v27 = v42;
      (*(v42 + 32))(v41, v12, v26);
      v29 = v43;
      Playlist.Entry.internalItem.getter();
      Playlist.Entry.InternalItem.musicItem.getter(v25);
      (*(v44 + 8))(v29, v45);
      (*(v27 + 8))(v28, v26);
    }

    else
    {
      v31 = v46;
      v30 = v47;
      if (swift_dynamicCast())
      {
        v32 = v40;
        v33 = v38;
        (*(v40 + 32))(v38, v31, v30);
        GenericMusicItem.innerMusicItem.getter(v25);
        (*(v32 + 8))(v33, v30);
      }

      else
      {
        v34 = v39;
        v25[3] = a1;
        v25[4] = v34;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
        v24(boxed_opaque_existential_1, v50, a1);
      }
    }
  }

  return (*(v21 + 8))(v23, a1);
}

uint64_t MusicItem.sharePlayAlertMessage.getter(uint64_t a1, uint64_t a2)
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
  v15 = __chkstk_darwin(v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v40 - v18;
  v20 = type metadata accessor for Song();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicItem.innerItem.getter(a1, a2, v58);
  if (!v58[3])
  {
    goto LABEL_31;
  }

  outlined init with copy of TaskPriority?(v58, v57, &_s8MusicKit0A4Item_pSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A4Item_pMd);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v14 + 16))(v17, v19, v13);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v24 = static NSBundle.module;
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
    (*(v14 + 16))(v17, v19, v13);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v27 = static NSBundle.module;
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
    (*(v14 + 16))(v17, v19, v13);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v30 = static NSBundle.module;
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
    (*(v14 + 16))(v17, v19, v13);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v32 = static NSBundle.module;
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    (*(v14 + 8))(v19, v13);
    v33 = &v62;
LABEL_18:
    v31 = *(v33 - 32);
LABEL_19:
    (*(v31 + 8))(v29, v28);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    outlined destroy of TaskPriority?(v58, &_s8MusicKit0A4Item_pSgMd);
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
      (*(v14 + 16))(v17, v19, v13);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v37 = static NSBundle.module;
      static Locale.current.getter();
      v25 = String.init(localized:table:bundle:locale:comment:)();
      (*(v14 + 8))(v19, v13);
      v33 = &v59;
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v57);
LABEL_31:
    outlined destroy of TaskPriority?(v58, &_s8MusicKit0A4Item_pSgMd);
    goto LABEL_32;
  }

  v36 = &v61;
LABEL_25:
  (*(*(v36 - 32) + 8))(v34, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  outlined destroy of TaskPriority?(v58, &_s8MusicKit0A4Item_pSgMd);
LABEL_32:
  String.LocalizationValue.init(stringLiteral:)();
  (*(v14 + 16))(v17, v19, v13);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v38 = static NSBundle.module;
  static Locale.current.getter();
  v25 = String.init(localized:table:bundle:locale:comment:)();
  (*(v14 + 8))(v19, v13);
  return v25;
}

uint64_t closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v7 = __chkstk_darwin(v123);
  v102 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
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
  v19 = __chkstk_darwin(v17);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v101 - v22;
  String.LocalizationValue.init(stringLiteral:)();
  v113 = *(v18 + 16);
  v114 = v18 + 16;
  v113(v21, v23, v17);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v24 = static NSBundle.module;
  v108 = static NSBundle.module;
  static Locale.current.getter();
  v115 = v21;
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
  v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
  }

  v37 = v107;
  v34[2] = (v36 + 1);
  v38 = &v34[7 * v36];
  v38[4] = v30;
  v38[5] = v32;
  v38[6] = v25;
  v38[7] = v27;
  *(v38 + 64) = 2;
  v38[9] = &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:);
  v38[10] = v29;
  v39 = v111;
  outlined init with copy of PlaybackIntentDescriptor(v37, v111, type metadata accessor for PlaybackIntentDescriptor.IntentType);
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
    v49 = specialized Player.canPerform(_:)(v48, 0);

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
      v60 = v34[2];
      v59 = v34[3];
      if (v60 >= v59 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v34);
      }

      v34[2] = (v60 + 1);
      v61 = &v34[7 * v60];
      v61[4] = v56;
      v61[5] = v58;
      v61[6] = v52;
      v61[7] = v54;
      *(v61 + 64) = 2;
      v61[9] = &async function pointer to partial apply for closure #2 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:);
      v61[10] = v55;
      v44 = v120;
      v45 = v116;
      v37 = v107;
    }
  }

  v62 = v102;
  outlined init with copy of PlaybackIntentDescriptor(v37, v102, type metadata accessor for PlaybackIntentDescriptor.IntentType);
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
  if (v68 && (, v69 = v67, v70 = specialized Player.canPerform(_:)(v69, 1), v69, , v70))
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
    v82 = v34[2];
    v81 = v34[3];
    if (v82 >= v81 >> 1)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v34);
    }

    v34[2] = (v82 + 1);
    v83 = &v34[7 * v82];
    v83[4] = v78;
    v83[5] = v80;
    v83[6] = v73;
    v83[7] = v76;
    *(v83 + 64) = 2;
    v83[9] = &async function pointer to partial apply for closure #3 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:);
    v83[10] = v77;
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
  v95 = v34[2];
  v94 = v34[3];
  if (v95 >= v94 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v34);
  }

  v34[2] = (v95 + 1);
  v96 = &v34[7 * v95];
  v96[4] = v91;
  v96[5] = v93;
  v96[6] = v87;
  v96[7] = v89;
  *(v96 + 64) = 0;
  v96[9] = &async function pointer to partial apply for closure #4 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:);
  v96[10] = v90;
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
  __swift_project_boxed_opaque_existential_0Tm((v125 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v97);
  v127[2] = v132;
  v127[3] = v133;
  v128 = v134;
  v127[0] = v130;
  v127[1] = v131;
  v129 = 0;
  v99 = *(v98 + 8);

  outlined init with copy of Alert(&v130, &v126);
  v99(v127, v97, v98);
  outlined destroy of Alert(&v130);

  return outlined destroy of PresentationKind(v127);
}

uint64_t closure #1 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = vdupq_n_s64(2uLL);
  v1[1].i8[0] = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_1004F3010;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #3 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_1004F3020;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #4 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)()
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
  if (one-time initialization token for properties != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v6, v5);
}

uint64_t closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:);

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(uint64_t a1)
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
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  static Locale.current.getter();
  v12 = v11;
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v13;
  v14 = *(v4 + 8);
  v14(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v3);
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v15;
  v14(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004F2400;
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v3);
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
  __swift_project_boxed_opaque_existential_0Tm((v36 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v24);
  v38[2] = v43;
  v38[3] = v44;
  v39 = v45;
  v38[0] = v41;
  v38[1] = v42;
  v40 = 0;
  v26 = *(v25 + 8);
  outlined init with copy of Alert(&v41, v37);
  v26(v38, v24, v25);
  outlined destroy of Alert(&v41);
  return outlined destroy of PresentationKind(v38);
}

void closure #1 in presentAlert #1 (dialog:metrics:metricsOptions:) in PlaybackController.engine(_:didPauseForLeaseEndWithError:)(unint64_t a1, uint64_t a2, uint64_t a3)
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
  outlined init with take of Any(&v13, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v7 = v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    outlined init with copy of ActionPerforming(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v13);

    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_0Tm(&v13, v14);
    (*(v11 + 24))(v7, v10, v11);

    __swift_destroy_boxed_opaque_existential_0Tm(&v13);
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

void ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v53 = a1;
  v54 = a2;
  v52 = type metadata accessor for UUID();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v4 buttons];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICStoreDialogResponseButton);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_20;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v4;
  for (i = a3; v11; i = a3)
  {
    v12 = 0;
    v49 = v10 & 0xFFFFFFFFFFFFFF8;
    v50 = v10 & 0xC000000000000001;
    v13 = _swiftEmptyArrayStorage;
    v46 = (v6 + 8);
    v47 = v11;
    v48 = v10;
    while (1)
    {
      if (v50)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v49 + 16))
        {
          goto LABEL_19;
        }

        v10 = *(v10 + 8 * v12 + 32);
      }

      v14 = v10;
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v57 = [v10 type] != 2;
      v15 = [v14 title];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v18;
        v56 = v17;
      }

      else
      {
        v55 = 0xE000000000000000;
        v56 = 0;
      }

      v19 = swift_allocObject();
      v21 = v53;
      v20 = v54;
      v19[2] = v14;
      v19[3] = v21;
      v19[4] = v20;
      v19[5] = v12;
      v22 = v14;
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v21);
      v23 = v51;
      UUID.init()();
      v24 = UUID.uuidString.getter();
      v4 = v25;
      (*v46)(v23, v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      }

      a3 = v13[2];
      v26 = v13[3];
      if (a3 >= v26 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), a3 + 1, 1, v13);
      }

      v27 = 2 * v57;

      v13[2] = (a3 + 1);
      v28 = &v13[7 * a3];
      v28[4] = v24;
      v28[5] = v4;
      v29 = v55;
      v28[6] = v56;
      v28[7] = v29;
      *(v28 + 64) = v27;
      v28[9] = &async function pointer to partial apply for closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
      v28[10] = v19;
      ++v12;
      v10 = v48;
      if (v6 == v47)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v30 = v10;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v30;
    v44 = v4;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_22:

  v31 = v44;
  v32 = [v44 message];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = i;
  v38 = [v31 explanation];
  if (v38)
  {
    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  *v37 = v34;
  *(v37 + 8) = v36;
  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  *(v37 + 48) = 1;
  *(v37 + 56) = v13;
  *(v37 + 64) = 0;
}

uint64_t closure #1 in PlaybackController.engine(_:didPauseForLeaseEndWithError:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    ICStoreDialogResponse.alert(buttonsAdditionalAction:)(partial apply for closure #1 in presentAlert #1 (dialog:metrics:metricsOptions:) in PlaybackController.engine(_:didPauseForLeaseEndWithError:), v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    __swift_project_boxed_opaque_existential_0Tm((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    outlined init with copy of Alert(v16, v12);
    v11(v13, v9, v10);
    outlined destroy of Alert(v16);
    return outlined destroy of PresentationKind(v13);
  }

  return result;
}

uint64_t PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:), v6);
}

void closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, void *a3)
{
  v166 = a3;
  v169 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal07GenericA4ItemOSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v154 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v154 - v8;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.playbackController);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v16 = String.init<A>(describing:)();
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v177);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "didFailToPlayFirstItem with error=%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  if ((*(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v159 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v19 = _convertErrorToNSError(_:)();
    v20 = [v19 userInfo];
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v21 + 16);
    v163 = v19;
    if (v22 && (v23 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0x676F6C616964, 0xE600000000000000), (v24 & 1) != 0))
    {
      outlined init with copy of Any(*(v21 + 56) + 32 * v23, &v177);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
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
          v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v29, &v177);

          *(v27 + 4) = v30;
          v19 = v163;
          _os_log_impl(&_mh_execute_header, v25, v26, "Found an error dialog=%{public}s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v174);
        }

        v31 = objc_allocWithZone(ICStoreDialogResponse);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v33 = [v31 initWithResponseDictionary:isa];

        ICStoreDialogResponse.alert(buttonsAdditionalAction:)(0, 0, &v177);
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
          v38 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v36, v37);
          v40 = v39;

          if (v40)
          {
            outlined init with copy of Any(*(v35 + 56) + 32 * v38, &v177);

            type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSError);
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
            detectRadioErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(a1, v43, v44, v42);
            if (v41)
            {
              v45 = v41;
              detectRadioErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(v45, v43, v44, v42);
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
                  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelRadioStationKind);
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
                  *(v63 + 16) = partial apply for closure #1 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:);
                  *(v63 + 24) = &v154 - 8;
                  *&v179 = _sSo22MPMutableIdentifierSet_So012MPIdentifierC0CXcIgg_SoAA_ACXcIegg_TRTA_0;
                  *(&v179 + 1) = v63;
                  *&v177 = _NSConcreteStackBlock;
                  *(&v177 + 1) = 1107296256;
                  *&v178 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
                  *(&v178 + 1) = &block_descriptor_111_0;
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
                    *(v68 + 16) = partial apply for closure #2 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:);
                    *(v68 + 24) = &v154 - 4;
                    *&v179 = _sSo22MPMutableIdentifierSet_So012MPIdentifierC0CXcIgg_SoAA_ACXcIegg_TRTA_0;
                    *(&v179 + 1) = v68;
                    *&v177 = _NSConcreteStackBlock;
                    *(&v177 + 1) = 1107296256;
                    *&v178 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
                    *(&v178 + 1) = &block_descriptor_117;
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
                          outlined init with copy of ActionPerforming(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v202);
                          v74 = *(&v203 + 1);
                          v75 = v204;
                          __swift_project_boxed_opaque_existential_0Tm(&v202, *(&v203 + 1));
                          v76 = type metadata accessor for Station();
                          v77 = v52;
                          v78 = v175;
                          dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                          v79 = *(v76 - 8);
                          if ((*(v79 + 48))(v78, 1, v76) == 1)
                          {
                            outlined destroy of TaskPriority?(v78, &_s8MusicKit7StationVSgMd);
                            v177 = 0u;
                            v178 = 0u;
                            *&v179 = 0;
                          }

                          else
                          {
                            *(&v178 + 1) = v76;
                            *&v179 = &protocol witness table for Station;
                            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v177);
                            (*(v79 + 32))(boxed_opaque_existential_1, v78, v76);
                          }

                          v41 = v164;
                          v182 = 2;
                          (*(v75 + 8))(&v177, v74, v75);
                          outlined destroy of PresentationKind(&v177);
                          __swift_destroy_boxed_opaque_existential_0Tm(&v202);
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
                        specialized static Alert.cellularRestrictedAlert(model:)(v73, &v202);
LABEL_56:
                        outlined destroy of TaskPriority?(&v197, &_s9MusicCore5AlertVSgMd);

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
                        outlined init with copy of Alert(&v177, v89);
                        v157 = v87;
                        goto LABEL_64;
                      }

                      v82 = v171;
                      swift_beginAccess();
                      if (*v82)
                      {
                        v83 = v52;
                        specialized static Alert.networkUnavailableAlert(model:traitCollection:)(v73, 0, &v202);
                        goto LABEL_56;
                      }

                      v90 = v52;

                      v91 = _convertErrorToNSError(_:)();
                      v92 = [objc_opt_self() playbackAlertControllerForItem:v166 contentType:0 error:v91 dismissalBlock:0];

                      if (v92)
                      {
                        MPUPlaybackAlertController.alert.getter(&v177);
                        outlined destroy of TaskPriority?(&v197, &_s9MusicCore5AlertVSgMd);

                        v190 = v179;
                        v191 = v180;
                        v192 = v181;
                        v188 = v177;
                        v189 = v178;
                      }

                      else
                      {
                        outlined destroy of TaskPriority?(&v197, &_s9MusicCore5AlertVSgMd);
                        v188 = 0u;
                        v189 = 0u;
                        v190 = 0u;
                        v191 = 0u;
                        v192 = 0;
                      }

                      v135 = v161;
                      v134 = v162;
                      detectStoreErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(a1, v42, v162, v161);
                      if (v41)
                      {
                        v136 = v41;
                        detectStoreErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(v136, v42, v134, v135);
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

                                        outlined destroy of TaskPriority?(&v177, &_s9MusicCore5AlertVSgMd);

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
                                        PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(v131, v133, 0, 0);

                                        outlined destroy of TaskPriority?(&v177, &_s9MusicCore5AlertVSgMd);

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

                                    outlined destroy of TaskPriority?(&v177, &_s9MusicCore5AlertVSgMd);

LABEL_108:

                                    return;
                                  }

                                  v97 = v165;
LABEL_87:

                                  outlined destroy of TaskPriority?(&v177, &_s9MusicCore5AlertVSgMd);

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
                              outlined init with copy of Alert(&v177, &v202);
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
                                  outlined copy of (@escaping @callee_guaranteed () -> ())?(v108);

                                  v171 = v107;
                                  outlined copy of (@escaping @callee_guaranteed () -> ())?(v108);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v101[2] + 1, 1, v101);
                                  }

                                  v114 = v101[2];
                                  v113 = v101[3];
                                  if (v114 >= v113 >> 1)
                                  {
                                    v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v101);
                                  }

                                  v102 += 7;

                                  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v108);
                                  v101[2] = (v114 + 1);
                                  v115 = &v101[7 * v114];
                                  v116 = v173;
                                  v115[4] = v174;
                                  v115[5] = v104;
                                  v115[6] = v116;
                                  v115[7] = v106;
                                  *(v115 + 64) = v112;
                                  v115[9] = &async function pointer to partial apply for closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:);
                                  v115[10] = v110;
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
                              __swift_project_boxed_opaque_existential_0Tm((v117 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v118);
                              v179 = v185;
                              v180 = v186;
                              v181 = v187;
                              v177 = v183;
                              v178 = v184;
                              v182 = 0;
                              v120 = *(v119 + 8);

                              outlined init with copy of Alert(&v183, &v176);
                              v120(&v177, v118, v119);
                              outlined destroy of Alert(&v188);
                              outlined destroy of Alert(&v183);
                              outlined destroy of PresentationKind(&v177);
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
                            outlined init with copy of ActionPerforming(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v202);
                            v147 = *(&v203 + 1);
                            v148 = v204;
                            __swift_project_boxed_opaque_existential_0Tm(&v202, *(&v203 + 1));
                            v149 = v146;
                            v150 = v173;
                            GenericMusicItem.init(_:)();
                            v151 = type metadata accessor for GenericMusicItem();
                            v152 = *(v151 - 8);
                            if ((*(v152 + 48))(v150, 1, v151) == 1)
                            {
                              outlined destroy of TaskPriority?(v150, &_s16MusicKitInternal07GenericA4ItemOSgMd);
                              v177 = 0u;
                              v178 = 0u;
                              *&v179 = 0;
                            }

                            else
                            {
                              *(&v178 + 1) = v151;
                              *&v179 = lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type GenericMusicItem and conformance GenericMusicItem, &type metadata accessor for GenericMusicItem);
                              v153 = __swift_allocate_boxed_opaque_existential_1(&v177);
                              (*(v152 + 32))(v153, v150, v151);
                            }

                            v182 = 2;
                            (*(v148 + 8))(&v177, v147, v148);

                            outlined destroy of PresentationKind(&v177);
                            __swift_destroy_boxed_opaque_existential_0Tm(&v202);
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
                        specialized static Alert.cellularRestrictedAlert(model:)(v140, &v202);
                      }

                      else
                      {
                        if ((*v171 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        specialized static Alert.networkUnavailableAlert(model:traitCollection:)(v140, 0, &v202);
                      }

                      outlined destroy of TaskPriority?(&v188, &_s9MusicCore5AlertVSgMd);

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

void detectRadioErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t closure #1 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in closure #1 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:);
  *(v13 + 24) = v12;
  v16[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPMutableLocalLibraryIdentifiers) -> ();
  v16[3] = &block_descriptor_144;
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

void closure #1 in closure #1 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

void closure #2 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void MPUPlaybackAlertController.alert.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = type metadata accessor for UUID();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 actions];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIAlertAction);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_21:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v40 = v2;
  v41 = a1;
  v9 = 0;
  v42 = (v4 + 8);
  v43 = v7 & 0xC000000000000001;
  v10 = _swiftEmptyArrayStorage;
  v44 = v8;
  v45 = v7;
  do
  {
    if (v43)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v11 handler];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v13 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIAlertAction?) -> ();
    }

    else
    {
      v14 = 0;
    }

    v15 = [v12 title];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v18;
      v49 = v17;
    }

    else
    {
      v48 = 0xE000000000000000;
      v49 = 0;
    }

    v19 = swift_allocObject();
    v19[2] = v13;
    v19[3] = v14;
    v19[4] = v12;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v13);
    v20 = v12;
    v21 = v46;
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*v42)(v21, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    }

    v26 = v10[2];
    v25 = v10[3];
    if (v26 >= v25 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v10);
    }

    ++v9;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v13);
    v10[2] = (v26 + 1);
    v27 = &v10[7 * v26];
    v27[4] = v22;
    v27[5] = v24;
    v28 = v48;
    v27[6] = v49;
    v27[7] = v28;
    *(v27 + 64) = 2;
    v27[9] = &async function pointer to partial apply for closure #1 in MPUPlaybackAlertController.alert.getter;
    v27[10] = v19;
    v7 = v45;
  }

  while (v44 != v9);

  v2 = v40;
  a1 = v41;
LABEL_22:
  v29 = [v2 title];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [v2 message];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  *a1 = v31;
  *(a1 + 8) = v33;
  *(a1 + 16) = v36;
  *(a1 + 24) = v38;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v10;
  *(a1 + 64) = 0;
}

void detectStoreErrorValues #1 (error:) in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  type metadata accessor for related decl 'e' for MPCErrorCode(0);
  if (swift_dynamicCast())
  {
    lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode);
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

uint64_t closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:), 0, 0);
}

uint64_t closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)()
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
  outlined init with copy of String(v0 + 112, v0 + 144);
  outlined init with copy of String(v0 + 128, v0 + 160);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v5);
  outlined init with copy of TaskPriority?(v2, v0 + 16, &_s9MusicCore5AlertVSgMd);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:), v6);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #1 in closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

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
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:), v10);
}

id closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void), uint64_t a5)
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
  v15 = __chkstk_darwin(v122);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.playbackController);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v23 = os_log_type_enabled(v21, v22);
  v121 = a3;
  v115 = v17;
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
    v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v28, v138);
    v31 = a5;
    v32 = a4;

    *(v25 + 4) = v30;
    v19 = v29;
    a3 = v121;
    _os_log_impl(&_mh_execute_header, v21, v22, "requiresAuthorizationToPlay with reason=%{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v114);

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
      if (one-time initialization token for shared != -1)
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
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v48 = static NSBundle.module;
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1004F2400;
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
        __swift_project_boxed_opaque_existential_0Tm((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v63);
        v132 = v127;
        v133 = v128;
        *&v134 = v129;
        v130 = v125;
        v131 = v126;
        BYTE8(v134) = 0;
        v65 = *(v64 + 8);

        outlined init with copy of Alert(&v125, v124);
        v65(&v130, v63, v64);
        outlined destroy of PresentationKind(&v130);
        v121(0, 0);
        outlined destroy of Alert(&v125);

        return outlined destroy of ApplicationCapabilities(v138);
      }

      v109 = *(&v140 + 1);
      v110 = *(&v139 + 1);
      v35 = objc_opt_self();

      v111 = v34;

      v36 = [v35 standardUserDefaults];
      *&v125 = 0xD000000000000012;
      *(&v125 + 1) = 0x80000001004CC6A0;
      lazy protocol witness table accessor for type String and conformance String();
      NSUserDefaults.subscript.getter(&v125, &v130);

      v112 = v33;
      if (*(&v131 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
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
            if (one-time initialization token for module != -1)
            {
              swift_once();
            }

            v73 = static NSBundle.module;
            v74 = static NSBundle.module;
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
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_1004F2EF0;
            v95 = v113;
            v94 = v114;
            *(v93 + 32) = v104;
            *(v93 + 40) = v95;
            v96 = v107;
            *(v93 + 48) = v108;
            *(v93 + 56) = v94;
            *(v93 + 64) = 2;
            *(v93 + 72) = &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:);
            *(v93 + 80) = v96;
            *(v93 + 88) = v90;
            *(v93 + 96) = v92;
            v97 = v116;
            *(v93 + 104) = v119;
            *(v93 + 112) = v97;
            *(v93 + 120) = 0;
            *(v93 + 128) = &async function pointer to partial apply for closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:);
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
            v123 = __swift_project_boxed_opaque_existential_0Tm((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v98);
            v132 = v127;
            v133 = v128;
            *&v134 = v129;
            v130 = v125;
            v131 = v126;
            BYTE8(v134) = 0;
            v100 = *(v99 + 8);

            outlined init with copy of Alert(&v125, v124);
            v100(&v130, v98, v99);
            outlined destroy of ApplicationCapabilities(v138);
            outlined destroy of Alert(&v125);

            return outlined destroy of PresentationKind(&v130);
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
            LOBYTE(v67) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v101 - 4), v39);

            v14 = v120;
            v38 = v121;
            if (v67)
            {

              v32(1, 0);
              return outlined destroy of ApplicationCapabilities(v138);
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
        outlined destroy of TaskPriority?(&v130, &_sypSgMd_0);
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

  PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(v44, v46, v32, v31);
}

uint64_t closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:), 0, 0);
}

uint64_t closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)()
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
  *(v0 + 56) = 0x80000001004CC6A0;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(v0 + 48, (v0 + 16));

  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
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
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v8);
          v17 = v8;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v9 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_sypSgMd_0);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v3;
  *(v13 + 5) = v5;
  v14 = [v6 standardUserDefaults];
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v18[0] = v8;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x80000001004CC6A0;
  NSUserDefaults.subscript.setter(v18, v0 + 16, &type metadata for String);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:), 0, 0);
}

uint64_t closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
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

void PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v71 = a4;
  v74 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v8 - 8);
  v70 = &v65 - v9;
  v73 = type metadata accessor for URL();
  v10 = *(v73 - 8);
  v11 = __chkstk_darwin(v73);
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logger.playbackController);

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

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v24 = String.init<A>(describing:)();
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v25, v75);
    v10 = v20;
    v14 = v19;
    a2 = v18;

    v27 = v23;
    *(v23 + 1) = v26;
    v28 = v73;
    v5 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Presenting Age Verification with model identifier=%{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
  }

  else
  {

    v28 = v73;
  }

  if (one-time initialization token for shared != -1)
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
  outlined destroy of ApplicationCapabilities(v80);
  if (BYTE1(v80[0]) != 1)
  {
    v34 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v35 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    __swift_project_boxed_opaque_existential_0Tm((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v34);
    v36 = specialized static Alert.ageVerificationFallbackAlert()(v75);
    BYTE8(v76) = 0;
    (*(v35 + 8))(v75, v34, v35, v36);
    outlined destroy of PresentationKind(v75);
    if (one-time initialization token for ageVerification != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v72, static Logger.ageVerification);
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

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v29 = v70;
  ExplicitRestrictionsController.accountVerificationURL.getter(v70);
  if ((*(v10 + 48))(v29, 1, v28) == 1)
  {
    outlined destroy of TaskPriority?(v29, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for ageVerification != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v72, static Logger.ageVerification);
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
  v38 = one-time initialization token for ageVerification;
  v66 = v5;
  if (a2)
  {
    v70 = v14;

    if (v38 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v72, static Logger.ageVerification);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "modelObjectIdentifier parameters found for age verification context", v41, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = 0x64496D616461;
    v43 = inited + 32;
    v44 = v69;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v44;
    *(inited + 56) = a2;
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v43, &_sSS_SStMd);
    v46 = v68;
    v14 = v70;
    URL.parametrize(_:)(v45, v68);

    (*(v10 + 8))(v14, v28);
    v37(v14, v46, v28);
    v47 = v10;
  }

  else
  {
    if (one-time initialization token for ageVerification != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v72, static Logger.ageVerification);
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

  v51 = [objc_allocWithZone(type metadata accessor for ExplicitRestrictionsController.AgeVerificationWrapper()) init];
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
  *v57 = partial apply for closure #1 in PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:);
  v57[1] = v54;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v55);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v58);

  v59 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v51;
  v60 = v51;

  v61 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v62 = *(v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_0Tm((v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
  v63 = *(v62 + 16);
  v64 = v60;
  v63(v14, v64, v61, v62);

  (*(v47 + 8))(v14, v73);
}

void closure #1 in PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(void *a1, char a2, void (*a3)(void, void))
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

  PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(a1, v6, a2, a3);
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

  return _swift_task_switch(PlaybackController.displayAgeVerification(for:), v4, v3);
}

uint64_t PlaybackController.displayAgeVerification(for:)()
{
  v5 = v0[1];
  v1 = static MainActor.shared.getter();
  v0[4].i64[0] = v1;
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v5, v5, 8uLL);
  v3 = swift_task_alloc();
  v0[5].i64[0] = v3;
  *v3 = v0;
  v3[1] = PlaybackController.displayAgeVerification(for:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001004CC4E0, partial apply for closure #1 in PlaybackController.displayAgeVerification(for:), v2, &type metadata for () + 8);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = PlaybackController.displayAgeVerification(for:);
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = PlaybackController.displayAgeVerification(for:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PlaybackController.displayAgeVerification(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a3, a3[3]);
  v9 = dispatch thunk of MusicItem.id.getter();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  PlaybackController.displayAgeVerification(modelObjectIdentifier:completion:)(v9, v11, partial apply for closure #1 in closure #1 in PlaybackController.displayAgeVerification(for:), v13);
}

uint64_t closure #1 in closure #1 in PlaybackController.displayAgeVerification(for:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

id ExplicitRestrictionsController.AgeVerificationWrapper.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v2)
  {

    v2(0, 0);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.performCompletion()(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.performCompletion(), v8);
}

uint64_t closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.cloudServiceSetupViewControllerDidDismiss(_:)(uint64_t result)
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
    v9[4] = partial apply for closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.performCompletion();
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v9[3] = &block_descriptor_30;
    v7 = _Block_copy(v9);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v2);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2);
  }

  return result;
}

uint64_t one-time initialization function for playbackController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.playbackController);
  __swift_project_value_buffer(v0, static Logger.playbackController);
  return Logger.init(subsystem:category:)();
}

uint64_t closure #1 in MPUPlaybackAlertController.alert.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(closure #1 in MPUPlaybackAlertController.alert.getter, 0, 0);
}

uint64_t closure #1 in MPUPlaybackAlertController.alert.getter()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6[7] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

uint64_t closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)()
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
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSbSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), v14);

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
    outlined destroy of TaskPriority?(*(v0 + 56), &_s10Foundation3URLVSgMd);
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
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v23, &async function pointer to partial apply for closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), v27);

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

uint64_t closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

uint64_t closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)()
{
  *(v0 + 160) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), v2, v1);
}

{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

{

  return _swift_task_switch(closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[22];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v1[23] = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[24] = isa;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v1[13] = &block_descriptor_132;
  v1[14] = v6;
  [v2 openURL:v4 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:), 0, 0);
}

uint64_t closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  *(v0 + 104) = &block_descriptor_135;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
  }

  else
  {
    v2 = closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 176);
  swift_willThrow();

  **(v0 + 144) = 2;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
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

uint64_t key path getter for Player.sharePlayTogetherSession : Player@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void key path setter for Player.sharePlayTogetherSession : Player(void **a1)
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
  Player.sharePlayTogetherSession.didset(v4);
}

unint64_t lazy protocol witness table accessor for type Player.PlaybackError and conformance Player.PlaybackError()
{
  result = lazy protocol witness table cache variable for type Player.PlaybackError and conformance Player.PlaybackError;
  if (!lazy protocol witness table cache variable for type Player.PlaybackError and conformance Player.PlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.PlaybackError and conformance Player.PlaybackError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError()
{
  result = lazy protocol witness table cache variable for type PlaybackController.CommandError and conformance PlaybackController.CommandError;
  if (!lazy protocol witness table cache variable for type PlaybackController.CommandError and conformance PlaybackController.CommandError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackController.CommandError and conformance PlaybackController.CommandError);
  }

  return result;
}

uint64_t outlined consume of PlaybackController.NowPlayingPresentationDescriptor?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with copy of PlaybackIntentDescriptor(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void outlined consume of PlaybackController.CommandError(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    outlined consume of PlaybackController.CommandError.AlertKind(a1);
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

void outlined consume of PlaybackController.CommandError.AlertKind(id a1)
{
  if (a1 >= 5)
  {
  }
}

id outlined copy of PlaybackController.CommandError(id result, char a2)
{
  if (a2 == 2)
  {
    return outlined copy of PlaybackController.CommandError.AlertKind(result);
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    return outlined copy of PlaybackController.CommandError.AlertKind(result);
  }
}

id outlined copy of PlaybackController.CommandError.AlertKind(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL specialized Player.canPerform(_:)(void *a1, uint64_t a2)
{
  v7[3] = &type metadata for Player.ReplaceCommand;
  v7[4] = &protocol witness table for Player.ReplaceCommand;
  v7[0] = a1;
  v7[1] = a2;
  __swift_project_boxed_opaque_existential_0Tm(v7, &type metadata for Player.ReplaceCommand);
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

  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v4;
}

BOOL specialized Player.canPerform(_:)(char a1)
{
  v4[3] = &type metadata for Player.PlaybackCommand;
  v4[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v4[0]) = a1;
  __swift_project_boxed_opaque_existential_0Tm(v4, &type metadata for Player.PlaybackCommand);
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

  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v1;
}

BOOL specialized Player.canPerform(_:)(void *a1, void *a2)
{
  v8[3] = &type metadata for Player.InsertCommand;
  v8[4] = &protocol witness table for Player.InsertCommand;
  v8[0] = a1;
  v8[1] = a2;
  __swift_project_boxed_opaque_existential_0Tm(v8, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  outlined copy of Player.InsertCommand.Location(a2);
  static Published.subscript.getter();

  if (v7)
  {
    v5 = MPCPlayerResponse.canPerform(_:)(v8);
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

BOOL specialized Player.canPerform(_:)(void *a1)
{
  v5[3] = &type metadata for Player.ChangeCommand;
  v5[4] = &protocol witness table for Player.ChangeCommand;
  v5[0] = a1;
  __swift_project_boxed_opaque_existential_0Tm(v5, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of Player.ChangeCommand(a1);
  static Published.subscript.getter();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v2;
}

BOOL specialized Player.canPerform(_:)(uint64_t a1)
{
  v4[3] = &type metadata for Player.VocalsCommand;
  v4[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v4[0]) = a1;
  BYTE4(v4[0]) = BYTE4(a1);
  BYTE5(v4[0]) = BYTE5(a1) & 1;
  __swift_project_boxed_opaque_existential_0Tm(v4, &type metadata for Player.VocalsCommand);
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

  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v1;
}

uint64_t outlined destroy of PlaybackIntentDescriptor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized PlaybackController.engine(_:didReceive:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.sharedListening);
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

    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v16 = v5;
  specialized SharedListening.Event.init(_:)(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_0Tm(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    outlined destroy of TaskPriority?(v25, &_s9MusicCore15SharedListeningO5EventOSgMd);
  }
}

uint64_t specialized PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.sharedListening);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v12 = String.init<A>(describing:)();
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Receiving didEndSharedListeningSessionWithError=%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
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
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v6, &async function pointer to partial apply for closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v18);

  if (a1)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v21 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #2 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v20);
  }

  return result;
}

void specialized PlaybackController.engine(_:didPauseForLeaseEndWithError:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.playbackController);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v9 = String.init<A>(describing:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  if (a1)
  {
    v12 = _convertErrorToNSError(_:)();
    v13 = [v12 userInfo];
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      v17 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v15, v16);
      v19 = v18;

      if (v19)
      {
        outlined init with copy of Any(*(v14 + 56) + 32 * v17, v35);

        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICMusicSubscriptionLeaseStatus);
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
            v26 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v24, v25);
            v28 = v27;

            if (v28)
            {
              outlined init with copy of Any(*(v23 + 56) + 32 * v26, v35);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                outlined init with copy of Any(v34[7] + 32 * v29, v35);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                if (swift_dynamicCast())
                {
                  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in PlaybackController.engine(_:didPauseForLeaseEndWithError:), v31);

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

uint64_t get_enum_tag_for_layout_string_8MusicKit0A4Item_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PresentationKind(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PresentationKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for PresentationKind(uint64_t result, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for PlaybackController.NowPlayingPresentationDescriptor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackController.NowPlayingPresentationDescriptor(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_9MusicCore18PlaybackControllerC12CommandError33_49A4F392108DD8BCF77701E27C865714LLO9AlertKindO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PlaybackController.CommandError.AlertKind(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackController.CommandError.AlertKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_9MusicCore18PlaybackControllerC12CommandError33_49A4F392108DD8BCF77701E27C865714LLO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for PlaybackController.CommandError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackController.CommandError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for PlaybackController.CommandError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1001F2C0C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F2C70()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t sub_1001F2DAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.displayAgeVerification(for:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);

  return closure #1 in closure #1 in PlaybackController.displayAgeVerification(for:)(a1, a2);
}

uint64_t sub_1001F2F04()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001F2F3C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F2F90()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F3090()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #1 in PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(a1, a2, v7, v6);
}

uint64_t sub_1001F31A8()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(a1, a2, v2 + 16, v6);
}

uint64_t lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F3330()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1001F343C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001F3554()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in ICStoreDialogResponse.alert(buttonsAdditionalAction:)(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001F3734()
{

  return swift_deallocObject();
}

uint64_t sub_1001F37A4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MPUPlaybackAlertController.alert.getter(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in MPUPlaybackAlertController.alert.getter(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F38AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1001F38F8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #3 in closure #1 in PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_1001F3A2C()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3A88()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3ADC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:)(a1, v4, v5, v6);
}

uint64_t sub_1001F3BD0()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t sub_1001F3C7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.player.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.player.didset(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type UISceneSession and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UISceneSession and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UISceneSession and conformance NSObject)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for UISceneSession);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISceneSession and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(a1, a2, v6);
}

uint64_t partial apply for closure #4 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #4 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(a1, a2, v6);
}

uint64_t partial apply for closure #3 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #1 in PlaybackController.userPickedOptionsForShareListening(for:id:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.userPickedReplaceIntent()(a1, a2, v6);
}

uint64_t partial apply for closure #2 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #1 in PlaybackController.userPickedReplaceIntent()(a1, a2, v6);
}

uint64_t partial apply for closure #3 in closure #1 in PlaybackController.userPickedReplaceIntent()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in closure #1 in PlaybackController.userPickedReplaceIntent()(a1, a2, v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id outlined copy of Player.ChangeCommand(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackController.userPickedPlayLocally()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in PlaybackController.userPickedPlayLocally()(a1, a2, v6);
}

uint64_t partial apply for closure #2 in closure #1 in PlaybackController.userPickedPlayLocally()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in closure #1 in PlaybackController.userPickedPlayLocally()(a1, a2, v6);
}

uint64_t outlined consume of Player.PlaybackError?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with copy of PlaybackIntentDescriptor.IntentType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized MPCPlaybackIntent.playActivityInformation.setter(a1, a2, a3, a4);

  outlined consume of MPCPlaybackIntent.PlayActivityInformation?(a1, a2, a3, a4);
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
  outlined init with copy of PlaybackIntentDescriptor.IntentType(a1, a9);
  if ((a6 & 1) == 0)
  {
    PlaybackIntentDescriptor.IntentType.shuffleMode.setter(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    PlaybackIntentDescriptor.IntentType.shuffleMode.setter(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  outlined assign with copy of MusicItem?(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  outlined init with copy of TaskPriority?(v24, &v52, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  if (v53)
  {
    outlined init with take of ActionPerforming(&v52, v54);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd);
    }

    v26 = String.init<A>(reflecting:)();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      outlined destroy of TaskPriority?(&v52, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    }
  }

  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v54, v22, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  outlined consume of Data?(0, 0xF000000000000000);

  outlined copy of Data?(v29, v31);

  outlined consume of Data?(v29, v31);
  v32 = a9;
  v33 = v46;
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v32, v46);
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
      outlined copy of Data._Representation(v29, v31);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    outlined consume of Data?(v29, v31);
LABEL_22:
    outlined destroy of TaskPriority?(v24, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    outlined destroy of TaskPriority?(v23, &_s8MusicKit0A4Item_pSgMd);
    return outlined destroy of PlaybackIntentDescriptor.IntentType(v51);
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
    outlined copy of Data._Representation(v29, v31);
    v38 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  outlined consume of Data?(v29, v31);
  outlined destroy of TaskPriority?(v24, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  outlined destroy of TaskPriority?(v23, &_s8MusicKit0A4Item_pSgMd);
  outlined destroy of PlaybackIntentDescriptor.IntentType(v51);
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
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v5, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v16, v10);
    v17 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    specialized MPCPlaybackIntent.playActivityInformation.setter(a1, a2, a3, a4);
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = *v16;
    specialized MPCPlaybackIntent.playActivityInformation.setter(a1, a2, a3, a4);
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(a1, a2, a3, a4);
  }
}

uint64_t PlaybackIntentDescriptor.IntentType.underlyingIntent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v1, v8);
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
  outlined consume of Data?(0, 0xF000000000000000);

  outlined copy of Data?(a3, a4);

  outlined consume of Data?(a3, a4);
  return a1;
}

uint64_t PlaybackIntentDescriptor.IntentType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v7 = a1;
    v11 = v5;
    swift_storeEnumTagMultiPayload();
    outlined init with take of PlaybackIntentDescriptor.IntentType(v7, a2);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v9 = *(v5 + 56);

    return v9(a2, 1, 1, v4);
  }
}

{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s35_MusicKitInternal_MediaPlaybackCore0aE16IntentDescriptorVSgMd);
    v11 = *(v15 + 56);

    return v11(a2, 1, 1, v4);
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v10, a1, v7);
    v13(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    outlined init with take of PlaybackIntentDescriptor.IntentType(v6, a2);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

id PlaybackIntentDescriptor.IntentType.shuffleMode.getter(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v3, v10);
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

void PlaybackIntentDescriptor.IntentType.shuffleMode.setter(uint64_t a1, char a2, SEL *a3)
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

  outlined init with copy of PlaybackIntentDescriptor.IntentType(v5, &v19 - v14);
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
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v1, v8);
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

  outlined consume of Data?(0, 0xF000000000000000);

  outlined copy of Data?(v6, v8);

  outlined consume of Data?(v6, v8);
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
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v1, v12);
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
  return PlaybackIntentDescriptor.playActivityInformation.modify;
}

void PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);
      v13 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      specialized MPCPlaybackIntent.playActivityInformation.setter(v4, v3, v6, v5);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);
      specialized MPCPlaybackIntent.playActivityInformation.setter(v4, v3, v6, v5);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      specialized MPCPlaybackIntent.playActivityInformation.setter(v4, v3, v6, v5);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      specialized MPCPlaybackIntent.playActivityInformation.setter(v4, v3, v6, v5);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v4, v3, v6, v5);
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
  result = outlined consume of Data?(*(v2 + 16), *(v2 + 24));
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
  return MPCPlaybackIntent.playActivityInformation.modify;
}

void MPCPlaybackIntent.playActivityInformation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v3, v4, v5, v6);
    specialized MPCPlaybackIntent.playActivityInformation.setter(v3, v4, v5, v6);
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    specialized MPCPlaybackIntent.playActivityInformation.setter(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v7, v8, v9, v10);

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
  v43 = 0x80000001004CCB90;
  strcpy(&v39, "intent=");
  v39._object = 0xE700000000000000;
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v1, v8);
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
  v37._countAndFlagsBits = PlaybackIntentDescriptor.IntentType.shuffleMode.getter(&selRef_shuffleMode);
  LOBYTE(v37._object) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MPCPlaybackIntentShuffleModeVSgMd);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  String.append(_:)(v39);

  strcpy(&v39, "repeatMode=");
  HIDWORD(v39._object) = -352321536;
  v37._countAndFlagsBits = PlaybackIntentDescriptor.IntentType.shuffleMode.getter(&selRef_repeatMode);
  LOBYTE(v37._object) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27MPCPlaybackIntentRepeatModeVSgMd);
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

  v25._object = 0x80000001004CCBB0;
  v25._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v25);
  outlined init with copy of TaskPriority?(v1 + v20[7], &v37, &_s8MusicKit0A4Item_pSgMd);
  if (v38)
  {
    outlined init with take of ActionPerforming(&v37._countAndFlagsBits, &v39);
    outlined init with copy of ActionPerforming(&v39, &v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A4Item_pMd);
    v37._countAndFlagsBits = String.init<A>(describing:)();
    v37._object = v26;
    v27._countAndFlagsBits = 8236;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    String.append(_:)(v37);

    __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  }

  else
  {
    outlined destroy of TaskPriority?(&v37, &_s8MusicKit0A4Item_pSgMd);
    v28._countAndFlagsBits = 0x202C656E6F6ELL;
    v28._object = 0xE600000000000000;
    String.append(_:)(v28);
  }

  v29._countAndFlagsBits = 0x3D726575737369;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  outlined init with copy of TaskPriority?(v1 + v20[8], &v37, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  if (v38)
  {
    outlined init with take of ActionPerforming(&v37._countAndFlagsBits, &v39);
    v30 = v40;
    v31 = v41;
    __swift_project_boxed_opaque_existential_0Tm(&v39, v40);
    v37._countAndFlagsBits = (*(v31 + 8))(v30, v31);
    v37._object = v32;
    v33._countAndFlagsBits = 8236;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    String.append(_:)(v37);

    __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  }

  else
  {
    outlined destroy of TaskPriority?(&v37, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    v34._countAndFlagsBits = 0x6669636570736E75;
    v34._object = 0xEC0000003D646569;
    String.append(_:)(v34);
  }

  v35._countAndFlagsBits = 41;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  return v42;
}

uint64_t specialized static PlaybackIntentDescriptor.IntentType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v31 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v30 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeO_AEtMd);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v30 - v18;
  v20 = *(v17 + 56);
  outlined init with copy of PlaybackIntentDescriptor.IntentType(a1, &v30 - v18);
  outlined init with copy of PlaybackIntentDescriptor.IntentType(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v31;
      v22 = *(v31 + 32);
      v22(v9, v13, v4);
      v22(v7, &v19[v20], v4);
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
      v23 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      v24 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      v25 = static NSObject.== infix(_:_:)();

      v26 = *(v21 + 8);
      v26(v7, v4);
      v26(v9, v4);
LABEL_9:
      outlined destroy of PlaybackIntentDescriptor.IntentType(v19);
      return v25 & 1;
    }

    (*(v31 + 8))(v13, v4);
  }

  else
  {
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v19, v15);
    v27 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *&v19[v20];
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
      v25 = static NSObject.== infix(_:_:)();

      goto LABEL_9;
    }
  }

  outlined destroy of TaskPriority?(v19, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeO_AEtMd);
  v25 = 0;
  return v25 & 1;
}

void specialized MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = String._bridgeToObjectiveC()();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      outlined copy of Data._Representation(a3, a4);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(a3, a4);
      v8 = isa;
      goto LABEL_6;
    }
  }

  else
  {
    [v4 setPlayActivityFeatureName:0];
  }

  v8 = 0;
LABEL_6:
  v10 = v8;
  [v4 setPlayActivityRecommendationData:?];
}

uint64_t outlined init with take of PlaybackIntentDescriptor.IntentType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F7058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
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

uint64_t sub_1001F7138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void type metadata completion function for PlaybackIntentDescriptor()
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntentOptions(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MPCPlayerTracklistReplaceIntent(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for MusicItem?, &_s8MusicKit0A4Item_pMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for Player.CommandIssuer?, &_s9MusicCore6PlayerC13CommandIssuer_pMd);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for PlaybackIntentDescriptor.IntentType()
{
  result = type metadata accessor for UIAction(319, &lazy cache variable for type metadata for MPCPlaybackIntent);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicPlaybackIntentDescriptor();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t PlaybackTimeObserver.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PlaybackTimeObserver.init(name:)(a1, a2);
  return v4;
}

uint64_t PlaybackTimeObserver.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = xmmword_1004F2F30;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CADisplayLink);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(partial apply for closure #1 in PlaybackTimeObserver.init(name:), v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_1001F7590()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PlaybackTimeObserver.init(name:)()
{
  swift_unownedRetainStrong();
  PlaybackTimeObserver.updateElapsedDuration()();
}

void PlaybackTimeObserver.updateElapsedDuration()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static PlaybackTimeObserver.logger);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v1 + 16), *(v1 + 24), v26);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v26[0] = v1;
      lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static PlaybackTimeObserver.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v1 + 16), *(v1 + 24), v26);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  if (v14 <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    static Date.timeIntervalSinceReferenceDate.getter();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  PlaybackTimeObserver.effectiveElapsedTime.setter(*&v20, 0);
  static Date.timeIntervalSinceReferenceDate.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = vabdd_f64(v23, *(v0 + 152));
  v25 = fabsf(v15);
  if (v25 <= 1.0)
  {
    v25 = 1.0;
  }

  if (v24 >= (1.0 / v25))
  {
    *(v0 + 152) = v23;
  }
}

uint64_t PlaybackTimeObserver.deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackTimeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void PlaybackTimeObserver.updateDisplayLink()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static PlaybackTimeObserver.logger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v0 + 16), *(v0 + 24), v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "📺 %{public}s: Updating DisplayLink…", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v0 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "   — isBackgrounded: %{BOOL,public}d", v8, 8u);
  }

  else
  {
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 32);

    _os_log_impl(&_mh_execute_header, v9, v10, "   — automaticallyUpdates: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v0 + 32) != 1 || (*(v0 + 120) & 1) != 0 || (swift_beginAccess(), v12 = *(v0 + 104), v12 == 2))
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "   — Null Snapshot", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 56);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v42[1] = v40;
      v42[0] = v41;
      v43 = v25;
      v44 = v24;
      v45 = v12 & 0x101;
      v46 = BYTE2(v12) & 1;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v30 = String.init<A>(describing:)();
      v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "   — Snapshot: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
    }

    v33 = v24 & 0x7FFFFFFF;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      *(v36 + 4) = v12 & 1;
      _os_log_impl(&_mh_execute_header, v34, v35, "   — isLiveContent: %{BOOL,public}d", v36, 8u);
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67240192;
      *(v39 + 4) = v33 == 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "   — isRateNull: %{BOOL,public}d", v39, 8u);
    }

    v16 = v12 | (v33 == 0);
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, " -> should pause: %{BOOL,public}d", v19, 8u);
  }

  v20 = *(v0 + 128);
  if (v20)
  {
    [v20 setPaused:v16 & 1];
  }

  swift_beginAccess();
  if (!*(v0 + 112))
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v23, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v4 != v3)
  {
    PlaybackTimeObserver.updateDisplayLink()();
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return PlaybackTimeObserver.automaticallyUpdates.modify;
}

void PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  if (v3 != v4)
  {
    PlaybackTimeObserver.updateDisplayLink()();
  }

  free(v1);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t key path getter for PlaybackTimeObserver.effectiveElapsedTime : PlaybackTimeObserver@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver()
{
  result = lazy protocol witness table cache variable for type PlaybackTimeObserver and conformance PlaybackTimeObserver;
  if (!lazy protocol witness table cache variable for type PlaybackTimeObserver and conformance PlaybackTimeObserver)
  {
    type metadata accessor for PlaybackTimeObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackTimeObserver and conformance PlaybackTimeObserver);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver()
{
  result = type metadata singleton initialization cache for PlaybackTimeObserver;
  if (!type metadata singleton initialization cache for PlaybackTimeObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.setter(uint64_t result, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&result;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  lazy protocol witness table accessor for type PlaybackTimeObserver and conformance PlaybackTimeObserver();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  *&result = COERCE_DOUBLE();
  return result;
}

void PlaybackTimeObserver.durationSnapshot.didset()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static PlaybackTimeObserver.logger);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29MPCPlayerItemDurationSnapshotaSgMd);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  v11 = v10;
  swift_beginAccess();
  *(v1 + 152) = v11;
  PlaybackTimeObserver.updateElapsedDuration()();
  PlaybackTimeObserver.updateDisplayLink()();
}

__n128 PlaybackTimeObserver.durationSnapshot.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void PlaybackTimeObserver.durationSnapshot.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  PlaybackTimeObserver.durationSnapshot.didset();
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PlaybackTimeObserver.durationSnapshot.modify;
}

void PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PlaybackTimeObserver.durationSnapshot.didset();
  }
}

void PlaybackTimeObserver.windowScene.didset(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIWindowScene);
    v5 = v4;
    a1 = a1;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return;
    }

    v4 = *(v2 + 112);
    if (!v4)
    {
LABEL_13:
      v26 = one-time initialization token for logger;
      v27 = a1;
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static PlaybackTimeObserver.logger);
      v29 = v27;

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v2 + 16), *(v2 + 24), &v40);
        *(v32 + 12) = 2082;
        v33 = v29;
        v34 = [v33 description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v37, &v40);

        *(v32 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: Removed windowScene=%{public}s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v39 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v39 == 1)
      {
        PlaybackTimeObserver.updateDisplayLink()();
      }

      *(v2 + 136) = 0;

      v25 = 0;
      goto LABEL_21;
    }
  }

  v7 = one-time initialization token for logger;
  v8 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static PlaybackTimeObserver.logger);
  v10 = v8;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(*(v2 + 16), *(v2 + 24), &v40);
    *(v13 + 12) = 2082;
    v14 = v10;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v40);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: Received windowScene=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = [v10 activationState] == 2;
  v21 = *(v2 + 120);
  *(v2 + 120) = v20;
  if (v20 != v21)
  {
    PlaybackTimeObserver.updateDisplayLink()();
  }

  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v23 = v10;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v4, 1, 1, partial apply for closure #1 in PlaybackTimeObserver.windowScene.didset, v22);

  v24 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v25 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v4, 1, 1, partial apply for closure #2 in PlaybackTimeObserver.windowScene.didset, v24);
LABEL_21:
  *(v2 + 144) = v25;
}

uint64_t closure #1 in PlaybackTimeObserver.windowScene.didset()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 1;
    if ((v1 & 1) == 0)
    {
      PlaybackTimeObserver.updateDisplayLink()();
    }
  }

  return result;
}

uint64_t closure #2 in PlaybackTimeObserver.windowScene.didset()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);
    *(result + 120) = 0;
    if (v1 == 1)
    {
      PlaybackTimeObserver.updateDisplayLink()();
    }
  }

  return result;
}

void *PlaybackTimeObserver.windowScene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void PlaybackTimeObserver.windowScene.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;
  PlaybackTimeObserver.windowScene.didset(v3);
}

void (*PlaybackTimeObserver.windowScene.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  *(v4 + 24) = v5;
  v6 = v5;
  return PlaybackTimeObserver.windowScene.modify;
}

void PlaybackTimeObserver.windowScene.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    PlaybackTimeObserver.windowScene.didset(v7);

    v7 = *v5;
  }

  else
  {
    PlaybackTimeObserver.windowScene.didset(v7);
  }

  free(v3);
}

uint64_t type metadata completion function for PlaybackTimeObserver()
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

uint64_t sub_1001F9380()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void partial apply for closure #1 in PlaybackTimeObserver.effectiveElapsedTime.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd);
  }

  return String.init<A>(reflecting:)();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = URL.absoluteString.getter();
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd);
  }

  return String.init<A>(reflecting:)();
}

uint64_t Player.CommandIssuerIdentity.init(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd);
  lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>();
  v0 = BidirectionalCollection<>.joined(separator:)();

  return v0;
}

uint64_t specialized implicit closure #1 in Player.CommandIssuerIdentity.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd);
    lazy protocol witness table accessor for type [Player.CommandIssuer] and conformance [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Player.CommandIssuer] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Player.CommandIssuer] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Player.CommandIssuer] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore6PlayerC13CommandIssuer_pGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Player.CommandIssuer] and conformance [A]);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC13CommandIssuer_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F2EF0;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  outlined init with copy of ActionPerforming(a1, v6 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd);
  lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>();
  v7 = BidirectionalCollection<>.joined(separator:)();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC13CommandIssuer_pGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F2EF0;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v3, a2);
  outlined init with copy of ActionPerforming(a1, v7 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd);
  lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>();
  v9 = BidirectionalCollection<>.joined(separator:)();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = URL.absoluteString.getter();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t static Player.CommandIssuer<>.combining(_:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay9MusicCore6PlayerC13CommandIssuer_pGSSGMd);
  lazy protocol witness table accessor for type LazyMapSequence<[Player.CommandIssuer], String> and conformance <> LazyMapSequence<A, B>();
  v0 = BidirectionalCollection<>.joined(separator:)();

  return v0;
}

uint64_t Player.CommandIssuer<>.commandIssuingIdentifier.getter()
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v1;
}

{
  dispatch thunk of Identifiable.id.getter();
  return v1;
}

unint64_t specialized Alert.Action.commandIssuingIdentifier.getter(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(29);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x3A656C746974202CLL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0xD000000000000010;
}

unint64_t specialized Alert.ActionCommandIssuingContext.init(action:in:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  _StringGuts.grow(_:)(29);

  v31 = 0xD000000000000010;
  v32 = 0x80000001004CCD00;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x3A656C746974202CLL;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17 = 0xD000000000000010;
  if (a7[7])
  {
    v29 = a5;
    v18 = a7[2];
    v19 = a7[3];
    v21 = *a7;
    v20 = a7[1];
    _StringGuts.grow(_:)(26);

    strcpy(&v30, "Alert(title:");
    BYTE5(v30._object) = 0;
    HIWORD(v30._object) = -5120;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x67617373656D202CLL;
    v24._object = 0xEA00000000003A65;
    String.append(_:)(v24);
    if (v19)
    {
      v25 = v18;
    }

    else
    {
      v25 = 0;
    }

    if (v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27._countAndFlagsBits = v25;
    v27._object = v26;
    String.append(_:)(v27);

    String.append(_:)(v30);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v29);

    outlined destroy of Alert?(a7);
    return v31;
  }

  else
  {

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a5);
  }

  return v17;
}

uint64_t outlined destroy of Alert?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore5AlertVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9, &_sScPSgMd_0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo22MPCPlayerCommandStatusCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9, &_sScPSgMd_0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22MPCPlayerCommandStatusCSgMd);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22MPCPlayerCommandStatusCSgMd);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24OS_dispatch_source_timer_pMd);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t))
{
  v3 = MPCPlaybackEngine.state<A>(for:)();
  type metadata accessor for MusicItemState();

  v4 = specialized MusicItemState.__allocating_init(item:musicKitItemState:player:)(a1, v3, v1);

  return v4;
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  specialized static Set<>.from(_:)(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = 0;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*Player.sampleReceiver.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = Player.sampleReceiver.getter();
  return Player.sampleReceiver.modify;
}

uint64_t Player.__allocating_init()()
{
  v0 = swift_allocObject();
  Player.init()();
  return v0;
}

char *Player.init()()
{
  v1 = v0;
  v104 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v2 - 8);
  v115 = &v91 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  __chkstk_darwin(v4 - 8);
  v114 = &v91 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd);
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAL13RatingWarningVGMd);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin(v8);
  v108 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAN13RatingWarningVGSo17OS_dispatch_queueCGMd);
  v112 = *(v10 - 8);
  v113 = v10;
  __chkstk_darwin(v10);
  v109 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v91 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionCSgGMd);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v91 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCSgGMd);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v16 = &v91 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd);
  v17 = *(v99 - 8);
  __chkstk_darwin(v99);
  v19 = &v91 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCGMd);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v91 - v22;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v103 = objc_opt_self();
  v24 = [v103 systemRoute];
  v25 = [v24 isDeviceRoute];
  v26 = objc_opt_self();
  v27 = v26;
  if (v25)
  {
    if (one-time initialization token for systemMusic != -1)
    {
      swift_once();
    }

    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 systemMusicPathWithRoute:v24 playerID:v28];
  }

  else
  {
    v29 = [v26 pathWithRoute:v24 bundleID:0 playerID:0];
  }

  v30 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v29;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerPath);
  Published.init(initialValue:)();
  (*(v21 + 32))(&v1[v30], v23, v20);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v31 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v32 = v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MPCPlayerResponseCSgMd);
  Published.init(initialValue:)();
  v33 = *(v17 + 32);
  v34 = v99;
  v92 = v33;
  v33(&v1[v31], v19, v99);
  v35 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13MPCPlayerPathCSgMd);
  Published.init(initialValue:)();
  (*(v94 + 32))(&v1[v35], v16, v95);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionCSgMd);
  v37 = v96;
  Published.init(initialValue:)();
  (*(v97 + 32))(&v1[v36], v37, v98);
  v38 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v39 = v100;
  Published.init(initialValue:)();
  v40 = v102;
  v41 = *(v101 + 32);
  v41(&v1[v38], v39, v102);
  v42 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v41(&v1[v42], v39, v40);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v43 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (one-time initialization token for emptyNowPlayingItem != -1)
  {
    swift_once();
  }

  v44 = static MPPropertySet.emptyNowPlayingItem;
  *v43 = static MPPropertySet.emptyNowPlayingItem;
  *(v43 + 1) = v44;
  *(v43 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v45 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v46 = v44;
  Published.init(initialValue:)();
  v92(&v1[v45], v32, v34);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v47 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v47] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13MPCPlayerPathC_So24OS_dispatch_source_timer_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v48 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v48] = UnfairLock.init()();
  if (one-time initialization token for systemMusic != -1)
  {
    swift_once();
  }

  v49 = qword_10063D648;
  v50 = unk_10063D650;
  v51 = objc_allocWithZone(MPCPlaybackEngine);
  v52 = String._bridgeToObjectiveC()();
  v53 = [v51 initWithPlayerID:v52];

  v54 = v53;
  specialized MPCPlaybackEngine.update(using:)(v49, v50);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v54;
  [v54 becomeActive];
  v55 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v56 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v57 = specialized static Set<>.from(_:)(v56);
  LOBYTE(v56) = specialized Set.contains(_:)(4u, v57);

  if (v56)
  {
    v58 = *&v1[v55];
    v120 = closure #1 in Player.init();
    v121 = 0;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
    v119 = &block_descriptor_15;
    v59 = _Block_copy(&aBlock);
    v60 = v58;
    [v60 restoreStateWithCompletion:v59];
    _Block_release(v59);
  }

  v61 = v103;
  v62 = [v103 systemRoute];
  v63 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v62 outputDeviceRoute:0];
  v64 = [objc_opt_self() sharedController];
  [v64 setActiveDataSource:v63];

  v65 = swift_allocObject();
  v66 = v104;
  *(v65 + 16) = v1;
  *(v65 + 24) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = partial apply for closure #1 in Player.updatePlayerPath(with:);
  *(v67 + 24) = v65;
  v120 = partial apply for closure #2 in Player.updatePlayerPath(with:);
  v121 = v67;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ();
  v119 = &block_descriptor_31;
  v68 = _Block_copy(&aBlock);

  [v61 getActiveRouteWithTimeout:v68 completion:1.0];

  _Block_release(v68);
  v69 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v70 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, partial apply for closure #2 in Player.init(), v70);

  v71 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v71, 0, 1, 1, partial apply for closure #3 in Player.init(), v72);

  v73 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = v73;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v75, 0, 1, 1, partial apply for closure #4 in Player.init(), v74);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMd);
  v76 = v105;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<ApplicationCapabilities>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd);
  v77 = v107;
  v78 = v108;
  Publisher.map<A>(_:)();
  (*(v106 + 8))(v76, v77);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v79 = static OS_dispatch_queue.main.getter();
  aBlock = v79;
  v80 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v81 = v114;
  (*(*(v80 - 8) + 56))(v114, 1, 1, v80);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Map<Published<ApplicationCapabilities>.Publisher, ApplicationCapabilities.RatingWarning> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAL13RatingWarningVGMd);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v82 = v109;
  v83 = v111;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v81, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v110 + 8))(v78, v83);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Map<Published<ApplicationCapabilities>.Publisher, ApplicationCapabilities.RatingWarning>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GAN13RatingWarningVGSo17OS_dispatch_queueCGMd);
  v84 = v113;
  v85 = Publisher<>.sink(receiveValue:)();
  (*(v112 + 8))(v82, v84);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v85;

  v86 = v115;
  static TaskPriority.userInitiated.getter();
  v87 = type metadata accessor for TaskPriority();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  type metadata accessor for MainActor();

  v88 = static MainActor.shared.getter();
  v89 = swift_allocObject();
  v89[2] = v88;
  v89[3] = &protocol witness table for MainActor;
  v89[4] = v1;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v86, &async function pointer to partial apply for closure #7 in Player.init(), v89);

  outlined destroy of TaskPriority?(v86, &_sScPSgMd_0);
  return v1;
}

void closure #1 in Player.init()(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Player.logger);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v5 = String.init<A>(describing:)();
      v7 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Restoration Failed with error=%{public}s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }

    else
    {
    }
  }
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t closure #1 in closure #3 in Player.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #3 in Player.init(), v6, v5);
}

uint64_t closure #1 in closure #3 in Player.init()()
{

  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    Player.updateSharePlayTogetherSession()();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #3 in Player.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = Strong;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v7, a4, v11);
}

uint64_t closure #1 in closure #4 in Player.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #4 in Player.init(), v6, v5);
}

uint64_t closure #1 in closure #4 in Player.init()()
{

  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    Player.updateSharePlayTogetherSession()();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #5 in Player.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;
}

void closure #6 in Player.init()(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t closure #7 in Player.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = closure #7 in Player.init();

  return Player.startEngineIfNeeded()();
}

uint64_t closure #7 in Player.init()()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #7 in Player.init(), v1, v0);
}

{

  Player.updateSharePlayTogetherSession()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(Player.startEngineIfNeeded(), v3, v2);
}

{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      Player.engineState.didset(0);
    }

    v3 = static MainActor.shared.getter();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(Player.startEngineIfNeeded(), v4, v6);
  }
}

{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = Player.startEngineIfNeeded();
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = partial apply for closure #1 in closure #1 in Player.startEngineIfNeeded();
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(Player.startEngineIfNeeded(), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.engineDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:a1];
  return swift_unknownObjectRelease();
}

id (*Player.engineDelegate.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Player.engineDelegate.modify;
}

id Player.engineDelegate.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC9MusicCore6Player_engine);
    v7 = *(v5 + 24);

    return [v6 setDelegate:v7];
  }

  return result;
}

uint64_t key path getter for Player.path : Player@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for Player.path : Player(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  static Published.subscript.setter();
  return Player.path.didset();
}

uint64_t Player.path.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = Player.playbackDataSource.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v19;
  v7 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v8 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v19;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerPath);
  v9 = v6;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v10 = *&v5[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v11 = [v10 request];
    if (v11)
    {
      v12 = *&v5[v7];
      v13 = v11;
      [v11 setPlayerPath:v12];
    }

    [v10 setNeedsReloadForSignificantRequestChange];
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v4, &async function pointer to partial apply for closure #1 in Player.path.didset, v16);
}

uint64_t closure #1 in Player.path.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Player.path.didset, v6, v5);
}

uint64_t closure #1 in Player.path.didset()
{

  Player.updateSharePlayTogetherSession()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for Player.$path : Player(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo13MPCPlayerPathC_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t Player.nowPlayingObserver.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Player.NowPlayingObserver(0);
    swift_allocObject();

    v2 = specialized Player.NowPlayingObserver.init(player:)();

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t Player.NowPlayingObserver.__allocating_init(player:)()
{
  swift_allocObject();
  v0 = specialized Player.NowPlayingObserver.init(player:)();

  return v0;
}

uint64_t Player.nowPlaying.getter()
{
  return Player.nowPlaying.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for Player.$nowPlaying : Player(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t key path getter for Player.nowPlayingPath : Player@<X0>(void *a1@<X8>)
{
  return key path getter for Player.nowPlayingPath : Player(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for Player.nowPlayingPath : Player(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t key path setter for Player.$nowPlayingPath : Player(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo13MPCPlayerPathCSg_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo13MPCPlayerPathCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t Player.sharePlayTogetherSession.didset(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (!a1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  static Published.subscript.getter();

  v8 = v17;
  if (v17)
  {
    type metadata accessor for SharePlayTogetherSession(0);
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = v7;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v2;
  v13[5] = v11;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v6, &async function pointer to partial apply for closure #1 in Player.sharePlayTogetherSession.didset, v13);

LABEL_7:

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v17)
  {
    v14 = v17[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost];
  }

  else
  {
    v14 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17) = v14;

  return static Published.subscript.setter();
}

uint64_t closure #1 in Player.sharePlayTogetherSession.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Player.sharePlayTogetherSession.didset, v7, v6);
}

uint64_t closure #1 in Player.sharePlayTogetherSession.didset()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[2];
  if (v1)
  {
    if (SharePlayTogetherSession.isEquivalent(to:)(v0[2]))
    {
      v2 = v0[9];
      v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
      swift_beginAccess();
      *(v2 + v3) = _swiftEmptyArrayStorage;

      v4 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
      swift_beginAccess();
      *(v2 + v4) = _swiftEmptyArrayStorage;

      goto LABEL_6;
    }
  }

  SharePlayTogetherSession.cleanup(notifyObservers:)(1);
LABEL_6:
  v5 = v0[1];

  return v5();
}

uint64_t key path setter for Player.$sharePlayTogetherSession : Player(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionCSg_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t key path getter for Player.isHostingSharePlayTogetherSession : Player@<X0>(_BYTE *a1@<X8>)
{
  return key path getter for Player.isHostingSharePlayTogetherSession : Player(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for Player.isHostingSharePlayTogetherSession : Player()
{
  return key path setter for Player.isHostingSharePlayTogetherSession : Player();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Player.isHostingSharePlayTogetherSession.getter()
{
  return Player.isHostingSharePlayTogetherSession.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for Player.$isHostingSharePlayTogetherSession : Player(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t key path getter for Player.$path : Player(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for Player.$isEligibleForHostingSharePlayTogetherSession : Player(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

id Player.supportsDelegation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [v8 route];

  if (!v0)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_12;
  }

  result = [v1 endpointObject];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result externalDevice];

  if (!v4 || (v5 = [v4 deviceInfo], v4, !v5))
  {
LABEL_12:

    return 0;
  }

  v6 = [v5 deviceClass];

  return (v6 == 7 || v6 == 4);
}

uint64_t Player.isInAnySharePlaySession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2 || (v0 = [v2 isSharedListeningSession], v2, (v0 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v2)
    {
      return 0;
    }

    result = *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ([result isPlaceholder])
    {

      return 0;
    }

    if (v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return v2 > 0;
    }
  }

  return 1;
}

void Player.sharePlayTogether(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
  *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken) = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v13[4] = partial apply for closure #1 in Player.sharePlayTogether(with:completion:);
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_63_1;
  v11 = _Block_copy(v13);
  v12 = v8;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a2);

  MRGroupSessionJoinSessionWithToken();
  _Block_release(v11);
}

uint64_t closure #1 in Player.sharePlayTogether(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken;
    v12 = *(result + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
    if (v12)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRGroupSessionToken);
      v13 = a5;
      v14 = v12;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = *(v10 + v11);
        *(v10 + v11) = 0;

        if (a6)
        {
          a6(a3);
        }
      }
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = [v12[0] route];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 endpointObject];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v8 = static OS_dispatch_queue.main.getter();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a1;
      v10[4] = a2;
      v12[4] = partial apply for closure #1 in Player.requestSharePlayTogether(completion:);
      v12[5] = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ();
      v12[3] = &block_descriptor_70;
      v11 = _Block_copy(v12);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(a1);

      [v7 requestGroupSessionWithQueue:v8 completion:v11];
      _Block_release(v11);

      v4 = v8;
    }
  }
}

uint64_t closure #1 in Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    type metadata accessor for MainActor();

    outlined copy of (@escaping @callee_guaranteed () -> ())?(a5);

    swift_errorRetain();
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v18[9] = a3;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in Player.requestSharePlayTogether(completion:), v18);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in Player.requestSharePlayTogether(completion:), v10, v9);
}

uint64_t closure #1 in closure #1 in Player.requestSharePlayTogether(completion:)()
{
  v1 = v0[3];

  Player.updateSharePlayTogetherSession()();
  if (v1)
  {
    (v0[3])(v0[5], v0[6], v0[7]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t Player.getNowPlaying()()
{
  v1[17] = v0;
  v1[18] = type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(Player.getNowPlaying(), v3, v2);
}

{
  v1 = Player.nowPlayingDataSource.getter();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
  *(v0 + 176) = v2;
  v3 = v2;

  v4 = static MainActor.shared.getter();
  *(v0 + 184) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(Player.getNowPlaying(), v5, v7);
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = Player.getNowPlaying();
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = partial apply for closure #1 in closure #1 in Player.getNowPlaying();
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_76_0;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[20];
    v4 = v1[21];
    v5 = Player.getNowPlaying();
  }

  else
  {

    v1[25] = v1[16];
    v3 = v1[20];
    v4 = v1[21];
    v5 = Player.getNowPlaying();
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = [v2 playerPath];
    v4 = [v3 isSystemMusicPath];

    if (v4 || (v5 = [v2 playerPath], v6 = objc_msgSend(v5, "representedBundleID"), v5, !v6))
    {
      v7 = *(v0 + 200);
    }

    else
    {

      v7 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v7;

    static Published.subscript.setter();
    v8 = [v2 playerPath];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;

    static Published.subscript.setter();
    v8 = 0;
  }

  v9 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v8;
  v10 = v8;

  static Published.subscript.setter();

  v11 = *(v0 + 8);
  v12 = *(v0 + 200);

  return v11(v12);
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}