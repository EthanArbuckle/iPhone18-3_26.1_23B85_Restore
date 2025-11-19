void sub_6F33AC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_6F91C4(a2);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    sub_13C80(0, &qword_E0E978);
    v3 = a2;
    v4 = sub_ABA790();

    if (v4)
    {
      if (qword_E0CEC0 != -1)
      {
        swift_once();
      }

      v5 = sub_AB4BC0();
      __swift_project_value_buffer(v5, qword_E72050);
      v6 = v3;
      v7 = sub_AB4BA0();
      v8 = sub_AB9F50();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 136446210;
        v11 = v6;
        v12 = [v11 description];
        v13 = sub_AB92A0();
        v15 = v14;

        v16 = sub_500C84(v13, v15, &v19);

        *(v9 + 4) = v16;
        _os_log_impl(&dword_0, v7, v8, "Engine stalled for too long trying to resolve playerPath=%{public}s. Switching back to system route.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      v17 = objc_opt_self();
      v18 = [v17 systemRoute];
      [v17 setActiveRoute:v18 completion:0];
    }
  }
}

char *sub_6F3694()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
  }

  else
  {
    v3 = v0;
    v32 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v4 = [v33 route];

    if (!v4)
    {
      v4 = [objc_opt_self() systemRoute];
    }

    v5 = [v4 isDeviceRoute];
    v6 = objc_opt_self();
    if (v5)
    {
      v7 = v6;
      if (qword_E0CE90 != -1)
      {
        swift_once();
      }

      v8 = sub_AB9260();
      v9 = [v7 systemMusicPathWithRoute:v4 playerID:v8];
    }

    else
    {
      v9 = [v6 pathWithRoute:v4 bundleID:0 playerID:0];
    }

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = type metadata accessor for Player.DataSource();
    v13 = objc_allocWithZone(v12);
    v14 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    *&v13[v14] = [objc_allocWithZone(MPCPlayerRequest) init];
    v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
    v15 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    *&v13[v15] = [objc_allocWithZone(MPRequestResponseController) init];
    *&v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v9;
    v16 = &v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged];
    *v16 = sub_6FDC0C;
    v16[1] = v10;
    v17 = &v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError];
    *v17 = sub_6FDC14;
    v17[1] = v11;
    v34.receiver = v13;
    v34.super_class = v12;
    v18 = v9;

    v19 = objc_msgSendSuper2(&v34, "init");
    v20 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    v21 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v22 = v19;
    [v21 setDelegate:v22];
    v23 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v24 = qword_E0CEC8;
    v25 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
    if (v24 != -1)
    {
      swift_once();
    }

    [v25 setPlayingItemProperties:{qword_E13410, v10}];

    [*&v22[v23] setTracklistRange:{0, 0}];
    [*&v22[v23] setPlayerPath:v18];
    v26 = *&v22[v23];
    v35._countAndFlagsBits = 0x6979616C50776F4ELL;
    v35._object = 0xEA0000000000676ELL;
    sub_AB94A0(v35);
    v27 = v18;
    v28 = sub_AB9260();

    [v26 setLabel:v28];

    [*&v19[v20] setRequest:*&v22[v23]];

    v29 = *(v3 + v32);
    *(v3 + v32) = v19;
    v2 = v22;

    v1 = 0;
  }

  v30 = v1;
  return v2;
}

uint64_t sub_6F3AF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);

    UnfairLock.locked<A>(_:)(sub_6FDC1C);
  }

  return result;
}

uint64_t sub_6F3BD8(id a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = [a1 tracklist];
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v6 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
  if (!v50)
  {
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_11:
    v7 = v5;
    goto LABEL_13;
  }

  v7 = [v50 tracklist];

  if (v5)
  {
    if (v7)
    {
      sub_13C80(0, &qword_E13E30);
      v8 = sub_ABA790();

      if ((v8 & 1) == 0)
      {
        if (!a1)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }

LABEL_21:
      if (a1)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_13:

  if (!a1)
  {
LABEL_22:
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v31 = sub_AB4BC0();
    __swift_project_value_buffer(v31, qword_E72050);
    v24 = sub_AB4BA0();
    v32 = sub_AB9F50();
    if (os_log_type_enabled(v24, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v24, v32, "╭ Nil Now Playing Response", v33, 2u);
    }

    goto LABEL_29;
  }

LABEL_14:
  v9 = qword_E0CEC0;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_AB4BC0();
  __swift_project_value_buffer(v11, qword_E72050);
  v12 = v10;
  v13 = sub_AB4BA0();
  v14 = sub_AB9F50();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v50 = v16;
    *v15 = 136446210;
    v49 = a3;
    v17 = [v12 tracklist];
    v18 = [v17 uniqueIdentifier];

    v19 = sub_AB92A0();
    v21 = v20;

    v22 = v19;
    a3 = v49;
    v23 = sub_500C84(v22, v21, &v50);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_0, v13, v14, "╭ Received Now Playing response with tracklistID=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  v24 = v12;
  v25 = sub_AB4BA0();
  v26 = sub_AB9F50();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67240192;
    v28 = [v24 playerPath];
    v29 = [v28 representedBundleID];

    if (v29)
    {

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v6 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
    *(v27 + 4) = v30;

    _os_log_impl(&dword_0, v25, v26, "| is Music App=%{BOOL,public}d", v27, 8u);
  }

  else
  {

    v6 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
  }

LABEL_29:

  if (v6[94].cache != -1)
  {
    swift_once();
  }

  v34 = sub_AB4BC0();
  __swift_project_value_buffer(v34, qword_E72050);
  v35 = a3;
  v36 = sub_AB4BA0();
  v37 = sub_AB9F50();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    v40 = [v35 playerPath];
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&dword_0, v36, v37, "╰ playerPath=%{public}@", v38, 0xCu);
    sub_12E1C(v39, &qword_E0F560);
  }

  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = 0;

    sub_AB5520();
    v47 = 0;
    goto LABEL_40;
  }

LABEL_34:
  v41 = [a1 playerPath];
  v42 = [v41 isSystemMusicPath];

  if ((v42 & 1) != 0 || (v43 = [a1 playerPath], v44 = objc_msgSend(v43, "representedBundleID"), v43, !v44))
  {
    v46 = a1;
    v45 = a1;
  }

  else
  {

    v45 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v45;

  sub_AB5520();
  v47 = [a1 playerPath];
LABEL_40:
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v47;

  return sub_AB5520();
}

uint64_t sub_6F42C4(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E72050);
    swift_errorRetain();
    v4 = sub_AB4BA0();
    v5 = sub_AB9F30();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
      v8 = sub_AB9350();
      v10 = sub_500C84(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "╭ Now Playing failed to load with error=%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    v11 = a1;
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = [v11 playerPath];
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_0, v12, v13, "╰ playerPath=%{public}@", v14, 0xCu);
      sub_12E1C(v15, &qword_E0F560);
    }
  }

  return result;
}

void sub_6F4554(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  if (a1)
  {

    v5 = a1;
    sub_6F4700();
  }

  else
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_6FE240;
    *(v7 + 24) = v4;
    v9[4] = sub_6FE244;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_780C4;
    v9[3] = &block_descriptor_327_0;
    v8 = _Block_copy(v9);

    [v6 getActiveRouteWithTimeout:v8 completion:1.0];

    _Block_release(v8);
  }
}

void sub_6F4700(void *a1)
{
  if (qword_E0CEC0 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E72050);
  v3 = a1;
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v6 = 136446210;
    v7 = v3;
    v8 = [v7 description];
    v9 = sub_AB92A0();
    v11 = v10;

    v12 = sub_500C84(v9, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, v4, v5, "Updating playerPath with route=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  __chkstk_darwin(v13);
  UnfairLock.locked<A>(_:)(sub_6FE038);
}

void sub_6F4908(uint64_t a1, void *a2)
{
  v4 = sub_6F3694();
  v5 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];

  v6 = [v5 route];
  if (v6 && (sub_13C80(0, &qword_E13E68), v7 = v6, v8 = a2, v9 = sub_ABA790(), v7, v8, (v9 & 1) != 0) && ((v10 = [v7 connection]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, "isInvalidated"), v11, (v12 & 1) == 0)))
  {
  }

  else
  {
    v13 = [a2 isDeviceRoute];
    v14 = objc_opt_self();
    if (v13)
    {
      v15 = v14;
      if (qword_E0CE90 != -1)
      {
        swift_once();
      }

      v16 = sub_AB9260();
      v17 = [v15 systemMusicPathWithRoute:a2 playerID:v16];
    }

    else
    {
      v17 = [v14 pathWithRoute:a2 bundleID:0 playerID:0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;

    sub_AB5520();
    sub_6E6318();

    v19 = *(a1 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
    v20 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
    v21 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
    *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v18;
    sub_13C80(0, &qword_E0E978);
    v22 = v18;
    v23 = v19;
    if ((sub_ABA790() & 1) == 0)
    {
      v24 = *&v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
      v25 = [v24 request];
      if (v25)
      {
        v26 = *&v19[v20];
        v27 = v25;
        [v25 setPlayerPath:v26];
      }

      [v24 setNeedsReloadForSignificantRequestChange];
    }

    v28 = _MPAVRouteConnectionDidInvalidateNotification;
    v29 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v30 = v22;
    *(a1 + OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, v22, 1, 1, sub_6FE058, v29);

    v31 = [v30 route];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v31 outputDeviceRoute:0];
      v34 = [objc_opt_self() sharedController];
      [v34 setActiveDataSource:v33];
    }

    else
    {
    }
  }
}

uint64_t sub_6F4D28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_6F4554(0);
  }

  return result;
}

void sub_6F4D84(void *a1, void (*a2)(id))
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = [objc_opt_self() systemRoute];
  }

  v4 = a1;
  a2(v5);
}

void sub_6F4E10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v0 = [v23 route];

  if (v0)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
LABEL_14:

      return;
    }

    v2 = v1;
    v3 = [v1 endpointObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 isEligibleForHostingGroupSessionExcludingAcknowledgements];

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v23) = v5;

      sub_AB5520();
      v6 = [v2 endpointObject];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 groupSessionInfo];

        if (!v8)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510();

          v22 = v23;
          swift_getKeyPath();
          swift_getKeyPath();

          sub_AB5520();
          sub_6E6D1C(v23);
          goto LABEL_13;
        }

        if (qword_E0CF28 != -1)
        {
          swift_once();
        }

        v9 = sub_AB4BC0();
        __swift_project_value_buffer(v9, static Logger.sharePlayTogether);
        v10 = v0;
        v11 = sub_AB4BA0();
        v12 = sub_AB9F50();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138543362;
          *(v13 + 4) = v2;
          *v14 = v2;
          v15 = v10;
          _os_log_impl(&dword_0, v11, v12, "Getting session from %{public}@", v13, 0xCu);
          sub_12E1C(v14, &qword_E0F560);
        }

        v16 = [v2 endpointObject];
        if (v16)
        {
          v17 = v16;
          v18 = objc_allocWithZone(type metadata accessor for SharePlayTogetherSession(0));
          v19 = v8;
          sub_72EE9C(v19, v17);
          v21 = v20;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510();

          v22 = v23;
          swift_getKeyPath();
          swift_getKeyPath();

          v0 = v21;
          sub_AB5520();
          sub_6E6D1C(v23);

LABEL_13:
          v0 = v22;
          goto LABEL_14;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t Player.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9MusicCore6Player__path;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13458);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13448);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13440);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession, v11);

  v13 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  v14 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration + 8);

  v5(v0 + OBJC_IVAR____TtC9MusicCore6Player__playerResponse, v4);

  return v0;
}

uint64_t sub_6F5550@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Player(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

id sub_6F5730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Player.DataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_6F57EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v4;
  *(inited + 96) = [v2 emptyPropertySet];
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_AF8820;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  *(v6 + 48) = [v2 emptyPropertySet];
  *(v6 + 56) = sub_AB92A0();
  *(v6 + 64) = v8;
  *(v6 + 72) = [v2 emptyPropertySet];
  *(v6 + 80) = sub_AB92A0();
  *(v6 + 88) = v9;
  *(v6 + 96) = [v2 emptyPropertySet];
  sub_52A338(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11068);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_E12D10);
  v12 = sub_AB8FD0().super.isa;

  v13 = [v10 initWithProperties:isa relationships:v12];

  *(inited + 120) = v13;
  sub_52A338(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MPPropertySet);
  v15 = sub_AB9740().super.isa;
  v16 = sub_AB8FD0().super.isa;

  v17 = [v14 initWithProperties:v15 relationships:v16];

  qword_E13410 = v17;
}

uint64_t Player.with(_:)(void (*a1)(id *))
{
  v3 = v1 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v16 = *v3;
  v17 = v4;
  v18 = v5;
  v6 = v16;
  v7 = v4;

  a1(&v16);
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = *v3;
  v12 = *(v3 + 8);
  *v3 = v16;
  *(v3 + 8) = v9;
  *(v3 + 16) = v10;
  v13 = v8;
  v14 = v9;

  sub_6E8A58();
}

uint64_t sub_6F5C18(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 120);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);

  sub_AB80F0();
}

uint64_t MusicItemState.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicItemState.item.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  sub_6F5C18(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*MusicItemState.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6F5F28;
}

uint64_t sub_6F5F28(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_6F5C18(result);
  }

  return result;
}

uint64_t sub_6F5F8C(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v6 + 16);
  v12(&v15 - v10, a1, v5);
  v12(v9, v11, v5);
  sub_AB54D0();
  v13 = *(v6 + 8);
  v13(a1, v5);
  return v13(v11, v5);
}

uint64_t sub_6F6104()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_6F6214();
  }

  return result;
}

uint64_t sub_6F615C()
{
  v0 = sub_AB80A0();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_AB80D0();
    MusicItemState.previewCapabilityStatus.setter(v2);
  }

  return result;
}

