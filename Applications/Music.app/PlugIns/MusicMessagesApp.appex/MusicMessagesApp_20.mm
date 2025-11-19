void sub_1001F4BE0(uint64_t a1, void *a2, _BYTE *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v10 = [a2 anyObject];
  if (!v10)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v5 setPlaylist:v7];
      goto LABEL_10;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v5 setArtist:v8];
      goto LABEL_10;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v5 setRadioStation:v9];
      goto LABEL_10;
    }

LABEL_14:
    *a3 = 1;
    return;
  }

  [v5 setAlbum:v6];
LABEL_10:
}

id MPCVocalsControlCommand.isTrulyActive.getter()
{
  result = [v0 isActive];
  if (result)
  {
    return ([v0 isDisabled] ^ 1);
  }

  return result;
}

id MPCPlayerResponse.VideoContext.__allocating_init(playerResponse:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 videoOutput];
  if (v2)
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      swift_getObjectType();
      sub_100006F10(0, &qword_1006381E0);
      if (swift_dynamicCastMetatype())
      {
        type metadata accessor for MPCPlayerResponse.VideoContext();
        v2 = swift_allocObject();
        MPCPlayerResponse.VideoContext.init(output:)(v4);
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_6:

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.__allocating_init(output:)(void *a1)
{
  v2 = swift_allocObject();
  MPCPlayerResponse.VideoContext.init(output:)(a1);
  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.init(output:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding) = 0;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output) = a1;
  v4 = a1;
  [v4 videoBounds];
  swift_beginAccess();
  _s3__C6CGRectVMa_0(0);
  sub_1004D9B2C();
  swift_endAccess();
  [v4 isReadyForDisplay];
  swift_beginAccess();
  sub_1004D9B2C();
  swift_endAccess();
  sub_100004CB8(&unk_1006372F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  KeyPath = swift_getKeyPath();
  *(inited + 56) = sub_100004CB8(&qword_100639A48);
  *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 32) = v4;
  *(inited + 40) = KeyPath;
  v7 = swift_getKeyPath();
  *(inited + 96) = sub_100004CB8(&unk_100639A50);
  *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 72) = v4;
  *(inited + 80) = v7;
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v9 = v4;

  v10 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_1001F6B6C, v8);

  *(v2 + v3) = v10;

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.videoBounds.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t sub_1001F5230()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
    swift_beginAccess();
    [*(v1 + v2) videoBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [*(v1 + v2) isReadyForDisplay];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    if (!CGRectEqualToRect(v15, v14))
    {
      v16.origin.x = v4;
      v16.origin.y = v6;
      v16.size.width = v8;
      v16.size.height = v10;
      Width = CGRectGetWidth(v16);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      if (vabdd_f64(Width, CGRectGetWidth(v14)) > 1.0)
      {
        v17.origin.x = v4;
        v17.origin.y = v6;
        v17.size.width = v8;
        v17.size.height = v10;
        Height = CGRectGetHeight(v17);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004D9B6C();

        if (vabdd_f64(Height, CGRectGetHeight(v14)) > 1.0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v14.origin.x) = LOBYTE(v4);

          sub_1004D9B7C();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    if (v11 == LOBYTE(v14.origin.x))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_1004D9B7C();
    }
  }

  return result;
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_1001F5584@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

uint64_t sub_1001F5604()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

void (*MPCPlayerResponse.VideoContext.isReadyForDisplay.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t MPCPlayerResponse.VideoContext.$isReadyForDisplay.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100639A60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_100639A60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_100638EF8);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}

double MPCPlayerResponse.VideoContext.videoBounds.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

double sub_1001F5A58@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001F5AD8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

void (*MPCPlayerResponse.VideoContext.videoBounds.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F5BF4;
}

uint64_t sub_1001F5C14(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_100004CB8(a2);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t MPCPlayerResponse.VideoContext.$videoBounds.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100639A70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_100639A68);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$videoBounds.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_100639A70);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_100639A68);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F5F34;
}

void sub_1001F5F38(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1004D9B4C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1004D9B4C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MPCPlayerResponse.VideoContext.output.getter()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MPCPlayerResponse.VideoContext.output.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t MPCPlayerResponse.VideoContext.description.getter()
{
  v1 = v0;
  sub_1004DEAAC(40);

  v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getObjectType();
  v4 = v3;
  swift_getWitnessTable();
  v6._countAndFlagsBits = sub_1004DD4EC();
  sub_1004DD5FC(v6);

  return 0xD000000000000026;
}

uint64_t MPCPlayerResponse.VideoContext.deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = sub_100004CB8(&qword_100638EF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = sub_100004CB8(&qword_100639A68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t MPCPlayerResponse.VideoContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = sub_100004CB8(&qword_100638EF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = sub_100004CB8(&qword_100639A68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id MPCPlayerResponse.videoContext.getter()
{
  result = [v0 videoOutput];
  if (result)
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2 && (v3 = v2, swift_getObjectType(), sub_100006F10(0, &qword_1006381E0), swift_dynamicCastMetatype()))
    {
      type metadata accessor for MPCPlayerResponse.VideoContext();
      v4 = swift_allocObject();
      MPCPlayerResponse.VideoContext.init(output:)(v3);
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t _sSo17MPCPlaybackEngineC9MusicCoreE13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, Swift::Int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1 == a5 && a2 == a6 || (sub_1004DF08C()) && (sub_1001B42B4(a3, a7))
  {
    if (a4)
    {
      if (a8)
      {
        sub_100006F10(0, &qword_100639C18);
        v12 = a8;
        v13 = a4;
        v14 = sub_1004DE5FC();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sSo17MPCPlayerResponseC9MusicCoreE12VideoContextC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100006F10(0, &qword_1006381E0);
  v4 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = v5;
  v9 = v7;
  v10 = sub_1004DE5FC();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  result = CGRectEqualToRect(v12, v12);
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (LOBYTE(v12.origin.x) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return LOBYTE(v12.origin.x);
}

void *sub_1001F6860(void *a1)
{
  v8 = &_swiftEmptySetSingleton;
  if ([a1 isSystemMusicApplication])
  {
    sub_1001BC3BC(&v3, 0);
  }

  if ([a1 isAudioAnalyzerEnabled])
  {
    sub_1001BC3BC(&v4, 1);
  }

  if ([a1 isPictureInPictureSupported])
  {
    sub_1001BC3BC(&v5, 2);
  }

  if ([a1 isVideoSupported])
  {
    sub_1001BC3BC(&v6, 3);
  }

  if ([a1 isStateRestorationSupported])
  {
    sub_1001BC3BC(&v7, 4);
  }

  return v8;
}

id sub_1001F6948(uint64_t a1, uint64_t a2)
{
  [v2 setSystemMusicApplication:{sub_10012131C(0, a1)}];
  [v2 setAudioAnalyzerEnabled:{sub_10012131C(1u, a1)}];
  [v2 setPictureInPictureSupported:{sub_10012131C(2u, a1)}];
  [v2 setVideoSupported:{sub_10012131C(3u, a1)}];
  [v2 setStateRestorationSupported:{sub_10012131C(4u, a1)}];

  return [v2 setFallbackPlaybackIntent:a2];
}

uint64_t sub_1001F6A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for MPCPlayerResponse.VideoContext()
{
  result = qword_100639AC0;
  if (!qword_100639AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001F6ABC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isReadyForDisplay];
  *a2 = result;
  return result;
}

id sub_1001F6AFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoBounds];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1001F6B34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_1001F6B88()
{
  result = qword_100639A78;
  if (!qword_100639A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639A78);
  }

  return result;
}

unint64_t sub_1001F6BE0()
{
  result = qword_100639A80;
  if (!qword_100639A80)
  {
    sub_100008DE4(&qword_100639A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639A80);
  }

  return result;
}

unint64_t sub_1001F6C48()
{
  result = qword_100639A90;
  if (!qword_100639A90)
  {
    type metadata accessor for MPCPlayerRequestTracklistRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639A90);
  }

  return result;
}

uint64_t sub_1001F6CA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F6CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001F6D50()
{
  sub_1001D7A48();
  if (v0 <= 0x3F)
  {
    sub_1001F6E30();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001F6E30()
{
  if (!qword_100639AD8)
  {
    _s3__C6CGRectVMa_0(255);
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_100639AD8);
    }
  }
}

uint64_t sub_1001F6E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100639C08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F6EF8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100639C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Player.SnapshotController.__allocating_init(windowScene:player:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Player.SnapshotController.init(windowScene:player:)(a1, a2);
  return v4;
}

uint64_t Player.SnapshotController.init(windowScene:player:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  *(v3 + 32) = _swiftEmptyArrayStorage;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = a2;
  sub_100004CB8(&qword_1006379A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005127F0;
  sub_100004CB8(&unk_1006372F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  v7 = CFRange.init(_:)(UISceneDidEnterBackgroundNotification);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v7;
  v8 = CFRange.init(_:)(UISceneWillEnterForegroundNotification);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v8;
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v10 = UISceneDidEnterBackgroundNotification;
  v11 = UISceneWillEnterForegroundNotification;

  v12 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_1001F7430, v9);

  *(v5 + 32) = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_100511DA0;
  v14 = CFRange.init(_:)(UIScreenBrightnessDidChangeNotification);
  *(v13 + 56) = &type metadata for NotificationTrigger;
  *(v13 + 64) = &protocol witness table for NotificationTrigger;
  *(v13 + 32) = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v16 = UIScreenBrightnessDidChangeNotification;

  v17 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v13, 1, sub_1001F7BEC, v15);

  *(v5 + 40) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_100511DA0;
  v19 = CFRange.init(_:)(UIApplicationProtectedDataDidBecomeAvailable);
  *(v18 + 56) = &type metadata for NotificationTrigger;
  *(v18 + 64) = &protocol witness table for NotificationTrigger;
  *(v18 + 32) = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = UIApplicationProtectedDataDidBecomeAvailable;

  swift_allocObject();

  v22 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v18, 1, sub_1001F8258, v20);

  *(v5 + 48) = v22;

  *(v3 + 32) = v5;

  return v3;
}

uint64_t sub_1001F73A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001F73D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001F7438();
  }

  return result;
}

void sub_1001F7438()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100636410);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_100004CB8(&unk_10063CDA0);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_100004CB8(&qword_100639CF8);
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = sub_100004CB8(&qword_100639D00);
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_100004CB8(&qword_100639D08);
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = [Strong activationState], v18, v19 == 2))
  {
    if (*(v1 + 40))
    {
      return;
    }

    if (qword_100633DC0 != -1)
    {
      swift_once();
    }

    v37 = v4;
    v20 = sub_1004D966C();
    sub_100035430(v20, qword_100671E88);
    v21 = sub_1004D964C();
    v22 = sub_1004DDF9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "[📸👁️] App is backgrounded: Observing for now playing changes", v23, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v24 = *(v1 + 48);
    *(v1 + 48) = v44;

    swift_beginAccess();
    sub_100004CB8(&qword_100639F90);
    sub_1004D9B3C();
    swift_endAccess();
    sub_100042B08(&qword_10063A470, &unk_10063CDA0);
    sub_1004D9BEC();
    (*(v38 + 8))(v7, v5);
    sub_100042B08(&qword_100639D10, &qword_100639CF8);
    sub_1001F8ED4();
    sub_1004D9BFC();
    (*(v39 + 8))(v10, v8);
    sub_100006F10(0, &qword_1006372C0);
    v25 = sub_1004DE14C();
    v44 = v25;
    v26 = sub_1004DE12C();
    v27 = v37;
    (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
    sub_100042B08(&qword_100639D30, &qword_100639D00);
    sub_1001F8F84(&qword_10063A440, &qword_1006372C0);
    v28 = v41;
    sub_1004D9BDC();
    sub_10001074C(v27, &qword_100636410);

    (*(v40 + 8))(v13, v28);
    swift_allocObject();
    swift_weakInit();
    sub_100042B08(&qword_100639D38, &qword_100639D08);
    v29 = v43;
    v30 = sub_1004D9C0C();

    (*(v42 + 8))(v16, v29);
    *(v1 + 40) = v30;
  }

  else
  {
    if (qword_100633DC0 != -1)
    {
      swift_once();
    }

    v31 = sub_1004D966C();
    sub_100035430(v31, qword_100671E88);
    v32 = sub_1004D964C();
    v33 = sub_1004DDF9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[📸👁️] App is foregrounded: Stopping now playing changes observation", v34, 2u);
    }

    v35 = *(v1 + 64);
    *(v1 + 64) = 0;
    if (v35 == 1)
    {
      *(v1 + 72) = 0;
      *(v1 + 80) = 1;
    }

    *(v1 + 40) = 0;
  }
}

void sub_1001F7C0C(char a1)
{
  if (*(v1 + 64) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 sharedApplication];
    v5 = [v4 isProtectedDataAvailable];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v7 = Strong, v8 = [Strong screen], v7, objc_msgSend(v8, "brightness"), v10 = v9, v8, v10 > 0.0))
      {
        v11 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (v11 == 1)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 1;
        }

        if (qword_100633DC0 != -1)
        {
          swift_once();
        }

        v12 = sub_1004D966C();
        sub_100035430(v12, qword_100671E88);
        v13 = sub_1004D964C();
        v14 = sub_1004DDF9C();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46 = v16;
          *v15 = 134349314;
          *(v15 + 4) = v10;
          *(v15 + 12) = 2080;
          v17 = [v3 sharedApplication];
          v18 = [v17 isProtectedDataAvailable];

          if (v18)
          {
            v19 = 0x64656B636F6C6E75;
          }

          else
          {
            v19 = 0x64656B636F6CLL;
          }

          if (v18)
          {
            v20 = 0xE800000000000000;
          }

          else
          {
            v20 = 0xE600000000000000;
          }

          v21 = sub_1000343A8(v19, v20, &v46);

          *(v15 + 14) = v21;
          _os_log_impl(&_mh_execute_header, v13, v14, "[📸] Brightness is at %{public}f, device is %s", v15, 0x16u);
          sub_100008D24(v16);
        }

        v22 = sub_1004D964C();
        v23 = sub_1004DDF9C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v46 = v25;
          *v24 = 136446210;
          v26 = sub_1004DD4DC();
          v28 = sub_1000343A8(v26, v27, &v46);

          *(v24 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "[📸✅:%{public}s] Taking Snapshot!", v24, 0xCu);
          sub_100008D24(v25);
        }

        v29 = [v3 sharedApplication];
        [v29 _updateSnapshotForBackgroundApplication:0];
      }

      else
      {
        if (qword_100633DC0 != -1)
        {
          swift_once();
        }

        v37 = sub_1004D966C();
        sub_100035430(v37, qword_100671E88);
        v38 = sub_1004D964C();
        v39 = sub_1004DDF9C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = v41;
          *v40 = 136446210;
          v42 = sub_1004DD4DC();
          v44 = sub_1000343A8(v42, v43, &v46);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "[📸❌:%{public}s] Skipping: Screen brightness is 0", v40, 0xCu);
          sub_100008D24(v41);
        }
      }
    }

    else
    {
      if (qword_100633DC0 != -1)
      {
        swift_once();
      }

      v30 = sub_1004D966C();
      sub_100035430(v30, qword_100671E88);
      oslog = sub_1004D964C();
      v31 = sub_1004DDF9C();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47[0] = v33;
        *v32 = 136446210;
        LOBYTE(v46) = a1;
        v34 = sub_1004DD4DC();
        v36 = sub_1000343A8(v34, v35, v47);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, oslog, v31, "[📸❌:%{public}s] Skipping Snapshot Request: Device is locked", v32, 0xCu);
        sub_100008D24(v33);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1001F81F8(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001F7C0C(a2);
  }

  return result;
}