uint64_t sub_6F6214()
{
  v1 = *v0;
  v2 = sub_AB8070();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v62[-v7];
  v68 = sub_AB44B0();
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_AB4770();
  v66 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_AB8860();
  v70 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = sub_AB86C0();
  v74 = *(v80 - 8);
  v12 = __chkstk_darwin(v80);
  v79 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = *(v1 + 80);
  v14 = __chkstk_darwin(v12);
  v77 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v65 = &v62[-v17];
  v18 = __chkstk_darwin(v16);
  v69 = &v62[-v19];
  v20 = __chkstk_darwin(v18);
  v73 = &v62[-v21];
  __chkstk_darwin(v20);
  v78 = &v62[-v22];
  v23 = sub_AB8080();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v83 = &v62[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v29 = &v62[-v28];
  __chkstk_darwin(v27);
  v31 = &v62[-v30];
  v85 = v0;

  sub_AB80B0();

  v32 = *(v24 + 16);
  v84 = v31;
  v33 = v31;
  v34 = v23;
  v35 = v24;
  v82 = v32;
  v32(v29, v33, v34);
  v36 = (*(v24 + 88))(v29, v34);
  v37 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v36 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    if (v36 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      v50 = v83;
      v51 = v84;
      v82(v83, v84, v34);
      MusicItemState.playabilityStatus.setter(v50);
      v52 = *(v35 + 8);
      v52(v51, v34);
      return (v52)(v29, v34);
    }

    v63 = v36;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();

    if (!v86 || (v86, swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510(), , , , (v86 & 1) != 0) || (, v45 = Player.supportsDelegation.getter(), , (v45 & 1) != 0))
    {
LABEL_9:
      v46 = v83;
      v47 = v84;
      v82(v83, v84, v34);
      MusicItemState.playabilityStatus.setter(v46);
      return (*(v35 + 8))(v47, v34);
    }

    MusicItemState.item.getter(v78);
    v54 = v79;
    v53 = v80;
    if (swift_dynamicCast())
    {
      v55 = v74;
    }

    else
    {
      MusicItemState.item.getter(v73);
      v54 = v75;
      v53 = v76;
      if (!swift_dynamicCast())
      {
        MusicItemState.item.getter(v69);
        v61 = v71;
        if (swift_dynamicCast())
        {
          (*(v66 + 8))(v72, v61);
        }

        else
        {
          MusicItemState.item.getter(v65);
          if (!swift_dynamicCast())
          {
            goto LABEL_9;
          }

          (*(v64 + 8))(v67, v68);
        }

LABEL_19:
        MusicItemState.item.getter(v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E368);
        if (swift_dynamicCast())
        {
          v56 = *(&v87 + 1);
          v57 = v88;
          __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
          (*(v57 + 8))(v56, v57);
          v59 = v58;
          __swift_destroy_boxed_opaque_existential_0(&v86);
          if (v59)
          {

            v60 = v83;
            (*(v35 + 104))(v83, v63, v34);
LABEL_24:
            MusicItemState.playabilityStatus.setter(v60);
            return (*(v35 + 8))(v84, v34);
          }
        }

        else
        {
          v88 = 0;
          v86 = 0u;
          v87 = 0u;
          sub_12E1C(&v86, &unk_E13D70);
        }

        v60 = v83;
        (*(v3 + 104))(v83, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
        (*(v35 + 104))(v60, v37, v34);
        goto LABEL_24;
      }

      v55 = v70;
    }

    (*(v55 + 8))(v54, v53);
    goto LABEL_19;
  }

  v38 = v35;
  v39 = *(v35 + 96);
  v40 = v34;
  v39(v29, v34);
  (*(v3 + 32))(v8, v29, v2);
  (*(v3 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
  v41 = sub_AB8060();
  v42 = *(v3 + 8);
  v42(v6, v2);
  if ((v41 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510(), , , , v86))
  {

    v43 = v83;
    (*(v38 + 104))(v83, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v40);
    MusicItemState.playabilityStatus.setter(v43);
    v42(v8, v2);
    return (*(v38 + 8))(v84, v40);
  }

  else
  {
    v48 = v83;
    v49 = v84;
    v82(v83, v84, v40);
    MusicItemState.playabilityStatus.setter(v48);
    v42(v8, v2);
    return (*(v38 + 8))(v49, v40);
  }
}

uint64_t sub_6F6D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v5 = a2(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  v13 = *(v4 + 80);
  v9 = v13;
  v10 = *(v4 + 88);
  v14 = v10;
  swift_getKeyPath();
  v12[0] = v9;
  v12[1] = v10;
  swift_getKeyPath();
  (*(v6 + 16))(v8, a1, v5);

  sub_AB5520();
  return (*(v6 + 8))(a1, v5);
}

void (*MusicItemState.playabilityStatus.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t MusicItemState.$playabilityStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F520);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t MusicItemState.$playabilityStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F520);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MusicItemState.$playabilityStatus.modify(void *a1))(uint64_t a1, char a2)
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
  *v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135B0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  MusicItemState.$playabilityStatus.getter();
  return sub_6F72E4;
}

uint64_t sub_6F7310()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();
}

uint64_t sub_6F7414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t (*MusicItemState.previewCapabilityStatus.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t MusicItemState.$previewCapabilityStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F518);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t MusicItemState.$previewCapabilityStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E135C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F518);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MusicItemState.$previewCapabilityStatus.modify(void *a1))(uint64_t a1, char a2)
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
  *v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E135C0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  MusicItemState.$previewCapabilityStatus.getter();
  return sub_6F78E8;
}

void sub_6F7900(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t *MusicItemState.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v2 = *(*v0 + 128);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F520);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 136);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F518);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_6F7B20(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_6F7B7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicItemState();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t sub_6F7BC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 136) = a6;
  *(v6 + 128) = a1;
  *(v6 + 120) = a5;
  v7 = sub_AB7C80();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v8 = sub_AB7C20();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = sub_AB7C10();
  *(v6 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_6F7D20, 0, 0);
}

uint64_t sub_6F7D20()
{
  v1 = v0[23];
  v11 = v0[22];
  v14 = v0[21];
  v2 = v0[19];
  v12 = v0[24];
  v13 = v0[20];
  v15 = v0[18];
  v3 = v0[15];
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[6] = sub_6FD1FC;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1B5EB4;
  v0[5] = &block_descriptor_275_0;
  _Block_copy(v0 + 2);
  v0[14] = _swiftEmptyArrayStorage;
  sub_6FC5D8(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_36A00(&qword_E13DA0, &unk_E11A50);
  sub_ABABB0();
  sub_AB7CB0();
  swift_allocObject();
  v0[28] = sub_AB7C90();

  sub_13C80(0, &qword_E103C0);
  (*(v1 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);
  v6 = sub_ABA190();
  (*(v1 + 8))(v12, v11);
  sub_AB7C70();
  sub_AB7CE0();
  v7 = *(v2 + 8);
  v7(v13, v15);
  sub_ABA120();

  v7(v14, v15);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_6F8078;
  v9 = v0[17];

  return Task.value.getter(v8, v9, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_6F8078()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_6F83A8;
  }

  else
  {
    v2 = sub_6F818C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6F818C()
{
  v1 = *(v0 + 216);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DD8);
    sub_36A00(&qword_E13DE0, &qword_E13DD8);
    v2 = swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 216);
    swift_beginAccess();
    if ((*(v3 + 16) & 1) == 0)
    {
      sub_AB7CA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
      swift_allocError();
      *v4 = v2;
      swift_errorRetain();
      swift_continuation_throwingResumeWithError();
    }

    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {
    sub_AB7CA0();
    swift_continuation_throwingResume();

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_6F83A8()
{
  v1 = v0[30];
  v2 = v0[27];
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    sub_AB7CA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    swift_allocError();
    *v3 = v1;
    swift_errorRetain();
    swift_continuation_throwingResumeWithError();
  }

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_6F84E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_36A00(a5, a3);
  v8 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  swift_allocError();
  *v9 = v8;
  return swift_continuation_throwingResumeWithError();
}

uint64_t Player.NowPlayingObserver.init(player:)()
{
  v0 = sub_6FB50C();

  return v0;
}

uint64_t Player.NowPlayingObserver.isSharedListeningSession.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_6FC5D8(&qword_E135D0, type metadata accessor for Player.NowPlayingObserver);
    sub_AB3980();
  }

  return result;
}

id sub_6F8724(void *a1)
{
  swift_getKeyPath();
  sub_6FC5D8(&qword_E135D0, type metadata accessor for Player.NowPlayingObserver);
  sub_AB3990();

  swift_beginAccess();
  result = a1;
  v4 = *(v1 + 16);
  if (result)
  {
    result = [result isSharedListeningSession];
    if (v4 == result)
    {
      return result;
    }

    if (result == *(v1 + 16))
    {
      *(v1 + 16) = result;
      return result;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_AB3980();
}

uint64_t sub_6F88A8(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    *(result + 24) = v1;
    v4 = v1;

    sub_6F8724(v1);
  }

  return result;
}

uint64_t Player.NowPlayingObserver.isSharedListeningSession.getter()
{
  swift_getKeyPath();
  sub_6FC5D8(&qword_E135D0, type metadata accessor for Player.NowPlayingObserver);
  sub_AB3990();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_6F89D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6FC5D8(&qword_E135D0, type metadata accessor for Player.NowPlayingObserver);
  sub_AB3990();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

void (*Player.NowPlayingObserver.isSharedListeningSession.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_6FC5D8(&qword_E135D0, type metadata accessor for Player.NowPlayingObserver);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  swift_beginAccess();
  return sub_6F8BD0;
}

void sub_6F8BD0(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_AB39A0();

  free(v1);
}

uint64_t Player.NowPlayingObserver.deinit()
{

  v1 = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  v2 = sub_AB39D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Player.NowPlayingObserver.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC9MusicCore6Player18NowPlayingObserver___observationRegistrar;
  v2 = sub_AB39D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_6F8D70@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_6F8DF0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

void sub_6F8E74(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  sub_AB5520();
  sub_6F1A40();
}

uint64_t sub_6F8EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_52215C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_52707C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_27C4A4(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_6F8F88@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_5222E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_527460();
      v9 = v11;
    }

    sub_9ACFC((*(v9 + 56) + 32 * v7), a2);
    sub_6F9A30(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_6F9028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_522264(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_5275E0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_AB3470();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v20 = *(v13 - 8);
    sub_6FE074(v12 + *(v20 + 72) * v7, a2, type metadata accessor for PushNotificationObserver.RegisteredHandler);
    sub_6F9BBC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_6F91C4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_522338(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_27C804(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_527BD8();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_ABAFB0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_ABAFA0();
  v8 = sub_6F94C8(v4, v7);

  v9 = sub_522338(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_27C804(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_6F9310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_522264(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_527D3C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_AB3470();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_6FA0A4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

Swift::Int sub_6F94C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E980);
    v2 = sub_ABB0B0();
    v19 = v2;
    sub_ABAF90();
    v3 = sub_ABAFC0();
    if (v3)
    {
      v4 = v3;
      sub_13C80(0, &qword_E0E978);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13D88);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_524900(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_ABA780(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_ABAFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_6F9710(int64_t a1, uint64_t a2)
{
  v40 = sub_AB3470();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_ABABD0();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_6FC5D8(&qword_E0E988, &type metadata accessor for UUID);
      v23 = sub_AB90D0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_6F9A30(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_ABA780(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

      else if (v13 >= v8 || v3 >= v13)
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
}

unint64_t sub_6F9BBC(int64_t a1, uint64_t a2)
{
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_ABABD0();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_6FC5D8(&qword_E0E988, &type metadata accessor for UUID);
      v22 = sub_AB90D0();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_6F9F00(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_ABB5C0();
      sub_ABB5D0(v10);
      sub_ABB5D0(v11);
      result = sub_ABB610();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_6FA0A4(int64_t a1, uint64_t a2)
{
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_ABABD0();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_6FC5D8(&qword_E0E988, &type metadata accessor for UUID);
      v22 = sub_AB90D0();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

BOOL sub_6FA3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v9)
  {
    v7 = MPCPlayerResponse.canPerform(_:)(v10);
  }

  else
  {
    v7 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

uint64_t sub_6FA538(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_6FA5E8;

  return sub_6FD230(a5, a6, a2);
}

uint64_t sub_6FA5E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_6FA6F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  return result;
}

char *sub_6FA730(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a1;
  v72 = a3;
  v69 = a2;
  *&v82 = *v3;
  v5 = v82;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E135C0);
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v76 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F508);
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v79 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510);
  __chkstk_darwin(v10 - 8);
  v83 = &v64 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135B0);
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13E70);
  v14 = *(v13 - 8);
  v74 = v13;
  v75 = v14;
  __chkstk_darwin(v13);
  v68 = &v64 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F518);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v17 = &v64 - v16;
  v64 = sub_AB80A0();
  v18 = *(v64 - 8);
  __chkstk_darwin(v64);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F520);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = sub_AB8080();
  __chkstk_darwin(v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v5;
  v3[4] = _swiftEmptyArrayStorage;
  v29 = v3 + 4;
  v30 = *(v28 + 128);
  (*(v31 + 104))(v27, enum case for MusicPlayer.PlayabilityStatus.playable(_:));
  v82 = *(v82 + 80);
  v32 = v27;
  v33 = v29;
  property wrapper backing initializer of MusicItemState.playabilityStatus(v32, v34, v35);
  (*(v22 + 32))(&v4[v30], v24, v21);
  v36 = *(*v4 + 136);
  v37 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v38 = sub_AB8090();
  (*(*(v38 - 8) + 104))(v20, v37, v38);
  (*(v18 + 104))(v20, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v64);
  property wrapper backing initializer of MusicItemState.previewCapabilityStatus(v20, v39, v40);
  (*(v65 + 32))(&v4[v36], v17, v66);
  v41 = v69;
  (*(*(v82 - 8) + 16))(&v4[*(*v4 + 120)], v71);
  v42 = v72;
  *(v4 + 2) = v41;
  *(v4 + 3) = v42;

  sub_6F6214();
  sub_AB80D0();
  MusicItemState.previewCapabilityStatus.setter(v20);
  v43 = v67;
  sub_AB80C0();
  sub_13C80(0, &qword_E103C0);
  v44 = sub_ABA150();
  v84 = v44;
  v45 = sub_ABA130();
  v46 = *(v45 - 8);
  v47 = v83;
  v71 = *(v46 + 56);
  v72 = v45;
  v66 = v46 + 56;
  v71(v83, 1, 1);
  sub_36A00(&qword_E0F528, &unk_E135B0);
  v48 = sub_6FB3BC();
  v49 = v68;
  v50 = v47;
  v51 = v70;
  v65 = v48;
  sub_AB5590();
  sub_12E1C(v50, &qword_E0F510);

  (*(v73 + 8))(v43, v51);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v82;
  *(v53 + 32) = v52;
  sub_36A00(&unk_E13E80, &unk_E13E70);

  v54 = v74;
  sub_AB55C0();

  (*(v75 + 8))(v49, v54);
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  *&v82 = v33;
  v55 = v76;
  sub_AB80E0();
  v56 = sub_ABA150();
  v84 = v56;
  v57 = v83;
  (v71)(v83, 1, 1, v72);
  sub_36A00(&qword_E0F530, &qword_E135C0);
  v58 = v78;
  v59 = v79;
  sub_AB5590();
  sub_12E1C(v57, &qword_E0F510);

  (*(v77 + 8))(v55, v58);
  v60 = swift_allocObject();
  swift_weakInit();

  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v41;
  sub_36A00(qword_E13E90, &qword_E0F508);

  v62 = v81;
  sub_AB55C0();

  (*(v80 + 8))(v59, v62);
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v4 + 4) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v4 + 4) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  return v4;
}

char *sub_6FB254(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for MusicItemState();
  swift_allocObject();
  return sub_6FA730(a1, a2, a3);
}

uint64_t sub_6FB2B4()
{

  return swift_deallocObject();
}

uint64_t sub_6FB2F4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_195(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_6FB3BC()
{
  result = qword_E13540;
  if (!qword_E13540)
  {
    sub_13C80(255, &qword_E103C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13540);
  }

  return result;
}

uint64_t sub_6FB428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_6E59B8(a1, v4, v5, v6);
}

uint64_t sub_6FB50C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E40);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E48);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = &_swiftEmptySetSingleton;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v16 = v30;
  v17 = *(v1 + 24);
  *(v1 + 24) = v30;
  v24 = v16;

  sub_6F8724(v16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090);
  sub_AB54E0();
  swift_endAccess();
  sub_13C80(0, &qword_E103C0);
  v18 = sub_ABA150();
  v30 = v18;
  v19 = sub_ABA130();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_36A00(&qword_E13570, &unk_E15EA0);
  sub_6FB3BC();
  sub_AB5590();
  sub_12E1C(v4, &qword_E0F510);

  (*(v25 + 8))(v7, v5);
  sub_36A00(&qword_E13E50, &qword_E13E40);
  v20 = v26;
  sub_AB55A0();
  (*(v27 + 8))(v11, v20);
  swift_allocObject();
  swift_weakInit();
  sub_36A00(&qword_E13E58, &qword_E13E48);
  v21 = v28;
  sub_AB55C0();

  (*(v29 + 8))(v15, v21);
  swift_beginAccess();
  sub_AB5440();
  swift_endAccess();

  return v1;
}

uint64_t sub_6FBA54()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6FBAB0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6FBB0C(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  for (i = 0uLL; v4; i = vbslq_s8(vcgtq_s64(v9, i), v9, i))
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(result + 48) + ((v7 << 10) | (16 * v8)));
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return i.i64[0];
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6FBBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player.CommandIssuance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6FBC40(uint64_t a1)
{
  v2 = type metadata accessor for Player.CommandIssuance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6FBC9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13560);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + v4);

  v6 = v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_6FBDCC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13560) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v14 = *(v1 + 16);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + v7 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_17BD0;

  return sub_6EA9DC(a1, v14, v8, v1 + v4, v1 + v5, v9, v10, v11);
}

uint64_t sub_6FBF4C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_6FA538(a1, v7, v4, v5, v6, v8);
}

unint64_t sub_6FC02C()
{
  result = qword_E13580;
  if (!qword_E13580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13580);
  }

  return result;
}

uint64_t sub_6FC080()
{
  v1 = *(type metadata accessor for Player.CommandIssuance() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_AB3470();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_6FC190(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Player.CommandIssuance() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_6EE8C0(a1, a2, v8, v9, v2 + v6, v10, v11);
}

unint64_t sub_6FC24C()
{
  result = qword_E13598;
  if (!qword_E13598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13598);
  }

  return result;
}

uint64_t sub_6FC2E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_6F0BFC(a1, v4, v5, v6);
}

uint64_t objectdestroy_90Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6FC3DC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_6F7BC0(v7, a1, v4, v5, v6, v8);
}

__n128 sub_6FC518(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_6FC5D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6FC640()
{
  result = qword_E135D8;
  if (!qword_E135D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E135D8);
  }

  return result;
}

uint64_t sub_6FC6C8@<X0>(uint64_t *a1@<X8>)
{
  result = Player.nowPlayingObserver.getter();
  *a1 = result;
  return result;
}

uint64_t sub_6FC6F4(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver) = *a1;
}

uint64_t sub_6FC854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_6FC8AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_6F1420(v5);
}

void sub_6FC930()
{
  sub_6FCB5C();
  if (v0 <= 0x3F)
  {
    sub_3641C(319, &qword_E13620, &qword_E13480);
    if (v1 <= 0x3F)
    {
      sub_3641C(319, &qword_E13628, &qword_E13490);
      if (v2 <= 0x3F)
      {
        sub_3641C(319, qword_E13630, &qword_E134A0);
        if (v3 <= 0x3F)
        {
          sub_69ED3C();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_6FCB5C()
{
  if (!qword_E13618)
  {
    sub_13C80(255, &qword_E0E978);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E13618);
    }
  }
}

uint64_t sub_6FCBD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_6FCC5C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_6FCDBC(319, &qword_E13C90, &type metadata accessor for MusicPlayer.PlayabilityStatus);
    if (v1 <= 0x3F)
    {
      sub_6FCDBC(319, &qword_E13C98, &type metadata accessor for MusicPlayer.PreviewCapabilityStatus);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_6FCDBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_AB5540();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_6FCE18()
{
  result = sub_AB39D0();
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

uint64_t get_enum_tag_for_layout_string_9MusicCore6PlayerC25prepareForBufferedAirPlaySo9MPAVRouteCSgyYaKF0fgH5ErrorL_O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_6FCEF4(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a3);
  if (![a1 request])
  {
    return;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = *(a2 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged);
    if ([a1 response])
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
LABEL_12:
        v10 = v9;
        v7(v6);
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    v9 = 0;
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_6FD050()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6FD098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6E6F90(a1, v4, v5, v7, v6);
}

uint64_t sub_6FD184()
{

  return swift_deallocObject();
}

uint64_t sub_6FD230(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 144) = a2;
  *(v3 + 136) = a3;
  *(v3 + 128) = a1;
  v4 = sub_AB7C80();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v5 = sub_AB7C20();
  *(v3 + 184) = v5;
  *(v3 + 192) = *(v5 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = sub_AB7C10();
  *(v3 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_6FD390, 0, 0);
}

uint64_t sub_6FD390()
{
  v1 = v0[24];
  v13 = v0[23];
  v16 = v0[22];
  v2 = v0[20];
  v14 = v0[25];
  v15 = v0[21];
  v17 = v0[19];
  v3 = v0[16];
  v4 = swift_allocObject();
  v0[28] = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[6] = sub_6FDBD8;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1B5EB4;
  v0[5] = &block_descriptor_287;
  _Block_copy(v0 + 2);
  v0[14] = _swiftEmptyArrayStorage;
  sub_6FC5D8(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_36A00(&qword_E13DA0, &unk_E11A50);
  sub_ABABB0();
  sub_AB7CB0();
  swift_allocObject();
  v0[29] = sub_AB7C90();

  sub_13C80(0, &qword_E103C0);
  (*(v1 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v13);
  v6 = sub_ABA190();
  (*(v1 + 8))(v14, v13);
  sub_AB7C70();
  sub_AB7CE0();
  v7 = *(v2 + 8);
  v7(v15, v17);
  sub_ABA120();

  v7(v16, v17);
  v8 = swift_task_alloc();
  v0[30] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E08);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
  v0[31] = v10;
  *v8 = v0;
  v8[1] = sub_6FD714;
  v11 = v0[18];

  return Task.value.getter(v0 + 15, v11, v9, v10, &protocol self-conformance witness table for Error);
}

uint64_t sub_6FD714()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_6FDAAC;
  }

  else
  {
    v2 = sub_6FD828;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6FD828()
{
  v1 = *(v0 + 224);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E10);
    sub_36A00(&qword_E13E18, &qword_E13E10);
    v2 = swift_allocError();
    swift_willThrow();

    v3 = *(v0 + 224);
    swift_beginAccess();
    if ((*(v3 + 16) & 1) == 0)
    {
      sub_AB7CA0();
      swift_allocError();
      *v4 = v2;
      swift_errorRetain();
      swift_continuation_throwingResumeWithError();
    }

    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 128);
    sub_AB7CA0();
    v8 = *(v0 + 120);
    **(*(v7 + 64) + 40) = v8;
    v9 = v8;
    swift_continuation_throwingResume();

    v10 = *(v0 + 8);

    return v10(v8);
  }
}

uint64_t sub_6FDAAC()
{
  v1 = v0[32];
  v2 = v0[28];
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    sub_AB7CA0();
    swift_allocError();
    *v3 = v1;
    swift_errorRetain();
    swift_continuation_throwingResumeWithError();
  }

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_6FDC3C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6FDC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_17BD0;

  return sub_6E8160(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_6FDD88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_6FDDC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_6FDE1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_6E653C(a1, v4, v5, v6);
}

uint64_t sub_6FDED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_6E5700(a1, v4, v5, v6);
}

uint64_t sub_6FDF84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_6E5400(a1, v4, v5, v6);
}

uint64_t sub_6FE074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_6FE0DC()
{

  return swift_deallocObject();
}

uint64_t sub_6FE120()
{

  return swift_deallocObject();
}

uint64_t static Player.InsertCommand.Location.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return !a2;
    }

    if (a1 == 1)
    {
      return a2 == 1;
    }

LABEL_10:
    if (a2 >= 4)
    {
      sub_13C80(0, &qword_E112E0);
      return sub_ABA790() & 1;
    }

    return 0;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      return a2 == 3;
    }

    goto LABEL_10;
  }

  return a2 == 2;
}

uint64_t Player.CommandOptions.with(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v6 = a5;
  a1(&v8);
  return v8;
}

uint64_t static Player.CommandOptions.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  a1(&v2);
  return v2;
}

BOOL MPCPlayerResponse.canPerform(_:)(uint64_t a1)
{
  sub_E8BA0(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E20);
  if (swift_dynamicCast())
  {
    sub_70DF8(v7, v10);
    v2 = v11;
    v3 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = (*(v3 + 24))(v1, v2, v3);
    v5 = v4 != 0;
    if (v4)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_701B2C(v7);
    return 0;
  }

  return v5;
}