void sub_1001F8278(void *a1, char a2)
{
  v5 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = *(v2 + 48);
  v32 = v8;
  if ((a2 & 1) == 0)
  {
    if (v8)
    {
      v11 = [v8 tracklist];
      v12 = [v11 playingItem];

      if (!a1)
      {
        v13 = 0;
        if (!v12)
        {
          v12 = 0;
          v14 = 0;
LABEL_24:
          if ((sub_1001F86AC(v12, v14) & 1) == 0)
          {

LABEL_30:
            v29 = *(v2 + 48);
            *(v2 + 48) = a1;
            v30 = a1;

            return;
          }

          v13 = v14;
LABEL_26:
          sub_1004DDA5C();
          v25 = sub_1004DDA8C();
          (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
          v26 = swift_allocObject();
          *(v26 + 16) = &unk_100520238;
          *(v26 + 24) = v2;

          v27 = static Task<>.delayed(by:priority:task:)(v7, &unk_100520248, v26, &type metadata for () + 8, 1.0);

          sub_10001074C(v7, &qword_100635240);
          v28 = *(v2 + 56);
          *(v2 + 56) = v27;
          if (v28)
          {

            sub_100004CB8(&qword_100638980);
            sub_1004DDAFC();
          }

          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
      v14 = 0;
      if (!a1)
      {
        goto LABEL_24;
      }
    }

    v15 = [a1 tracklist];
    v13 = [v15 playingItem];

    if (!v12)
    {
      v19 = 0;
      v17 = 0;
      v14 = 0;
      if (!v13)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_11:
    v16 = [v12 contentItemIdentifier];
    v17 = sub_1004DD43C();
    v19 = v18;

    if (!v13)
    {
      v14 = 0;
      if (!v19)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_15:
    v20 = [v13 contentItemIdentifier];
    v21 = sub_1004DD43C();
    v23 = v22;

    if (v19)
    {
      if (v23)
      {
        if (v17 == v21 && v19 == v23)
        {

          v14 = v13;
        }

        else
        {
          v24 = sub_1004DF08C();

          v14 = v13;
          if ((v24 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      v14 = v13;
      if (!v23)
      {
        goto LABEL_24;
      }
    }

LABEL_22:

    goto LABEL_26;
  }

  *(v2 + 48) = a1;
  v9 = a1;
  v10 = v32;
}

uint64_t sub_1001F8648(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001F8278(v1, 0);
  }

  return result;
}

uint64_t sub_1001F86AC(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 metadataObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 innermostModelObject];

      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = [a2 metadataObject];
      if (v10)
      {
        v11 = v10;
        a2 = [v10 innermostModelObject];

        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        a2 = 0;
        if (v5)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_10;
    }
  }

  v5 = 0;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5)
  {
LABEL_5:
    if (a2)
    {
      v6 = [v5 identifiers];
      v7 = [a2 identifiers];
      v8 = [v6 intersectsSet:v7];

      return v8 ^ 1;
    }

    return 1;
  }

LABEL_10:
  if (a2)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_1001F87F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1004DDA4C();
  *(v1 + 24) = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001F888C, v3, v2);
}

uint64_t sub_1001F888C()
{

  if ((sub_1004DDB0C() & 1) == 0)
  {
    sub_1001F8900(2);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F8900(char a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100635240);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v19[-v6];
  if ((*(v1 + 64) & 1) == 0)
  {
    *(v1 + 64) = 1;
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
    if (qword_100633DC0 != -1)
    {
      swift_once();
    }

    v8 = sub_1004D966C();
    sub_100035430(v8, qword_100671E88);
    v9 = sub_1004D964C();
    v10 = sub_1004DDF9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446210;
      v19[7] = a1;
      v13 = sub_1004DD4DC();
      v15 = sub_1000343A8(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[📸] Set Needs Snapshot for Reason=%{public}s", v11, 0xCu);
      sub_100008D24(v12);
    }

    v16 = sub_1004DDA8C();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    sub_1004DDA4C();

    v17 = sub_1004DDA3C();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v2;
    *(v18 + 40) = a1;
    sub_10011F560(0, 0, v7, &unk_100520260, v18);
  }

  return result;
}

uint64_t sub_1001F8B78(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10007330C;

  return v5();
}

uint64_t sub_1001F8C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_1004DDA4C();
  *(v5 + 24) = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001F8CFC, v7, v6);
}

uint64_t sub_1001F8CFC()
{
  v1 = *(v0 + 32);

  sub_1001F7C0C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Player.SnapshotController.deinit()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t Player.SnapshotController.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1001F8E10@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

unint64_t sub_1001F8ED4()
{
  result = qword_100639D18;
  if (!qword_100639D18)
  {
    sub_100008DE4(&qword_10063A380);
    sub_1001F8F84(&qword_100639D20, &qword_100639D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639D18);
  }

  return result;
}

uint64_t sub_1001F8F84(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100006F10(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001F8FD0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100035C88;

  return sub_1001F87F4(v0);
}

uint64_t sub_1001F9060()
{

  return swift_deallocObject();
}

uint64_t sub_1001F9098(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035B28;

  return sub_1001F8B78(a1, v4);
}

uint64_t sub_1001F9150()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F9190(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035B28;

  return sub_1001F8C60(a1, v4, v5, v6, v7);
}

unint64_t sub_1001F9268()
{
  result = qword_100639D40;
  if (!qword_100639D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639D40);
  }

  return result;
}

uint64_t PlaybackController.insert(_:location:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_1004D82AC();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_1004DDA4C();
  v4[24] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(sub_1001F93B8, v7, v6);
}

uint64_t sub_1001F93B8()
{
  v35 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v4 = sub_1004D827C();
  v6 = v5;
  v0[27] = v4;
  v0[28] = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v7 = v0[16];
  v8 = sub_1004D966C();
  v0[29] = sub_100035430(v8, static Logger.playbackController);

  v9 = v7;
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[16];
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000343A8(v4, v6, &v34);
    *(v13 + 12) = 2082;
    v14 = v12;
    v15 = [v14 description];
    v16 = sub_1004DD43C();
    v18 = v17;

    v19 = sub_1000343A8(v16, v18, &v34);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "⤵️ Inserting new intent with ID=%{public}s, intent=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v24 = v0[16];
  v23 = v0[17];
  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v24;

    sub_10006CEB0(v23);
    sub_1004D9B6C();

    v26 = v0[14];
    if (v26)
    {
    }
  }

  else
  {
    v27 = v24;
    sub_10006CEB0(v23);
  }

  v28 = v0[16];
  v29 = v0[17];
  sub_1004DE09C();
  v0[5] = &type metadata for Player.InsertCommand;
  v0[6] = &protocol witness table for Player.InsertCommand;
  v0[2] = v28;
  v0[3] = v29;
  v30 = v28;
  sub_10006CEB0(v29);
  v0[30] = sub_1004DDA3C();
  v32 = sub_1004DD9BC();
  v0[31] = v32;
  v0[32] = v31;

  return _swift_task_switch(sub_1001F9708, v32, v31);
}

uint64_t sub_1001F9708()
{
  v1 = v0[16];
  sub_100004CB8(&unk_100639D70);
  v2 = swift_allocObject();
  v0[33] = v2;
  *(v2 + 16) = xmmword_100511DA0;
  sub_100035868((v0 + 2), v2 + 32);
  v0[34] = sub_1004DDA3C();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_1001F9804;
  v4 = v0[18];

  return sub_100206638(v2, 0x10000, 1, 0, v1, v4);
}

uint64_t sub_1001F9804(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_1004DD9BC();
    v6 = v5;
    v7 = sub_1001F9AC0;
  }

  else
  {
    v4 = sub_1004DD9BC();
    v6 = v8;
    v7 = sub_1001F997C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1001F997C()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_1001F99E8, v1, v2);
}

uint64_t sub_1001F99E8()
{
  v1 = v0[36];

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!sub_1004DED5C())
      {
        goto LABEL_9;
      }
    }

    sub_1004DEB2C();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  sub_100008D24((v0 + 2));
  v2 = v0[25];
  v3 = v0[26];

  return _swift_task_switch(sub_1001FA024, v2, v3);
}

uint64_t sub_1001F9AC0()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_1001F9B24, v1, v2);
}

uint64_t sub_1001F9B24()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_1001F9B88, v1, v2);
}