uint64_t MPCPlayerResponse.canPerform(anyOf:)(uint64_t a1)
{
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    return (*(v3 + 16))(v1, a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Player.CommandIssuance.init(uuid:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(type metadata accessor for Player.CommandIssuance() + 20));
  v9 = sub_AB3470();
  result = (*(*(v9 - 8) + 32))(a4, a1, v9);
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t MPCPlayerResponse.perform(_:issuance:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_6FE6A8;

  return sub_701DFC(a1, a2, a3, a4);
}

{
  *(v5 + 152) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  return _swift_task_switch(sub_701514, 0, 0);
}

uint64_t sub_6FE6A8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t Player.CommandOptions.description.getter(uint64_t a1, char a2, void *a3)
{
  type metadata accessor for MPCPlayerChangeRequestOptions(0);
  v13._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 0x6F69747563657865;
  v14._object = 0xEA00000000003D6ELL;
  sub_AB94A0(v14);

  sub_ABAD90(24);

  if (a2)
  {
    v5._countAndFlagsBits = 7562585;
  }

  else
  {
    v5._countAndFlagsBits = 28494;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v5._object = v6;
  sub_AB94A0(v5);

  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = 0x8000000000B710B0;
  sub_AB94A0(v15);

  if (a3)
  {
    v7 = a3;
    v8 = [v7 description];
    v9 = sub_AB92A0();
    v11 = v10;

    v16._countAndFlagsBits = v9;
    v16._object = v11;
    sub_AB94A0(v16);

    v17._countAndFlagsBits = 0x3D6574756F72202CLL;
    v17._object = 0xE800000000000000;
    sub_AB94A0(v17);
  }

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  sub_AB94A0(v18);
  return 0xD000000000000016;
}

uint64_t Player.CommandIssuance.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB3470();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Player.CommandIssuance.uuid.setter(uint64_t a1)
{
  v3 = sub_AB3470();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Player.CommandIssuance.origin.getter()
{
  v1 = *(v0 + *(type metadata accessor for Player.CommandIssuance() + 20));

  return v1;
}

uint64_t Player.CommandIssuance.origin.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Player.CommandIssuance() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t Player.CommandIssuance.description.getter()
{
  v4._countAndFlagsBits = sub_AB3440();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 0x3D44495555;
  v5._object = 0xE500000000000000;
  sub_AB94A0(v5);

  v1 = v0 + *(type metadata accessor for Player.CommandIssuance() + 20);
  v2._object = *(v1 + 8);
  if (v2._object)
  {
    v2._countAndFlagsBits = *v1;
    sub_AB94A0(v2);
    v6._countAndFlagsBits = 0x6E696769726F202CLL;
    v6._object = 0xE90000000000003DLL;
    sub_AB94A0(v6);
  }

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  sub_AB94A0(v7);
  return 0xD000000000000017;
}

id Player.PlaybackCommand.request(from:)(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = &selRef_stop;
    }

    else
    {
      v3 = a1;
      result = [a1 play];
      if (result)
      {
        return result;
      }

      v2 = &selRef_pause;
      a1 = v3;
    }
  }

  else if (a2)
  {
    v2 = &selRef_pause;
  }

  else
  {
    v2 = &selRef_play;
  }

  return [a1 *v2];
}

id Player.ChangeCommand.request(from:)(void *a1, uint64_t a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 changeItemCommand];

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (v4)
        {
          v5 = [v4 nextChapter];
          goto LABEL_22;
        }

        break;
      case 4:
        if (v4)
        {
          v5 = [v4 previousSection];
          goto LABEL_22;
        }

        return 0;
      case 5:
        if (v4)
        {
          v5 = [v4 nextSection];
          goto LABEL_22;
        }

        break;
      default:
LABEL_16:
        if (v4)
        {
          v5 = [v4 changeToItem:a2];
          goto LABEL_22;
        }

        return 0;
    }

    return 0;
  }

  if (!a2)
  {
    if (v4)
    {
      v5 = [v4 previousItem];
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (v4)
    {
      v5 = [v4 nextItem];
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 != 2)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 previousChapter];
LABEL_22:
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

id Player.ShuffleCommand.request(from:)(void *a1, char a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 shuffleCommand];

  if (!a2)
  {
    if (v4)
    {
      v5 = [v4 advance];
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (v4)
    {
      v5 = [v4 setShuffleType:1];
      goto LABEL_9;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 setShuffleType:0];
LABEL_9:
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

id Player.FavoriteCommand.request(from:)(void *a1, char a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 playingItem];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 likeCommand];

  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    v6 = a2 == 1;
  }

  else
  {
    v6 = [v5 value] ^ 1;
  }

  v8 = [v5 changeValue:v6];
  swift_unknownObjectRelease();
  return v8;
}

id Player.RepeatCommand.request(from:)(void *a1, unsigned __int8 a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 repeatCommand];

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (v4)
      {
        v5 = [v4 setRepeatType:1];
        goto LABEL_12;
      }
    }

    else if (v4)
    {
      v5 = [v4 setRepeatType:2];
      goto LABEL_12;
    }

    return 0;
  }

  if (a2)
  {
    if (v4)
    {
      v5 = [v4 setRepeatType:0];
      goto LABEL_12;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 advance];
LABEL_12:
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

id Player.QueueEndCommand.request(from:)(void *a1, unsigned __int8 a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 actionAtQueueEndCommand];

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v5 = 0;
      v6 = 0;
      if (!v4)
      {
        return v6;
      }

      goto LABEL_12;
    }

    if (v4)
    {
      v5 = 2;
      goto LABEL_12;
    }

    return 0;
  }

  if (a2 != 2)
  {
    if (v4)
    {
      v5 = 1;
      goto LABEL_12;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = 3;
LABEL_12:
  v6 = [v4 setQueueEndAction:v5];
  swift_unknownObjectRelease();
  return v6;
}

void Player.InsertCommand.Location.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (a2 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }

LABEL_8:
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
    return;
  }

  if (!a2)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
LABEL_11:
  sub_ABB5D0(v2);
}

Swift::Int Player.InsertCommand.Location.hashValue.getter(uint64_t a1)
{
  sub_ABB5C0();
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v2 = 2;
LABEL_11:
      sub_ABB5D0(v2);
      return sub_ABB610();
    }
  }

  sub_ABB5D0(1uLL);
  sub_ABA7A0();
  return sub_ABB610();
}

Swift::Int sub_6FF4A4()
{
  v1 = *v0;
  sub_ABB5C0();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      sub_ABB5D0(v2);
      return sub_ABB610();
    }
  }

  sub_ABB5D0(1uLL);
  sub_ABA7A0();
  return sub_ABB610();
}

void sub_6FF550()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }

LABEL_8:
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
    return;
  }

  if (!v1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
LABEL_11:
  sub_ABB5D0(v2);
}

Swift::Int sub_6FF5E0()
{
  v1 = *v0;
  sub_ABB5C0();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      sub_ABB5D0(v2);
      return sub_ABB610();
    }
  }

  sub_ABB5D0(1uLL);
  sub_ABA7A0();
  return sub_ABB610();
}

uint64_t sub_6FF688(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

LABEL_10:
      if (v3 >= 4)
      {
        sub_13C80(0, &qword_E112E0);
        return sub_ABA790() & 1;
      }

      return 0;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return v3 == 1;
      }

      goto LABEL_10;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

id Player.InsertCommand.request(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 tracklist];
  v6 = [v5 insertCommand];

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (v6)
      {
        v7 = [v6 insertAtEndOfUpNextWithPlaybackIntent:a2];
        goto LABEL_17;
      }

      return 0;
    }

    if (a3 == 3)
    {
      if (v6)
      {
        v8 = [v6 insertAfterLastSection];
        if (v8)
        {
          v9 = [v8 insertWithPlaybackIntent:a2];
          swift_unknownObjectRelease();
LABEL_18:
          swift_unknownObjectRelease();
          return v9;
        }

        swift_unknownObjectRelease();
      }

      return 0;
    }
  }

  else
  {
    if (!a3)
    {
      if (v6)
      {
        v7 = [v6 insertAfterPlayingItemWithPlaybackIntent:a2];
        goto LABEL_17;
      }

      return 0;
    }

    if (a3 == 1)
    {
      if (v6)
      {
        v7 = [v6 insertAtEndOfTracklistWithPlaybackIntent:a2];
LABEL_17:
        v9 = v7;
        goto LABEL_18;
      }

      return 0;
    }
  }

  if (v6)
  {
    v7 = [v6 insertPlaybackIntent:a2 afterItem:a3];
    goto LABEL_17;
  }

  return 0;
}

unint64_t Player.InsertCommand.description.getter(void *a1, void *a2)
{
  sub_ABAD90(38);

  v4 = a1;
  v5 = [v4 description];
  v6 = sub_AB92A0();
  v8 = v7;

  v10._countAndFlagsBits = v6;
  v10._object = v8;
  sub_AB94A0(v10);

  v11._countAndFlagsBits = 0x697461636F6C202CLL;
  v11._object = 0xEB000000003D6E6FLL;
  sub_AB94A0(v11);
  sub_537EFC(a2);
  v12._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v12);

  v13._countAndFlagsBits = 10537;
  v13._object = 0xE200000000000000;
  sub_AB94A0(v13);
  return 0xD000000000000015;
}

uint64_t static Player.InsertCommand.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_13C80(0, &qword_E112E0);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (a2 != 3)
      {
        return a4 >= 4 && (sub_ABA790() & 1) != 0;
      }

      if (a4 != 3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a4 == 1;
      }

      return a4 >= 4 && (sub_ABA790() & 1) != 0;
    }

    if (a4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_6FFAD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_13C80(0, &qword_E112E0);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      return v3 >= 4 && (sub_ABA790() & 1) != 0;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return v3 == 1;
      }

      return v3 >= 4 && (sub_ABA790() & 1) != 0;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

id Player.ClearCommand.request(from:)(void *a1, char a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 resetCommand];

  if (!v4)
  {
    return 0;
  }

  v5 = &selRef_clearUpNextItems;
  if ((a2 & 1) == 0)
  {
    v5 = &selRef_clear;
  }

  v6 = [v4 *v5];
  swift_unknownObjectRelease();
  return v6;
}

id Player.ReplaceCommand.request(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 tracklist];
  v6 = [v5 resetCommand];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 replaceWithPlaybackIntent:a2 replaceIntent:a3];
  swift_unknownObjectRelease();
  return v7;
}

unint64_t Player.ReplaceCommand.description.getter(void *a1)
{
  sub_ABAD90(44);

  v2 = a1;
  v3 = [v2 description];
  v4 = sub_AB92A0();
  v6 = v5;

  v8._countAndFlagsBits = v4;
  v8._object = v6;
  sub_AB94A0(v8);

  v9._object = 0x8000000000B71130;
  v9._countAndFlagsBits = 0xD000000000000010;
  sub_AB94A0(v9);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v10._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v10);

  v11._countAndFlagsBits = 10537;
  v11._object = 0xE200000000000000;
  sub_AB94A0(v11);
  return 0xD000000000000016;
}

id sub_6FFE48(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [a1 tracklist];
  v5 = [v4 resetCommand];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 replaceWithPlaybackIntent:v2 replaceIntent:v3];
  swift_unknownObjectRelease();
  return v6;
}

uint64_t static Player.MoveCommand.Location.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_13C80(0, &qword_E112E0);
  return sub_ABA790() & 1;
}

uint64_t sub_6FFF80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_13C80(0, &qword_E112E0);
  return sub_ABA790() & 1;
}

id Player.MoveCommand.request(from:)(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = [a1 tracklist];
  v9 = [v8 reorderCommand];

  if ((a4 & 1) == 0)
  {
    if (v9)
    {
      v10 = [v9 moveItem:a2 beforeItem:v7];
      goto LABEL_6;
    }

LABEL_7:

    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [v9 moveItem:a2 afterItem:v7];
LABEL_6:
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

BOOL static Player.LeaveSessionCommand.isAvailable(in:)(void *a1)
{
  v1 = [a1 leaveSession];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id Player.LeaveSessionCommand.request(from:)(void *a1)
{
  v1 = [a1 leaveSession];

  return v1;
}

uint64_t Player.BuildSharedSessionCommand.init(intentHandler:)()
{
  v0 = objc_allocWithZone(ICLiveLinkIdentity);
  v4[4] = UIScreen.Dimensions.size.getter;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_41A314;
  v4[3] = &block_descriptor_196;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

BOOL static Player.BuildSharedSessionCommand.isAvailable(in:)(void *a1)
{
  v1 = [a1 tracklist];
  v2 = [v1 playingItem];

  if (v2)
  {
  }

  return v2 != 0;
}

id Player.BuildSharedSessionCommand.request(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_780C4;
  v9[3] = &block_descriptor_8_4;
  v6 = _Block_copy(v9);

  v7 = [a1 createSharedSessionWithIdentity:a2 intentHandler:v6];
  _Block_release(v6);
  return v7;
}

id sub_7003AC(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v9[4] = v3;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_780C4;
  v9[3] = &block_descriptor_126;
  v6 = _Block_copy(v9);

  v7 = [a1 createSharedSessionWithIdentity:v4 intentHandler:v6];
  _Block_release(v6);
  return v7;
}

id Player.SeekCommand.request(from:)(void *a1, uint64_t a2, char a3)
{
  v5 = [a1 tracklist];
  v6 = [v5 playingItem];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 seekCommand];

  if (!v7)
  {
    return 0;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v8 = [v7 changePositionToElapsedInterval:*&a2];
    }

    else
    {
      v8 = [v7 endSeek];
    }
  }

  else
  {
    v8 = [v7 beginSeekWithDirection:a2];
  }

  v10 = v8;
  swift_unknownObjectRelease();
  return v10;
}

void Player.JumpCommand.resolvedTimeInterval(for:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a1)
  {
    v5 = [a1 tracklist];
    v6 = [v5 playingItem];

    v7 = [v6 seekCommand];
    v8 = a3;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v8 = a3;
    if (!a3)
    {
LABEL_6:
      swift_unknownObjectRelease();
      return;
    }
  }

  if (v8 == 1)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    if (v7)
    {
      v9 = [v7 preferredForwardJumpIntervals];
      sub_13C80(0, &qword_E0FF68);
      v10 = sub_AB9760();

      if (v10 >> 62)
      {
        if (!sub_ABB060())
        {
          goto LABEL_27;
        }

        goto LABEL_12;
      }

      if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_12:
        if ((v10 & 0xC000000000000001) != 0)
        {
          goto LABEL_28;
        }

        if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_20:
          v12 = *(v10 + 32);
LABEL_21:
          v13 = v12;

          sub_AB9A90();
          swift_unknownObjectRelease();

          return;
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_27:
      swift_unknownObjectRelease();
    }
  }

  else if (v7)
  {
    v11 = [v7 preferredBackwardJumpIntervals];
    sub_13C80(0, &qword_E0FF68);
    v10 = sub_AB9760();

    if (v10 >> 62)
    {
LABEL_26:
      if (!sub_ABB060())
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_18:
      if ((v10 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        goto LABEL_20;
      }

LABEL_28:
      v12 = sub_ABAE20();
      goto LABEL_21;
    }

    goto LABEL_27;
  }
}

BOOL sub_700850(void *a1, SEL *a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 playingItem];

  v5 = [v4 *a2];
  if (v5)
  {
    swift_unknownObjectRelease();
  }

  return v5 != 0;
}

id Player.JumpCommand.request(from:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = [a1 tracklist];
  v7 = [v6 playingItem];

  v8 = [v7 seekCommand];
  Player.JumpCommand.resolvedTimeInterval(for:)(a1, a2, a3);
  if (a3 != 1)
  {
    if (v8)
    {
      v9 = &selRef_jumpByInterval_;
      goto LABEL_6;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = &selRef_changePositionToElapsedInterval_;
LABEL_6:
  v10 = [v8 *v9];
  swift_unknownObjectRelease();
  return v10;
}

BOOL sub_7009DC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [a1 tracklist];
  v6 = [v5 playingItem];

  v7 = [v6 *a4];
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  return v7 != 0;
}

BOOL sub_700A80(void *a1, SEL *a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 *a2];

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  return v4 != 0;
}

id Player.VocalsCommand.request(from:)(void *a1, uint64_t a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 vocalsControlCommand];

  if (!v4)
  {
    return 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    v6 = [v4 activateVocalsControl:0];
  }

  else if ((a2 & 0x100000000) != 0)
  {
    v6 = [v4 activateVocalsControl:1];
  }

  else
  {
    LODWORD(v5) = a2;
    v6 = [v4 setVocalsLevel:v5];
  }

  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

uint64_t static Player.VocalsCommand.localizedDisablementMessage(for:)()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Player.VocalsCommand.description.getter(uint64_t a1)
{
  strcpy(v3, "VocalCommand(");
  HIWORD(v3[1]) = -4864;
  if ((a1 & 0x10000000000) != 0)
  {
    v1._countAndFlagsBits = 6710895;
    v1._object = 0xE300000000000000;
LABEL_6:
    sub_AB94A0(v1);
    goto LABEL_7;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v1._countAndFlagsBits = 28271;
    v1._object = 0xE200000000000000;
    goto LABEL_6;
  }

  v4._countAndFlagsBits = 2649711;
  v4._object = 0xE300000000000000;
  sub_AB94A0(v4);
  sub_AB9B10();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_AB94A0(v5);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_AB94A0(v6);

LABEL_7:
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_AB94A0(v7);
  return v3[0];
}

uint64_t static Player.VocalsCommand.Prepare.isAvailable(in:)(void *a1)
{
  v2 = [a1 tracklist];
  v3 = [v2 prepareVocalsControlCommand];

  if (!v3)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  v4 = [a1 tracklist];
  v5 = [v4 vocalsControlCommand];

  if (v5)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

id Player.VocalsCommand.Prepare.request(from:)(void *a1)
{
  v1 = [a1 tracklist];
  v2 = [v1 prepareVocalsControlCommand];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 prepare];
  swift_unknownObjectRelease();
  return v3;
}

BOOL static Player.VocalsCommand.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x10000000000) != 0)
  {
    return (a2 & 0x10000000000) != 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    return 0;
  }

  if ((a1 & 0x100000000) != 0)
  {
    return (a2 & 0x100000000) != 0;
  }

  return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
}

BOOL sub_70104C(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 5))
  {
    return (*(a2 + 5) & 1) != 0;
  }

  if (*(a2 + 5))
  {
    return 0;
  }

  v3 = *a2 | (*(a2 + 4) << 32);
  v4 = *a1;
  if (((v4 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((v3 & 0x100000000) == 0 && *&v4 == *a2)
  {
    return 1;
  }

  return 0;
}

BOOL sub_7010E4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [a1 tracklist];
  v6 = [v5 *a4];

  if (v6)
  {
    swift_unknownObjectRelease();
  }

  return v6 != 0;
}

Swift::Bool __swiftcall MPCPlayerResponse.canPerform(any:)(Swift::OpaquePointer any)
{
  v2 = sub_701288(any._rawValue);
  if (!v2)
  {
    v10 = 0;
LABEL_11:
    LOBYTE(v2) = v10;
    return v2;
  }

  v3 = v2;
  v4 = v2[2];
  if (!v4)
  {
LABEL_7:

    v10 = 0;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
LABEL_10:
    sub_701B2C(v16);
    goto LABEL_11;
  }

  v5 = 0;
  v6 = (v2 + 4);
  while (v5 < v3[2])
  {
    sub_E8BA0(v6, &v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, v14);
    v9 = (*(v8 + 24))(v1, v7, v8);
    if (v9)
    {
      v11 = v9;

      sub_70DF8(&v13, v16);
      v10 = 1;
      goto LABEL_10;
    }

    ++v5;
    LOBYTE(v2) = __swift_destroy_boxed_opaque_existential_0(&v13);
    v6 += 40;
    if (v4 == v5)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return v2;
}

void *sub_701288(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_5039C8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_E8BA0(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_70DF8(v8, v11);
      sub_70DF8(v11, v10);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_5039C8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      sub_70DF8(v10, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_701B2C(v8);
    return 0;
  }

  return v3;
}

Swift::Bool __swiftcall MPCPlayerResponse.canPerform(all:)(Swift::OpaquePointer all)
{
  v2 = sub_701288(all._rawValue);
  if (v2)
  {
    v3 = v2;
    v4 = v2[2];
    if (v4)
    {
      v5 = 0;
      v6 = (v2 + 4);
      while (v5 < v3[2])
      {
        sub_E8BA0(v6, v11);
        v7 = v12;
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        v9 = (*(v8 + 24))(v1, v7, v8);
        if (!v9)
        {

          __swift_destroy_boxed_opaque_existential_0(v11);
          LOBYTE(v2) = 0;
          return v2;
        }

        ++v5;

        LOBYTE(v2) = __swift_destroy_boxed_opaque_existential_0(v11);
        v6 += 40;
        if (v4 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

uint64_t sub_701514()
{
  v1 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70);
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  *(inited + 16) = xmmword_AF4EC0;
  sub_E8BA0(v1, inited + 32);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_701608;
  v4 = *(v0 + 104);
  v5 = *(v0 + 152);
  v6 = *(v0 + 96);

  return sub_701DFC(inited, v6, v4, v5);
}

uint64_t sub_701608(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = sub_701814;
  }

  else
  {
    v5 = v3[15];
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0(v5 + 32);
    v4 = sub_701730;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_701730()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 136) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_701814()
{
  v1 = *(v0 + 120);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v1 + 32);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_701884(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    result = sub_ABB060();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  v7 = [v5 error];

  if (v7)
  {
    sub_6DAEFC();
    v8 = swift_allocError();
    *v9 = v7;
    v9[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    swift_allocError();
    *v10 = v8;

    return swift_continuation_throwingResumeWithError();
  }

LABEL_11:
  **(*(a2 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

uint64_t sub_7019E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_13C80(0, &qword_E13590);
  v2 = sub_AB9760();

  v1(v2);
}

id MPCPlayerResponse.isPlayingItemFavorited.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 likeCommand];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_701B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Player.CommandIssuance()
{
  result = qword_E13FF0;
  if (!qword_E13FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s9MusicCore6PlayerC13ChangeCommandO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, unint64_t a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return !a2;
      case 1:
        return a2 == 1;
      case 2:
        return a2 == 2;
    }

LABEL_16:
    if (a2 >= 6)
    {
      sub_13C80(0, &qword_E112E0);
      return sub_ABA790() & 1;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    goto LABEL_16;
  }

  return a2 == 4;
}

uint64_t _s9MusicCore6PlayerC14CommandOptionsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6)
{
  result = 0;
  if (a1 == a4 && ((a2 ^ a5) & 1) == 0)
  {
    if (a3)
    {
      if (a6)
      {
        sub_13C80(0, &qword_E13E68);
        v10 = a6;
        v11 = a3;
        v12 = sub_ABA790();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s9MusicCore6PlayerC15CommandIssuanceV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0())
  {
    v4 = *(type metadata accessor for Player.CommandIssuance() + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_ABB3C0() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_701DFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 352) = a4;
  *(v5 + 304) = a3;
  *(v5 + 312) = v4;
  *(v5 + 288) = a1;
  *(v5 + 296) = a2;
  return _swift_task_switch(sub_701E24, 0, 0);
}

uint64_t sub_701E24()
{
  v1 = *(v0 + 288);
  v2 = *(v1 + 16);
  v43 = v2;
  if (v2)
  {
    v3 = v1 + 32;
    v4 = &qword_E12EA0;
    do
    {
      sub_E8BA0(v3, v0 + 144);
      sub_E8BA0(v0 + 144, v0 + 248);
      __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E20);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 312);
        v6 = v4;
        v7 = *(v0 + 232);
        v8 = *(v0 + 240);
        __swift_project_boxed_opaque_existential_1((v0 + 208), v7);
        v9 = v7;
        v4 = v6;
        v10 = (*(v8 + 24))(v5, v9, v8);
        __swift_destroy_boxed_opaque_existential_0(v0 + 144);
        __swift_destroy_boxed_opaque_existential_0(v0 + 208);
        if (v10)
        {
          sub_AB9730();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
            v4 = v6;
          }

          sub_AB97F0();
        }
      }

      else
      {
        *(v0 + 240) = 0;
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
        __swift_destroy_boxed_opaque_existential_0(v0 + 144);
        sub_701B2C(v0 + 208);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_29;
  }

  v11 = v43;
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) != v43)
  {
LABEL_35:

    sub_6FC02C();
    swift_allocError();
    v42 = v28;
    if (!v11)
    {
LABEL_50:
      *v42 = _swiftEmptyArrayStorage;
      *(v42 + 40) = 1;
      swift_willThrow();
      v37 = *(v0 + 8);

      return v37();
    }

    v29 = *(v0 + 288) + 32;
    while (1)
    {
      sub_E8BA0(v29, v0 + 144);
      sub_E8BA0(v0 + 144, v0 + 248);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E20);
      if (!swift_dynamicCast())
      {
        break;
      }

      v30 = *(v0 + 312);
      v31 = *(v0 + 232);
      v32 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 208), v31);
      v33 = (*(v32 + 24))(v30, v31, v32);
      __swift_destroy_boxed_opaque_existential_0(v0 + 208);
      if (!v33)
      {
        goto LABEL_42;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 144);
LABEL_39:
      v29 += 40;
      if (!--v43)
      {
        goto LABEL_50;
      }
    }

    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_701B2C(v0 + 208);
LABEL_42:
    sub_70DF8((v0 + 144), v0 + 208);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_503958(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v35 = _swiftEmptyArrayStorage[2];
    v34 = _swiftEmptyArrayStorage[3];
    if (v35 >= v34 >> 1)
    {
      sub_503958((v34 > 1), v35 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v35 + 1;
    sub_70DF8((v0 + 208), &_swiftEmptyArrayStorage[5 * v35 + 4]);
    goto LABEL_39;
  }

  if (v43)
  {
    do
    {
      v12 = 0;
      v39 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
      v40 = v11;
      v41 = kMRMediaRemoteOptionCommandID;
      while (1)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v13 = sub_ABAE20();
        }

        else
        {
          if (v12 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_28;
          }

          v13 = _swiftEmptyArrayStorage[v12 + 4];
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_AB3440();
        if (v43 < 2)
        {
          v16 = 0;
          v17 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 144) = v12;
          v45._countAndFlagsBits = sub_ABB330();
          sub_AB94A0(v45);

          v46._countAndFlagsBits = 93;
          v46._object = 0xE100000000000000;
          sub_AB94A0(v46);
          v16 = 23341;
          v17 = 0xE200000000000000;
        }

        v47._countAndFlagsBits = v16;
        v47._object = v17;
        sub_AB94A0(v47);

        v18 = sub_AB9260();

        if (!v41)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          return _swift_continuation_await(v19);
        }

        v20 = *(v0 + 296);
        [v14 setCommandOptionValue:v18 forKey:v41];

        if (*(v20 + *(type metadata accessor for Player.CommandIssuance() + 20) + 8))
        {
          v19 = sub_AB9260();
          if (!v39)
          {
            goto LABEL_54;
          }

          v21 = v19;
          v22 = v39;
          [v14 setCommandOptionValue:v21 forKey:v22];
        }

        ++v12;
        if (v15 == v40)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v11 = v43;
      if (sub_ABB060() != v43)
      {
        goto LABEL_35;
      }

      v11 = sub_ABB060();
    }

    while (v11);
  }

LABEL_31:
  v23 = *(v0 + 352);
  v24 = *(v0 + 304);
  v25 = objc_allocWithZone(MPCPlayerChangeRequest);
  sub_13C80(0, &qword_E14028);
  isa = sub_AB9740().super.isa;

  v27 = [v25 initWithCommandRequests:isa];
  *(v0 + 320) = v27;

  [v27 setOptions:v24];
  if (v23 != 1)
  {
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_702914;
    v36 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135A0);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_5C75AC;
    *(v0 + 168) = &block_descriptor_133_1;
    *(v0 + 176) = v36;
    [v27 performWithCompletion:v0 + 144];
    v19 = v0 + 16;

    return _swift_continuation_await(v19);
  }

  return _swift_task_switch(sub_7025D8, 0, 0);
}

uint64_t sub_7025D8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 10;
  v5 = v0 + 26;
  v6 = v0[40];
  v1[10] = v2;
  v1[15] = v5;
  v1[11] = sub_702720;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[22] = sub_703508;
  v1[23] = v8;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_7019E8;
  v1[21] = &block_descriptor_138;
  v9 = _Block_copy(v3);

  [v6 performWithExtendedStatusCompletion:v9];
  _Block_release(v9);

  return _swift_continuation_await(v4);
}

uint64_t sub_702720()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 328) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_7028B0;
  }

  else
  {
    *(v1 + 336) = *(v1 + 208);
    v3 = sub_702844;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_702844()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_7028B0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_702914()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_702A90;
  }

  else
  {
    v2 = sub_702A24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_702A24()
{
  v1 = *(v0 + 8);

  return v1(_swiftEmptyArrayStorage);
}

uint64_t sub_702A90()
{
  v1 = *(v0 + 320);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t block_copy_helper_196(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_702B20()
{
  result = qword_E13F20;
  if (!qword_E13F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13F20);
  }

  return result;
}

unint64_t sub_702BA8()
{
  result = qword_E13F38;
  if (!qword_E13F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13F38);
  }

  return result;
}

unint64_t sub_702C30()
{
  result = qword_E13F50;
  if (!qword_E13F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13F50);
  }

  return result;
}

unint64_t sub_702C88()
{
  result = qword_E13F58;
  if (!qword_E13F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13F58);
  }

  return result;
}

unint64_t sub_702D10()
{
  result = qword_E13F70;
  if (!qword_E13F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13F70);
  }

  return result;
}