uint64_t sub_1001F9B88()
{
  v33 = v0;
  v1 = *(v0 + 296);
  sub_100008D24(v0 + 16);
  *(v0 + 120) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    *(v0 + 304) = v3;
    *(v0 + 312) = v2;
    v4 = sub_1004D7F3C();
    v5 = [v4 code];

    if (v5 == 3)
    {

      v6 = sub_1004D964C();
      v7 = sub_1004DDF7C();

      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 216);
        v8 = *(v0 + 224);
        v10 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = sub_1000343A8(v9, v8, v32);
        *(v10 + 12) = 2082;
        *(v10 + 14) = sub_1000343A8(0xD00000000000001FLL, 0x80000001004F0E30, v32);
        _os_log_impl(&_mh_execute_header, v6, v7, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      v11 = swift_task_alloc();
      *(v0 + 320) = v11;
      *v11 = v0;
      v11[1] = sub_1001FA1BC;
      v12 = *(v0 + 216);
      v13 = *(v0 + 224);
      v14 = *(v0 + 144);
      v15 = *(v0 + 128);

      return sub_1001FD8E4(v15, v12, v13, v14);
    }

    swift_errorRetain();

    v18 = sub_1004D964C();
    v19 = sub_1004DDF7C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 224);
    if (v20)
    {
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = sub_1000343A8(v22, v21, v32);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2082;
      *(v0 + 96) = v3;
      *(v0 + 104) = v2;
      swift_errorRetain();

      v25 = sub_1004DD4DC();
      v27 = sub_1000343A8(v25, v26, v32);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    sub_100213E54();
    swift_allocError();
    *v30 = v3;
    v30[1] = v2;
    swift_willThrow();
    swift_errorRetain();

    sub_1000C1220(v28);
  }

  else
  {
    v17 = *(v0 + 136);

    sub_1000C1220(v17);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1001FA024()
{
  v15 = v0;

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 224);
  if (v3)
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_1000343A8(v5, v4, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully inserted intent with ID=%{public}s", v8, 0xCu);
    sub_100008D24(v9);

    sub_1000C1220(v6);
  }

  else
  {
    v11 = *(v0 + 136);

    sub_1000C1220(v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001FA1BC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_100216E04;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_1001FA300;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001FA300()
{
  v2 = v0[16];
  v1 = v0[17];

  sub_100213EA8();
  swift_allocError();
  *v3 = 3;
  *(v3 + 8) = 2;
  swift_willThrow();

  sub_1000C1220(v1);

  v4 = v0[1];

  return v4();
}

uint64_t PlaybackController.add(_:route:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_1004D7A1C();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_1004D96BC();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for PlaybackIntentDescriptor(0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_1004D82AC();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  sub_1004DDA4C();
  v3[34] = sub_1004DDA3C();
  v8 = sub_1004DD9BC();
  v3[35] = v8;
  v3[36] = v7;

  return _swift_task_switch(sub_1001FA620, v8, v7);
}

uint64_t sub_1001FA620()
{
  v38 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = (v0[17] + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  sub_100213EFC(v5, v6, v7);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v8 = sub_1004D827C();
  v10 = v9;
  v0[37] = v8;
  v0[38] = v9;
  (*(v2 + 8))(v1, v3);
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v11 = v0[30];
  v12 = v0[15];
  v13 = sub_1004D966C();
  v0[39] = v13;
  v0[40] = sub_100035430(v13, static Logger.playbackController);
  sub_100213F40(v12, v11, type metadata accessor for PlaybackIntentDescriptor);

  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[30];
  if (v16)
  {
    v18 = v0[29];
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_1000343A8(v8, v10, &v37);
    *(v19 + 12) = 2082;
    sub_100213F40(v17, v18, type metadata accessor for PlaybackIntentDescriptor);
    v20 = sub_1004DD4DC();
    v22 = v21;
    sub_1002145B4(v17, type metadata accessor for PlaybackIntentDescriptor);
    v23 = sub_1000343A8(v20, v22, &v37);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "➕ Adding new playback intent with ID=%{public}s, descriptor=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1002145B4(v17, type metadata accessor for PlaybackIntentDescriptor);
  }

  sub_100213F40(v0[15], v0[27], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v0[27];
  if (EnumCaseMultiPayload == 1)
  {
    v26 = v0[24];
    v27 = v0[21];
    v28 = v0[22];
    (*(v28 + 32))(v26, v25, v27);
    v29 = sub_1004D968C();
    (*(v28 + 8))(v26, v27);
  }

  else
  {
    v29 = *v25;
  }

  v30 = v0[17];
  v31 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v30 + v31))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004D9B6C();

    v32 = v0[9];
    if (v32)
    {
    }
  }

  sub_1004DE09C();

  v33 = swift_task_alloc();
  v0[41] = v33;
  *v33 = v0;
  v33[1] = sub_1001FAA60;
  v34 = v0[16];
  v35 = v0[15];

  return sub_1001FED20(v35, v8, v10, v34);
}

uint64_t sub_1001FAA60()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_1001FB560;
  }

  else
  {
    v5 = sub_1001FAB9C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001FAB9C()
{
  v19 = v0;

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[37];
    v3 = v0[38];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000343A8(v4, v3, &v18);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully added intent with ID=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  v7 = v0[28];
  v8 = v0[15];
  _s9MusicCore9AppReviewO16recordSongPlayedyyFZ_0();
  v9 = *(v8 + *(v7 + 36));
  v10 = v0[28];
  v11 = v0[15];
  if (v9 == 1)
  {
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_1001FAEF8;

    return sub_1002050CC(v11 + v12);
  }

  if (*(v11 + *(v10 + 40)))
  {

LABEL_14:

    v17 = v0[1];

    return v17();
  }

  sub_100213F40(v0[15], v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v0[26];

    sub_1002145B4(v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_14;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = sub_1001FB204;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_1001FAEF8()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_1001FB018, v3, v2);
}

uint64_t sub_1001FB018()
{
  v1 = v0[15];
  if (*(v1 + *(v0[28] + 40)))
  {

LABEL_8:

    v4 = v0[1];

    return v4();
  }

  sub_100213F40(v1, v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v3 = v0[26];

    sub_1002145B4(v3, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_8;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_1001FB204;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_1001FB204()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1001FBEB4;
  }

  else
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1001FB320;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001FB320()
{
  v18 = v0;

  if (qword_100633DB0 != -1)
  {
    swift_once();
  }

  sub_100035430(v0[39], static Logger.siriIntents);

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v5 = v0[37];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_1000343A8(v5, v4, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully donated intent with ID=%{public}s", v9, 0xCu);
    sub_100008D24(v10);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001FB560()
{
  v65 = v0;
  v1 = *(v0 + 336);

  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (!*(v0 + 48))
    {

      sub_100213FDC(v2, 0);
      v26 = sub_1004D964C();
      v27 = sub_1004DDF7C();

      sub_100213FA8(v2, 0);
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 304);
      if (v28)
      {
        v30 = *(v0 + 296);
        v31 = swift_slowAlloc();
        v64[0] = swift_slowAlloc();
        *v31 = 136446466;
        v32 = sub_1000343A8(v30, v29, v64);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2082;
        *(v0 + 104) = v2;
        sub_100214000(v2);
        v33 = sub_1004DD4DC();
        v35 = sub_1000343A8(v33, v34, v64);

        *(v31 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "❌ Intent id=%{public}s) — Could not present alertKind=%{public}s", v31, 0x16u);
        swift_arrayDestroy();

        sub_100213FA8(v2, 0);
      }

      else
      {

        sub_100213FA8(v2, 0);
      }

      goto LABEL_33;
    }

    if (v3 == 3)
    {
      if (!v2)
      {

        v18 = sub_1004D964C();
        v55 = sub_1004DDF7C();

        v56 = os_log_type_enabled(v18, v55);
        v57 = *(v0 + 304);
        if (v56)
        {
          v58 = *(v0 + 296);
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v64[0] = v60;
          *v59 = 136446210;
          v61 = sub_1000343A8(v58, v57, v64);

          *(v59 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v18, v55, "❌ Intent id=%{public}s) — Missing player", v59, 0xCu);
          sub_100008D24(v60);

          goto LABEL_33;
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v2 == 2)
      {

        goto LABEL_9;
      }
    }

    sub_100213FA8(*(v0 + 40), v3);
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  swift_errorRetain();
  sub_1004D7A0C();
  sub_100215A70(&qword_100639D98, &type metadata accessor for CocoaError.Code);
  v7 = sub_1004D7E9C();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_9:

    v8 = sub_1004D964C();
    v9 = sub_1004DDF7C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 304);
    if (v10)
    {
      v12 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v64[0] = v14;
      *v13 = 136446210;
      v15 = sub_1000343A8(v12, v11, v64);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "❌ Intent id=%{public}s) — User cancelled", v13, 0xCu);
      sub_100008D24(v14);
LABEL_23:

      goto LABEL_34;
    }

LABEL_24:

    goto LABEL_34;
  }

  *(v0 + 88) = *(v0 + 336);
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
LABEL_21:

    swift_errorRetain();
    v8 = sub_1004D964C();
    v36 = sub_1004DDF7C();

    if (os_log_type_enabled(v8, v36))
    {
      v37 = *(v0 + 336);
      v39 = *(v0 + 296);
      v38 = *(v0 + 304);
      v40 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v40 = 136446466;
      v41 = sub_1000343A8(v39, v38, v64);

      *(v40 + 4) = v41;
      *(v40 + 12) = 2082;
      *(v0 + 96) = v37;
      swift_errorRetain();
      v42 = sub_1004DD4DC();
      v44 = sub_1000343A8(v42, v43, v64);

      *(v40 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v8, v36, "❌ Intent id=%{public}s) — Failed to add with error=%{public}s", v40, 0x16u);
      swift_arrayDestroy();
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  if (v17 == 1)
  {

    sub_100213FDC(v16, 1);
    v18 = sub_1004D964C();
    v45 = sub_1004DDF7C();

    sub_100213FA8(v16, 1);
    v46 = os_log_type_enabled(v18, v45);
    v47 = *(v0 + 304);
    if (!v46)
    {

      sub_100213FA8(v16, 1);
      goto LABEL_33;
    }

    v48 = *(v0 + 296);
    v49 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v49 = 136446466;
    v50 = sub_1000343A8(v48, v47, v64);

    *(v49 + 4) = v50;
    *(v49 + 12) = 2082;
    sub_100004CB8(&qword_100639DA0);
    v51 = sub_1004DD88C();
    v53 = v52;
    sub_100213FA8(v16, 1);
    v54 = sub_1000343A8(v51, v53, v64);

    *(v49 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v18, v45, "❌ Intent id=%{public}s) — Could not produce playback commands=%{public}s", v49, 0x16u);
    swift_arrayDestroy();

    goto LABEL_28;
  }

  if (v17 != 3 || v16 != 1)
  {
    sub_100213FA8(*(v0 + 56), v17);
    goto LABEL_21;
  }

  v18 = sub_1004D964C();
  v19 = sub_1004DDF7C();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 304);
  if (!v20)
  {
    goto LABEL_32;
  }

  v22 = *(v0 + 296);
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v64[0] = v24;
  *v23 = 136446210;
  v25 = sub_1000343A8(v22, v21, v64);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v18, v19, "❌ Intent id=%{public}s) — Could not playback, subscription needed", v23, 0xCu);
  sub_100008D24(v24);

LABEL_28:

LABEL_33:

LABEL_34:
  swift_willThrow();

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1001FBEB4()
{
  v17 = v0;

  if (qword_100633DB0 != -1)
  {
    swift_once();
  }

  sub_100035430(v0[39], static Logger.siriIntents);
  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF7C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[45];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  if (v3)
  {
    v15 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v10 = sub_1004DD4DC();
    v12 = sub_1000343A8(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Donation error=%{public}s)", v8, 0xCu);
    sub_100008D24(v9);

    (*(v5 + 8))(v15, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

id PlaybackController.init(coordinator:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_player] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  sub_100035868(a1, &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator]);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_100008D24(a1);
  return v5;
}

uint64_t sub_1001FC234(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&unk_10063CDA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a1 + 24);
    if (v8)
    {
      if (v8 == v2)
      {
        swift_beginAccess();
        *(a1 + 24) = 0;
        swift_unknownObjectRelease();
        [*(a1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:0];
      }
    }
  }

  v9 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (v10)
  {
    swift_beginAccess();
    *(v10 + 24) = v2;

    v11 = v2;
    swift_unknownObjectRelease();
    [*(v10 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:v11];

    if (*&v2[v9])
    {
      swift_beginAccess();

      sub_100004CB8(&qword_100639F90);
      sub_1004D9B3C();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1002163D8();
      v10 = sub_1004D9C0C();

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v10 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = v10;
}

void sub_1001FC4C4(void **a1)
{
  v2 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1004DDA8C();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_1004DDA4C();
    v9 = v5;
    v10 = v7;
    v11 = sub_1004DDA3C();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    v12[5] = v5;
    sub_10011F560(0, 0, v4, &unk_100520820, v12);
  }
}

uint64_t sub_1001FC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1004DDA4C();
  v5[4] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001FC6C4, v7, v6);
}

uint64_t sub_1001FC6C4()
{
  v1 = *(v0 + 24);

  sub_1001FC730(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1001FC730(void *a1)
{
  if (!a1 || (v3 = [a1 tracklist]) == 0)
  {
LABEL_8:
    v6 = v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor;
    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
    v8 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 8);
    v9 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;

    sub_100213EFC(v7, v8, v9);
    return;
  }

  v104 = v3;
  v4 = [v3 playingItem];
  if (!v4)
  {
    v5 = v104;
    goto LABEL_7;
  }

  v5 = v4;
  if ([v4 isPlaceholder])
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [v104 uniqueIdentifier];
  v11 = sub_1004DD43C();
  v13 = v12;

  v14 = (v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  if (!*(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16))
  {

LABEL_17:
    v16 = [v5 contentItemIdentifier];
    v17 = sub_1004DD43C();
    v19 = v18;

    v20 = [v104 uniqueIdentifier];
    v21 = sub_1004DD43C();
    v23 = v22;

    v24 = *v14;
    v25 = v14[1];
    v26 = v14[2];
    *v14 = 1;
    v14[1] = v17;
    v14[2] = v19;
    v14[3] = v21;
    v14[4] = v23;
    sub_100213EFC(v24, v25, v26);
    goto LABEL_18;
  }

  if (v11 == v14[3] && v13 == v14[4])
  {

    goto LABEL_18;
  }

  v15 = sub_1004DF08C();

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v27 = [v5 contentItemIdentifier];
  v28 = sub_1004DD43C();
  v30 = v29;

  v31 = v14[2];
  if (v31)
  {
    if (v28 == v14[1] && v30 == v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_1004DF08C();
    }
  }

  else
  {
    v32 = 0;
  }

  if (v14[2])
  {
    v33 = *v14;
  }

  else
  {
    v33 = 0;
  }

  if ([a1 videoOutput])
  {
    v107 = &OBJC_PROTOCOL___MPCVideoOutput;
    v34 = swift_dynamicCastObjCProtocolConditional();
    if (!v34 || (v35 = v34, swift_getObjectType(), sub_100006F10(0, &qword_1006381E0), !swift_dynamicCastMetatype()))
    {

      swift_unknownObjectRelease();
      return;
    }

    v103 = v1;
    type metadata accessor for MPCPlayerResponse.VideoContext();
    swift_allocObject();
    v36 = MPCPlayerResponse.VideoContext.init(output:)(v35);
    if ((v33 & 1) == 0 || (v32 & 1) == 0 || (v97 = v36, [a1 state] != 2))
    {

LABEL_40:

      return;
    }

    v96 = objc_opt_self();
    v37 = [v96 sharedApplication];
    v38 = [v37 openSessions];

    sub_100006F10(0, &qword_100639F98);
    sub_100216544();
    v39 = sub_1004DDC3C();

    if ((v39 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1004DE98C();
      sub_1004DDC7C();
      v39 = v108;
      v40 = v109;
      v41 = v110;
      v42 = v111;
      v43 = v112;
    }

    else
    {
      v44 = -1 << *(v39 + 32);
      v40 = v39 + 56;
      v41 = ~v44;
      v45 = -v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v43 = v46 & *(v39 + 56);

      v42 = 0;
    }

    v47 = (v41 + 64) >> 6;
    v99 = v40;
    if (v39 < 0)
    {
      goto LABEL_51;
    }

LABEL_46:
    v48 = v42;
    v49 = v43;
    v50 = v42;
    if (!v43)
    {
      while (1)
      {
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v50 >= v47)
        {
LABEL_61:
          sub_100010458();

          return;
        }

        v49 = *(v40 + 8 * v50);
        ++v48;
        if (v49)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_93:
      v89 = v102;
      v88 = v103;
LABEL_89:
      sub_100010458();

      v101 = 0;
      if (!v14[2])
      {
        goto LABEL_91;
      }

LABEL_90:
      *v14 = 0;
LABEL_91:
      v90 = *(v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
      v91 = *(v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
      sub_100008C70((v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v90);
      v105[0] = v97;
      v106 = 1;
      v92 = *(v91 + 8);

      v92(v105, v90, v91);

      sub_100215694(v105);
      return;
    }

LABEL_50:
    v51 = (v49 - 1) & v49;
    v52 = *(*(v39 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));
    while (1)
    {
      if (!v52)
      {
        goto LABEL_61;
      }

      v54 = v39;
      v102 = v52;
      v55 = [v52 role];
      v56 = sub_1004DD43C();
      v58 = v57;
      if (v56 == sub_1004DD43C() && v58 == v59)
      {
        break;
      }

      v61 = sub_1004DF08C();

      if (v61)
      {
        goto LABEL_63;
      }

      v42 = v50;
      v43 = v51;
      v39 = v54;
      v40 = v99;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_51:
      v53 = sub_1004DE9EC();
      if (!v53)
      {
        goto LABEL_61;
      }

      v113 = v53;
      swift_dynamicCast();
      v52 = v105[0];
      v50 = v42;
      v51 = v43;
    }

LABEL_63:
    sub_100010458();

    v62 = [v102 scene];
    if (!v62 || (v63 = v62, v64 = [v62 activationState], v63, v64))
    {

      goto LABEL_40;
    }

    v65 = [v96 sharedApplication];
    v66 = [v65 openSessions];

    v67 = sub_1004DDC3C();
    if ((v67 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1004DE98C();
      sub_1004DDC7C();
      v67 = v113;
      v68 = v114;
      v69 = v115;
      v70 = v116;
      v71 = v117;
    }

    else
    {
      v72 = -1 << *(v67 + 32);
      v68 = v67 + 56;
      v69 = ~v72;
      v73 = -v72;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v71 = v74 & *(v67 + 56);

      v70 = 0;
    }

    v75 = (v69 + 64) >> 6;
    v98 = v68;
    if (v67 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    v76 = v70;
    v77 = v71;
    v78 = v70;
    if (v71)
    {
LABEL_77:
      v100 = (v77 - 1) & v77;
      v79 = *(*(v67 + 48) + ((v78 << 9) | (8 * __clz(__rbit64(v77)))));
      while (1)
      {
        v80 = v67;
        if (!v79)
        {
          goto LABEL_93;
        }

        v101 = v79;
        v81 = [v79 role];
        v82 = sub_1004DD43C();
        v84 = v83;
        if (v82 == sub_1004DD43C() && v84 == v85)
        {
          break;
        }

        v87 = sub_1004DF08C();

        if (v87)
        {
          goto LABEL_95;
        }

        v70 = v78;
        v67 = v80;
        v68 = v98;
        v71 = v100;
        if ((v67 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        if (!sub_1004DE9EC())
        {
          goto LABEL_88;
        }

        swift_dynamicCast();
        v79 = v105[0];
        v78 = v70;
        v100 = v71;
      }

LABEL_95:
      sub_100010458();

      v93 = [v101 scene];
      if (v93)
      {
        v94 = v93;
        v95 = [v93 activationState];

        if (v95 == -1)
        {
          v89 = v102;
          v88 = v103;
          if (!v14[2])
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }
      }

      else
      {
      }

      goto LABEL_40;
    }

    while (1)
    {
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v78 >= v75)
      {
LABEL_88:
        v89 = v102;
        v88 = v103;
        goto LABEL_89;
      }

      v77 = *(v68 + 8 * v78);
      ++v76;
      if (v77)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t PlaybackController.player.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_1001FC234(v4);
}

void (*PlaybackController.player.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1001FD2DC;
}

void sub_1001FD2DC(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_1001FC234(v6);
  }

  else
  {
    sub_1001FC234(v6);
  }

  free(v3);
}

uint64_t PlaybackController.perform(_:route:intent:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_1004DDA4C();
  v5[8] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1001FD450, v7, v6);
}

{
  v4[2] = sub_1004DDA4C();
  v4[3] = sub_1004DDA3C();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_100206450;

  return sub_100206638(a1, 0x10000, 1, a2, a3, a4);
}

uint64_t sub_1001FD450()
{
  v1 = v0[2];
  sub_100004CB8(&unk_100639D70);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_100511DA0;
  sub_100035868(v1, v2 + 32);
  v0[12] = sub_1004DDA3C();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1001FD548;
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[4];

  return sub_100206638(v2, 0x10000, 1, v5, v6, v4);
}

uint64_t sub_1001FD548(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {

    v4 = sub_1004DD9BC();
    v6 = v5;
    v7 = sub_1001FD81C;
  }

  else
  {
    v4 = sub_1004DD9BC();
    v6 = v8;
    v7 = sub_1001FD6C0;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1001FD6C0()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1001FD72C, v1, v2);
}

uint64_t sub_1001FD72C()
{
  v1 = *(v0 + 112);

  if (v1 >> 62)
  {
    result = sub_1004DED5C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004DEB2C();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 112) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1001FD81C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1001FD880, v1, v2);
}

uint64_t sub_1001FD880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FD8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_1004D7A1C();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1001FD9AC, 0, 0);
}

uint64_t sub_1001FD9AC()
{
  v12 = v0;
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  v0[31] = sub_100035430(v1, static Logger.playbackController);

  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000343A8(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Offering play local option to user", v6, 0xCu);
    sub_100008D24(v7);
  }

  v0[32] = sub_1004DDA4C();
  v0[33] = sub_1004DDA3C();
  v9 = sub_1004DD9BC();
  v0[34] = v9;
  v0[35] = v8;

  return _swift_task_switch(sub_1001FDB74, v9, v8);
}

uint64_t sub_1001FDB74()
{
  v1 = sub_1004DDA3C();
  *(v0 + 288) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1004DD9BC();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1001FDC08, v2, v4);
}

uint64_t sub_1001FDC08()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_1001FDCBC;
  v2 = swift_continuation_init();
  sub_100209A1C(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FDCBC()
{
  v1 = *v0;
  *(*v0 + 154) = *(*v0 + 153);
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_1001FDDC8, v3, v2);
}

uint64_t sub_1001FDDC8()
{

  return _swift_task_switch(sub_1001FDE30, 0, 0);
}

uint64_t sub_1001FDE30()
{
  v37 = v0;
  if (*(v0 + 154) == 1)
  {
    v1 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v2 = v1[3];
    v3 = v1[4];
    sub_100008C70(v1, v2);
    *(v0 + 296) = (*(v3 + 40))(v2, v3);
    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = sub_1001FE41C;

    return GroupActivitiesManager.leave(performLeaveCommand:)(0);
  }

  sub_100213EA8();
  v6 = swift_allocError();
  *v7 = 2;
  *(v7 + 8) = 3;
  swift_willThrow();
  *(v0 + 160) = v6;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      sub_100213FDC(v8, 0);
      v28 = sub_1004D964C();
      v29 = sub_1004DDF7C();

      sub_100213FA8(v8, 0);
      if (os_log_type_enabled(v28, v29))
      {
        v31 = *(v0 + 192);
        v30 = *(v0 + 200);
        v32 = swift_slowAlloc();
        v36[0] = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_1000343A8(v31, v30, v36);
        *(v32 + 12) = 2082;
        *(v0 + 176) = v8;
        sub_100214000(v8);
        v33 = sub_1004DD4DC();
        v35 = sub_1000343A8(v33, v34, v36);

        *(v32 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v32, 0x16u);
        swift_arrayDestroy();

        sub_100213FA8(v8, 0);
      }

      else
      {

        sub_100213FA8(v8, 0);
      }

      goto LABEL_18;
    }

    if (v9 == 3 && v8 == 2)
    {

      goto LABEL_12;
    }

    sub_100213FA8(*(v0 + 144), v9);
  }

  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 224);

  swift_errorRetain();
  sub_1004D7A0C();
  sub_100215A70(&qword_100639D98, &type metadata accessor for CocoaError.Code);
  v13 = sub_1004D7E9C();

  (*(v11 + 8))(v10, v12);
  if (v13)
  {
LABEL_12:

    v14 = sub_1004D964C();
    v15 = sub_1004DDF7C();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 192);
      v16 = *(v0 + 200);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1000343A8(v17, v16, v36);
      _os_log_impl(&_mh_execute_header, v14, v15, "Intent id=%{public}s) — User cancelled", v18, 0xCu);
      sub_100008D24(v19);

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  swift_errorRetain();
  v14 = sub_1004D964C();
  v20 = sub_1004DDF7C();

  if (os_log_type_enabled(v14, v20))
  {
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_1000343A8(v22, v21, v36);
    *(v23 + 12) = 2082;
    *(v0 + 168) = v6;
    swift_errorRetain();
    v24 = sub_1004DD4DC();
    v26 = sub_1000343A8(v24, v25, v36);

    *(v23 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v20, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v23, 0x16u);
    swift_arrayDestroy();

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1001FE41C()
{

  return _swift_task_switch(sub_1001FE534, 0, 0);
}

uint64_t sub_1001FE534()
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
    v6[1] = sub_1001FE684;
    v7 = v0[26];

    return Player.perform(_:options:issuer:)((v0 + 10), 0x10000, 0, 0, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001FE684(void *a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1001FE830;
  }

  else
  {

    sub_100008D24(v4 + 80);
    v5 = sub_1001FE7C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001FE7C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FE830()
{
  v32 = v0;

  sub_100008D24(v0 + 80);
  v1 = *(v0 + 328);
  *(v0 + 160) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      sub_100213FDC(v2, 0);
      v23 = sub_1004D964C();
      v24 = sub_1004DDF7C();

      sub_100213FA8(v2, 0);
      if (os_log_type_enabled(v23, v24))
      {
        v26 = *(v0 + 192);
        v25 = *(v0 + 200);
        v27 = swift_slowAlloc();
        v31[0] = swift_slowAlloc();
        *v27 = 136446466;
        *(v27 + 4) = sub_1000343A8(v26, v25, v31);
        *(v27 + 12) = 2082;
        *(v0 + 176) = v2;
        sub_100214000(v2);
        v28 = sub_1004DD4DC();
        v30 = sub_1000343A8(v28, v29, v31);

        *(v27 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v27, 0x16u);
        swift_arrayDestroy();

        sub_100213FA8(v2, 0);
      }

      else
      {

        sub_100213FA8(v2, 0);
      }

      goto LABEL_14;
    }

    if (v3 == 3 && v2 == 2)
    {

      goto LABEL_8;
    }

    sub_100213FA8(*(v0 + 144), v3);
  }

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);

  swift_errorRetain();
  sub_1004D7A0C();
  sub_100215A70(&qword_100639D98, &type metadata accessor for CocoaError.Code);
  v7 = sub_1004D7E9C();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_8:

    v8 = sub_1004D964C();
    v9 = sub_1004DDF7C();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000343A8(v11, v10, v31);
      _os_log_impl(&_mh_execute_header, v8, v9, "Intent id=%{public}s) — User cancelled", v12, 0xCu);
      sub_100008D24(v13);
LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  swift_errorRetain();
  v8 = sub_1004D964C();
  v14 = sub_1004DDF7C();

  if (os_log_type_enabled(v8, v14))
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_1000343A8(v16, v15, v31);
    *(v17 + 12) = 2082;
    *(v0 + 168) = v1;
    swift_errorRetain();
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, v31);

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

uint64_t sub_1001FED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[126] = v4;
  v5[125] = a4;
  v5[124] = a3;
  v5[123] = a2;
  v5[122] = a1;
  v6 = sub_1004D82AC();
  v5[127] = v6;
  v5[128] = *(v6 - 8);
  v5[129] = swift_task_alloc();
  sub_1004D83FC();
  v5[130] = swift_task_alloc();
  v7 = sub_1004DD3EC();
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v8 = sub_1004D96BC();
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
  v5[148] = sub_1004DDA4C();
  v5[149] = sub_1004DDA3C();
  v10 = sub_1004DD9BC();
  v5[150] = v10;
  v5[151] = v9;

  return _swift_task_switch(sub_1001FEFAC, v10, v9);
}

uint64_t sub_1001FEFAC()
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
      v8 = qword_100633DA0;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_1004D966C();
      sub_100035430(v9, static Logger.playbackController);

      v10 = sub_1004D964C();
      v11 = sub_1004DDF9C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[124];
        v13 = v0[123];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_1000343A8(v13, v12, &v17);
        _os_log_impl(&_mh_execute_header, v10, v11, "Intent id=%{public}s) — Awaiting for engine to start", v14, 0xCu);
        sub_100008D24(v15);
      }
    }

    v16 = swift_task_alloc();
    v0[154] = v16;
    *v16 = v0;
    v16[1] = sub_1001FF314;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    sub_100213EA8();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1001FF314()
{
  v1 = *v0;

  v2 = *(v1 + 1208);
  v3 = *(v1 + 1200);

  return _swift_task_switch(sub_1001FF434, v3, v2);
}

uint64_t sub_1001FF434()
{
  v1 = *(v0 + 1000);
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

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
  v7[1] = sub_1001FF5A4;
  v8 = *(v0 + 976);

  return sub_100207280(v1, v8);
}

uint64_t sub_1001FF5A4(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 218) = a1;
  *(v4 + 1280) = v1;

  v5 = *(v3 + 1208);
  v6 = *(v3 + 1200);
  if (v1)
  {
    v7 = sub_1002030FC;
  }

  else
  {
    v7 = sub_1001FF6EC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1001FF6EC()
{
  v81 = v0;
  if (*(v0 + 218) == 2)
  {
    v1 = *(v0 + 1240);

    v2 = *(v0 + 8);

    return v2();
  }

  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();
  *(v0 + 1288) = sub_100035430(v4, static Logger.playbackController);

  v5 = sub_1004D964C();
  v6 = sub_1004DDF9C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 218);
    v8 = *(v0 + 992);
    v9 = *(v0 + 984);
    v10 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1000343A8(v9, v8, &v80);
    *(v10 + 12) = 2082;
    *(v0 + 217) = v7 & 1;
    v11 = sub_1004DD4DC();
    v13 = sub_1000343A8(v11, v12, &v80);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Intent id=%{public}s) — Resolved Playability Options=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_100213F40(*(v0 + 976), *(v0 + 1176), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *(v0 + 1176);
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    (*(v17 + 32))(v16, v15, v18);
    v19 = sub_1004D968C();
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
    sub_1004D9B6C();

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

    sub_100213F40(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = *(v0 + 1160);
    if (v23 == 1)
    {
      v25 = *(v0 + 1096);
      v26 = *(v0 + 1088);
      v27 = *(v0 + 1080);
      (*(v26 + 32))(v25, v24, v27);
      v28 = sub_1004D968C();
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
      sub_1004D9B6C();

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
        sub_100213F40(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v53 = swift_getEnumCaseMultiPayload();
        v54 = *(v0 + 1144);
        if (v53 == 1)
        {
          v55 = *(v0 + 1096);
          v56 = *(v0 + 1088);
          v57 = *(v0 + 1080);
          (*(v56 + 32))(v55, v54, v57);
          v58 = sub_1004D968C();
          (*(v56 + 8))(v55, v57);
        }

        else
        {
          v58 = *v54;
        }

        *(v0 + 1416) = v58;
        *(v0 + 220) = *(*(v0 + 1248) + 32);
        *(v0 + 1424) = sub_1004DDA3C();
        v60 = sub_1004DD9BC();
        *(v0 + 1432) = v60;
        *(v0 + 1440) = v59;

        return _swift_task_switch(sub_1002014B8, v60, v59);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

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
        sub_100213F40(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v71 = swift_getEnumCaseMultiPayload();
        v72 = *(v0 + 1152);
        if (v71 == 1)
        {
          v73 = *(v0 + 1096);
          v74 = *(v0 + 1088);
          v75 = *(v0 + 1080);
          (*(v74 + 32))(v73, v72, v75);
          v76 = sub_1004D968C();
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
      v78[1] = sub_100201210;

      return Player.prepareForBufferedAirPlay()();
    }

    v61 = sub_1004D964C();
    v62 = sub_1004DDF9C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 992);
      v64 = *(v0 + 984);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_1000343A8(v64, v63, &v80);
      _os_log_impl(&_mh_execute_header, v61, v62, "Intent id=%{public}s) — Offering Shared Listening options", v65, 0xCu);
      sub_100008D24(v66);
    }

    v67 = swift_task_alloc();
    *(v0 + 1320) = v67;
    *v67 = v0;
    v67[1] = sub_100200B5C;
    v68 = *(v0 + 992);
    v69 = *(v0 + 984);
    v70 = *(v0 + 976);

    return sub_100207DCC(v70, v69, v68);
  }

  else
  {
    sub_100213F40(*(v0 + 976), *(v0 + 1168), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *(v0 + 1168);
    if (v29 == 1)
    {
      v31 = *(v0 + 1096);
      v32 = *(v0 + 1088);
      v33 = *(v0 + 1080);
      (*(v32 + 32))(v31, v30, v33);
      v34 = sub_1004D968C();
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
    sub_100008C70(v37, v38);
    *(v0 + 1304) = (*(v39 + 40))(v38, v39);
    v40 = *(v36 + *(v35 + 44));
    v41 = v34;
    v42 = swift_task_alloc();
    *(v0 + 1312) = v42;
    *v42 = v0;
    v42[1] = sub_10020023C;

    return GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(v34, v40, v40);
  }
}

uint64_t sub_10020023C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  *(*v1 + 219) = a1;

  v4 = *(v2 + 1208);
  v5 = *(v2 + 1200);

  return _swift_task_switch(sub_1002003A0, v5, v4);
}

uint64_t sub_1002003A0()
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
  sub_1004D9B6C();

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

  sub_100213F40(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 1160);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v0 + 1096);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1080);
    (*(v10 + 32))(v9, v8, v11);
    v12 = sub_1004D968C();
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
    sub_1004D9B6C();

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
      sub_100213F40(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v23 = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 1144);
      if (v23 == 1)
      {
        v25 = *(v0 + 1096);
        v26 = *(v0 + 1088);
        v27 = *(v0 + 1080);
        (*(v26 + 32))(v25, v24, v27);
        v28 = sub_1004D968C();
        (*(v26 + 8))(v25, v27);
      }

      else
      {
        v28 = *v24;
      }

      *(v0 + 1416) = v28;
      *(v0 + 220) = *(*(v0 + 1248) + 32);
      *(v0 + 1424) = sub_1004DDA3C();
      v30 = sub_1004DD9BC();
      *(v0 + 1432) = v30;
      *(v0 + 1440) = v29;

      return _swift_task_switch(sub_1002014B8, v30, v29);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

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
      sub_100213F40(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v41 = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 1152);
      if (v41 == 1)
      {
        v43 = *(v0 + 1096);
        v44 = *(v0 + 1088);
        v45 = *(v0 + 1080);
        (*(v44 + 32))(v43, v42, v45);
        v46 = sub_1004D968C();
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
    v48[1] = sub_100201210;

    return Player.prepareForBufferedAirPlay()();
  }

  v31 = sub_1004D964C();
  v32 = sub_1004DDF9C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 992);
    v34 = *(v0 + 984);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_1000343A8(v34, v33, &v50);
    _os_log_impl(&_mh_execute_header, v31, v32, "Intent id=%{public}s) — Offering Shared Listening options", v35, 0xCu);
    sub_100008D24(v36);
  }

  v37 = swift_task_alloc();
  *(v0 + 1320) = v37;
  *v37 = v0;
  v37[1] = sub_100200B5C;
  v38 = *(v0 + 992);
  v39 = *(v0 + 984);
  v40 = *(v0 + 976);

  return sub_100207DCC(v40, v39, v38);
}

uint64_t sub_100200B5C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 1328) = v3;

  if (v3)
  {
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_100203248;
  }

  else
  {
    *(v8 + 297) = a3;
    *(v8 + 1336) = a2;
    *(v8 + 1344) = a1;
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_100200CA4;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100200CA4()
{
  if (*(v0 + 297))
  {
    v1 = *(v0 + 1240);

    sub_100213EA8();
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
  sub_1004D9B6C();

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
    sub_100213F40(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v0 + 1144);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v0 + 1096);
      v17 = *(v0 + 1088);
      v18 = *(v0 + 1080);
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_1004D968C();
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v19 = *v15;
    }

    *(v0 + 1416) = v19;
    *(v0 + 220) = *(*(v0 + 1248) + 32);
    *(v0 + 1424) = sub_1004DDA3C();
    v21 = sub_1004DD9BC();
    *(v0 + 1432) = v21;
    *(v0 + 1440) = v20;

    return _swift_task_switch(sub_1002014B8, v21, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

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

  sub_100213F40(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v22 = swift_getEnumCaseMultiPayload();
  v23 = *(v0 + 1152);
  if (v22 == 1)
  {
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 1080);
    (*(v25 + 32))(v24, v23, v26);
    v27 = sub_1004D968C();
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
  v29[1] = sub_100201210;

  return Player.prepareForBufferedAirPlay()();
}

uint64_t sub_100201210(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1392) = v1;

  if (v1)
  {
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_100203394;
  }

  else
  {
    v4[175] = a1;
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_100201340;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100201340()
{
  v1 = *(v0 + 1400);
  if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
  {
    [*(v0 + 1376) establishGroup];
  }

  *(v0 + 1408) = v1;
  sub_100213F40(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 1144);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1088);
    v6 = *(v0 + 1080);
    (*(v5 + 32))(v4, v3, v6);
    v7 = sub_1004D968C();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v7 = *v3;
  }

  *(v0 + 1416) = v7;
  *(v0 + 220) = *(*(v0 + 1248) + 32);
  *(v0 + 1424) = sub_1004DDA3C();
  v9 = sub_1004DD9BC();
  *(v0 + 1432) = v9;
  *(v0 + 1440) = v8;

  return _swift_task_switch(sub_1002014B8, v9, v8);
}

uint64_t sub_1002014B8()
{
  v21 = v0;
  v1 = sub_100208A70(*(v0 + 1416), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1448) = v1;
  if (v1[2])
  {

    v2 = sub_1004D964C();
    v3 = sub_1004DDF9C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000343A8(v5, v4, v20);
      *(v6 + 12) = 2082;
      sub_100004CB8(&qword_100639DA0);
      v7 = sub_1004DD88C();
      v9 = sub_1000343A8(v7, v8, v20);

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
    v13[1] = sub_100202D90;
    v14 = *(v0 + 1408);

    return sub_100206638(v1, 0x10000, 1, v14, v11, v12 + v10);
  }

  else
  {

    sub_100213EA8();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1456) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_100201754, v19, v18);
  }
}