unint64_t sub_702D98()
{
  result = qword_E13F88;
  if (!qword_E13F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13F88);
  }

  return result;
}

unint64_t sub_702DF0()
{
  result = qword_E13F90;
  if (!qword_E13F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13F90);
  }

  return result;
}

uint64_t sub_702E54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_702EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_702F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_703008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB3470();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_7030C4()
{
  sub_AB3470();
  if (v0 <= 0x3F)
  {
    sub_5D0388();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_703158(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7031B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_703260(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7032F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_703338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s13VocalsCommandOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13VocalsCommandOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_703440(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_70345C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore6PlayerC12CommandErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t SampleReceiver.waveforms()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14048);
  __chkstk_darwin(v0);
  *(&v4 - v1) = 1;
  (*(v2 + 104))(&v4 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14050);
  return sub_AB99D0();
}

uint64_t sub_703678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_703F6C();
  v10 = sub_AB9990();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v9;
  (*(v3 + 32))(&v12[v11], v5, v2);
  sub_5E89D8(0, 0, v8, &unk_B23940, v12);
}

uint64_t sub_70386C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E144C0);
  v5[7] = swift_task_alloc();
  v7 = sub_AB3470();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_70397C, a4, 0);
}

uint64_t sub_70397C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v7 = *(v4 + 16);
  v0[13] = v7;
  v0[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0);
  v0[15] = v8;
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v6, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  swift_beginAccess();
  sub_6A99EC(v5, v2);
  swift_endAccess();
  sub_7043D4();

  return _swift_task_switch(sub_703AEC, 0, 0);
}

uint64_t sub_703AEC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  (*(v0 + 104))(v2, v1, v3);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v4 + 32))(v7 + v6, v2, v3);

  sub_AB99A0();
  (*(v4 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_703C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3470();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_AB9990();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_5E89D8(0, 0, v10, &unk_B23958, v13);
}

uint64_t sub_703E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E144C0);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_703EB0, a4, 0);
}

uint64_t sub_703EB0()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();
  sub_6F9310(v2, v1);
  sub_12E1C(v1, &unk_E144C0);
  swift_endAccess();
  sub_7043D4();

  v3 = v0[1];

  return v3();
}

void *sub_703F6C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = sub_704C38();
    v3 = *(sub_704BBC() + 104);

    type metadata accessor for SampleReceiver.ContinuationStorage();
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    v1[16] = _swiftEmptyDictionarySingleton;
    v1[17] = 0;
    v1[14] = v2;
    v1[15] = v3;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_704004(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E14498);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_704144, v1, 0);
}

uint64_t sub_704144()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  swift_beginAccess();
  v26 = v3;
  v4 = *(v3 + 128);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;
  v27 = v1;
  v28 = v4;
  v24 = (v2 + 8);
  v25 = (v1 + 8);

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[11];
      (*(v27 + 16))(v13, *(v28 + 56) + *(v27 + 72) * (__clz(__rbit64(v8)) | (v12 << 6)), v15);
      (*(v27 + 32))(v14, v13, v15);
      v16 = *(v26 + 136);
      if (!v16)
      {
        (*v25)(v0[13], v0[11]);
        goto LABEL_13;
      }

      v17 = v16;
      v18 = [v17 isEnabled];
      v19 = v0[13];
      v20 = v0[11];
      if ((v18 & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v21 = v0[10];
      v22 = v0[8];
      v0[5] = v0[6];

      sub_AB99B0();

      (*v24)(v21, v22);
      result = (*v25)(v19, v20);
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    (*v25)(v0[13], v0[11]);

LABEL_14:

    v23 = v0[1];

    return v23();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_7043D4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0[16] + 16);
  if (qword_E0CED0 != -1)
  {
    swift_once();
  }

  v3 = sub_AB4BC0();
  __swift_project_value_buffer(v3, qword_E14030);

  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1[16] + 16);

    _os_log_impl(&dword_0, v4, v5, "SampleReceiver continuation count %ld", v6, 0xCu);

    v7 = v1[17];
    if (v2)
    {
LABEL_5:
      if (v7)
      {
        v8 = v7;
        v9 = v7;
      }

      else
      {
        v14 = [objc_allocWithZone(NSNumber) initWithInteger:v1[15]];
        v9 = [objc_allocWithZone(MPCProcessAudioTap) initWithRefreshRate:v14 delegate:v1[14]];

        v8 = 0;
        v7 = v1[17];
      }

      v1[17] = v9;
      v13 = v9;
      v15 = v8;
      sub_7046E0(v7);

      [v13 setEnabled:1];
      [v13 start];
      v16 = sub_AB4BA0();
      v17 = sub_AB9F50();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v16, v17, "SampleReceiver audio tap active", v18, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {

    v7 = v1[17];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  [v7 stop];
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "SampleReceiver audio tap inactive", v12, 2u);
  }

  v13 = v1[17];
  v1[17] = 0;
  sub_7046E0(v13);
LABEL_15:
}

void sub_7046E0(void *a1)
{
  v3 = *(v1 + 136);
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_11;
  }

  if (a1)
  {
    v4 = v1;
    sub_7063F0();
    v5 = v3;
    v6 = a1;
    v7 = sub_ABA790();

    if (v7)
    {
      return;
    }

    v3 = *(v4 + 136);
    if (!v3)
    {
LABEL_11:
      v17 = qword_E0CED0;
      v18 = v6;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = sub_AB4BC0();
      __swift_project_value_buffer(v19, qword_E14030);
      v11 = v18;
      oslog = sub_AB4BA0();
      v12 = sub_AB9F50();

      if (!os_log_type_enabled(oslog, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = a1;
      v15 = v11;
      v16 = "Audio tap destroyed: %@";
      goto LABEL_15;
    }
  }

  v8 = qword_E0CED0;
  v9 = v3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E14030);
  v11 = v9;
  oslog = sub_AB4BA0();
  v12 = sub_AB9F50();

  if (!os_log_type_enabled(oslog, v12))
  {
    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 138412290;
  *(v13 + 4) = v11;
  *v14 = v3;
  v15 = v11;
  v16 = "Audio tap created: %@";
LABEL_15:
  _os_log_impl(&dword_0, oslog, v12, v16, v13, 0xCu);
  sub_12E1C(v14, &qword_E0F560);

  v11 = oslog;
  oslog = v15;
LABEL_16:
}

uint64_t sub_70498C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_7049D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_7049F4, 0, 0);
}

uint64_t sub_7049F4()
{
  v0[4] = sub_703F6C();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_704A98;
  v2 = v0[3];

  return sub_704004(v2);
}

uint64_t sub_704A98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_704BBC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    type metadata accessor for SampleReceiver.SampleTransformer();
    v1 = swift_allocObject();
    sub_7052DC(48000, 15);
    *(v2 + 24) = v1;
  }

  return v1;
}

id sub_704C38()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = type metadata accessor for SampleReceiver.TapDelegate();
    v4 = objc_allocWithZone(v3);
    swift_weakInit();
    swift_weakAssign();
    v9.receiver = v4;
    v9.super_class = v3;
    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 32);
    *(v0 + 32) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_704CD8(float *a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v3)
    {
      v33 = result;
      v9 = sub_704BBC();
      swift_beginAccess();
      v10 = *(v9 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 24) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_528620(v10);
        *(v9 + 24) = v10;
      }

      swift_beginAccess();
      v12 = *(v9 + 32);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 32) = v12;
      if ((v13 & 1) == 0)
      {
        v12 = sub_528620(v12);
        *(v9 + 32) = v12;
      }

      swift_beginAccess();
      v14 = *(v9 + 40);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 40) = v14;
      if ((v15 & 1) == 0)
      {
        v14 = sub_528620(v14);
        *(v9 + 40) = v14;
      }

      swift_beginAccess();
      v16 = *(v9 + 48);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 48) = v16;
      if ((v17 & 1) == 0)
      {
        v16 = sub_528620(v16);
        *(v9 + 48) = v16;
      }

      v18 = *(v9 + 72);
      __Z.realp = (v10 + 32);
      __Z.imagp = (v12 + 32);
      if (v18 >= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v18;
      }

      v35.realp = (v14 + 32);
      v35.imagp = (v16 + 32);
      if (v18 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v18)
        {
          v19 = sub_AB97D0();
          v19[2] = v18;
        }

        else
        {
          v19 = _swiftEmptyArrayStorage;
        }

        __B = 0;
        v37[0] = v19 + 4;
        v37[1] = v18;
        v20 = a1;
        a1 = 0;
        sub_705738(v37, &__B, v20, v3, v9);
        if (v18 >= __B)
        {
          v19[2] = __B;
          v3 = *(v9 + 80);
          swift_beginAccess();
          sub_7057D8(v19, v3, (v9 + 16));
          swift_endAccess();

          v21 = *(v9 + 16);
          v22 = *(v21 + 16);
          if (!(v22 >> 61))
          {
            v32 = v10;
            if (v22 >= 2)
            {
              v24 = v22 >> 1;
              v23 = sub_73474C(v22 >> 1, 0);
              memcpy(&v23[4], (v21 + 32), 8 * v24);
            }

            else
            {
              v23 = _swiftEmptyArrayStorage;
            }

            v25 = v23[2];

            vDSP_ctoz(v23 + 4, 2, &__Z, 1, v25);

            sub_AB29A0();

            v26 = sub_705C48(v18, v9, &v35);

            v37[0] = v26;

            sub_705878(v27, v37);

            v2 = *(v9 + 64);
            a1 = v37[0];
            v3 = *(v37[0] + 2);

            v28 = a1;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          v28 = sub_528620(a1);
LABEL_27:
          LODWORD(__B) = v2;
          vDSP_vsmul(a1 + 8, 1, &__B, v28 + 8, 1, v3);

          *(v9 + 48) = v16;
          swift_endAccess();
          *(v9 + 40) = v14;
          swift_endAccess();
          *(v9 + 32) = v12;
          swift_endAccess();
          *(v9 + 24) = v32;
          swift_endAccess();

          v29 = sub_AB9990();
          (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
          v30 = swift_allocObject();
          v30[2] = 0;
          v30[3] = 0;
          v30[4] = v33;
          v30[5] = v28;
          sub_5E89D8(0, 0, v7, &unk_B23910, v30);
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  return result;
}

id sub_705298()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleReceiver.TapDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7052DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB29B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB2980();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v14 = log2f(ceilf(a1 / a2));
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v14 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= 1.8447e19)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 >= 0x40)
  {
    v15 = 0;
  }

  else
  {
    v15 = (1 << v14) / 2;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v33 = v7;
  if (v15)
  {
    v16 = sub_AB97D0();
    v32 = v6;
    v17 = v9;
    v18 = v16;
    *(v16 + 16) = v15;
    bzero((v16 + 32), 4 * v15);
    *(v3 + 16) = v18;
    v19 = sub_AB97D0();
    *(v19 + 16) = v15;
    bzero((v19 + 32), 4 * v15);
    *(v3 + 24) = v19;
    v20 = sub_AB97D0();
    *(v20 + 16) = v15;
    bzero((v20 + 32), 4 * v15);
    *(v3 + 32) = v20;
    v21 = sub_AB97D0();
    *(v21 + 16) = v15;
    bzero((v21 + 32), 4 * v15);
    *(v3 + 40) = v21;
    v22 = sub_AB97D0();
    *(v22 + 16) = v15;
    bzero((v22 + 32), 4 * v15);
    *(v3 + 48) = v22;
    v9 = v17;
    v6 = v32;
    v23 = sub_AB97D0();
    v23[2] = v15;
    bzero(v23 + 4, 4 * v15);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
    *(v3 + 16) = _swiftEmptyArrayStorage;
    *(v3 + 24) = _swiftEmptyArrayStorage;
    *(v3 + 32) = _swiftEmptyArrayStorage;
    *(v3 + 40) = _swiftEmptyArrayStorage;
    *(v3 + 48) = _swiftEmptyArrayStorage;
  }

  *(v3 + 56) = v23;
  *(v3 + 64) = 2.0 / v15;
  v24 = (*(v11 + 104))(v13, enum case for vDSP.WindowSequence.hanningDenormalized(_:), v10);
  if (!v15)
  {
    goto LABEL_18;
  }

  __chkstk_darwin(v24);
  *(&v31 - 4) = v13;
  *(&v31 - 24) = 0;
  v29 = v15;
  v25 = sub_705B48(v15, sub_705E2C);
  v26 = sub_68E4B4(v25);

  (*(v11 + 8))(v13, v10);
  *(v3 + 72) = v15;
  *(v3 + 80) = v26;
  (*(v33 + 104))(v9, enum case for vDSP.Radix.radix2(_:), v6);
  type metadata accessor for DSPSplitComplex(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E144A8);
  swift_allocObject();
  v27 = sub_AB2990();
  if (v27)
  {
    *(v3 + 88) = v27;
    return v3;
  }

LABEL_19:
  v30 = 0;
  v29 = 177;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void sub_705738(void **a1, void *a2, void *__src, char *a4, uint64_t a5)
{
  v7 = 0;
  v8 = *a1;
  if (a4)
  {
    v9 = a1[1];
    if (v9)
    {
      if (v9 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = a1[1];
      }

      memcpy(*a1, __src, 4 * v7);
    }
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = *(a5 + 72);
  v11 = __OFSUB__(v10, v7);
  v12 = v10 - v7;
  if (v11)
  {
    __break(1u);
  }

  else if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12)
    {
      bzero(&v8[4 * v7], 4 * v12);
    }

LABEL_12:
    *a2 = *(a5 + 72);
    return;
  }

  __break(1u);
}

void sub_7057D8(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *a3;
  v7 = *(*a3 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2;
  if (*(a2 + 16) != v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3;
  v5 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v6 = sub_528620(v6);
  }

  vDSP_vmul((v5 + 32), 1, (v4 + 32), 1, v6 + 8, 1, v7);
  *v3 = v6;
}

void sub_705878(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  if (v4 != *(*a2 + 2))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 >> 31)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = a2;
  v3 = a1;
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v5 = sub_528620(v5);
  }

  vvsqrtf(v5 + 8, (v3 + 32), &v6);
  *v2 = v5;
}

uint64_t sub_705930()
{

  return v0;
}

uint64_t sub_705988()
{
  sub_705930();

  return swift_deallocClassInstance();
}

uint64_t SampleReceiver.deinit()
{

  return v0;
}

uint64_t SampleReceiver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_705AC4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E14030);
  __swift_project_value_buffer(v0, qword_E14030);
  return sub_AB4BB0();
}

uint64_t sub_705B48(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_AB97D0();
    v5[2] = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5 + 4;
  v8 = 0;
  v7[0] = v5 + 4;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        v5[2] = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      v5[2] = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

float *sub_705C48(int64_t a1, uint64_t a2, DSPSplitComplex *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1)
  {
    v6 = sub_AB97D0();
    *(v6 + 2) = a1;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = *(a2 + 72);
  v9 = *a3;
  vDSP_zvmags(&v9, 1, v6 + 8, 1, a1);
  if (v7 > a1)
  {
LABEL_8:
    __break(1u);
  }

  *(v6 + 2) = v7;
  return v6;
}

uint64_t sub_705D24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_705D6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_7049D4(a1, v4, v5, v7, v6);
}

uint64_t sub_705E2C(uint64_t a1, void *a2)
{
  v4 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E144B0);
  sub_705EB4();
  result = sub_AB2970();
  *a2 = v4;
  return result;
}

unint64_t sub_705EB4()
{
  result = qword_E144B8;
  if (!qword_E144B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E144B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E144B8);
  }

  return result;
}

uint64_t sub_705F18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_705FF0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_70386C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_7060F4()
{
  v1 = sub_AB3470();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_7061B8(uint64_t a1)
{
  v3 = *(sub_AB3470() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_703C30(a1, v4, v5);
}

uint64_t sub_70622C()
{
  v1 = sub_AB3470();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_7062F8(uint64_t a1)
{
  v4 = *(sub_AB3470() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_703E10(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_7063F0()
{
  result = qword_E144D0;
  if (!qword_E144D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E144D0);
  }

  return result;
}

uint64_t SequentialVocalCommandsFilter.__allocating_init(playbackController:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 124) = 0;
  *(v2 + 120) = 0;
  *(v2 + 126) = 1;
  *(v2 + 132) = 0;
  *(v2 + 128) = 0;
  *(v2 + 134) = 1;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t SequentialVocalCommandsFilter.init(playbackController:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 124) = 0;
  *(v1 + 120) = 0;
  *(v1 + 126) = 1;
  *(v1 + 132) = 0;
  *(v1 + 128) = 0;
  *(v1 + 134) = 1;
  *(v1 + 112) = a1;
  return v1;
}

void SequentialVocalCommandsFilter.append(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_E0CED8 != -1)
  {
    swift_once();
  }

  v4 = a1 & 0xFFFFFFFFFFLL;
  v5 = a1 & 0x10000000000;
  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, qword_E144E0);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45[0] = v10;
    *v9 = 136446210;
    LOBYTE(v44) = v5 != 0;
    v11 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
    v13 = sub_500C84(v11, v12, v45);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "↪️ Queuing %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);

    v4 = a1 & 0xFFFFFFFFFFLL;
    v5 = a1 & 0x10000000000;
  }

  if (*(v1 + 134))
  {
    goto LABEL_6;
  }

  v22 = *(v1 + 128) | (*(v1 + 132) << 32);
  if (v5)
  {
    if ((v22 & 0x10000000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v22 & 0x10000000000) == 0)
  {
    if ((v4 & 0x100000000) != 0)
    {
      if ((v22 & 0x100000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((v22 & 0x100000000) != 0 || *&a1 != *(v1 + 128))
    {
      goto LABEL_6;
    }

LABEL_14:
    oslog = sub_AB4BA0();
    v23 = sub_AB9F50();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136446210;
      LOBYTE(v44) = v5 != 0;
      v26 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
      v28 = sub_500C84(v26, v27, v45);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, oslog, v23, "↪️❌ Ignored %{public}s; already executing.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
    }

    return;
  }

LABEL_6:
  swift_beginAccess();
  if ((*(v1 + 126) & 1) == 0)
  {
    v14 = *(v1 + 120) | (*(v1 + 124) << 32);
    if ((v14 & 0x10000000000) != 0)
    {
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else if (!v5)
    {
      if ((v14 & 0x100000000) != 0)
      {
        if ((v4 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v4 & 0x100000000) == 0 && *(v1 + 120) == *&a1)
      {
LABEL_9:
        v15 = sub_AB4BA0();
        v16 = sub_AB9F50();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v44 = v18;
          *v17 = 136446210;
          v19 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
          v21 = sub_500C84(v19, v20, &v44);

          *(v17 + 4) = v21;
          _os_log_impl(&dword_0, v15, v16, "↪️❌ Ignored %{public}s; Already enqueued.", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
        }

        return;
      }
    }

    v29 = sub_AB4BA0();
    v30 = sub_AB9F50();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136446210;
      v33 = Player.VocalsCommand.description.getter(v14 & 0xFFFFFFFFFFLL | (((v14 >> 40) & 1) << 40));
      v35 = sub_500C84(v33, v34, &v44);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v29, v30, "↪️🫳 Dropping queued command %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }

  v36 = sub_AB4BA0();
  v37 = sub_AB9F50();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v38 = 136446210;
    v40 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
    v42 = sub_500C84(v40, v41, &v44);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v36, v37, "↪️✅ Queued %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  *(v2 + 120) = a1 | v5;
  *(v2 + 124) = (a1 & 0xFFFFFFFFFFLL | v5) >> 32;
  *(v2 + 126) = 0;
  sub_706DCC();
}

uint64_t sub_706B0C(unint64_t a1)
{
  if ((*(v1 + 134) & 1) == 0)
  {
    v12 = *(v1 + 128) | (*(v1 + 132) << 32);
    v13 = swift_beginAccess();
    if ((*(v1 + 126) & 1) == 0)
    {
      v14 = *(v1 + 120) | (*(v1 + 124) << 32);
      if ((v12 & 0x10000000000) == 0)
      {
        if ((v14 & 0x10000000000) != 0)
        {
          goto LABEL_17;
        }

        if ((v12 & 0x100000000) != 0)
        {
          if ((v14 & 0x100000000) == 0)
          {
            goto LABEL_17;
          }
        }

        else if ((v14 & 0x100000000) != 0 || *&v12 != *(v1 + 120))
        {
          goto LABEL_17;
        }

        goto LABEL_10;
      }

      if ((v14 & 0x10000000000) != 0)
      {
LABEL_10:
        *(v1 + 124) = 0;
        *(v1 + 120) = 0;
        *(v1 + 126) = 1;
        sub_706DCC(v13);
      }
    }

LABEL_17:
    if (qword_E0CED8 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, qword_E144E0);
    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v16 = Player.VocalsCommand.description.getter(v12 & 0xFFFFFFFFFFLL | (((v12 >> 40) & 1) << 40));
    v18 = sub_500C84(v16, v17, &v20);

    *(v6 + 4) = v18;
    v11 = "▶️ Executing %{public}s";
    goto LABEL_21;
  }

  if ((a1 & 0x1000000000000) == 0)
  {
    if (qword_E0CED8 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E144E0);
    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136446210;
    v8 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | (((a1 >> 40) & 1) << 40));
    v10 = sub_500C84(v8, v9, v21);

    *(v6 + 4) = v10;
    v11 = "✅ Finished executing %{public}s";
LABEL_21:
    _os_log_impl(&dword_0, v4, v5, v11, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);

LABEL_22:
  }

  return sub_706DCC(a1);
}

uint64_t sub_706DCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  if (*(v0 + 134) == 1)
  {
    result = swift_beginAccess();
    if ((*(v0 + 126) & 1) == 0)
    {
      v6 = *(v0 + 120) | (*(v0 + 124) << 32);
      v7 = v6 & 0xFFFFFFFFFFLL;
      if (qword_E0CED8 != -1)
      {
        swift_once();
      }

      v8 = sub_AB4BC0();
      __swift_project_value_buffer(v8, qword_E144E0);
      v9 = sub_AB4BA0();
      v10 = sub_AB9F50();
      v11 = (v6 >> 40) & 1;
      if (os_log_type_enabled(v9, v10))
      {
        v12 = swift_slowAlloc();
        v23 = v6 & 0xFFFFFFFFFFLL;
        v13 = v12;
        v14 = swift_slowAlloc();
        v24 = v14;
        *v13 = 136446210;
        v15 = Player.VocalsCommand.description.getter(v6 & 0xFFFFFFFFFFLL | (v11 << 40));
        v17 = sub_500C84(v15, v16, &v24);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_0, v9, v10, "↪️ Dequeuing %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);

        v7 = v23;
      }

      v18 = *(v1 + 128) | (*(v1 + 132) << 32);
      v19 = *(v1 + 134);
      *(v1 + 128) = v6;
      *(v1 + 132) = WORD2(v6) & 0x1FF;
      *(v1 + 134) = 0;
      LOBYTE(v24) = v19;
      sub_706B0C(v18 | (v19 << 48));
      v20 = sub_AB9990();
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
      v21 = sub_707944();
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      *(v22 + 24) = v21;
      *(v22 + 32) = v1;
      *(v22 + 44) = BYTE4(v7);
      *(v22 + 40) = v7;
      *(v22 + 45) = v11;
      swift_retain_n();
      sub_5E89D8(0, 0, v5, &unk_B239E0, v22);
    }
  }

  return result;
}

uint64_t sub_7070A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return _swift_task_switch(sub_7070C0, a4, 0);
}

uint64_t sub_7070C0()
{
  v1 = *(v0 + 104);
  *(v0 + 112) = *(*(v0 + 96) + 112);
  *(v0 + 40) = &type metadata for Player.VocalsCommand;
  *(v0 + 48) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 16) = v1;
  *(v0 + 20) = BYTE4(v1);
  *(v0 + 21) = BYTE5(v1) & 1;
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = 0x726564696C534156;
  *(v0 + 64) = 0xE800000000000000;
  *(v0 + 120) = sub_AB9940();
  *(v0 + 128) = sub_AB9930();
  v3 = sub_AB98B0();
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;

  return _swift_task_switch(sub_7071B8, v3, v2);
}

uint64_t sub_7071B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70);
  v1 = swift_allocObject();
  v0[19] = v1;
  *(v1 + 16) = xmmword_AF4EC0;
  sub_E8BA0((v0 + 2), v1 + 32);
  v0[20] = sub_AB9930();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_7072AC;

  return sub_6CD6E0(v1, 0x10000, 1, 0, 0, (v0 + 7));
}

uint64_t sub_7072AC(uint64_t a1)
{
  *(*v2 + 176) = a1;

  if (v1)
  {

    v3 = sub_AB98B0();
    v5 = v4;
    v6 = sub_707588;
  }

  else
  {
    v3 = sub_AB98B0();
    v5 = v7;
    v6 = sub_707434;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_707434()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_7074A0, v1, v2);
}

uint64_t sub_7074A0()
{
  v1 = *(v0 + 176);

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!sub_ABB060())
      {
        goto LABEL_9;
      }
    }

    sub_ABAE20();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  v2 = *(v0 + 96);
  sub_707AB4(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return _swift_task_switch(sub_7076F8, v2, 0);
}

uint64_t sub_707588()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_7075EC, v1, v2);
}

uint64_t sub_7075EC()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_707658, v1, 0);
}

uint64_t sub_707658()
{
  sub_707AB4(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 96);
  v2 = *(v1 + 128) | (*(v1 + 132) << 32);
  v3 = *(v1 + 134);
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 134) = 1;
  sub_706B0C(v2 | (v3 << 48));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_7076F8()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 128) | (*(v1 + 132) << 32);
  v3 = *(v1 + 134);
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 134) = 1;
  sub_706B0C(v2 | (v3 << 48));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t SequentialVocalCommandsFilter.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_7077E8()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E144E0);
  __swift_project_value_buffer(v0, qword_E144E0);
  return sub_AB4BB0();
}

uint64_t sub_707868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 120);
  v6 = *(v3 + 126);
  *(a2 + 4) = *(v3 + 124);
  *a2 = v5;
  *(a2 + 6) = v6;
  return result;
}

uint64_t sub_7078C0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 6);
  v5 = *a2;
  swift_beginAccess();
  *(v5 + 124) = v3;
  *(v5 + 120) = v2;
  *(v5 + 126) = v4;
  return sub_706DCC();
}

unint64_t sub_707944()
{
  result = qword_E145F0;
  if (!qword_E145F0)
  {
    type metadata accessor for SequentialVocalCommandsFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E145F0);
  }

  return result;
}

uint64_t sub_707998()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_7079D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32) | (*(v1 + 45) << 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_7070A0(a1, v4, v5, v6, v7);
}

uint64_t sub_707AB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()
{
  if (qword_E0CEE0 != -1)
  {
    swift_once();
  }

  return &static PlaylistCovers.ArtworkDataSource.shared;
}

__n128 PlaylistCovers.Recipe.init(_:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_709FA0(a1, a2);
  v7 = v6;
  sub_AB2AD0();
  swift_allocObject();
  sub_AB2AC0();
  sub_70B7DC();
  sub_AB2AB0();

  sub_466B8(v5, v7);
  if (!v3)
  {
    *(a3 + 64) = v13;
    *(a3 + 80) = v14;
    *(a3 + 96) = v15;
    *a3 = v9;
    *(a3 + 16) = v10;
    result = v12;
    *(a3 + 32) = v11;
    *(a3 + 48) = v12;
  }

  return result;
}