uint64_t sub_100201754()
{
  v147 = v0;
  v1 = *(v0 + 1456);

  *(v0 + 936) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
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
  v4 = sub_1004D7F3C();
  *(v0 + 1496) = v4;
  _s3__C4CodeOMa_0(0);
  *(v0 + 928) = 1;
  sub_100215A70(&qword_100634D10, _s3__C4CodeOMa_0);
  v5 = v4;
  v6 = sub_1004D7E9C();

  if (v6)
  {

    v7 = sub_1004D964C();
    v8 = sub_1004DDF9C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 992);
      v10 = *(v0 + 984);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v146[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000343A8(v10, v9, v146);
      _os_log_impl(&_mh_execute_header, v7, v8, "Intent id=%{public}s) — Offering replace intent options to user", v11, 0xCu);
      sub_100008D24(v12);
    }

    *(v0 + 1504) = sub_1004DDA3C();
    v14 = sub_1004DD9BC();
    *(v0 + 1512) = v14;
    *(v0 + 1520) = v13;

    return _swift_task_switch(sub_1002034E8, v14, v13);
  }

  *(v0 + 888) = 5;
  v17 = v5;
  v18 = sub_1004D7E9C();

  if (v18)
  {
    v143 = *(v0 + 1408);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1008);
    v21 = *(v0 + 976);

    v22 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v23 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_100008C70((v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
    sub_1000108DC(v21 + *(v19 + 28), v0 + 144, &qword_100639FE0);
    *(v0 + 216) = 2;
    (*(v23 + 8))(v0 + 144, v22, v23);
    sub_100215694(v0 + 144);
    sub_100213EA8();
    swift_allocError();
    *v24 = 1;
    *(v24 + 8) = 3;
    swift_willThrow();

    goto LABEL_9;
  }

  *(v0 + 856) = 3;
  v25 = v17;
  v26 = sub_1004D7E9C();

  if (v26)
  {
    sub_100213F40(*(v0 + 976), *(v0 + 1128), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *(v0 + 1128);
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(v0 + 1096);
      v30 = *(v0 + 1088);
      v31 = *(v0 + 1080);
      (*(v30 + 32))(v29, v28, v31);
      v32 = sub_1004D968C();
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
    v43[1] = sub_100204224;
    v44 = *(v0 + 992);
    v45 = *(v0 + 984);

    return sub_1001FD8E4(v32, v45, v44, v42 + v41);
  }

  _s3__C4CodeOMa_1(0);
  *(v0 + 848) = 1001;
  sub_100215A70(&unk_100639FB0, _s3__C4CodeOMa_1);
  v33 = v25;
  v34 = sub_1004D7E9C();

  if ((v34 & 1) == 0)
  {
    v46 = *(v0 + 1408);

LABEL_56:
    sub_100213E54();
    swift_allocError();
    *v87 = v2;
    v87[1] = v3;
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_9;
  }

  sub_100213F40(*(v0 + 976), *(v0 + 1120), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *(v0 + 1120);
  if (v35 == 1)
  {
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1080);
    (*(v38 + 32))(v37, v36, v39);
    v40 = sub_1004D968C();
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
  v49 = sub_1004DD21C();

  v50 = sub_1004DD43C();
  if (!*(v49 + 16))
  {

    goto LABEL_43;
  }

  v52 = sub_100056B84(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

  sub_10000904C(*(v49 + 56) + 32 * v52, v0 + 576);

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

    sub_1004D9B6C();

    v72 = *(v0 + 840);
    if (!v72)
    {
      goto LABEL_55;
    }

    v73 = [v33 userInfo];
    v74 = sub_1004DD21C();

    v75 = sub_1004DD43C();
    if (*(v74 + 16))
    {
      v77 = sub_100056B84(v75, v76);
      v79 = v78;

      if (v79)
      {
        v80 = (v0 + 832);
        sub_10000904C(*(v74 + 56) + 32 * v77, v0 + 608);

        type metadata accessor for MPCMusicBehaviorError(0);
        if (swift_dynamicCast())
        {
          v81 = *v80;
          *(v0 + 800) = *v80;
          sub_100215A70(&qword_100634C90, type metadata accessor for MPCMusicBehaviorError);
          sub_1004D7EFC();
          if (*(v0 + 792) == 6)
          {
            v145 = v0;
            *(v0 + 968) = v81;
            v82 = sub_1004D7F1C();
            v83 = sub_1004DD43C();
            if (*(v82 + 16) && (v85 = sub_100056B84(v83, v84), (v86 & 1) != 0))
            {
              sub_10000904C(*(v82 + 56) + 32 * v85, v0 + 512);
            }

            else
            {
              *(v0 + 512) = 0u;
              *(v0 + 528) = 0u;
            }

            if (!*(v0 + 536))
            {

              sub_10001074C(v0 + 512, &qword_100638E60);
              goto LABEL_55;
            }

            v88 = v0 + 768;
            sub_100004CB8(&qword_100639FC0);
            if (swift_dynamicCast())
            {
              v144 = v81;
              if (*(*v88 + 16))
              {
                v89 = *(*v88 + 32);

                *(v145 + 776) = v89;
                sub_1004D7EFC();
                if (*(v145 + 784) == 4)
                {
                  v142 = v89;
                  *(v145 + 752) = v89;
                  v90 = sub_1004D7F1C();
                  v91 = sub_1004DD43C();
                  if (*(v90 + 16) && (v93 = sub_100056B84(v91, v92), (v94 & 1) != 0))
                  {
                    v0 = v145;
                    sub_10000904C(*(v90 + 56) + 32 * v93, v145 + 640);
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
                    sub_100004CB8(&qword_100639FC8);
                    if (swift_dynamicCast())
                    {
                      if (*(*v95 + 16))
                      {
                        v96 = *(*v95 + 32);

                        *(v145 + 816) = v96;
                        type metadata accessor for MPCError(0);
                        sub_100215A70(&qword_100634CE0, type metadata accessor for MPCError);
                        sub_1004D7EFC();

                        if (*(v145 + 824) == 61)
                        {

                          v97 = sub_1004D964C();
                          v98 = sub_1004DDF9C();

                          if (os_log_type_enabled(v97, v98))
                          {
                            v99 = *(v145 + 992);
                            v100 = *(v145 + 984);
                            v101 = swift_slowAlloc();
                            v102 = swift_slowAlloc();
                            v146[0] = v102;
                            *v101 = 136446210;
                            *(v101 + 4) = sub_1000343A8(v100, v99, v146);
                            _os_log_impl(&_mh_execute_header, v97, v98, "Intent id=%{public}s) — SharePlayTogether content not available in host's storefront", v101, 0xCu);
                            sub_100008D24(v102);
                          }

                          v141 = (v145 + 376);
                          v103 = *(v145 + 1072);
                          v104 = *(v145 + 1064);
                          v105 = *(v145 + 1056);
                          v106 = *(v145 + 1048);
                          sub_1004DD37C();
                          v137 = *(v105 + 16);
                          v137(v104, v103, v106);
                          if (qword_100633A80 != -1)
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
                          v111 = qword_100671958;
                          sub_1004D838C();
                          v112 = v111;
                          v113 = sub_1004DD4AC();
                          v134 = v114;
                          v135 = v113;
                          v115 = *(v109 + 8);
                          v115(v107, v110);
                          sub_1004DD37C();
                          v137(v108, v107, v110);
                          sub_1004D838C();
                          v116 = sub_1004DD4AC();
                          v132 = v117;
                          v133 = v116;
                          v115(v107, v110);
                          sub_100004CB8(&qword_100634F40);
                          v118 = swift_allocObject();
                          *(v118 + 16) = xmmword_100511DA0;
                          sub_1004DD37C();
                          v137(v108, v107, v110);
                          sub_1004D838C();
                          v119 = sub_1004DD4AC();
                          v121 = v120;
                          v115(v107, v110);
                          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                          v122 = sub_1004D827C();
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
                          sub_100008C70((v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v125);
                          v127 = *(v145 + 424);
                          *(v145 + 256) = *(v145 + 408);
                          *(v145 + 272) = v127;
                          *(v145 + 288) = *(v145 + 440);
                          v128 = *(v145 + 392);
                          *(v145 + 224) = *v141;
                          *(v145 + 240) = v128;
                          *(v145 + 296) = 0;
                          v129 = *(v126 + 8);
                          sub_1000E9AD4(v141, v145 + 304);
                          v129(v145 + 224, v125, v126);

                          sub_100074384(v141);

                          sub_100215694(v145 + 224);
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

                    sub_10001074C(v0 + 640, &qword_100638E60);
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
  sub_100215A70(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);
  sub_1004D7EFC();
  if (*(v0 + 880) != 1000)
  {

    goto LABEL_44;
  }

  *(v0 + 896) = v55;
  v56 = sub_1004D7F1C();
  v57 = sub_1004DD43C();
  if (!*(v56 + 16))
  {

    goto LABEL_68;
  }

  v59 = sub_100056B84(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  sub_10000904C(*(v56 + 56) + 32 * v59, v0 + 544);

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
  sub_100215A70(&qword_100634CE0, type metadata accessor for MPCError);
  sub_1004D7EFC();
  if (*(v0 + 920) != 58)
  {

    goto LABEL_70;
  }

  v63 = sub_1004D964C();
  v64 = sub_1004DDF9C();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 992);
    v66 = *(v0 + 984);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v146[0] = v68;
    *v67 = 136446210;
    *(v67 + 4) = sub_1000343A8(v66, v65, v146);
    _os_log_impl(&_mh_execute_header, v63, v64, "Intent id=%{public}s) — SharedListening requires system route", v67, 0xCu);
    sub_100008D24(v68);
  }

  v69 = objc_opt_self();
  *(v0 + 1648) = v69;
  v70 = [v69 systemRoute];
  *(v0 + 1656) = v70;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_100204348;
  v71 = swift_continuation_init();
  *(v0 + 504) = sub_100004CB8(&unk_10063A4A0);
  *(v0 + 448) = _NSConcreteStackBlock;
  *(v0 + 456) = 1107296256;
  *(v0 + 464) = sub_1000FD4C4;
  *(v0 + 472) = &unk_1005E56E0;
  *(v0 + 480) = v71;
  [v69 setActiveRoute:v70 completion:v0 + 448];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100202D90()
{
  v2 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100203080;
  }

  else
  {

    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100202ECC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100202ECC()
{
  v1 = v0[177];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_100202F3C, v3, v2);
}

uint64_t sub_100202F3C()
{
  v1 = *(v0 + 1408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100203080()
{

  v0[182] = v0[184];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_100201754, v2, v1);
}

uint64_t sub_1002030FC()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100203248()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100203394()
{
  v1 = v0[171];
  v2 = v0[155];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002034E8()
{
  v1 = sub_1004DDA3C();
  *(v0 + 1528) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1004DD9BC();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_10020357C, v2, v4);
}

uint64_t sub_10020357C()
{
  v1 = v0[126];
  v0[2] = v0;
  v0[7] = v0 + 92;
  v0[3] = sub_100203630;
  v2 = swift_continuation_init();
  sub_100209000(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100203630()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 1536) = *(*v0 + 736);
  *(v2 + 298) = *(v2 + 744);
  v3 = *(v1 + 1520);
  v4 = *(v1 + 1512);

  return _swift_task_switch(sub_100203754, v4, v3);
}

uint64_t sub_100203754()
{

  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_1002037BC, v2, v1);
}

uint64_t sub_1002037BC()
{
  if (*(v0 + 298))
  {
    v1 = *(v0 + 1496);
    v2 = *(v0 + 1408);

    sub_100213EA8();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 3;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_100213F40(*(v0 + 976), *(v0 + 1136), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 1136);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1088);
      v10 = *(v0 + 1080);
      (*(v9 + 32))(v8, v7, v10);
      v11 = sub_1004D968C();
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v11 = *v7;
    }

    *(v0 + 1544) = v11;
    *(v0 + 1552) = sub_1004DDA3C();
    v13 = sub_1004DD9BC();
    *(v0 + 1560) = v13;
    *(v0 + 1568) = v12;

    return _swift_task_switch(sub_100203A78, v13, v12);
  }
}

uint64_t sub_100203A78()
{
  v21 = v0;
  v1 = sub_100208A70(*(v0 + 1544), *(v0 + 1360), *(v0 + 1536));
  *(v0 + 1576) = v1;
  if (v1[2])
  {

    v2 = sub_1004D964C();
    v3 = sub_1004DDF9C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000343A8(v5, v4, v20);
      *(v6 + 12) = 2082;
      sub_100004CB8(&qword_100639DA0);
      v7 = sub_1004DD88C();
      v9 = sub_1000343A8(v7, v8, v20);

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
    v13[1] = sub_100203E90;
    v14 = *(v0 + 1408);

    return sub_100206638(v1, 0x10000, 0, v14, v10, v12 + v11);
  }

  else
  {

    sub_100213EA8();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1584) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_100203D14, v19, v18);
  }
}

uint64_t sub_100203D14()
{
  v1 = v0[193];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100203E90()
{
  v2 = *v1;
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v3 = *(v2 + 1568);
    v4 = *(v2 + 1560);
    v5 = sub_1002041A8;
  }

  else
  {

    v3 = *(v2 + 1568);
    v4 = *(v2 + 1560);
    v5 = sub_100203FCC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100203FCC()
{
  v1 = v0[193];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_10020403C, v3, v2);
}

uint64_t sub_10020403C()
{
  v1 = v0[187];

  v2 = v0[176];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002041A8()
{

  v0[198] = v0[200];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_100203D14, v2, v1);
}

uint64_t sub_100204224()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  if (v0)
  {
    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_100204DBC;
  }

  else
  {

    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_100216E58;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100204348()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1664) = v2;
  v3 = *(v1 + 1208);
  v4 = *(v1 + 1200);
  if (v2)
  {
    v5 = sub_100204F38;
  }

  else
  {
    v5 = sub_100204478;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100204478()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 976);

  sub_100213F40(v2, v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 1112);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 1096);
    v6 = *(v0 + 1088);
    v7 = *(v0 + 1080);
    (*(v6 + 32))(v5, v4, v7);
    v8 = sub_1004D968C();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = *v4;
  }

  *(v0 + 1672) = v8;
  *(v0 + 1680) = [*(v0 + 1648) systemRoute];
  *(v0 + 1688) = sub_1004DDA3C();
  v10 = sub_1004DD9BC();
  *(v0 + 1696) = v10;
  *(v0 + 1704) = v9;

  return _swift_task_switch(sub_1002045D0, v10, v9);
}

uint64_t sub_1002045D0()
{
  v22 = v0;
  v1 = sub_100208A70(*(v0 + 1672), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1712) = v1;
  if (v1[2])
  {

    v2 = sub_1004D964C();
    v3 = sub_1004DDF9C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000343A8(v5, v4, v21);
      *(v6 + 12) = 2082;
      sub_100004CB8(&qword_100639DA0);
      v7 = sub_1004DD88C();
      v9 = sub_1000343A8(v7, v8, v21);

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
    v14[1] = sub_100204A04;

    return sub_100206638(v1, 0x10000, 1, v10, v11, v13 + v12);
  }

  else
  {
    v16 = *(v0 + 1680);

    sub_100213EA8();
    v17 = swift_allocError();
    *v18 = v1;
    *(v18 + 8) = 1;
    swift_willThrow();

    *(v0 + 1720) = v17;
    v19 = *(v0 + 1208);
    v20 = *(v0 + 1200);

    return _swift_task_switch(sub_100204878, v20, v19);
  }
}

uint64_t sub_100204878()
{
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100204A04()
{
  v2 = *v1;
  *(*v1 + 1736) = v0;

  if (v0)
  {
    v3 = *(v2 + 1704);
    v4 = *(v2 + 1696);
    v5 = sub_100204D34;
  }

  else
  {

    v3 = *(v2 + 1704);
    v4 = *(v2 + 1696);
    v5 = sub_100204B40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100204B40()
{
  v1 = v0[210];
  v2 = v0[209];

  v3 = v0[151];
  v4 = v0[150];

  return _swift_task_switch(sub_100204BB8, v4, v3);
}

uint64_t sub_100204BB8()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[187];

  v4 = v0[176];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100204D34()
{

  *(v0 + 1720) = *(v0 + 1736);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_100204878, v2, v1);
}

uint64_t sub_100204DBC()
{
  v1 = v0[201];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100204F38()
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

uint64_t sub_1002050CC(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  sub_1004DDA4C();
  v2[28] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();
  v2[29] = v4;
  v2[30] = v3;

  return _swift_task_switch(sub_100205164, v4, v3);
}

uint64_t sub_100205164()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 248) = v3;
  if (v3)
  {

    if (sub_100214490(&_mh_execute_header))
    {
      if (qword_100633DA0 != -1)
      {
        swift_once();
      }

      v4 = sub_1004D966C();
      *(v0 + 272) = sub_100035430(v4, static Logger.playbackController);
      v5 = sub_1004D964C();
      v6 = sub_1004DDF9C();
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
      v8[1] = sub_100205770;
      v9 = *(v0 + 208);
      v10 = 5.0;
      v11 = v0 + 136;
    }

    else
    {
      if (qword_100633DA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1004D966C();
      sub_100035430(v14, static Logger.playbackController);
      v15 = sub_1004D964C();
      v16 = sub_1004DDF9C();
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
      v18[1] = sub_1002054B4;
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

uint64_t sub_1002054B4(void *a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_1002059E0;
  }

  else
  {

    sub_100008D24(v4 + 96);
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_1002055E0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002055E0()
{
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  *(v0 + 272) = sub_100035430(v1, static Logger.playbackController);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
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
  v5[1] = sub_100205770;
  v6 = *(v0 + 208);

  return Player.performWhenAvailable(_:options:issuer:timeout:)(v0 + 136, 0, 0, 0, v6, 5.0);
}

uint64_t sub_100205770(void *a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_100205C20;
  }

  else
  {

    sub_100008D24(v4 + 136);
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_10020589C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10020589C()
{

  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Auto-Sing] Vocals command performed", v3, 2u);
  }

  v4 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v5 = v4[3];
  v6 = v4[4];
  sub_100008C70(v4, v5);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v6 + 8))(v0 + 16, v5, v6);

  sub_100215694(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002059E0()
{
  v16 = v0;

  sub_100008D24(v0 + 96);
  v1 = *(v0 + 264);
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  sub_100035430(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = sub_1004D964C();
  v4 = sub_1004DDF7C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v7 = sub_1004DD4DC();
    v9 = sub_1000343A8(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_100008C70(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_100215694(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100205C20()
{
  v16 = v0;

  sub_100008D24(v0 + 136);
  v1 = *(v0 + 288);
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  sub_100035430(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = sub_1004D964C();
  v4 = sub_1004DDF7C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v7 = sub_1004DD4DC();
    v9 = sub_1000343A8(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_100008C70(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_100215694(v0 + 16);
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
    v7 = sub_100008C70(a1, v5);

    v8 = sub_100233870(v7, v4, v5, v6);
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
  sub_1004DDA4C();
  *(v4 + 72) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return _swift_task_switch(sub_100206048, v6, v5);
}

uint64_t sub_100206048()
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
    v4[1] = sub_100206164;
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

uint64_t sub_100206164(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1002062FC;
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100206294;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100206294()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002062FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100206450(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1004DD9BC();
    v7 = v6;
    v8 = sub_100053270;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1004DD9BC();
    v7 = v9;
    v8 = sub_1002065D0;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1002065D0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100206638(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = v6;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 89) = a3;
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
  sub_1004DDA4C();
  *(v7 + 192) = sub_1004DDA3C();
  v9 = sub_1004DD9BC();
  *(v7 + 200) = v9;
  *(v7 + 208) = v8;

  return _swift_task_switch(sub_1002066DC, v9, v8);
}

uint64_t sub_1002066DC()
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
    v4[1] = sub_1002067FC;
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

uint64_t sub_1002067FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_100206CE4;
  }

  else
  {

    v4[31] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_10020692C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10020692C()
{
  v37 = v1;
  v2 = *(v1 + 248);

  v3 = (v2 & 0xFFFFFFFFFFFFFF8);
  if (v2 >> 62)
  {
    v4 = sub_1004DED5C();
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
      sub_100216DA0(v4);
      goto LABEL_13;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = sub_1004DEB2C();
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
  if (qword_100633DA0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v7 = sub_1004D966C();
  sub_100035430(v7, static Logger.playbackController);

  v8 = v3;
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();

  v34 = v8;
  v35 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136446466;
    sub_100004CB8(&qword_100639DA0);
    v12 = sub_1004DD88C();
    v14 = sub_1000343A8(v12, v13, &v36);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = v8;
    v16 = [v15 description];
    v17 = sub_1004DD43C();
    v19 = v18;

    v20 = sub_1000343A8(v17, v19, &v36);

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
  sub_100008C70((v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v25);
  v27 = (*(v26 + 40))(v25, v26);
  v28 = *(v22 + v21);
  v29 = v24[3];
  v30 = v24[4];
  sub_100008C70(v24, v29);
  v31 = v23;

  MPCPlayerCommandDialog.alert(context:completion:)(v23, v27, v28, 0, 0, (v1 + 16));
  *(v1 + 88) = 0;
  (*(v30 + 8))(v1 + 16, v29, v30);
  sub_100215694(v1 + 16);

LABEL_13:
  v32 = *(v1 + 8);

  return v32(v2);
}

uint64_t sub_100206CE4()
{
  v46 = v0;
  v2 = *(v0 + 240);

  *(v0 + 136) = v2;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = (v3 >> 62);
  if (v3 >> 62)
  {
    if (!sub_1004DED5C())
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
    v6 = sub_1004DEB2C();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      v9 = sub_1004DED5C();
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;
  v1 = &selRef_scaledValueForValue_;
  v8 = [v6 dialog];

  if (!v8)
  {
LABEL_27:
    sub_100213E54();
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
    sub_100216DA0(v4);
    goto LABEL_22;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v10 = sub_1004DEB2C();
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
  v9 = [v10 v1[313]];
  if (!v9)
  {

    goto LABEL_21;
  }

  v42 = (v0 + 16);
  if (qword_100633DA0 != -1)
  {
LABEL_37:
    v40 = v9;
    swift_once();
    v9 = v40;
  }

  v44 = v9;
  v11 = sub_1004D966C();
  sub_100035430(v11, static Logger.playbackController);

  v12 = v5;
  v13 = sub_1004D964C();
  v14 = sub_1004DDF9C();

  v43 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v15 = 136446466;
    sub_100004CB8(&qword_100639DA0);
    v16 = sub_1004DD88C();
    v18 = sub_1000343A8(v16, v17, v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = v12;
    v20 = [v19 description];
    v21 = sub_1004DD43C();
    v23 = v22;

    v24 = sub_1000343A8(v21, v23, v45);

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
  sub_100008C70((v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v29);
  v31 = (*(v30 + 40))(v29, v30);
  v32 = *(v26 + v25);
  v33 = v28[3];
  v34 = v28[4];
  sub_100008C70(v28, v33);
  v41 = v27;

  MPCPlayerCommandDialog.alert(context:completion:)(v27, v31, v32, 0, 0, v42);
  *(v0 + 88) = 0;
  (*(v34 + 8))(v42, v33, v34);
  sub_100215694(v42);
  if (v4)
  {

    sub_100213E54();
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

uint64_t sub_100207280(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_1004D96BC();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[32] = swift_task_alloc();
  v3[33] = sub_1004DDA4C();
  v3[34] = sub_1004DDA3C();
  v6 = sub_1004DD9BC();
  v3[35] = v6;
  v3[36] = v5;

  return _swift_task_switch(sub_1002073AC, v6, v5);
}

uint64_t sub_1002073AC()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 296) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v1 + v2) && (swift_getKeyPath(), swift_getKeyPath(), , sub_1004D9B6C(), , , , v3 = *(v0 + 192), (*(v0 + 304) = v3) != 0))
  {
    v5 = *(v0 + 200);
    v4 = [objc_opt_self() sharedController];
    LODWORD(v5) = sub_10020A2A4(v5);

    if (v5)
    {
      sub_100213F40(*(v0 + 208), *(v0 + 256), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v0 + 256);
      if (EnumCaseMultiPayload == 1)
      {
        v9 = *(v0 + 232);
        v8 = *(v0 + 240);
        v10 = *(v0 + 224);
        (*(v9 + 32))(v8, v7, v10);
        v11 = sub_1004D968C();
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
        v26 = sub_1004DDA3C();
        *(v0 + 312) = v26;
        if (v26)
        {
          swift_getObjectType();
          v13 = sub_1004DD9BC();
          v15 = v27;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_100207750;
        goto LABEL_28;
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = *(v0 + 200);
    v3 = [objc_opt_self() sharedController];
    LOBYTE(v5) = sub_10020A2A4(v5);
  }

LABEL_7:

  *(v0 + 345) = v5;
  v12 = sub_1004DDA3C();
  *(v0 + 328) = v12;
  if (v12)
  {
    swift_getObjectType();
    v13 = sub_1004DD9BC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_100207AC0;
LABEL_28:
  v25 = v16;
  v18 = v13;

  return _swift_task_switch(v25, v18, v15);
}

uint64_t sub_100207750()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = sub_10020784C;
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    Player.requestSharePlayTogether(completion:)(sub_100216AE8, v8);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_10020784C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_100207A34;
  }

  else
  {

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_100207994;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100207994()
{
  *(v0 + 345) = 0;
  v1 = sub_1004DDA3C();
  *(v0 + 328) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1004DD9BC();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100207AC0, v2, v4);
}

uint64_t sub_100207A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100207AC0()
{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = sub_100207B78;
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  sub_10020A420(v5, v4, v3, v2);

  return _swift_continuation_await(v1);
}

uint64_t sub_100207B78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_100207D48;
  }

  else
  {

    *(v1 + 346) = *(v1 + 344);
    v3 = *(v1 + 280);
    v4 = *(v1 + 288);
    v5 = sub_100207CC8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100207CC8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

uint64_t sub_100207D48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100207DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  sub_1004D83FC();
  v4[42] = swift_task_alloc();
  v5 = sub_1004DD3EC();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = sub_1004D96BC();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[51] = swift_task_alloc();
  v4[52] = sub_1004DDA4C();
  v4[53] = sub_1004DDA3C();
  v8 = sub_1004DD9BC();
  v4[54] = v8;
  v4[55] = v7;

  return _swift_task_switch(sub_100207F8C, v8, v7);
}

uint64_t sub_100207F8C()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  sub_1000108DC(v1 + *(v2 + 28), v0 + 80, &qword_100639FE0);
  sub_1000108DC(v0 + 80, v0 + 200, &qword_100639FE0);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    sub_100008C70((v0 + 200), *(v0 + 224));
    sub_10020B068(v3, v4, (v0 + 160));
    sub_100008D24(v0 + 200);
    if (*(v0 + 184))
    {
      sub_100035850((v0 + 160), v0 + 120);
      sub_100008C70((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (qword_100633E88 != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = (off_10063CE88 + 32);
      v7 = *(off_10063CE88 + 2) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 2;
        if (v8 == DynamicType)
        {
          sub_100008D24(v0 + 120);
          goto LABEL_11;
        }
      }

      sub_100213F40(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *(v0 + 408);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = *(v0 + 376);
        (*(v34 + 32))(v33, v32, v35);
        v36 = sub_1004D968C();
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
      v39[1] = sub_1002084B4;
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return sub_1001FD8E4(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    sub_10001074C(v0 + 200, &qword_100639FE0);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  sub_10001074C(v0 + 160, &qword_100639FE0);
LABEL_11:
  if (qword_100633E90 != -1)
  {
    swift_once();
  }

  v9 = sub_1004D966C();
  sub_100035430(v9, static Logger.sharedListening);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  sub_1000108DC(v0 + 80, v0 + 240, &qword_100639FE0);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    sub_100008C70((v0 + 240), *(v0 + 264));
    v15 = sub_10020B52C(v13, v14);
    v17 = v16;
    sub_100008D24(v0 + 240);
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    sub_10001074C(v0 + 240, &qword_100639FE0);
    sub_1004DD37C();
    (*(v21 + 16))(v18, v19, v20);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = qword_100671958;
    sub_1004D838C();
    v15 = sub_1004DD4AC();
    v17 = v26;
    (*(v24 + 8))(v22, v23);
  }

  *(v0 + 472) = v17;
  *(v0 + 480) = v15;
  v27 = sub_1004DDA3C();
  *(v0 + 488) = v27;
  if (v27)
  {
    swift_getObjectType();
    v28 = sub_1004DD9BC();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return _swift_task_switch(sub_1002086D4, v28, v30);
}

uint64_t sub_1002084B4()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_1002089A4;
  }

  else
  {
    v6 = sub_100208608;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100208608()
{

  sub_100008D24(v0 + 120);
  sub_10001074C(v0 + 80, &qword_100639FE0);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_1002086D4()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_1002087AC;
  v5 = swift_continuation_init();
  sub_10020C11C(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002087AC()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(sub_1002088C8, v4, v3);
}

uint64_t sub_1002088C8()
{

  sub_10001074C(v0 + 80, &qword_100639FE0);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

uint64_t sub_1002089A4()
{

  sub_100008D24(v0 + 120);
  sub_10001074C(v0 + 80, &qword_100639FE0);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100208A70(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && sub_100214010(v10, a3))
    {
      v9 = sub_10003A968(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_10003A968((v11 > 1), v12 + 1, 1, v9);
      }

      v40 = &type metadata for Player.ReplaceCommand;
      v41 = &protocol witness table for Player.ReplaceCommand;
      *&v39 = v10;
      *(&v39 + 1) = a3;
      v9[2] = v12 + 1;
      v13 = &v9[5 * v12];
      goto LABEL_34;
    }

    if (a2)
    {
      sub_100004CB8(&unk_100639D70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1005126C0;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (sub_100214240(v19, 0) && sub_100214370(1))
      {
        sub_1000451E0(inited);
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
        sub_100035868(&v39, v38);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10003A968(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_10003A968((v25 > 1), v26 + 1, 1, v9);
        }

        v27 = sub_100216A88(v38, v38[3]);
        __chkstk_darwin(v27);
        v29 = (&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v30 + 16))(v29);
        v31 = *v29;
        v32 = v29[1];
        v36 = &type metadata for Player.ReplaceCommand;
        v37 = &protocol witness table for Player.ReplaceCommand;
        *&v35 = v31;
        *(&v35 + 1) = v32;
        v9[2] = v26 + 1;
        sub_100035850(&v35, &v9[5 * v26 + 4]);
        sub_100008D24(v38);
        v42 = v9;
      }

      sub_100008D24(&v39);
      if (!sub_10021412C(0))
      {

        return v42;
      }

      v9 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10003A968(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v33 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v33 >> 1)
      {
        v9 = sub_10003A968((v33 > 1), v17 + 1, 1, v9);
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
        v15 = sub_100214240(v14, 0);

        if (v15)
        {
          v9 = sub_10003A968(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = sub_10003A968((v16 > 1), v17 + 1, 1, v9);
          }

          v40 = &type metadata for Player.InsertCommand;
          v41 = &protocol witness table for Player.InsertCommand;
          v39 = v14;
          v9[2] = v17 + 1;
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = sub_100214240(v10, 1), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = sub_10003A968(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        v9 = sub_10003A968((v22 > 1), v17 + 1, 1, v9);
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
    sub_100035850(&v39, (v13 + 4));
  }

  return v9;
}

uint64_t sub_100209000(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v61 = a1;
  v63 = sub_1004D82AC();
  v2 = *(v63 - 8);
  __chkstk_darwin(v63);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004D83FC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1004DD3EC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  sub_1004DD37C();
  v62 = *(v7 + 16);
  v55 = v7 + 16;
  v62(v10, v12, v6);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v13 = qword_100671958;
  v14 = qword_100671958;
  v53 = v13;
  v15 = v14;
  sub_1004D838C();
  v59 = v15;
  v51 = sub_1004DD4AC();
  v50 = v16;
  v42 = *(v7 + 8);
  v42(v12, v6);
  v49 = swift_allocObject();
  v17 = v61;
  *(v49 + 16) = v61;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v48 = sub_1004D827C();
  v60 = v18;
  v54 = *(v2 + 8);
  v54(v4, v63);
  sub_1004DD37C();
  v62(v10, v12, v6);
  sub_1004D838C();
  v59 = v59;
  v41 = v7 + 8;
  v47 = sub_1004DD4AC();
  v57 = v19;
  v20 = v42;
  v42(v12, v6);
  v46 = swift_allocObject();
  *(v46 + 16) = v17;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v45 = sub_1004D827C();
  v56 = v21;
  v54(v4, v63);
  sub_1004DD37C();
  v22 = v62;
  v62(v10, v12, v6);
  sub_1004D838C();
  v23 = v59;
  v44 = sub_1004DD4AC();
  v59 = v24;
  v20(v12, v6);
  v58 = swift_allocObject();
  *(v58 + 16) = v61;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v61 = sub_1004D827C();
  v43 = v25;
  v54(v4, v63);
  sub_1004DD37C();
  v22(v10, v12, v6);
  sub_1004D838C();
  v63 = sub_1004DD4AC();
  v27 = v26;
  v20(v12, v6);
  sub_100004CB8(&qword_100634F40);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100511A40;
  v29 = v60;
  *(v28 + 32) = v48;
  *(v28 + 40) = v29;
  v30 = v50;
  *(v28 + 48) = v51;
  *(v28 + 56) = v30;
  *(v28 + 64) = 2;
  v31 = v49;
  *(v28 + 72) = &unk_100520980;
  *(v28 + 80) = v31;
  v32 = v56;
  *(v28 + 88) = v45;
  *(v28 + 96) = v32;
  v33 = v57;
  *(v28 + 104) = v47;
  *(v28 + 112) = v33;
  *(v28 + 120) = 1;
  v34 = v46;
  *(v28 + 128) = &unk_100520990;
  *(v28 + 136) = v34;
  v35 = v43;
  *(v28 + 144) = v61;
  *(v28 + 152) = v35;
  v36 = v59;
  *(v28 + 160) = v44;
  *(v28 + 168) = v36;
  *(v28 + 176) = 0;
  v37 = v58;
  *(v28 + 184) = &unk_1005209A0;
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
  v63 = sub_100008C70((v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v38);
  v65[2] = v70;
  v65[3] = v71;
  v66 = v72;
  v65[0] = v68;
  v65[1] = v69;
  v67 = 0;
  v62 = *(v39 + 8);

  sub_1000E9AD4(&v68, v64);
  v62(v65, v38, v39);
  sub_100074384(&v68);

  return sub_100215694(v65);
}

uint64_t sub_100209844()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 2;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002098EC()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 1;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100209994()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100209A1C(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v56 = a1;
  v52 = sub_1004D82AC();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D83FC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004DD3EC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  sub_1004DD37C();
  v55 = *(v6 + 16);
  v55(v9, v11, v5);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v12 = qword_100671958;
  v13 = qword_100671958;
  v41 = v12;
  v14 = v13;
  sub_1004D838C();
  v45 = v14;
  v50 = sub_1004DD4AC();
  v49 = v15;
  v54 = *(v6 + 8);
  v54(v11, v5);
  v48 = swift_allocObject();
  *(v48 + 16) = v56;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v47 = sub_1004D827C();
  v46 = v16;
  v40 = v6 + 8;
  v39 = *(v51 + 8);
  v17 = v52;
  v39(v3, v52);
  sub_1004DD37C();
  v55(v9, v11, v5);
  sub_1004D838C();
  v42 = v45;
  v51 = sub_1004DD4AC();
  v45 = v18;
  v54(v11, v5);
  v44 = swift_allocObject();
  *(v44 + 16) = v56;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v43 = sub_1004D827C();
  v56 = v19;
  v39(v3, v17);
  sub_1004DD37C();
  v20 = v55;
  v55(v9, v11, v5);
  sub_1004D838C();
  v21 = v42;
  v52 = sub_1004DD4AC();
  v42 = v22;
  v23 = v54;
  v54(v11, v5);
  sub_1004DD37C();
  v20(v9, v11, v5);
  sub_1004D838C();
  v24 = sub_1004DD4AC();
  v26 = v25;
  v23(v11, v5);
  sub_100004CB8(&qword_100634F40);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1005126C0;
  v28 = v46;
  *(v27 + 32) = v47;
  *(v27 + 40) = v28;
  v29 = v49;
  *(v27 + 48) = v50;
  *(v27 + 56) = v29;
  *(v27 + 64) = 2;
  v30 = v48;
  *(v27 + 72) = &unk_1005209D0;
  *(v27 + 80) = v30;
  v31 = v56;
  *(v27 + 88) = v43;
  *(v27 + 96) = v31;
  v32 = v45;
  *(v27 + 104) = v51;
  *(v27 + 112) = v32;
  *(v27 + 120) = 0;
  v33 = v44;
  *(v27 + 128) = &unk_1005209E0;
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
  v55 = sub_100008C70((v53 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v34);
  v58[2] = v63;
  v58[3] = v64;
  v59 = v65;
  v58[0] = v61;
  v58[1] = v62;
  v60 = 0;
  v36 = *(v35 + 8);

  sub_1000E9AD4(&v61, v57);
  v36(v58, v34, v35);
  sub_100074384(&v61);

  return sub_100215694(v58);
}

uint64_t sub_10020A188()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020A228()
{
  **(*(*(v0 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020A2A4(uint64_t result)
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

uint64_t sub_10020A37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100004CB8(&qword_100638980);
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

uint64_t sub_10020A420(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v70 = a3;
  v72 = a1;
  v6 = sub_1004D82AC();
  v69 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004D83FC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1004DD3EC();
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
    **(*(v72 + 64) + 40) = 0;

    return swift_continuation_throwingResume();
  }

  if (v17 == 2)
  {
    if (qword_100633DA0 != -1)
    {
      swift_once();
    }

    v18 = sub_1004D966C();
    sub_100035430(v18, static Logger.playbackController);
    v19 = sub_1004D964C();
    v20 = sub_1004DDF9C();
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
    sub_1004DD37C();
    v23 = v71;
    (*(v71 + 16))(v13, v15, v10);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v24 = qword_100671958;
    sub_1004D838C();
    v67 = sub_1004DD4AC();
    v66 = v25;
    (*(v23 + 8))(v15, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = v72;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v65 = sub_1004D827C();
    v64 = v27;
    (*(v69 + 8))(v8, v6);
    v28 = sub_10003A840(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_10003A840((v29 > 1), v30 + 1, 1, v28);
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
    *(v31 + 9) = &unk_1005209C0;
    *(v31 + 10) = v26;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v34 = v71;
  v67 = v6;
  sub_1004DD37C();
  v35 = *(v34 + 16);
  v66 = v34 + 16;
  v65 = v35;
  v35(v13, v15, v10);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v36 = qword_100671958;
  v37 = qword_100671958;
  sub_1004D838C();
  v38 = v37;
  v64 = v36;
  v62 = sub_1004DD4AC();
  v40 = v39;
  v63 = *(v34 + 8);
  v63(v15, v10);
  v41 = swift_allocObject();
  *(v41 + 16) = v72;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v60 = sub_1004D827C();
  v43 = v42;
  (*(v69 + 8))(v8, v67);
  v72 = v43;

  v69 = v41;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v34 + 8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_10003A840(0, *(v28 + 2) + 1, 1, v28);
  }

  v46 = *(v28 + 2);
  v45 = *(v28 + 3);
  if (v46 >= v45 >> 1)
  {
    v28 = sub_10003A840((v45 > 1), v46 + 1, 1, v28);
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
  *(v47 + 9) = &unk_1005209B0;
  *(v47 + 10) = v49;
  v50 = sub_10020AE18(v70);
  v52 = v51;
  sub_1004DD37C();
  v65(v13, v15, v10);
  sub_1004D838C();
  v53 = sub_1004DD4AC();
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
  sub_100008C70((v68 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v56);
  v74[2] = v79;
  v74[3] = v80;
  v75 = v81;
  v74[0] = v77;
  v74[1] = v78;
  v76 = 0;
  v58 = *(v57 + 8);
  sub_1000E9AD4(&v77, v73);
  v58(v74, v56, v57);
  sub_100074384(&v77);

  return sub_100215694(v74);
}

uint64_t sub_10020ACF8()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020AD98()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020AE18(void *a1)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  sub_1004DD37C();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v10 = qword_100671958;
  sub_1004D838C();
  v11 = sub_1004DD4AC();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t sub_10020B068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a3;
  v39 = a2;
  v47 = sub_1004D8BFC();
  v40 = *(v47 - 8);
  v4 = __chkstk_darwin(v47);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v37 - v6;
  v7 = sub_1004DCF8C();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1004DD01C();
  v42 = *(v48 - 8);
  v9 = __chkstk_darwin(v48);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_1004DCAAC();
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
      sub_1004DCF9C();
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
        v35 = sub_1000357EC(v25);
        v24(v35, v50, a1);
      }
    }
  }

  return (*(v21 + 8))(v23, a1);
}

uint64_t sub_10020B52C(uint64_t a1, uint64_t a2)
{
  v42 = sub_1004DCD1C();
  v40[0] = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004D8FEC();
  v40[1] = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1004D92AC();
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1004DD05C();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1004DCA0C();
  v49 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1004DC2DC();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004D83FC();
  __chkstk_darwin(v11 - 8);
  v56 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DD3EC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v40 - v18;
  v20 = sub_1004DC95C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10020B068(a1, a2, v58);
  if (!v58[3])
  {
    goto LABEL_31;
  }

  sub_1000108DC(v58, v57, &qword_100639FE0);
  sub_100004CB8(&qword_100639FE8);
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v14 + 16))(v17, v19, v13);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v24 = qword_100671958;
    sub_1004D838C();
    v25 = sub_1004DD4AC();
    (*(v14 + 8))(v19, v13);
    (*(v21 + 8))(v23, v20);
    goto LABEL_20;
  }

  v26 = v55;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v14 + 16))(v17, v19, v13);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v27 = qword_100671958;
    sub_1004D838C();
    v25 = sub_1004DD4AC();
    (*(v14 + 8))(v19, v13);
    (*(v52 + 8))(v10, v26);
    goto LABEL_20;
  }

  v29 = v53;
  v28 = v54;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v14 + 16))(v17, v19, v13);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v30 = qword_100671958;
    sub_1004D838C();
    v25 = sub_1004DD4AC();
    (*(v14 + 8))(v19, v13);
    v31 = v49;
    goto LABEL_19;
  }

  v29 = v50;
  v28 = v51;
  if (swift_dynamicCast())
  {
    sub_1004DD37C();
    (*(v14 + 16))(v17, v19, v13);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v32 = qword_100671958;
    sub_1004D838C();
    v25 = sub_1004DD4AC();
    (*(v14 + 8))(v19, v13);
    v33 = &v62;
LABEL_18:
    v31 = *(v33 - 32);
LABEL_19:
    (*(v31 + 8))(v29, v28);
LABEL_20:
    sub_100008D24(v57);
    sub_10001074C(v58, &qword_100639FE0);
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
      sub_1004DD37C();
      (*(v14 + 16))(v17, v19, v13);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v37 = qword_100671958;
      sub_1004D838C();
      v25 = sub_1004DD4AC();
      (*(v14 + 8))(v19, v13);
      v33 = &v59;
      goto LABEL_18;
    }

    sub_100008D24(v57);
LABEL_31:
    sub_10001074C(v58, &qword_100639FE0);
    goto LABEL_32;
  }

  v36 = &v61;
LABEL_25:
  (*(*(v36 - 32) + 8))(v34, v35);
  sub_100008D24(v57);
  sub_10001074C(v58, &qword_100639FE0);
LABEL_32:
  sub_1004DD37C();
  (*(v14 + 16))(v17, v19, v13);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v38 = qword_100671958;
  sub_1004D838C();
  v25 = sub_1004DD4AC();
  (*(v14 + 8))(v19, v13);
  return v25;
}

uint64_t sub_10020C11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v106 = a4;
  *(&v106 + 1) = a5;
  v124 = a1;
  v125 = a3;
  v107 = a2;
  v5 = sub_1004D96BC();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v103 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = __chkstk_darwin(v123);
  v102 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v111 = &v101 - v9;
  v10 = sub_1004D82AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004D83FC();
  __chkstk_darwin(v14 - 8);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DD3EC();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v101 - v22;
  sub_1004DD37C();
  v113 = *(v18 + 16);
  v114 = v18 + 16;
  v113(v21, v23, v17);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v24 = qword_100671958;
  v108 = qword_100671958;
  sub_1004D838C();
  v115 = v21;
  v112 = v24;
  v118 = v16;
  v25 = sub_1004DD4AC();
  v27 = v26;
  v28 = *(v18 + 8);
  v116 = v23;
  v117 = v18 + 8;
  v119 = v17;
  v110 = v28;
  v28(v23, v17);
  v29 = swift_allocObject();
  *(v29 + 16) = v124;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v30 = sub_1004D827C();
  v32 = v31;
  v33 = *(v11 + 8);
  v120 = v13;
  v121 = v11 + 8;
  v122 = v10;
  v109 = v33;
  v33(v13, v10);
  v34 = sub_10003A840(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_10003A840((v35 > 1), v36 + 1, 1, v34);
  }

  v37 = v107;
  *(v34 + 2) = v36 + 1;
  v38 = &v34[56 * v36];
  *(v38 + 4) = v30;
  *(v38 + 5) = v32;
  *(v38 + 6) = v25;
  *(v38 + 7) = v27;
  v38[64] = 2;
  *(v38 + 9) = &unk_100520940;
  *(v38 + 10) = v29;
  v39 = v111;
  sub_100213F40(v37, v111, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v103;
    v41 = v104;
    v42 = v39;
    v43 = v105;
    (*(v104 + 32))(v103, v42, v105);
    v111 = sub_1004D968C();
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
    v49 = sub_100214240(v48, 0);

    if (v49)
    {
      sub_1004DD37C();
      v50 = v119;
      v113(v115, v45, v119);
      v51 = v108;
      sub_1004D838C();
      v52 = sub_1004DD4AC();
      v54 = v53;
      v110(v45, v50);
      v55 = swift_allocObject();
      *(v55 + 16) = v124;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v56 = sub_1004D827C();
      v58 = v57;
      v109(v44, v122);
      v60 = *(v34 + 2);
      v59 = *(v34 + 3);
      if (v60 >= v59 >> 1)
      {
        v34 = sub_10003A840((v59 > 1), v60 + 1, 1, v34);
      }

      *(v34 + 2) = v60 + 1;
      v61 = &v34[56 * v60];
      *(v61 + 4) = v56;
      *(v61 + 5) = v58;
      *(v61 + 6) = v52;
      *(v61 + 7) = v54;
      v61[64] = 2;
      *(v61 + 9) = &unk_100520970;
      *(v61 + 10) = v55;
      v44 = v120;
      v45 = v116;
      v37 = v107;
    }
  }

  v62 = v102;
  sub_100213F40(v37, v102, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = v103;
    v64 = v104;
    v65 = v62;
    v66 = v105;
    (*(v104 + 32))(v103, v65, v105);
    v67 = sub_1004D968C();
    (*(v64 + 8))(v63, v66);
  }

  else
  {
    v67 = *v62;
  }

  v68 = *(v125 + v46);
  v123 = v67;
  if (v68 && (, v69 = v67, v70 = sub_100214240(v69, 1), v69, , v70))
  {
    sub_1004DD37C();
    v71 = v119;
    v113(v115, v45, v119);
    v72 = v108;
    sub_1004D838C();
    v73 = sub_1004DD4AC();
    v74 = v45;
    v76 = v75;
    v110(v74, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v124;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v78 = sub_1004D827C();
    v80 = v79;
    v109(v44, v122);
    v82 = *(v34 + 2);
    v81 = *(v34 + 3);
    if (v82 >= v81 >> 1)
    {
      v34 = sub_10003A840((v81 > 1), v82 + 1, 1, v34);
    }

    *(v34 + 2) = v82 + 1;
    v83 = &v34[56 * v82];
    *(v83 + 4) = v78;
    *(v83 + 5) = v80;
    *(v83 + 6) = v73;
    *(v83 + 7) = v76;
    v83[64] = 2;
    *(v83 + 9) = &unk_100520960;
    *(v83 + 10) = v77;
    v84 = v124;
    v44 = v120;
    v45 = v116;
  }

  else
  {
    v84 = v124;
  }

  sub_1004DD37C();
  v85 = v119;
  v113(v115, v45, v119);
  v86 = v108;
  sub_1004D838C();
  v87 = sub_1004DD4AC();
  v89 = v88;
  v110(v45, v85);
  v90 = swift_allocObject();
  *(v90 + 16) = v84;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v91 = sub_1004D827C();
  v93 = v92;
  v109(v44, v122);
  v95 = *(v34 + 2);
  v94 = *(v34 + 3);
  if (v95 >= v94 >> 1)
  {
    v34 = sub_10003A840((v94 > 1), v95 + 1, 1, v34);
  }

  *(v34 + 2) = v95 + 1;
  v96 = &v34[56 * v95];
  *(v96 + 4) = v91;
  *(v96 + 5) = v93;
  *(v96 + 6) = v87;
  *(v96 + 7) = v89;
  v96[64] = 0;
  *(v96 + 9) = &unk_100520950;
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
  sub_100008C70((v125 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v97);
  v127[2] = v132;
  v127[3] = v133;
  v128 = v134;
  v127[0] = v130;
  v127[1] = v131;
  v129 = 0;
  v99 = *(v98 + 8);

  sub_1000E9AD4(&v130, &v126);
  v99(v127, v97, v98);
  sub_100074384(&v130);

  return sub_100215694(v127);
}

uint64_t sub_10020CC04()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = vdupq_n_s64(2uLL);
  v1[1].i8[0] = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10020CCB0()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_100512870;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10020CD5C()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_100512880;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10020CE08()
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
  if (qword_100633E78 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_10020CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1004DDA4C();
  v4[3] = sub_1004DDA3C();
  v6 = sub_1004DD9BC();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10020D070, v6, v5);
}

uint64_t sub_10020D070()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  sub_100008C70(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10020D150;

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

uint64_t sub_10020D150()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10020D294, v3, v2);
}

uint64_t sub_10020D294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020D2F4(uint64_t a1)
{
  v36 = a1;
  v35 = sub_1004D82AC();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  sub_1004DD37C();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v11 = qword_100671958;
  sub_1004D838C();
  v12 = v11;
  v32 = sub_1004DD4AC();
  v31 = v13;
  v14 = *(v4 + 8);
  v14(v9, v3);
  sub_1004DD37C();
  v10(v7, v9, v3);
  sub_1004D838C();
  v30 = sub_1004DD4AC();
  v29 = v15;
  v14(v9, v3);
  sub_100004CB8(&qword_100634F40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100511DA0;
  sub_1004DD37C();
  v10(v7, v9, v3);
  sub_1004D838C();
  v17 = sub_1004DD4AC();
  v19 = v18;
  v14(v9, v3);
  v20 = v33;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v21 = sub_1004D827C();
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
  sub_100008C70((v36 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v24);
  v38[2] = v43;
  v38[3] = v44;
  v39 = v45;
  v38[0] = v41;
  v38[1] = v42;
  v40 = 0;
  v26 = *(v25 + 8);
  sub_1000E9AD4(&v41, v37);
  v26(v38, v24, v25);
  sub_100074384(&v41);
  return sub_100215694(v38);
}

void sub_10020D834(unint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_100006F5C(&v13, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  sub_10005AD2C(v17, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v7 = v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100035868(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v13);

    v10 = v14;
    v11 = v15;
    sub_100008C70(&v13, v14);
    (*(v11 + 24))(v7, v10, v11);

    sub_100008D24(&v13);
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

void sub_10020D9B0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v53 = a1;
  v54 = a2;
  v52 = sub_1004D82AC();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v4 buttons];
  sub_100006F10(0, &qword_100639EE0);
  v9 = sub_1004DD87C();

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
        v10 = sub_1004DEB2C();
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
        v17 = sub_1004DD43C();
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
      sub_10000DE64(v21);
      v23 = v51;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v24 = sub_1004D827C();
      v4 = v25;
      (*v46)(v23, v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10003A840(0, *(v13 + 2) + 1, 1, v13);
      }

      a3 = *(v13 + 2);
      v26 = *(v13 + 3);
      if (a3 >= v26 >> 1)
      {
        v13 = sub_10003A840((v26 > 1), a3 + 1, 1, v13);
      }

      v27 = 2 * v57;

      *(v13 + 2) = a3 + 1;
      v28 = &v13[56 * a3];
      *(v28 + 4) = v24;
      *(v28 + 5) = v4;
      v29 = v55;
      *(v28 + 6) = v56;
      *(v28 + 7) = v29;
      v28[64] = v27;
      *(v28 + 9) = &unk_100520778;
      *(v28 + 10) = v19;
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
    v11 = sub_1004DED5C();
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
    v34 = sub_1004DD43C();
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
    v40 = sub_1004DD43C();
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

uint64_t sub_10020DD84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_10020D9B0(sub_100216290, v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_100008C70((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    sub_1000E9AD4(v16, v12);
    v11(v13, v9, v10);
    sub_100074384(v16);
    return sub_100215694(v13);
  }

  return result;
}

uint64_t PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100006F10(0, &qword_1006372C0);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100215024, v6);
}

void sub_10020E01C(uint64_t a1, uint64_t a2, void *a3)
{
  v166 = a3;
  v169 = a2;
  v4 = sub_100004CB8(&qword_100636338);
  __chkstk_darwin(v4 - 8);
  v6 = &v154 - v5;
  v7 = sub_100004CB8(&unk_100639EC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v154 - v8;
  if (qword_100633DA0 != -1)
  {
    swift_once();
  }

  v10 = sub_1004D966C();
  sub_100035430(v10, static Logger.playbackController);
  swift_errorRetain();
  v11 = sub_1004D964C();
  v12 = sub_1004DDF7C();

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
    sub_100004CB8(&qword_100638980);
    v16 = sub_1004DD4DC();
    v18 = sub_1000343A8(v16, v17, &v177);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "didFailToPlayFirstItem with error=%{public}s", v14, 0xCu);
    sub_100008D24(v15);
  }

  if ((*(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v159 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v19 = sub_1004D7F3C();
    v20 = [v19 userInfo];
    v21 = sub_1004DD21C();

    v22 = *(v21 + 16);
    v163 = v19;
    if (v22 && (v23 = sub_100056B84(0x676F6C616964, 0xE600000000000000), (v24 & 1) != 0))
    {
      sub_10000904C(*(v21 + 56) + 32 * v23, &v177);

      sub_100004CB8(&qword_100636C18);
      if (swift_dynamicCast())
      {

        v25 = sub_1004D964C();
        v26 = sub_1004DDF9C();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          *&v177 = v174;
          *v27 = 136446210;
          v28 = sub_1004DD22C();
          v30 = sub_1000343A8(v28, v29, &v177);

          *(v27 + 4) = v30;
          v19 = v163;
          _os_log_impl(&_mh_execute_header, v25, v26, "Found an error dialog=%{public}s", v27, 0xCu);
          sub_100008D24(v174);
        }

        v31 = objc_allocWithZone(ICStoreDialogResponse);
        isa = sub_1004DD1FC().super.isa;

        v33 = [v31 initWithResponseDictionary:isa];

        sub_10020D9B0(0, 0, &v177);
        v199 = v179;
        v200 = v180;
        v201 = v181;
        v197 = v177;
        v198 = v178;
LABEL_14:
        v34 = [v19 userInfo];
        v35 = sub_1004DD21C();

        v36 = sub_1004DD43C();
        if (*(v35 + 16))
        {
          v38 = sub_100056B84(v36, v37);
          v40 = v39;

          if (v40)
          {
            sub_10000904C(*(v35 + 56) + 32 * v38, &v177);

            sub_100006F10(0, &qword_100635200);
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
            sub_10020F7A8(a1, v43, v44, v42);
            if (v41)
            {
              v45 = v41;
              sub_10020F7A8(v45, v43, v44, v42);
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
              v49 = sub_1004DD43C();
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
              v56 = sub_1004DD43C();
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
                  sub_100006F10(0, &qword_10063C410);
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
                  *(v63 + 16) = sub_100215AB8;
                  *(v63 + 24) = &v154 - 8;
                  *&v179 = sub_100215AE0;
                  *(&v179 + 1) = v63;
                  *&v177 = _NSConcreteStackBlock;
                  *(&v177 + 1) = 1107296256;
                  *&v178 = sub_10001E3C4;
                  *(&v178 + 1) = &unk_1005E53E8;
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
                    *(v68 + 16) = sub_100215AE8;
                    *(v68 + 24) = &v154 - 4;
                    *&v179 = sub_100215AE0;
                    *(&v179 + 1) = v68;
                    *&v177 = _NSConcreteStackBlock;
                    *(&v177 + 1) = 1107296256;
                    *&v178 = sub_10001E3C4;
                    *(&v178 + 1) = &unk_1005E5438;
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
                          sub_100035868(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v202);
                          v74 = *(&v203 + 1);
                          v75 = v204;
                          sub_100008C70(&v202, *(&v203 + 1));
                          v76 = sub_1004DCD1C();
                          v77 = v52;
                          v78 = v175;
                          sub_1004D952C();
                          v79 = *(v76 - 8);
                          if ((*(v79 + 48))(v78, 1, v76) == 1)
                          {
                            sub_10001074C(v78, &unk_100639EC0);
                            v177 = 0u;
                            v178 = 0u;
                            *&v179 = 0;
                          }

                          else
                          {
                            *(&v178 + 1) = v76;
                            *&v179 = &protocol witness table for Station;
                            v93 = sub_1000357EC(&v177);
                            (*(v79 + 32))(v93, v78, v76);
                          }

                          v41 = v164;
                          v182 = 2;
                          (*(v75 + 8))(&v177, v74, v75);
                          sub_100215694(&v177);
                          sub_100008D24(&v202);
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
                        sub_100137DB4(v73, &v202);
LABEL_56:
                        sub_10001074C(&v197, &qword_1006368B0);

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
                        sub_1000E9AD4(&v177, v89);
                        v157 = v87;
                        goto LABEL_64;
                      }

                      v82 = v171;
                      swift_beginAccess();
                      if (*v82)
                      {
                        v83 = v52;
                        sub_100138C74(v73, 0, &v202);
                        goto LABEL_56;
                      }

                      v90 = v52;

                      v91 = sub_1004D7F3C();
                      v92 = [objc_opt_self() playbackAlertControllerForItem:v166 contentType:0 error:v91 dismissalBlock:0];

                      if (v92)
                      {
                        sub_10020FB3C(&v177);
                        sub_10001074C(&v197, &qword_1006368B0);

                        v190 = v179;
                        v191 = v180;
                        v192 = v181;
                        v188 = v177;
                        v189 = v178;
                      }

                      else
                      {
                        sub_10001074C(&v197, &qword_1006368B0);
                        v188 = 0u;
                        v189 = 0u;
                        v190 = 0u;
                        v191 = 0u;
                        v192 = 0;
                      }

                      v135 = v161;
                      v134 = v162;
                      sub_10020FF24(a1, v42, v162, v161);
                      if (v41)
                      {
                        v136 = v41;
                        sub_10020FF24(v136, v42, v134, v135);
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
                                  v122 = sub_1004DD43C();
                                  v124 = v123;

                                  v125 = sub_1004DD43C();
                                  if (v124)
                                  {
                                    if (v122 == v125 && v124 == v126)
                                    {

LABEL_80:
                                      if ([v41 code] != 40)
                                      {

                                        sub_10001074C(&v177, &qword_1006368B0);

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
                                        sub_1002117B8(v131, v133, 0, 0);

                                        sub_10001074C(&v177, &qword_1006368B0);

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

                                    v127 = sub_1004DF08C();

                                    if (v127)
                                    {
                                      goto LABEL_80;
                                    }

                                    sub_10001074C(&v177, &qword_1006368B0);

LABEL_108:

                                    return;
                                  }

                                  v97 = v165;
LABEL_87:

                                  sub_10001074C(&v177, &qword_1006368B0);

                                  goto LABEL_108;
                                }

LABEL_86:
                                sub_1004DD43C();
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
                              sub_1000E9AD4(&v177, &v202);
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
                                  sub_10000DE64(v108);

                                  v171 = v107;
                                  sub_10000DE64(v108);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v101 = sub_10003A840(0, *(v101 + 2) + 1, 1, v101);
                                  }

                                  v114 = *(v101 + 2);
                                  v113 = *(v101 + 3);
                                  if (v114 >= v113 >> 1)
                                  {
                                    v101 = sub_10003A840((v113 > 1), v114 + 1, 1, v101);
                                  }

                                  v102 += 7;

                                  sub_10000DE74(v108);
                                  *(v101 + 2) = v114 + 1;
                                  v115 = &v101[56 * v114];
                                  v116 = v173;
                                  *(v115 + 4) = v174;
                                  *(v115 + 5) = v104;
                                  *(v115 + 6) = v116;
                                  *(v115 + 7) = v106;
                                  v115[64] = v112;
                                  *(v115 + 9) = &unk_100520768;
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
                              sub_100008C70((v117 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v118);
                              v179 = v185;
                              v180 = v186;
                              v181 = v187;
                              v177 = v183;
                              v178 = v184;
                              v182 = 0;
                              v120 = *(v119 + 8);

                              sub_1000E9AD4(&v183, &v176);
                              v120(&v177, v118, v119);
                              sub_100074384(&v188);
                              sub_100074384(&v183);
                              sub_100215694(&v177);
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
                            sub_100035868(v169 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v202);
                            v147 = *(&v203 + 1);
                            v148 = v204;
                            sub_100008C70(&v202, *(&v203 + 1));
                            v149 = v146;
                            v150 = v173;
                            sub_1004D8BEC();
                            v151 = sub_1004D8BFC();
                            v152 = *(v151 - 8);
                            if ((*(v152 + 48))(v150, 1, v151) == 1)
                            {
                              sub_10001074C(v150, &qword_100636338);
                              v177 = 0u;
                              v178 = 0u;
                              *&v179 = 0;
                            }

                            else
                            {
                              *(&v178 + 1) = v151;
                              *&v179 = sub_100215A70(&unk_100639ED0, &type metadata accessor for GenericMusicItem);
                              v153 = sub_1000357EC(&v177);
                              (*(v152 + 32))(v153, v150, v151);
                            }

                            v182 = 2;
                            (*(v148 + 8))(&v177, v147, v148);

                            sub_100215694(&v177);
                            sub_100008D24(&v202);
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
                        sub_100137DB4(v140, &v202);
                      }

                      else
                      {
                        if ((*v171 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        sub_100138C74(v140, 0, &v202);
                      }

                      sub_10001074C(&v188, &qword_1006368B0);

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