void PlaylistCovers.Recipe.asCoverRepresentation(_:)(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3 == 3157553 && v3[1] == 0xE300000000000000;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[8];
    v12 = v3[9];
    v13 = v3[10];
    v14 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v3[3], v3[4]);
    if (!v14)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_14;
    }

    v15 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v8, v9);
    if (!v15)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      goto LABEL_16;
    }

    v16 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v10, v11);
    if (!v16)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_17;
    }

    v17 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v12, v13);
    if (!v17)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_18;
    }

    v18 = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(v3[2]);
    if (v18 != 8)
    {
      v22 = v18;
      sub_70B830();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = v14;
      v27 = v15;
      v24 = v16;
      v28 = v17;
      v25 = [ObjCClassFromMetadata preferredFormat];
      v20 = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v29, v27, v24, v28, v25, v22, a2, a3);
      v21 = v26;

      v19 = v22;
      goto LABEL_19;
    }
  }

  v19 = 0;
  v20 = 0;
  v14 = 0;
LABEL_14:
  v15 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v17 = 0;
LABEL_18:
  v21 = 0;
LABEL_19:
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v21;
}

id PlaylistCovers.ArtworkToken.__allocating_init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a1 + 32);
  *(v8 + 6) = *(a1 + 48);
  v10 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v10 = a2;
  *(v10 + 1) = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, "init");
}

id PlaylistCovers.ArtworkToken.init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v6 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v6 = a2;
  *(v6 + 1) = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for PlaylistCovers.ArtworkToken();
  return objc_msgSendSuper2(&v8, "init");
}

id PlaylistCovers.ArtworkToken.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v3 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8);
  v4 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v5 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24);
  v6 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v7 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40);
  v8 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  v10 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v9 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);
  v11 = type metadata accessor for PlaylistCovers.ArtworkToken();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  *v13 = v2;
  *(v13 + 1) = v3;
  *(v13 + 2) = v4;
  *(v13 + 3) = v5;
  *(v13 + 4) = v6;
  *(v13 + 5) = v7;
  *(v13 + 6) = v8;
  v14 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v14 = v10;
  *(v14 + 1) = v9;
  v23.receiver = v12;
  v23.super_class = v11;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  result = objc_msgSendSuper2(&v23, "init");
  a1[3] = v11;
  *a1 = result;
  return result;
}

Swift::String_optional __swiftcall PlaylistCovers.ArtworkToken.stringRepresentation()()
{
  v1 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v14[0] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v14[1] = v1;
  v14[2] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v15 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  sub_70B8A0(v14, &v12);
  v2 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v4 = v3;
  sub_70B8FC(v14);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_ABAD90(19);

  v12 = 0xD000000000000011;
  v13 = 0x8000000000B71620;
  v5 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v6 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);

  v16._countAndFlagsBits = v5;
  v16._object = v6;
  sub_AB94A0(v16);

  v7 = v12;
  v8 = v13;
  v12 = v2;
  v13 = v4;

  v17._countAndFlagsBits = v7;
  v17._object = v8;
  sub_AB94A0(v17);

  v9 = v12;
  v10 = v13;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

id sub_708368()
{
  result = [objc_allocWithZone(type metadata accessor for PlaylistCovers.ArtworkDataSource()) init];
  static PlaylistCovers.ArtworkDataSource.shared = result;
  return result;
}

id static PlaylistCovers.ArtworkDataSource.shared.getter()
{
  if (qword_E0CEE0 != -1)
  {
    swift_once();
  }

  v1 = static PlaylistCovers.ArtworkDataSource.shared;

  return v1;
}

id PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(void *a1)
{
  v3 = [a1 token];
  sub_ABAB50();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    [a1 fittingSize];
    v4 = sub_70B950(v8);
    if (v4)
    {
      v5 = v4;
      v6 = [*(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) objectForKey:v4];

      return v6;
    }
  }

  return 0;
}

uint64_t PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_AB35C0();
  v2[27] = swift_task_alloc();
  v3 = sub_AB9250();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_708640, 0, 0);
}

uint64_t sub_708640()
{
  v1 = [*(v0 + 200) token];
  sub_ABAB50();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (!swift_dynamicCast())
  {
    v10 = *(v0 + 200);
    sub_ABAD90(58);
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    v71._countAndFlagsBits = 0x206E656B6F54;
    v71._object = 0xE600000000000000;
    sub_AB94A0(v71);
    v11 = [v10 token];
    sub_ABAB50();
    swift_unknownObjectRelease();
    sub_ABAF70();
    __swift_destroy_boxed_opaque_existential_0(v0 + 144);
    v72._object = 0x8000000000B71660;
    v72._countAndFlagsBits = 0xD000000000000032;
    sub_AB94A0(v72);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    sub_70BB30();
    swift_allocError();
    *v14 = v12;
    v14[1] = v13;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 192);
  [v2 fittingSize];
  v5 = v4;
  v7 = v6;
  v8 = PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(v2);
  if (v8)
  {
    v9 = v8;
LABEL_4:

    goto LABEL_28;
  }

  aBlock = (v0 + 16);
  v69 = v3;
  v17 = *(v0 + 200);
  v18 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8];
  v19 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16];
  v20 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24];
  v21 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32];
  v23 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40];
  v22 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48];
  sub_70B830();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = v18;
  v63 = v19;
  v64 = v20;
  v65 = v21;
  v66 = v23;
  v25 = v22;
  v26 = [ObjCClassFromMetadata preferredFormat];
  [v17 destinationScale];
  [v26 setScale:?];
  [v17 fittingSize];
  v28 = v27;
  v30 = v29;
  v32 = *&v69[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  v31 = *&v69[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8];

  v33 = String.trim()();

  v34 = (v33._object >> 56) & 0xF;
  if ((v33._object & 0x2000000000000000) == 0)
  {
    v34 = v33._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    goto LABEL_13;
  }

  v36 = *(v0 + 240);
  v35 = *(v0 + 248);
  v38 = *(v0 + 224);
  v37 = *(v0 + 232);

  sub_AB91E0();
  (*(v37 + 16))(v36, v35, v38);
  if (qword_E0CB80 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v39 = *(v0 + 248);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = qword_E71B20;
    sub_AB3550();
    v32 = sub_AB9320();
    v31 = v43;
    (*(v40 + 8))(v39, v41);
LABEL_13:

    v44 = sub_AB9260();

    v45 = [v44 _containsEmoji];

    v46 = 270.0;
    if (v28 > 270.0)
    {
      v46 = v28;
    }

    if (v45)
    {
      v47 = v46;
    }

    else
    {
      v47 = v28;
    }

    if (v45)
    {
      v48 = v46;
    }

    else
    {
      v48 = v30;
    }

    v49 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v26 format:{v47, v48}];
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    *(v50 + 24) = v48;
    *(v50 + 32) = v67;
    *(v50 + 40) = v26;
    *(v50 + 48) = v32;
    *(v50 + 56) = v31;
    *(v50 + 64) = v25;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_70BBD4;
    *(v51 + 24) = v50;
    *(v0 + 48) = sub_3F328C;
    *(v0 + 56) = v51;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_41A314;
    *(v0 + 40) = &block_descriptor_197;
    v52 = _Block_copy(aBlock);
    v67 = v67;
    aBlock = v26;
    v26 = v25;

    v53 = v49;
    v25 = [v49 imageWithActions:v52];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      __break(1u);
      goto LABEL_33;
    }

    v73.width = v47;
    v73.height = v48;
    v74.width = v28;
    v74.height = v30;
    if (CGSizeEqualToSize(v73, v74))
    {

      goto LABEL_26;
    }

    v62 = v26;
    v54 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:aBlock format:{v28, v30}];
    v55 = swift_allocObject();
    *(v55 + 16) = v25;
    *(v55 + 24) = v28;
    *(v55 + 32) = v30;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_70BC48;
    *(v56 + 24) = v55;
    *(v0 + 96) = sub_445458;
    *(v0 + 104) = v56;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_41A314;
    *(v0 + 88) = &block_descriptor_13_5;
    v57 = _Block_copy((v0 + 64));
    v26 = *(v0 + 104);
    v58 = v25;

    v25 = [v54 imageWithActions:v57];

    _Block_release(v57);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

    if ((v58 & 1) == 0)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v26 = v62;
LABEL_26:
  v3 = v69;
  v9 = [objc_opt_self() representationForVisualIdentity:v69 withSize:v25 image:{v5, v7}];
  v59 = sub_70B950(v69);
  if (!v59)
  {

    goto LABEL_4;
  }

  v60 = v59;
  [*(*(v0 + 208) + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) setObject:v9 forKey:v59];

LABEL_28:

  v61 = *(v0 + 8);

  return v61(v9);
}

uint64_t sub_709088(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_70914C;

  return PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(v6);
}

uint64_t sub_70914C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_AB3040();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t PlaylistCovers.ArtworkDataSource.visualIdenticalityIdentifier(for:)(void *a1)
{
  v1 = [a1 token];
  sub_ABAB50();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id PlaylistCovers.ArtworkDataSource.init()()
{
  v1 = OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache;
  *&v0[v1] = [objc_allocWithZone(NSCache) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlaylistCovers.ArtworkDataSource();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_709500(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t SharedListening.Reaction.senderID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SharedListening.Reaction.senderID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_7095E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_70BD3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_709608(uint64_t a1)
{
  v2 = sub_70BCE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_709644(uint64_t a1)
{
  v2 = sub_70BCE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.HexColors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14630);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_70BCE8();
  sub_ABB690();
  v8[15] = 0;
  sub_ABB240();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_ABB240();
  v8[13] = 2;
  sub_ABB240();
  v8[12] = 3;
  sub_ABB240();
  return (*(v4 + 8))(v6, v3);
}

double PlaylistCovers.Recipe.HexColors.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_70BE90(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_7098A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s9MusicCore14PlaylistCoversO6RecipeV9HexColorsV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v8) & 1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlaylistCovers.Recipe.rawJSONRepresentation()()
{
  v3 = sub_AB9300();
  __chkstk_darwin(v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  v6 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v6;
  v17 = *(v0 + 96);
  v7 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v7;
  v8 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v8;
  sub_70C184();
  v9 = sub_AB2AE0();
  if (v1)
  {
  }

  else
  {
    v11 = v9;
    v12 = v10;
    sub_AB92F0();
    v13 = sub_AB92C0();
    if (!v14)
    {
      __break(1u);
      goto LABEL_7;
    }

    v5 = v13;
    v2 = v14;
    sub_466B8(v11, v12);
  }

  v13 = v5;
  v14 = v2;
LABEL_7:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_709A2C()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x666E49726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6F4374786574;
  }

  if (*v0)
  {
    v1 = 0x6973736572707865;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_709AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_70C2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_709AE8(uint64_t a1)
{
  v2 = sub_70C1D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_709B24(uint64_t a1)
{
  v2 = sub_70C1D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14648);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_70C1D8();
  sub_ABB690();
  LOBYTE(v16) = 0;
  sub_ABB240();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_ABB270();
    v10 = *(v3 + 24);
    v11 = *(v3 + 56);
    v20[1] = *(v3 + 40);
    v20[2] = v11;
    v20[3] = *(v3 + 72);
    v12 = *(v3 + 40);
    v16 = *(v3 + 24);
    v17 = v12;
    v18 = *(v3 + 56);
    v19 = *(v3 + 72);
    v20[0] = v10;
    v15 = 2;
    sub_70BC78(v20, v14);
    sub_70C22C();
    sub_ABB280();
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    sub_70C280(v14);
    v13[15] = 3;
    sub_ABB240();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 PlaylistCovers.Recipe.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_70C424(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_709E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s9MusicCore14PlaylistCoversO6RecipeV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13) & 1;
}

void PlaylistCovers.Recipe.HexColors.init(from:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v21 = v11;
  v22 = v10;
  v20 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v13 = v12;
  v14 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v16 = v15;
  v17 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v19 = v18;

  *a5 = v22;
  a5[1] = v21;
  a5[2] = v20;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v16;
  a5[6] = v17;
  a5[7] = v19;
}

uint64_t sub_709FA0(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E147C0);
  if (swift_dynamicCast())
  {
    sub_70DF8(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_AB2E00();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_0(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_12E1C(__src, &qword_E147C8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_ABAE60();
  }

  sub_70AA90(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_284DD4(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_70AB58(sub_70CF08);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_AB3220();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_44FD90(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_AB94C0();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_AB94F0();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_ABAE60();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_44FD90(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_AB94D0();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_AB3230();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_AB3230();
    sub_466A4(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_466A4(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_90090(*&__src[0], *(&__src[0] + 1));

  sub_466B8(v32, *(&v32 + 1));
  return v32;
}

uint64_t PlaylistCovers.Recipe.init(from:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v29 = *a1 + 1;
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 2);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v27 = v12;
  v28 = v11;
  v13 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v25 = v14;
  v26 = v13;
  v15 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v17 = v16;
  v18 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v20 = v19;

  v21 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v23 = v22;
  result = sub_70B8FC(a1);
  *a2 = 3157553;
  a2[1] = 0xE300000000000000;
  a2[2] = v29;
  a2[3] = v28;
  a2[4] = v27;
  a2[5] = v26;
  a2[6] = v25;
  a2[7] = v15;
  a2[8] = v17;
  a2[9] = v18;
  a2[10] = v20;
  a2[11] = v21;
  a2[12] = v23;
  return result;
}

uint64_t sub_70A5D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_17CF8;

  return v6();
}

uint64_t sub_70A6BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_17BD0;

  return v7();
}

uint64_t sub_70A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_50F344(a3, v23 - v10);
  v12 = sub_AB9990();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_12E1C(v11, &qword_E0E340);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_AB9980();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_AB98B0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_AB93A0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_12E1C(a3, &qword_E0E340);

    return v21;
  }

LABEL_8:
  sub_12E1C(a3, &qword_E0E340);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}