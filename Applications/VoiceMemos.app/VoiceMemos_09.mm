id sub_10017E72C()
{
  v1 = [v0 recordingUUIDs];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = [v0 recordingUUIDs];
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v5 + 16))
    {

      v6 = [objc_opt_self() sharedRecordingsModelInteractor];
      v7 = String._bridgeToObjectiveC()();

      v8 = [v6 recordingForUUID:v7];

      if (v8)
      {
        v9 = [v8 hasBeenTranscribed];

        return v9;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_10017E8E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCCopyTranscriptActivity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017E944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002001C;

  return sub_10017E430(a1, v4, v5, v6, v7, v8);
}

void *sub_10017EA14(uint64_t a1)
{
  result = sub_10000AACC((v1 + 16), *(v1 + 40));
  v4 = *(*result + 80);
  v5 = *(v4 + 16);
  if (v5)
  {
    for (i = (v4 + 56); ; i += 4)
    {
      v7 = *(i - 1);
      if (v7 <= a1)
      {
        v8 = __OFSUB__(a1, v7);
        v9 = a1 - v7;
        if (v8)
        {
          __break(1u);
          return result;
        }

        if (v9 < *i)
        {
          break;
        }
      }

      if (!--v5)
      {
        return result;
      }
    }

    v10 = *(i - 3);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (result[7])
      {
        [swift_unknownObjectRetain() setTargetTime:v10];
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10017EAF0(double a1, double a2)
{
  if (a2 <= 150.0)
  {
    if (a2 >= -150.0 || !swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v2 = 1;
  }

  else
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v2 = 0;
  }

  sub_1000CC63C(v2);

  swift_unknownObjectRelease();
}

uint64_t sub_10017EB84(double a1, double a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v14[0] = *(result + 32);
    v14[1] = v4;
    LOBYTE(v16) = *(result + 48);
    v15 = v14[0];
    *(&v16 + 2) = *(result + 50);
    *(&v16 + 1) = *(result + 56);
    BYTE1(v16) = 1;
    v17 = v14[0];
    v18 = v4;
    v19[0] = v14[0];
    v19[1] = v4;
    v5 = v16;
    *(result + 32) = v14[0];
    *(result + 48) = v5;
    sub_100023708(v14, v13);
    sub_100023708(&v17, v13);
    sub_100023708(&v15, v13);
    sub_100023778(v19);
    v6 = 256;
    if (!BYTE1(v18))
    {
      v6 = 0;
    }

    v7 = v6 | v18;
    v8 = 0x10000;
    if (!BYTE2(v18))
    {
      v8 = 0;
    }

    v9 = 0x1000000;
    if (!BYTE3(v18))
    {
      v9 = 0;
    }

    v10 = v7 | v8 | v9;
    v11 = &_mh_execute_header;
    if (!BYTE4(v18))
    {
      v11 = 0;
    }

    sub_1000237CC(v17, *(&v17 + 1), v10 | v11, *(&v18 + 1));
    swift_unknownObjectRelease();
    sub_100023778(&v17);
    result = sub_100023778(&v15);
  }

  if (a2 > 150.0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v12 = 0;
    goto LABEL_17;
  }

  if (a2 < -150.0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = 1;
LABEL_17:
      sub_1000CC63C(v12);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10017ED0C()
{
  sub_100014B64(v0 + 16);
  sub_10000E274(v0 + 56);
  sub_10000E274(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_10017ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for URL();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10017EE60, 0, 0);
}

uint64_t sub_10017EE60()
{

  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v2);

  URL.appendingPathComponent(_:)();

  v3 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v0[2] = 0;
  v7 = [v3 removeItemAtURL:v5 error:v0 + 2];

  v8 = v0[2];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v10 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = v0[8];
  (*(v0[10] + 32))(v0[13], v0[12], v0[9]);
  v12 = objc_opt_self();
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = [v12 rc_preciseTimingAssetWithURL:v14];
  v0[14] = v16;

  [v16 rc_durationInSeconds];
  *(v11 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_assetDurationSeconds) = v17;
  v18 = [v16 rc_playbackFormat];
  v0[15] = v18;
  if (v18)
  {
    v19 = v18;
    v20 = [v16 rc_exportFormat];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 settings];

      v0[16] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = swift_task_alloc();
      v0[17] = v23;
      *v23 = v0;
      v23[1] = sub_10017F230;

      return sub_100180600(v16, v19);
    }

    sub_100181C00();
    swift_allocError();
    *v26 = 0xC000000000000001;
    swift_willThrow();
  }

  else
  {
    sub_100181C00();
    swift_allocError();
    *v25 = 0xC000000000000001;
    swift_willThrow();
  }

  (*(v0[10] + 8))(v0[13], v0[9]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_10017F230(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_10017FF88;
  }

  else
  {
    v4 = sub_10017F370;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017F370()
{
  v1 = *(v0 + 152);
  *(v0 + 160) = sub_100180BC0(*(v0 + 144), *(v0 + 120));
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 112);

    (*(*(v0 + 80) + 8))(*(v0 + 104), *(v0 + 72));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v4 = *(v0 + 88);
    (*(*(v0 + 80) + 16))(v4, *(v0 + 104), *(v0 + 72));
    v5 = objc_allocWithZone(RCAssetWriter);
    v6 = sub_10018311C(v4);
    *(v0 + 168) = v6;
    [v6 setDelegate:*(v0 + 64)];
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_10017F584;
    v10 = *(v0 + 120);

    return sub_100180D50(v10);
  }
}

uint64_t sub_10017F584()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10018006C;
  }

  else
  {
    v2 = sub_10017F6C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017F6C4()
{
  v1 = *(v0 + 184);
  sub_100181320(*(v0 + 160), *(v0 + 120));
  if (v1)
  {
    v2 = *(v0 + 168);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
LABEL_3:

    swift_unknownObjectRelease();

    (*(*(v0 + 80) + 8))(*(v0 + 104), *(v0 + 72));

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:*(v0 + 120) frameCapacity:4096];
  *(v0 + 192) = v7;
  v2 = *(v0 + 168);
  if (!v7)
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    sub_100181C00();
    swift_allocError();
    *v9 = 0xC000000000000002;
    swift_willThrow();
    goto LABEL_3;
  }

  v8 = v7;
  sub_10018344C(*(v0 + 168));
  v10 = *(*(v0 + 64) + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_state);

  os_unfair_lock_lock((v10 + 24));
  sub_100103988(*(v10 + 16));
  *(v10 + 16) = 1;
  os_unfair_lock_unlock((v10 + 24));

  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_10017F95C;
  v12 = *(v0 + 168);

  return sub_100181F10(v8, v12);
}

uint64_t sub_10017F95C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10017FD68;
  }

  else
  {
    v2 = sub_10017FA9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017FA9C()
{
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[8];
  [*(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_audioEngine) stop];
  v4 = *(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_timestretchAudioUnit);
  *(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_timestretchAudioUnit) = 0;

  v5 = *(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enhanceProcessor);
  *(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enhanceProcessor) = 0;

  v6 = swift_task_alloc();
  v0[27] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[28] = v7;
  v8 = sub_1000C773C(&qword_1002D4D78);
  *v7 = v0;
  v7[1] = sub_10017FC18;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000002DLL, 0x8000000100234E40, sub_10018351C, v6, v8);
}

uint64_t sub_10017FC18()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100180164;
  }

  else
  {

    v2 = sub_10017FE68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017FD68()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);

  swift_unknownObjectRelease();

  (*(*(v0 + 80) + 8))(*(v0 + 104), *(v0 + 72));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017FE68()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 72);

  swift_unknownObjectRelease();

  v7 = *(v0 + 24);
  (*(v5 + 8))(v4, v6);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_10017FF88()
{
  v1 = v0[15];
  v2 = v0[14];

  (*(v0[10] + 8))(v0[13], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10018006C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();

  (*(*(v0 + 80) + 8))(*(v0 + 104), *(v0 + 72));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100180164()
{
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[14];
  v4 = v0[15];

  sub_100181C00();
  swift_allocError();
  *v6 = v1 | 0xB000000000000000;
  swift_willThrow();

  swift_unknownObjectRelease();

  (*(v0[10] + 8))(v0[13], v0[9]);

  v7 = v0[1];

  return v7();
}

id sub_1001802B0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_state;
  sub_1000C773C(&unk_1002D4E80);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v2[v4] = v5;
  v6 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_secondsProcessed;
  sub_1000C773C(&unk_1002D1E20);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *&v2[v6] = v7;
  *&v2[OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_assetDurationSeconds] = 0;
  v8 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enqueuedBufferCount;
  sub_1000C773C(&qword_1002D4DB8);
  swift_allocObject();
  v9 = PassthroughSubject.init()();
  sub_1000C773C(&unk_1002D4E90);
  v10 = swift_allocObject();
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = v9;
  *&v2[v8] = v10;
  *&v2[OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_cancellables] = &_swiftEmptySetSingleton;
  v11 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_audioEngine;
  *&v2[v11] = [objc_allocWithZone(AVAudioEngine) init];
  v12 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enhanceProcessor;
  *&v2[OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enhanceProcessor] = 0;
  v13 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_timestretchAudioUnit;
  *&v2[OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_timestretchAudioUnit] = 0;
  v14 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_settings;
  *&v2[OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_settings] = a1;
  sub_1001838D4();
  if (v17)
  {

    type metadata accessor for ComposedAudioEffectRenderer();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v16.receiver = v2;
    v16.super_class = type metadata accessor for ComposedAudioEffectRenderer();
    return objc_msgSendSuper2(&v16, "init");
  }
}

id sub_1001804FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposedAudioEffectRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100180600(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_100180624, 0, 0);
}

uint64_t sub_100180624()
{
  if ([*(v0 + 56) rc_hasSpatialTracks])
  {
    v1 = swift_task_alloc();
    *(v0 + 80) = v1;
    *v1 = v0;
    v1[1] = sub_1001808AC;
    v2 = *(v0 + 56);

    return sub_1000E83A8(v0 + 16, v2);
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    [v5 sampleRate];
    v7 = v6;
    v8 = [v5 channelCount];
    LOBYTE(v5) = [v5 isInterleaved];
    v9 = *(v4 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_settings);
    v10 = sub_100183390(*(v9 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_layerMix));
    v11 = *(v0 + 56);
    v12 = v9 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_speechIsolatorValue;
    LODWORD(v9) = *(v9 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_speechIsolatorValue);
    v13 = *(v12 + 4);
    type metadata accessor for AudioAssetReader();
    v14 = swift_allocObject();
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
    *(v14 + 120) = 1;
    *(v14 + 128) = 0;
    *(v14 + 136) = 1;
    *(v14 + 16) = v11;
    *(v14 + 24) = v7;
    *(v14 + 32) = v8;
    *(v14 + 40) = v5;
    *(v14 + 48) = v10;
    *(v14 + 56) = v9;
    *(v14 + 60) = v13;
    v15 = *(v0 + 32);
    *(v14 + 64) = *(v0 + 16);
    *(v14 + 80) = v15;
    *(v14 + 96) = *(v0 + 48);
    v17 = *(v0 + 8);
    v16 = v11;

    return v17(v14);
  }
}

uint64_t sub_1001808AC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100180BA8;
  }

  else
  {
    v2 = sub_1001809C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001809C0()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  [v3 sampleRate];
  v5 = v4;
  v6 = [v3 channelCount];
  v7 = [v3 isInterleaved];
  v8 = *(v2 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_settings);
  v9 = sub_100183390(*(v8 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_layerMix));
  if (v1)
  {
    sub_100181C00();
    swift_allocError();
    *v10 = v1 | 0x3000000000000000;
    swift_willThrow();
    sub_10018364C(v0 + 16);
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = v9;
    v14 = *(v0 + 56);
    v15 = v8 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_speechIsolatorValue;
    v16 = *(v8 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_speechIsolatorValue);
    v17 = *(v15 + 4);
    type metadata accessor for AudioAssetReader();
    v18 = swift_allocObject();
    *(v18 + 104) = 0;
    *(v18 + 112) = 0;
    *(v18 + 120) = 1;
    *(v18 + 128) = 0;
    *(v18 + 136) = 1;
    *(v18 + 16) = v14;
    *(v18 + 24) = v5;
    *(v18 + 32) = v6;
    *(v18 + 40) = v7;
    *(v18 + 48) = v13;
    *(v18 + 56) = v16;
    *(v18 + 60) = v17;
    v19 = *(v0 + 32);
    *(v18 + 64) = *(v0 + 16);
    *(v18 + 80) = v19;
    *(v18 + 96) = *(v0 + 48);
    v21 = *(v0 + 8);
    v20 = v14;

    return v21(v18);
  }
}

void *sub_100180BC0(uint64_t a1, id a2)
{
  if (*(*(v2 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_settings) + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_skipSilence) == 1)
  {
    [a2 sampleRate];
    v6 = v5;
    v7 = [a2 channelCount];
    if ((v7 & 0x80000000) != 0)
    {
      __break(1u);
    }

    v15 = 0;
    v8 = [objc_allocWithZone(VMSilenceRemover) initWithSampleRate:v7 channelCount:&v15 error:v6];
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      [v9 setInputProvider:a1];
      [v9 setEnabled:1];
      return v9;
    }

    else
    {
      v11 = v15;
      v12 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100181C00();
      a1 = swift_allocError();
      *v13 = v12 | 0x4000000000000000;
      swift_willThrow();
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return a1;
}

uint64_t sub_100180D50(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_100180D70, 0, 0);
}

uint64_t sub_100180D70()
{
  v1 = (v0 + 80);
  v2 = *(v0 + 160);
  v3 = *(v2 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_settings);
  *(v0 + 168) = v3;
  if (*(v3 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_enhanced) == 1)
  {
    v4 = *(v0 + 152);
    v5 = [objc_allocWithZone(VMProcessor) initForRealTime:0];
    v6 = [v4 streamDescription];
    v22 = *v6;
    v7 = *v6;
    v23 = v6[1];
    v24 = *(v6 + 4);
    *(v0 + 112) = v24;
    *v1 = v7;
    *(v0 + 96) = v23;
    [v5 prepareWithFormat:v0 + 80 maxFramesPerRender:4096, v22, v23, v24];
    [v5 setEnabled:1];
    v8 = *(v2 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enhanceProcessor);
    *(v2 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enhanceProcessor) = v5;
  }

  v9 = OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_playbackSpeed;
  *(v0 + 176) = OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_playbackSpeed;
  v10 = *(v3 + v9);
  if (v10 == 1.0)
  {
    v11 = *(v0 + 8);
LABEL_10:

    return v11();
  }

  if (v10 <= 0.0)
  {
    v17 = LODWORD(v10);
    sub_100181C00();
    v18 = swift_allocError();
    *v19 = v17;
    swift_willThrow();
    swift_allocError();
    *v20 = v18 | 0x6000000000000000;
    swift_willThrow();
    v11 = *(v0 + 8);
    goto LABEL_10;
  }

  v12 = v0 + 16;
  v13 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10018103C;
  v14 = swift_continuation_init();
  v15 = sub_1000C773C(&unk_1002D4E60);
  *(v0 + 192) = xmmword_10024D480;
  v16 = v0 + 192;
  *(v16 - 56) = v15;
  *(v16 - 112) = _NSConcreteStackBlock;
  *(v16 - 104) = 1107296256;
  *(v16 - 96) = sub_100181C54;
  *(v16 - 88) = &unk_1002941F8;
  *(v16 - 80) = v14;
  *(v16 + 16) = 0;
  [v13 instantiateWithComponentDescription:v16 options:0 completionHandler:v1];

  return _swift_continuation_await(v12);
}

uint64_t sub_10018103C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100181284;
  }

  else
  {
    v2 = sub_10018114C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018114C()
{
  v1 = v0[18];
  v2 = AudioUnitSetParameter([v1 audioUnit], 0, 0, 0, *(v0[21] + v0[22]), 0);
  if (v2 == noErr.getter())
  {
    v3 = v0[20];
    v4 = *(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_timestretchAudioUnit);
    *(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_timestretchAudioUnit) = v1;
  }

  else
  {
    sub_100181C00();
    v6 = swift_allocError();
    *v7 = v2 | 0x7000000000000000;
    swift_willThrow();

    swift_allocError();
    *v8 = v6 | 0x6000000000000000;
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100181284()
{
  swift_willThrow();
  v1 = *(v0 + 184) | 0x6000000000000000;
  sub_100181C00();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

void sub_100181320(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = v6;
  v8[5] = a2;
  v9 = objc_allocWithZone(AVAudioSourceNode);
  aBlock[4] = sub_100183628;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001832A4;
  aBlock[3] = &unk_1002941D0;
  v10 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v11 = a2;

  v12 = [v9 initWithFormat:v11 renderBlock:v10];
  _Block_release(v10);

  v13 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_audioEngine;
  [*(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_audioEngine) attachNode:v12];
  v14 = *(v3 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_timestretchAudioUnit);
  if (v14)
  {
    v15 = *(v3 + v13);
    v16 = v14;
    [v15 attachNode:v16];
    [*(v3 + v13) connect:v12 to:v16 format:v11];
    v17 = *(v3 + v13);
    v18 = [v17 mainMixerNode];
    [v17 connect:v16 to:v18 format:v11];
  }

  else
  {
    v17 = *(v3 + v13);
    v18 = [v17 mainMixerNode];
    [v17 connect:v12 to:v18 format:v11];
  }

  v19 = *(v3 + v13);
  aBlock[0] = 0;
  v20 = [v19 enableManualRenderingMode:0 format:v11 maximumFrameCount:4096 error:aBlock];
  v21 = aBlock[0];
  if (v20 && (v22 = *(v3 + v13), v23 = aBlock[0], [v22 prepare], v24 = *(v3 + v13), aBlock[0] = 0, v25 = objc_msgSend(v24, "startAndReturnError:", aBlock), v21 = aBlock[0], (v25 & 1) != 0))
  {
    v26 = aBlock[0];
  }

  else
  {
    v27 = v21;
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100181C00();
    swift_allocError();
    *v29 = v28 | 0x8000000000000000;
    swift_willThrow();
  }
}

void sub_100181684(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v9 = sub_1000C773C(&unk_1002D4D80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v19 - v13;
  (*(v10 + 16))(&v19 - v13, a1, v9);
  (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v15, v14, v9);
  (*(v6 + 32))(v17 + v16, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_100183524;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_100294090;
  v18 = _Block_copy(aBlock);

  [v20 finishWritingAudioFile:v18];
  _Block_release(v18);
}

uint64_t sub_100181908(uint64_t a1, uint64_t a2)
{
  sub_1000C773C(&unk_1002D60A0);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100242C70;
  (*(v4 + 16))(v6 + v5, a2, v3);
  sub_1000C773C(&unk_1002D4D80);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100181A18(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_assetDurationSeconds) > 0.0)
  {
    v3 = *(v2 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_secondsProcessed);
    __chkstk_darwin(result, a2);

    os_unfair_lock_lock((v3 + 24));
    sub_100181BE0((v3 + 16), &v4);
    os_unfair_lock_unlock((v3 + 24));
  }

  return result;
}

uint64_t sub_100181AD8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_state);

  os_unfair_lock_lock((v1 + 24));
  sub_100103988(*(v1 + 16));
  *(v1 + 16) = 3;
  os_unfair_lock_unlock((v1 + 24));
}

double sub_100181BE0@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 / *(*(v2 + 16) + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_assetDurationSeconds);
  *a2 = result;
  return result;
}

unint64_t sub_100181C00()
{
  result = qword_1002D4D70;
  if (!qword_1002D4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4D70);
  }

  return result;
}

void *sub_100181C54(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000AACC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000C773C(&qword_1002D5540);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100181D2C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v14 = Strong;
  v15 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_state;
  v16 = *(Strong + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_state);

  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);
  os_unfair_lock_unlock((v16 + 24));

  if (v17 != 1)
  {
    goto LABEL_13;
  }

  if ((a3 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = [a6 fillNextBuffer:a4 frameCount:a3];
  if (!result)
  {
    v30 = *&v14[v15];
    v29 = (v30 + 24);

    os_unfair_lock_lock((v30 + 24));
    sub_100103988(*(v30 + 16));
    *(v30 + 16) = 2;
    goto LABEL_12;
  }

  v19 = result;
  v20 = *&v14[OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enhanceProcessor];
  if (!v20)
  {
    goto LABEL_8;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_beginAccess();
  v21 = sub_1000494B4(v20, v19, *(a7 + 16), a4);
  if (v21)
  {
LABEL_14:

    return v21;
  }

LABEL_8:
  result = swift_beginAccess();
  v22 = *(a7 + 16);
  v23 = __OFADD__(v22, v19);
  v24 = v22 + v19;
  if (!v23)
  {
    *(a7 + 16) = v24;
    v25 = v24;
    [a8 sampleRate];
    v27 = v25 / v26;
    v28 = *&v14[OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_secondsProcessed];
    v29 = (v28 + 24);

    os_unfair_lock_lock((v28 + 24));
    *(v28 + 16) = v27;
LABEL_12:
    os_unfair_lock_unlock(v29);

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100181F10(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100181F34, 0, 0);
}

uint64_t sub_100181F34()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_state;
  v0[5] = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_state;
  v0[6] = 0;
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));

  if (v4 == 1)
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_100182040;
    v6 = v0[3];
    v7 = v0[2];

    return sub_1001825FC(v7, v6);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100182040()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100182170, 0, 0);
  }
}

uint64_t sub_100182170()
{
  if (v0[6] == 29)
  {
    v1 = v0[4];
    v2 = swift_task_alloc();
    v0[8] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_100182358;

    return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000023, 0x8000000100234E70, sub_100183614, v2, &type metadata for () + 8);
  }

  else
  {
    ++v0[6];
    v4 = *(v0[4] + v0[5]);

    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);
    os_unfair_lock_unlock((v4 + 24));

    if (v5 == 1)
    {
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_100182040;
      v7 = v0[3];
      v8 = v0[2];

      return sub_1001825FC(v8, v7);
    }

    else
    {
      v9 = v0[1];

      return v9();
    }
  }
}

uint64_t sub_100182358()
{

  return _swift_task_switch(sub_100182470, 0, 0);
}

uint64_t sub_100182470()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100182508;
  v2 = v0[3];
  v3 = v0[2];

  return sub_100181F10(v3, v2);
}

uint64_t sub_100182508()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001825FC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;

  return _swift_task_switch(sub_100182690, 0, 0);
}

uint64_t sub_100182690()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_audioEngine;
  if (![*(v1 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_audioEngine) isRunning])
  {
    goto LABEL_20;
  }

  v3 = v0[8];
  v4 = *(v1 + v2);
  v5 = [v4 manualRenderingMaximumFrameCount];
  v0[2] = 0;
  v6 = [v4 renderOffline:v5 toBuffer:v3 error:v0 + 2];

  v7 = v0[2];
  if (v7)
  {
    swift_willThrow();
    v7;
LABEL_14:
    v15 = v0[1];
    goto LABEL_21;
  }

  if (v6 > 0)
  {
    if (v6 == 1)
    {
      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100018D90(v16, qword_1002E8CB0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Ending offline render due to insufficient data from input", v19, 2u);
      }

      v20 = v0[10];

      v21 = *(v20 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_state);

      os_unfair_lock_lock((v21 + 24));
      sub_100103988(*(v21 + 16));
      *(v21 + 16) = 2;
      os_unfair_lock_unlock((v21 + 24));

      goto LABEL_20;
    }

    if (v6 == 2)
    {
      sub_100181C00();
      swift_allocError();
      v14 = 0xC000000000000003;
LABEL_12:
      *v13 = v14;
LABEL_13:
      swift_willThrow();
      goto LABEL_14;
    }

LABEL_11:
    sub_100181C00();
    swift_allocError();
    v14 = 0xC000000000000004;
    goto LABEL_12;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  v9 = v0[8];
  v8 = v0[9];
  v0[2] = 0;
  v10 = [v8 writeFromBuffer:v9 error:v0 + 2];
  v11 = v0[2];
  if (!v10)
  {
    v23 = v0[9];
    v24 = v11;
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v0[6] = DebugData.init(name:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10012ED20;
    v0[5] = &unk_100294130;
    v26 = _Block_copy(v0 + 2);
    [v23 finishWritingAudioFile:v26];
    _Block_release(v26);
    sub_100181C00();
    swift_allocError();
    *v27 = v25 | 0xA000000000000000;
    goto LABEL_13;
  }

  v12 = v11;
LABEL_20:
  v15 = v0[1];
LABEL_21:

  return v15();
}

uint64_t sub_100182A3C(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_1000C773C(&unk_1002D4D90);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  __chkstk_darwin(v3, v5);
  v48 = &v38 - v6;
  v45 = sub_1000C773C(&qword_1002D1DB8);
  v7 = *(v45 - 8);
  v44 = *(v7 + 64);
  __chkstk_darwin(v45, v8);
  v43 = &v38 - v9;
  v40 = sub_1000C773C(&qword_1002D4DA0);
  v10 = *(v40 - 8);
  __chkstk_darwin(v40, v11);
  v13 = &v38 - v12;
  v39 = sub_1000C773C(&qword_1002D4DA8);
  v14 = *(v39 - 8);
  __chkstk_darwin(v39, v15);
  v17 = &v38 - v16;
  v42 = sub_1000C773C(&qword_1002D4DB0);
  v46 = *(v42 - 8);
  __chkstk_darwin(v42, v18);
  v38 = &v38 - v19;
  v20 = *(a2 + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enqueuedBufferCount);

  os_unfair_lock_lock((v20 + 32));
  v21 = *(v20 + 16);
  v51 = *(v20 + 24);
  sub_1000C773C(&qword_1002D4DB8);
  sub_100008034(&qword_1002D4DC0, &qword_1002D4DB8);
  v22 = Publisher.eraseToAnyPublisher()();
  v41 = v22;
  os_unfair_lock_unlock((v20 + 32));

  v51 = v22;
  sub_1000C773C(&qword_1002D4DC8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100242C70;
  *(v23 + 32) = v21;
  sub_1000C773C(&qword_1002D4DD0);
  sub_100008034(&qword_1002D4DD8, &qword_1002D4DD0);
  Publisher.prepend(_:)();

  sub_100008034(&qword_1002D4DE0, &qword_1002D4DA0);
  v24 = v40;
  Publisher.filter(_:)();
  (*(v10 + 8))(v13, v24);
  sub_100008034(&qword_1002D4DE8, &qword_1002D4DA8);
  v26 = v38;
  v25 = v39;
  Publisher.first()();
  (*(v14 + 8))(v17, v25);
  v27 = v43;
  v28 = v45;
  (*(v7 + 16))(v43, v47, v45);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = swift_allocObject();
  (*(v7 + 32))(v30 + v29, v27, v28);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  sub_100008034(&qword_1002D4DF0, &qword_1002D4DB0);
  v32 = v48;
  v33 = v42;
  Publisher.first()();
  v34 = swift_allocObject();
  v34[2] = sub_100134828;
  v34[3] = v30;
  v34[4] = v31;
  sub_100008034(&qword_1002D4DF8, &unk_1002D4D90);

  v35 = v49;
  v36 = Publisher<>.sink(receiveValue:)();

  (*(v50 + 8))(v32, v35);
  (*(v46 + 8))(v26, v33);
  swift_beginAccess();
  *(v31 + 16) = v36;
}

id sub_10018311C(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = 0;
  v7 = [v2 initForWriting:v5 settings:isa error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = type metadata accessor for URL();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_1001832A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = v9(a2, a3, a4, a5);

  return v10;
}

uint64_t sub_100183318(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  a2(&v6);
  swift_beginAccess();
  swift_beginAccess();
  *(a4 + 16) = 0;
}

uint64_t sub_100183390(float a1)
{
  if (fabsf(a1) <= 1.0)
  {
    sub_1000C773C(&qword_1002D4E78);
    result = swift_allocObject();
    *(result + 16) = xmmword_100241790;
    *(result + 32) = 1.0 - fmaxf(a1, 0.0);
    *(result + 36) = fminf(a1, 0.0) + 1.0;
  }

  else
  {
    sub_100181C00();
    swift_allocError();
    *v2 = LODWORD(a1) | 0x1000000000000000;
    return swift_willThrow();
  }

  return result;
}

id sub_10018344C(void *a1)
{
  v5 = 0;
  if ([a1 startWritingAudioFile:&v5])
  {
    return v5;
  }

  v2 = v5;
  v3 = _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100181C00();
  swift_allocError();
  *v4 = v3 | 0x9000000000000000;
  return swift_willThrow();
}

uint64_t sub_100183524()
{
  v1 = *(sub_1000C773C(&unk_1002D4D80) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100181908(v0 + v2, v5);
}

uint64_t sub_1001835FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018364C(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D4E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TimeRangeRun()
{
  result = qword_1002D4EF8;
  if (!qword_1002D4EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100183738()
{
  sub_10016E36C();
  if (v0 <= 0x3F)
  {
    sub_1001355DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_1001837BC(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for AttributedString.Index();
  sub_100183890(&qword_1002D1CE0);
  result = 0;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_1000C773C(&qword_1002CFFD8);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100183890(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributedString.Index();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001838D4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_playbackSpeed);
  v2 = *(v0 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_layerMix);
  if (v2 >= -1.0)
  {
    if (v1 <= 0.0)
    {
LABEL_7:
      v3 = LODWORD(v1);
      goto LABEL_8;
    }

    if (v2 <= 1.0)
    {
      return;
    }
  }

  else if (v1 <= 0.0)
  {
    goto LABEL_7;
  }

  v3 = LODWORD(v2) | 0x1000000000000000;
LABEL_8:
  sub_100181C00();
  swift_allocError();
  *v4 = v3;
  swift_willThrow();
}

uint64_t _s8SettingsCMa()
{
  result = qword_1002D4F58;
  if (!qword_1002D4F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100183A98()
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

void sub_100183B58(void *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v40 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v40 - v15;
  v17 = String._bridgeToObjectiveC()();
  v18 = [a1 recordingWithUniqueID:v17];

  if (!v18)
  {
    v37 = 0;
    goto LABEL_13;
  }

  v19 = [v18 url];
  if (!v19)
  {
LABEL_10:

    v37 = 0;
    goto LABEL_13;
  }

  v20 = v19;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v16, v12, v4);
  v21 = [v18 fileNameForSharing];
  if (!v21)
  {
    (*(v5 + 8))(v16, v4);
    goto LABEL_10;
  }

  v45 = v2;
  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v24;
  v44 = v23;

  v42 = *(v5 + 16);
  v42(v8, v16, v4);
  [v18 layerMix];
  v26 = v25;
  [v18 playRate];
  v28 = v27;
  v41 = [v18 isSkipSilenceEnabled];
  v40 = [v18 enhanced];
  v29 = [v18 isSpeechIsolatorEnabled];
  v30 = 0;
  if (v29)
  {
    [v18 speechIsolatorValue];
    v30 = v31;
  }

  v32 = _s8SettingsCMa();
  v33 = objc_allocWithZone(v32);
  v42(&v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_sourceURL], v8, v4);
  v34 = &v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_destinationFileName];
  v35 = v43;
  *v34 = v44;
  v34[1] = v35;
  *&v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_layerMix] = v26;
  *&v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_playbackSpeed] = v28;
  v36 = &v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_speechIsolatorValue];
  *&v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_speechIsolatorValue] = v30;
  if (v29)
  {
    v36[4] = 0;
    v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_skipSilence] = 0;
    v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_enhanced] = 0;
  }

  else
  {
    v36[4] = 1;
    v38 = v40;
    v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_skipSilence] = v41;
    v33[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_enhanced] = v38;
  }

  v47.receiver = v33;
  v47.super_class = v32;
  v37 = objc_msgSendSuper2(&v47, "init");

  v39 = *(v5 + 8);
  v39(v8, v4);
  v39(v16, v4);
LABEL_13:
  *v46 = v37;
}

uint64_t sub_100184098(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_10010376C;

  return (sub_1001842E8)(v5, v7);
}

id sub_1001841D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100184234()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002001C;

  return sub_100184098(v2, v3, v4);
}

uint64_t sub_1001842E8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001843A8, 0, 0);
}

uint64_t sub_1001843A8()
{
  v1 = [objc_opt_self() sharedContainer];
  if (v1 && (v2 = v1, v3 = [v1 newBackgroundModel], v0[8] = v3, v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = swift_allocObject();
    v0[9] = v9;
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = v7;
    v10 = v3;

    v0[10] = [v10 context];
    (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
    v11 = swift_task_alloc();
    v0[11] = v11;
    v12 = sub_1000C773C(&qword_1002D4F90);
    *v11 = v0;
    v11[1] = sub_100106D64;
    v13 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_1001845A0, v9, v12);
  }

  else
  {

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_1001845C0(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return *a1 + 12;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1001845DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 4 && *(a1 + 8))
  {
    return (*a1 + 4);
  }

  v3 = (*a1 >> 60) ^ 0xF;
  if (v3 >= 3)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100184628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 3)
  {
    *result = a2 - 4;
    if (a3 >= 4)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 4)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = -a2 << 60;
    }
  }

  return result;
}

unint64_t *sub_10018467C(unint64_t *result, unsigned int a2)
{
  if (a2 < 0xC)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 12) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1001846DC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10010D1B8(a1, v10);
    v4 = v11;
    if (v11)
    {
      v5 = sub_10000AACC(v10, v11);
      v6 = *(v4 - 8);
      __chkstk_darwin(v5, v5);
      v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v8);
      v9 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v6 + 8))(v8, v4);
      sub_100014B64(v10);
    }

    else
    {
      v9 = 0;
    }

    [v3 performControlsAction:44 position:v9 source:0.0];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_100184864(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100184890(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1001848D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100184944(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  if ((sub_10002C20C(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v5 = v6;
  v4 = v7;
LABEL_7:

  return sub_10002C20C(v4, v5);
}

uint64_t sub_1001849C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100184A78(v5, v7) & 1;
}

BOOL sub_100184A0C(uint64_t a1, uint64_t a2)
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
  return sub_10002BF8C(v11, v13);
}

uint64_t sub_100184A78(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      v6 = a1[2];
      v7 = a1[3];
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      if (v5)
      {
        if (!v8 || (v4 != *a2 || v5 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v7)
      {
        if (v10 && (v6 == v9 && v7 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v10)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  if (v4 == *a2 && v5 == *(a2 + 8))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100184B7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_100173B3C(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_100184B94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_100184BAC(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_100184BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

__n128 sub_100184BFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100184C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100184C58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100184CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100184D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100184D78()
{
  result = qword_1002D5040;
  if (!qword_1002D5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5040);
  }

  return result;
}

uint64_t sub_100184DCC()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100184E6C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100184F7C()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_10018501C(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100185134()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 18);
}

uint64_t sub_1001851D4(uint64_t result)
{
  v2 = *(v1 + 18);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v4);
      sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 18) = result;
  return result;
}

uint64_t sub_1001852F4()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100185398()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10018543C()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001854E0()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

uint64_t sub_100185584()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 58))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 57);
}

uint64_t sub_100185638@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v4 = type metadata accessor for AttributedString();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100185730()
{
  swift_getKeyPath();
  sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled);
}

uint64_t sub_1001857D8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_10000A1EC(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100185900()
{

  v1 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel;
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for RCRecordButtonViewModel.LabelAnimationConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for RCRecordButtonViewModel.LabelAnimationConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100185B58(uint64_t a1, int a2)
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

uint64_t sub_100185BA0(uint64_t result, int a2, int a3)
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

unint64_t sub_100185BF0()
{
  result = qword_1002D5370;
  if (!qword_1002D5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5370);
  }

  return result;
}

unint64_t sub_100185C48()
{
  result = qword_1002D5378;
  if (!qword_1002D5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5378);
  }

  return result;
}

void sub_100185CB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

uint64_t sub_100185CC8()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_100185D04()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

unint64_t sub_100185D74()
{
  result = qword_1002D5388[0];
  if (!qword_1002D5388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002D5388);
  }

  return result;
}

id sub_100185DC8(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7, v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8, v10);
  *&v1[OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_sampleOutputQueue;
  sub_100017154();
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100187B04();
  sub_1000C773C(&unk_1002D1E10);
  sub_100187B5C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *&v1[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_captureSession;
  *&v2[v11] = [objc_allocWithZone(AVCaptureSession) init];
  v12 = OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutput;
  *&v2[v12] = [objc_allocWithZone(AVCaptureMovieFileOutput) init];
  v13 = OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_sampleOutput;
  *&v2[v13] = [objc_allocWithZone(AVCaptureAudioDataOutput) init];
  *&v2[OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_runtimeError] = 0;
  v2[OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_isStarting] = 0;
  *&v2[OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_formatConverter] = 0;
  v14 = OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutputURL;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = &v2[v14];
  v18 = v24;
  (*(v16 + 16))(v17, v24, v15);
  v19 = type metadata accessor for CaptureSessionRecorder();
  v25.receiver = v2;
  v25.super_class = v19;
  v20 = objc_msgSendSuper2(&v25, "init");
  (*(v16 + 8))(v18, v15);
  return v20;
}

id sub_10018611C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_captureSession);
  [v1 beginConfiguration];
  [v1 setSessionPreset:AVCaptureSessionPresetHigh];
  [v1 setAutomaticallyConfiguresApplicationAudioSession:0];
  v2 = [objc_opt_self() defaultDeviceWithDeviceType:AVCaptureDeviceTypeMicrophone mediaType:AVMediaTypeAudio position:0];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(AVCaptureDeviceInput);
    v18 = 0;
    v5 = v3;
    v6 = [v4 initWithDevice:v5 error:&v18];
    if (v6)
    {
      v7 = v6;
      v8 = v18;

      if ([v7 isMultichannelAudioModeSupported:2])
      {
        [v7 setMultichannelAudioMode:2];
        if ([v1 canAddInput:v7])
        {
          v9 = *(v0 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_sampleOutput);
          [v9 setSampleBufferDelegate:v0 queue:*(v0 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_sampleOutputQueue)];
          [v9 setSpatialAudioChannelLayoutTag:6619138];
          if ([v1 canAddOutput:v9])
          {
            v10 = *(v0 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutput);
            if ([v1 canAddOutput:v10])
            {
              [v1 addInput:v7];
              [v1 addOutput:v10];
              [v1 addOutput:v9];
LABEL_15:

              return [v1 commitConfiguration];
            }

            sub_100187AB0();
            swift_allocError();
            v16 = 2;
          }

          else
          {
            sub_100187AB0();
            swift_allocError();
            v16 = 3;
          }
        }

        else
        {
          sub_100187AB0();
          swift_allocError();
          v16 = 1;
        }
      }

      else
      {
        sub_100187AB0();
        swift_allocError();
        v16 = 4;
      }

      *v15 = v16;
      swift_willThrow();
      goto LABEL_15;
    }

    v12 = v18;
    v13 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100187AB0();
    swift_allocError();
    *v14 = v13;
    swift_willThrow();
  }

  else
  {
    sub_100187AB0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }

  return [v1 commitConfiguration];
}

void sub_1001864A8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_captureSession);
  [v2 addObserver:v0 selector:"handleRuntimeErrorWithNotification:" name:AVCaptureSessionRuntimeErrorNotification object:v3];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:"handleDidStartRunningWithNotification:" name:AVCaptureSessionDidStartRunningNotification object:v3];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:"handleDidStopRunningWithNotification:" name:AVCaptureSessionDidStopRunningNotification object:v3];
}

void sub_1001865CC()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000D2DFC(v13), (v5 & 1) == 0))
  {

    sub_1000D513C(v13);
LABEL_9:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_10;
  }

  sub_10001931C(*(v3 + 56) + 32 * v4, &v14);
  sub_1000D513C(v13);

  if (!*(&v15 + 1))
  {
LABEL_10:
    sub_100003CBC(&v14, &qword_1002D06A8);
    goto LABEL_11;
  }

  sub_1000C773C(&qword_1002D5540);
  if (swift_dynamicCast())
  {
    if (*(v1 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_isStarting) == 1)
    {
      *(v1 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_runtimeError) = v13[0];
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = _convertErrorToNSError(_:)();
        [v11 captureSessionRecorder:v1 didFailWithError:v12];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return;
  }

LABEL_11:
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100018D90(v6, qword_1002E8CB0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Capture session reported nil error in runtimeErrorNotification", v9, 2u);
  }
}

uint64_t sub_10018691C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = a1;
    [v12 captureSessionRecorderIsRunningDidChange:v13 isRunning:a4 & 1];

    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_100186A38()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_isStarting;
  *(v0 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_isStarting) = 1;
  sub_1001864A8();
  [*(v0 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_captureSession) startRunning];
  v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutput);
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutputURL);
  v5 = v4;
  [v3 startRecordingToOutputFileURL:v4 recordingDelegate:v1];

  *(v1 + v2) = 0;
  if (*(v1 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_runtimeError))
  {
    *(v1 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_runtimeError) = 0;
    swift_willThrow();
  }
}

id sub_100186B2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaptureSessionRecorder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CaptureSessionRecorder()
{
  result = qword_1002D5470;
  if (!qword_1002D5470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100186C94()
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

id sub_100186E70(opaqueCMSampleBuffer *a1)
{
  v2 = sub_100137DAC(a1, 0);
  if (!v2)
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100018D90(v8, qword_1002E8CB0);
    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v57 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10001901C(0xD000000000000016, 0x8000000100235250, &v57);
      _os_log_impl(&_mh_execute_header, v4, v9, "%s - Failed to convert to AVAudioBuffer", v10, 0xCu);
      sub_100014B64(v11);
    }

    goto LABEL_24;
  }

  v3 = v2;
  v4 = v2;
  v5 = [v4 format];
  v6 = [v5 isStandard];

  if (v6)
  {

    return v3;
  }

  v12 = [v4 format];
  [v12 sampleRate];
  v14 = v13;

  v15 = [v4 format];
  v16 = [v15 channelCount];

  v17 = [objc_allocWithZone(AVAudioFormat) initStandardFormatWithSampleRate:v16 channels:v14];
  if (!v17)
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100018D90(v26, qword_1002E8CB0);
    v4 = v4;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v28))
    {

      return 0;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v57 = v31;
    *v29 = 136315394;
    *(v29 + 4) = sub_10001901C(0xD000000000000016, 0x8000000100235250, &v57);
    *(v29 + 12) = 2114;
    v32 = [v4 format];
    *(v29 + 14) = v32;
    *v30 = v32;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s - Failed to create format - sampleBufferFormat: %{public}@", v29, 0x16u);
    sub_100003CBC(v30, &unk_1002D3690);

    sub_100014B64(v31);

    goto LABEL_24;
  }

  v18 = v17;
  v19 = v17;
  v20 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v19 frameCapacity:-[NSObject frameLength](v4, "frameLength")];

  if (!v20)
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100018D90(v33, qword_1002E8CB0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10001901C(0xD000000000000016, 0x8000000100235250, &v57);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - Failed to allocate audio buffer", v36, 0xCu);
      sub_100014B64(v37);
    }

LABEL_23:
LABEL_24:

    return 0;
  }

  v56 = v20;
  v21 = OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_formatConverter;
  v22 = *(v1 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_formatConverter);
  if (!v22)
  {
    v46 = v19;
    v47 = [v4 format];
    v23 = [objc_allocWithZone(AVAudioConverter) initFromFormat:v47 toFormat:v46];

    if (v23)
    {
      if (!*(v1 + v21))
      {
        *(v1 + v21) = v23;
        v23 = v23;
      }

      goto LABEL_12;
    }

    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100018D90(v48, qword_1002E8CB0);
    v4 = v4;
    v49 = v46;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v50, v51))
    {

      return 0;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57 = v54;
    *v52 = 136315650;
    *(v52 + 4) = sub_10001901C(0xD000000000000016, 0x8000000100235250, &v57);
    *(v52 + 12) = 2112;
    v55 = [v4 format];
    *(v52 + 14) = v55;
    *(v52 + 22) = 2112;
    *(v52 + 24) = v49;
    *v53 = v55;
    v53[1] = v18;
    v19 = v49;
    _os_log_impl(&_mh_execute_header, v50, v51, "%s - Failed to create format converter - from: %@ to:%@", v52, 0x20u);
    sub_1000C773C(&unk_1002D3690);
    swift_arrayDestroy();

    sub_100014B64(v54);

    goto LABEL_23;
  }

  v23 = *(v1 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_formatConverter);
LABEL_12:
  v57 = 0;
  v24 = v22;
  if ([v23 convertToBuffer:v56 fromBuffer:v4 error:&v57])
  {
    v25 = v57;

    return v56;
  }

  v38 = v57;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100018D90(v39, qword_1002E8CB0);
  swift_errorRetain();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v57 = v44;
    *v42 = 136315394;
    *(v42 + 4) = sub_10001901C(0xD000000000000016, 0x8000000100235250, &v57);
    *(v42 + 12) = 2112;
    swift_errorRetain();
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 14) = v45;
    *v43 = v45;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s - Failed to convert buffer - error: %@", v42, 0x16u);
    sub_100003CBC(v43, &unk_1002D3690);

    sub_100014B64(v44);
  }

  else
  {
  }

  return 0;
}

void sub_1001878A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [*(v2 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_captureSession) stopRunning];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutputURL);
    v8 = v7;
    if (a2)
    {
      v9 = _convertErrorToNSError(_:)();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v6 captureSessionRecorderDidFinish:v3 fileOutputURL:v8 error:?];
    swift_unknownObjectRelease();
  }
}

void sub_100187980(opaqueCMSampleBuffer *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    CMSampleBufferRef.presentationTimeStamp.getter();
    if (CMSampleBufferRef.numSamples.getter() > 0 || (static CMTime.!= infix(_:_:)()) && (v6 = sub_100186E70(a1)) != 0)
    {
      v7 = v6;
      CMTime.seconds.getter();
      [v5 captureSessionRecorderDidCaptureSampleBuffer:v2 buffer:v7 mediaTime:?];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_100187AB0()
{
  result = qword_1002D5548;
  if (!qword_1002D5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5548);
  }

  return result;
}

unint64_t sub_100187B04()
{
  result = qword_1002CDFC0;
  if (!qword_1002CDFC0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CDFC0);
  }

  return result;
}

unint64_t sub_100187B5C()
{
  result = qword_1002CDFD0;
  if (!qword_1002CDFD0)
  {
    sub_1000C7784(&unk_1002D1E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CDFD0);
  }

  return result;
}

uint64_t sub_100187BC0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100187BD8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100187C30(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100187CF8()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = [objc_opt_self() sharedStyleProvider];
  static UIButton.Configuration.prominentGlass()();

  UIButton.Configuration.title.setter();
  v5 = [v4 trimDeleteButtonBackgroundColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v6 = [v4 trimDeleteButtonTextColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v1 + 104))(v3, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
  UIButton.Configuration.cornerStyle.setter();
  [v4 trimDeleteButtonPadding];
  v8 = v7;
  UIButton.Configuration.contentInsets.getter();
  v10 = v8 + v9;
  UIButton.Configuration.contentInsets.getter();
  v12 = v8 + v11;
  v13 = UIButton.Configuration.contentInsets.modify();
  *(v14 + 8) = v10;
  v13(v17, 0);
  v15 = UIButton.Configuration.contentInsets.modify();
  *(v16 + 24) = v12;
  v15(v17, 0);
}

id sub_100187F08(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100187F48()
{
  result = qword_1002D5668;
  if (!qword_1002D5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5668);
  }

  return result;
}

unint64_t sub_100187F9C()
{
  result = qword_1002D5670;
  if (!qword_1002D5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5670);
  }

  return result;
}

unint64_t sub_100187FF4()
{
  result = qword_1002D5678;
  if (!qword_1002D5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5678);
  }

  return result;
}

uint64_t sub_100188048()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E9180);
  sub_100018D90(v0, qword_1002E9180);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1001880AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v3[15] = type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v5;
  v3[18] = v4;

  return _swift_task_switch(sub_10018814C, v5, v4);
}

uint64_t sub_10018814C()
{
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 192) == 1)
  {
    AppDependency.wrappedValue.getter();
    v1 = *sub_10000AACC((v0 + 56), *(v0 + 80));
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = sub_1001882B4;
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);

    return sub_10019A28C(v4, v3, v1);
  }

  else
  {
    AppDependency.wrappedValue.getter();
    sub_10000AACC((v0 + 16), *(v0 + 40));
    *(v0 + 168) = static MainActor.shared.getter();
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_1001884D0;

    return sub_100199CE4();
  }
}

uint64_t sub_1001882B4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100188464;
  }

  else
  {
    v5 = sub_1001883F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001883F0()
{

  sub_100014B64(v0 + 56);
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100188464()
{

  sub_100014B64(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001884D0()
{
  *(*v1 + 184) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100188704;
  }

  else
  {
    v4 = sub_10018862C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10018862C()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_100188690, v1, v2);
}

uint64_t sub_100188690()
{

  sub_100014B64(v0 + 16);
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100188704()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_100188768, v1, v2);
}

uint64_t sub_100188768()
{

  sub_100014B64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001887D4@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*sub_100188848(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10010DCE8;
}

unint64_t sub_1001888C0()
{
  result = qword_1002D5680;
  if (!qword_1002D5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5680);
  }

  return result;
}

unint64_t sub_100188918()
{
  result = qword_1002D5688;
  if (!qword_1002D5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5688);
  }

  return result;
}

uint64_t sub_1001889D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1002CDF80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100018D90(v2, qword_1002E9180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100188A80@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = type metadata accessor for IntentAuthenticationPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100188AF4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002001C;

  return sub_1001880AC(a1, v5, v4);
}

uint64_t sub_100188BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100188C14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100188BC8(uint64_t a1)
{
  v2 = sub_100187F9C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100188C14()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C773C(&qword_1002CF820);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v24 - v7;
  v9 = sub_1000C773C(&qword_1002D5690);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v24 - v11;
  v13 = sub_1000C773C(&qword_1002D07A8);
  __chkstk_darwin(v13 - 8, v14);
  v16 = v24 - v15;
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  sub_1000C773C(&qword_1002D5698);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v18 + 56))(v16, 1, 1, v17);
  v25 = 2;
  v20 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  v22 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  sub_1000C773C(&qword_1002D56A0);
  v24[1] = 0xD00000000000002FLL;
  v24[2] = 0x8000000100232170;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v22;
}

uint64_t RecordingModes.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1869508461;
  }

  if (a1 == 1)
  {
    return 0x6F6572657473;
  }

  return 0x6C616974617073;
}

uint64_t sub_100189024(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6F6572657473;
  if (v2 != 1)
  {
    v4 = 0x6C616974617073;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1869508461;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6F6572657473;
  if (*a2 != 1)
  {
    v8 = 0x6C616974617073;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869508461;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100189118()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001891B0()
{
  String.hash(into:)();
}

Swift::Int sub_100189234()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001892C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10VoiceMemos14RecordingModesO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001892F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6F6572657473;
  if (v2 != 1)
  {
    v5 = 0x6C616974617073;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869508461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s10VoiceMemos14RecordingModesO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CFB8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10018944C()
{
  result = qword_1002D56A8;
  if (!qword_1002D56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D56A8);
  }

  return result;
}

unint64_t sub_1001894B0()
{
  result = qword_1002D56B0;
  if (!qword_1002D56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D56B0);
  }

  return result;
}

uint64_t sub_100189504(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F73496563696F76;
    }

    else
    {
      v5 = 0x6365705365646977;
    }

    if (v4 == 2)
    {
      v6 = 0xEE006E6F6974616CLL;
    }

    else
    {
      v6 = 0xEC0000006D757274;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x647261646E617473;
    }

    else
    {
      v5 = 0x6974616D6F747561;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000063;
    }
  }

  v7 = 0x6F73496563696F76;
  v8 = 0xEE006E6F6974616CLL;
  if (a2 != 2)
  {
    v7 = 0x6365705365646977;
    v8 = 0xEC0000006D757274;
  }

  if (a2)
  {
    v3 = 0x647261646E617473;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100189670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x534F64615069;
    }

    else
    {
      v4 = 5459817;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x534F63616DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x534F6E6F69736976;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x534F64615069;
    }

    else
    {
      v9 = 5459817;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x534F6E6F69736976;
    if (a2 != 3)
    {
      v6 = 0x6E776F6E6B6E75;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x534F63616DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t MicModes.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6974616D6F747561;
  v2 = 0x6F73496563696F76;
  if (a1 != 2)
  {
    v2 = 0x6365705365646977;
  }

  if (a1)
  {
    v1 = 0x647261646E617473;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_100189888()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100189964()
{
  String.hash(into:)();
}

Swift::Int sub_100189A2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100189B04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10VoiceMemos8MicModesO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100189B34(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = 0xEE006E6F6974616CLL;
  v5 = 0x6F73496563696F76;
  if (*v1 != 2)
  {
    v5 = 0x6365705365646977;
    v4 = 0xEC0000006D757274;
  }

  if (*v1)
  {
    v3 = 0x647261646E617473;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t _s10VoiceMemos8MicModesO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028D020, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100189CCC()
{
  result = qword_1002D56B8;
  if (!qword_1002D56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D56B8);
  }

  return result;
}

unint64_t sub_100189D30()
{
  result = qword_1002D56C0;
  if (!qword_1002D56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D56C0);
  }

  return result;
}

uint64_t sub_100189EC0()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_100018DC8(v0, static PlaybackEvent.timeDurationGranularity);
  sub_100018D90(v0, static PlaybackEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t sub_100189F88(uint64_t a1)
{
  v2 = sub_10018A164();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189FC4(uint64_t a1)
{
  v2 = sub_10018A164();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaybackEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_1000C773C(&qword_1002D56C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000AACC(a1, a1[3]);
  sub_10018A164();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for EventData();
  sub_100139C50(&qword_1002D2078);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10018A164()
{
  result = qword_1002D56D0;
  if (!qword_1002D56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D56D0);
  }

  return result;
}

uint64_t PlaybackEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for EventData();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C773C(&qword_1002D56D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for PlaybackEvent.Model(0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AACC(a1, a1[3]);
  sub_10018A164();
  v15 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v20;
    sub_100139C50(&qword_1002D2090);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v6);
    (*(v16 + 32))(v14, v21, v3);
    sub_10018A444(v14, v19);
  }

  return sub_100014B64(a1);
}

uint64_t sub_10018A444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018A5EC()
{
  result = qword_1002D5800;
  if (!qword_1002D5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5800);
  }

  return result;
}

unint64_t sub_10018A644()
{
  result = qword_1002D5808;
  if (!qword_1002D5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5808);
  }

  return result;
}

unint64_t sub_10018A69C()
{
  result = qword_1002D5810;
  if (!qword_1002D5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5810);
  }

  return result;
}

uint64_t sub_10018A82C()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_100018DC8(v0, static RecordingEvent.timeDurationGranularity);
  sub_100018D90(v0, static RecordingEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t sub_10018A8F4(uint64_t a1)
{
  v2 = sub_10018AAD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018A930(uint64_t a1)
{
  v2 = sub_10018AAD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RecordingEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_1000C773C(&qword_1002D5818);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000AACC(a1, a1[3]);
  sub_10018AAD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for EventData();
  sub_100139C50(&qword_1002D2078);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10018AAD0()
{
  result = qword_1002D5820;
  if (!qword_1002D5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5820);
  }

  return result;
}

uint64_t RecordingEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for EventData();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C773C(&qword_1002D5828);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for RecordingEvent.Model(0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AACC(a1, a1[3]);
  sub_10018AAD0();
  v15 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v20;
    sub_100139C50(&qword_1002D2090);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v6);
    (*(v16 + 32))(v14, v21, v3);
    sub_10018ADB0(v14, v19);
  }

  return sub_100014B64(a1);
}

uint64_t sub_10018ADB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018AF58()
{
  result = qword_1002D5950;
  if (!qword_1002D5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5950);
  }

  return result;
}

unint64_t sub_10018AFB0()
{
  result = qword_1002D5958;
  if (!qword_1002D5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5958);
  }

  return result;
}

unint64_t sub_10018B008()
{
  result = qword_1002D5960;
  if (!qword_1002D5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5960);
  }

  return result;
}

void sub_10018B108(void *a1)
{
  v2 = v1;
  if (a1)
  {
    [a1 removeTimeObserver:v1];
  }

  v3 = OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_timeController;
  v4 = *(v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_timeController);
  if (v4)
  {
    [v4 addTimeObserver:v1];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;
  swift_unknownObjectRetain_n();

  sub_100179DB4(v7);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(*(v2 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_interactionDelegate) + 56) = *(v2 + v3);

  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v8 = *(v2 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_configurationMediator);
  v9 = *(v2 + v3);
  swift_unknownObjectRetain();
  v10 = v8;
  sub_10010D2E8(v9);
}

uint64_t sub_10018B824(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_contextProvider);
  v3 = *(v2 + 48);
  v13[0] = *(v2 + 32);
  v13[1] = v3;
  LODWORD(v15) = *(v2 + 48);
  v14 = v13[0];
  BYTE4(v15) = a1;
  *(&v15 + 5) = *(v2 + 53);
  HIDWORD(v15) = *(v2 + 60);
  v16 = v13[0];
  v17 = v3;
  v18[0] = v13[0];
  v18[1] = v3;
  v4 = v15;
  *(v2 + 32) = v13[0];
  *(v2 + 48) = v4;

  sub_100023708(v13, v12);
  sub_100023708(&v16, v12);
  sub_100023708(&v14, v12);
  sub_100023778(v18);
  v5 = 256;
  if (!BYTE1(v17))
  {
    v5 = 0;
  }

  v6 = v5 | v17;
  v7 = 0x10000;
  if (!BYTE2(v17))
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!BYTE3(v17))
  {
    v8 = 0;
  }

  v9 = v6 | v7 | v8;
  v10 = &_mh_execute_header;
  if (!BYTE4(v17))
  {
    v10 = 0;
  }

  sub_1000237CC(v16, *(&v16 + 1), v9 | v10, *(&v17 + 1));

  sub_100023778(&v16);
  return sub_100023778(&v14);
}

id sub_10018B984()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptViewCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018BA74@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10018C520(v1 + 184, &v8);
  if (v9)
  {
    return sub_100015FD0(&v8, a1);
  }

  sub_10018C590(&v8);
  v4 = type metadata accessor for MultiLayerTrackingController();
  v5 = swift_allocObject();

  v6 = v1;
  v7 = Tracker.chain(name:identifier:)();

  *(v5 + 16) = v7;
  a1[3] = v4;
  a1[4] = &off_100292F78;
  *a1 = v5;
  sub_1000CC430(a1, &v8);
  swift_beginAccess();
  sub_10018C5F8(&v8, v6 + 184);
  return swift_endAccess();
}

uint64_t sub_10018BB9C()
{

  return _swift_task_switch(sub_10018BC98, 0, 0);
}

uint64_t sub_10018BC98()
{
  sub_1001A6F44();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018BCFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002001C;

  return sub_10018C01C();
}

uint64_t sub_10018BD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10018BE3C;

  return sub_10018C01C();
}

uint64_t sub_10018BE3C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10018BF78, v1, v0);
}

uint64_t sub_10018BF78()
{
  v1 = *(v0 + 16);

  v2 = v1[6];
  v3 = v1[7];
  sub_10000AACC(v1 + 3, v2);
  (*(v3 + 16))(v2, v3);
  sub_1001A71C0();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018C03C()
{
  v1 = v0[2];
  sub_10000AACC(v1 + 8, v1[11]);
  v2 = sub_100021AB0();
  v3 = v2;
  v5 = v4;
  v6 = HIDWORD(v2);
  v7 = HIDWORD(v4);
  v8 = swift_allocObject();
  v8[4] = v3;
  v8[5] = v6;
  v8[6] = v5;
  v8[7] = v7;
  Tracker.transaction(block:)();

  v0[3] = *sub_10000AACC(v1 + 13, v1[16]);
  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_10018C164;

  return sub_1001AE228();
}

uint64_t sub_10018C164(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *v3;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 64) = a3;

  return _swift_task_switch(sub_10018C268, 0, 0);
}

uint64_t sub_10018C268()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 20) = BYTE4(v3) & 1;
  *(v4 + 21) = BYTE5(v3);
  *(v4 + 24) = v2;
  *(v4 + 32) = v1 & 1;
  *(v4 + 33) = HIBYTE(v1) & 1;
  Tracker.transaction(block:)();

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10018C384;

  return sub_10001E5E4();
}

uint64_t sub_10018C384()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10018C478()
{

  sub_100014B64(v0 + 24);
  sub_100014B64(v0 + 64);
  sub_100014B64(v0 + 104);
  sub_100014B64(v0 + 144);
  sub_10018C590(v0 + 184);

  return swift_deallocClassInstance();
}

uint64_t sub_10018C520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D5BD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018C590(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D5BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018C5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D5BD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VoiceMemosAnalyticsSession.appSessionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VoiceMemosAnalyticsSession.appData.getter()
{
  v1 = *(v0 + 128);
  sub_10018C748(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_10018C748(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t VoiceMemosAnalyticsSession.debugData.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t VoiceMemosAnalyticsSession.sessionSummaryData.getter()
{
  v1 = *(v0 + 264);

  return v1;
}

uint64_t sub_10018C838(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x496E6F6973736573;
    v6 = 0x6174614472657375;
    if (a1 != 2)
    {
      v6 = 0x446E6F6973736573;
    }

    if (a1)
    {
      v5 = 0x6973736553707061;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7461446775626564;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x61746144707061;
    if (a1 != 4)
    {
      v3 = 0x6144656369766564;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10018C980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018CFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018C9B4(uint64_t a1)
{
  v2 = sub_10018CE44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018C9F0(uint64_t a1)
{
  v2 = sub_10018CE44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t VoiceMemosAnalyticsSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000C773C(&qword_1002D5BF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v20 - v8;
  sub_10000AACC(a1, a1[3]);
  sub_10018CE44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 48);
    v29 = *(v3 + 32);
    v30[0] = v10;
    *(v30 + 12) = *(v3 + 60);
    v11 = *(v3 + 48);
    v25 = *(v3 + 32);
    v26[0] = v11;
    *(v26 + 12) = *(v3 + 60);
    LOBYTE(v20) = 2;
    sub_10000B46C(&v29, v23, &qword_1002D5BE0);
    sub_10013DDE4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10018CE98(v25, *(&v25 + 1));
    v12 = *(v3 + 96);
    v25 = *(v3 + 80);
    v26[0] = v12;
    v26[1] = *(v3 + 112);
    LOBYTE(v23[0]) = 3;
    sub_100141394();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 144);
    v25 = *(v3 + 128);
    v26[0] = v13;
    LOBYTE(v23[0]) = 4;
    sub_100138B60();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 176);
    v28[0] = *(v3 + 160);
    v28[1] = v14;
    v15 = *(v3 + 208);
    v17 = *(v3 + 160);
    v16 = *(v3 + 176);
    v28[2] = *(v3 + 192);
    v28[3] = v15;
    v25 = v17;
    v26[0] = v16;
    v18 = *(v3 + 208);
    v26[1] = *(v3 + 192);
    v27 = v18;
    v24 = 5;
    sub_10000B46C(v28, v23, &qword_1002D5BF0);
    sub_10013CF54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23[0] = v25;
    v23[1] = v26[0];
    v23[2] = v26[1];
    v23[3] = v27;
    sub_10018CEDC(v23);
    v20 = *(v3 + 224);
    v22 = 6;
    sub_10001E770();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 240);
    LOBYTE(v21) = *(v3 + 256);
    v22 = 7;
    sub_1000219E0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 264);
    v21 = *(v3 + 280);
    v22 = 8;
    sub_1000225E8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10018CE44()
{
  result = qword_1002D5C00;
  if (!qword_1002D5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C00);
  }

  return result;
}

uint64_t sub_10018CE98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10018CEDC(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D5BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *VoiceMemosAnalyticsSession.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10018D2A8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x11AuLL);
  }

  return result;
}

uint64_t sub_10018CFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144656369766564 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446775626564 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100232710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002326F0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void *sub_10018D2A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000C773C(&qword_1002D5C20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v30 - v8;
  v10 = a1[3];
  v98 = a1;
  sub_10000AACC(a1, v10);
  sub_10018CE44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(v98);
  }

  v11 = v6;
  v54 = a2;
  LOBYTE(v56) = 0;
  v12 = v5;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v53 = v15;
  LOBYTE(v56) = 1;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = v17;
  v18 = v11;
  v19 = v16;
  LOBYTE(v55[0]) = 2;
  sub_10013DD8C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v46 = v56;
  v45 = *(&v57 + 1);
  v47 = v57;
  v43 = v58;
  v44 = DWORD2(v58);
  LOBYTE(v55[0]) = 3;
  sub_10014133C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v56;
  v50 = v57;
  v48 = *(&v58 + 1);
  v51 = v58;
  LOBYTE(v55[0]) = 4;
  sub_100138B08();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v38 = v19;
  v20 = v56;
  v39 = v57;
  v40 = *(&v56 + 1);
  v41 = *(&v57 + 1);
  v87 = 5;
  sub_10013CEFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = v88;
  v95 = v89;
  v96 = v90;
  v97 = v91;
  LOBYTE(v55[0]) = 6;
  sub_10001E718();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = 0;
  v21 = *(&v56 + 1);
  v37 = v56;
  LOBYTE(v55[0]) = 7;
  sub_10002198C();
  v22 = v42;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v22;
  if (v22 || (v35 = *(&v56 + 1), v36 = v56, v93 = v57, v83 = 8, sub_100022590(), v23 = v42, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v42 = v23) != 0))
  {
    (*(v18 + 8))(v9, v12);
    sub_100014B64(v98);

    sub_10018CE98(v46, *(&v46 + 1));
    sub_10018DE1C(v49, *(&v49 + 1), v50);
    sub_10018DDD8(v20, v40);
    v56 = v94;
    v57 = v95;
    v58 = v96;
    v59 = v97;
    sub_10018CEDC(&v56);
  }

  else
  {
    (*(v18 + 8))(v9, v12);
    v33 = v85;
    v34 = v84;
    v32 = v86;
    v25 = v52;
    v24 = v53;
    *&v55[0] = v14;
    *(&v55[0] + 1) = v53;
    *&v55[1] = v38;
    *(&v55[1] + 1) = v52;
    v55[2] = v46;
    v26 = v48;
    *&v55[3] = v47;
    v27 = v43;
    *(&v55[3] + 1) = v45;
    *&v55[4] = v43;
    v28 = v44;
    DWORD2(v55[4]) = v44;
    v55[5] = v49;
    v55[6] = v50;
    *&v55[7] = v51;
    *(&v55[7] + 1) = v48;
    v31 = v20;
    *&v55[8] = v20;
    *(&v55[8] + 1) = v40;
    v29 = v39;
    *&v55[9] = v39;
    *(&v55[9] + 1) = v41;
    v55[10] = v94;
    v55[11] = v95;
    v55[12] = v96;
    v55[13] = v97;
    *&v55[14] = v37;
    *(&v55[14] + 1) = v21;
    *&v55[15] = v36;
    *(&v55[15] + 1) = v35;
    HIDWORD(v30) = v93;
    LOBYTE(v55[16]) = v93;
    *(&v55[16] + 1) = v84;
    *&v55[17] = v85;
    WORD4(v55[17]) = v86;
    sub_10018DE60(v55, &v56);
    sub_100014B64(v98);
    *&v56 = v14;
    *(&v56 + 1) = v24;
    *&v57 = v38;
    *(&v57 + 1) = v25;
    v58 = v46;
    *&v59 = v47;
    *(&v59 + 1) = v45;
    v60 = v27;
    v61 = v28;
    v62 = v49;
    v63 = v50;
    v64 = v51;
    v65 = v26;
    v66 = v31;
    v67 = v40;
    v68 = v29;
    v69 = v41;
    v70 = v94;
    v71 = v95;
    v72 = v96;
    v73 = v97;
    v74 = v37;
    v75 = v21;
    v76 = v36;
    v77 = v35;
    v78 = BYTE4(v30);
    *v79 = *v92;
    *&v79[3] = *&v92[3];
    v80 = v34;
    v81 = v33;
    v82 = v32;
    sub_10018DE98(&v56);
    return memcpy(v54, v55, 0x11AuLL);
  }
}

uint64_t sub_10018DA7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10018DA9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 282))
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

uint64_t sub_10018DAE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 282) = 1;
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

    *(result + 282) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceMemosAnalyticsSession.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceMemosAnalyticsSession.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10018DCD4()
{
  result = qword_1002D5C08;
  if (!qword_1002D5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C08);
  }

  return result;
}

unint64_t sub_10018DD2C()
{
  result = qword_1002D5C10;
  if (!qword_1002D5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C10);
  }

  return result;
}

unint64_t sub_10018DD84()
{
  result = qword_1002D5C18;
  if (!qword_1002D5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5C18);
  }

  return result;
}

uint64_t sub_10018DDD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10018DE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_10018DF88()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_10018DFF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

uint64_t sub_10018E0E8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1001901D0(result + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_controller, v5);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = swift_unknownObjectWeakLoadStrong();
      [v3 performControlsAction:28 position:v4 source:0.0];

      swift_unknownObjectRelease();
    }

    return sub_100007988(v5);
  }

  return result;
}

id sub_10018E19C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  v4 = [objc_opt_self() sharedStyleProvider];
  v5 = [v4 editRecordingActivitySystemImageName];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [objc_opt_self() systemImageNamed:v5];

  v7._object = 0x8000000100235980;
  v7._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v7);
  sub_1000067AC(0, &qword_1002CFE60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_retain_n();
  v8 = v6;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

id sub_10018E4A4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  v4 = [objc_opt_self() sharedStyleProvider];
  v5 = [v4 speechIsolatorImageName];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [objc_opt_self() systemImageNamed:v5];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = objc_opt_self();
  v8 = [v7 sharedRecordingsModelInteractor];

  v9 = String._bridgeToObjectiveC()();

  [v8 isSpeechIsolatorEnabledForUUID:v9];

  v10 = [v7 sharedRecordingsModelInteractor];

  v11 = String._bridgeToObjectiveC()();

  LOBYTE(v9) = [v10 isSpeechIsolatorEnabledForUUID:v11];

  sub_1000067AC(0, &qword_1002CFE60);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v14 = v6;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v16._countAndFlagsBits = 0xD000000000000014;
  v16._object = 0x8000000100235960;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityIdentifier:v17];

  return v15;
}

uint64_t sub_10018E854(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1001901D0(result + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_controller, v7);

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (a3)
      {
        v6 = 35;
      }

      else
      {
        v6 = 34;
      }

      swift_getObjectType();
      sub_1001846C0(v6);
      swift_unknownObjectRelease();
    }

    return sub_100007988(v7);
  }

  return result;
}

uint64_t sub_10018E910(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1000C773C(&unk_1002CE190);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002432F0;
  *(v6 + 32) = a4();
  a1(v6);
}

id sub_10018E9AC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  v4 = [objc_opt_self() sharedStyleProvider];
  v5 = objc_opt_self();
  v6 = [v5 sharedRecordingsModelInteractor];

  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 isFavoriteForUUID:v7];

  v9 = [v4 favoriteActivitySystemImageName:v8];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [objc_opt_self() systemImageNamed:v9];

  v11 = [v5 sharedRecordingsModelInteractor];

  v12 = String._bridgeToObjectiveC()();

  [v11 isFavoriteForUUID:v12];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = [v5 sharedRecordingsModelInteractor];

  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 isFavoriteForUUID:v14];

  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x8000000100235900;
  String.append(_:)(v16);
  sub_1000067AC(0, &qword_1002CFE60);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;

  v19 = v10;

  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v21 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityIdentifier:v21];

  return v20;
}

uint64_t sub_10018EE18(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1001901D0(result + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_controller, v7);

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (a3)
      {
        v6 = 37;
      }

      else
      {
        v6 = 36;
      }

      swift_getObjectType();
      sub_1001846C0(v6);
      swift_unknownObjectRelease();
    }

    return sub_100007988(v7);
  }

  return result;
}

id sub_10018EEBC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  v4 = [objc_opt_self() sharedStyleProvider];
  v5 = [v4 duplicateActivitySystemImageName];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [objc_opt_self() systemImageNamed:v5];

  v7._object = 0x80000001002358A0;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  sub_1000067AC(0, &qword_1002CFE60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_retain_n();
  v8 = v6;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

id sub_10018F190()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  v4 = [objc_opt_self() sharedStyleProvider];
  v5 = [v4 moveToFolderActivitySystemImageName];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [objc_opt_self() systemImageNamed:v5];

  v7._object = 0x8000000100235880;
  v7._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v7);
  sub_1000067AC(0, &qword_1002CFE60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_retain_n();
  v8 = v6;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

id sub_10018F468()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  v4 = [objc_opt_self() sharedStyleProvider];
  v5 = [v4 renameRecordingSystemImageName];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [objc_opt_self() systemImageNamed:v5];

  v7._countAndFlagsBits = 0x4D656D616E65522FLL;
  v7._object = 0xEF6D657449756E65;
  String.append(_:)(v7);
  sub_1000067AC(0, &qword_1002CFE60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_retain_n();
  v8 = v6;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setAccessibilityIdentifier:v10];

  return v9;
}

uint64_t sub_10018F738()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1001901D0(result + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_controller, v7);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v3 = Strong, v4 = swift_unknownObjectWeakLoadStrong(), v3, v4))
    {
      *(&v6 + 1) = sub_1000067AC(0, &qword_1002D5C78);
      *&v5 = v4;
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    sub_1001846DC(&v5);
    sub_100007988(v7);
    return sub_10010D150(&v5);
  }

  return result;
}

id sub_10018F824()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = [objc_opt_self() sharedStyleProvider];
  v1 = [v0 trimImageName];

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_opt_self() systemImageNamed:v1];

  v3._countAndFlagsBits = 0x6E654D6D6972542FLL;
  v3._object = 0xED00006D65744975;
  String.append(_:)(v3);
  sub_1000067AC(0, &qword_1002CFE60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_retain_n();
  v4 = v2;
  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v6 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

id sub_10018FAFC()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = [objc_opt_self() sharedStyleProvider];
  v1 = [v0 separateLayersImageName];

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_opt_self() systemImageNamed:v1];

  v3._object = 0x8000000100235860;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  sub_1000067AC(0, &qword_1002CFE60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_retain_n();
  v4 = v2;
  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v6 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

id sub_10018FDD4()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = [objc_opt_self() sharedStyleProvider];
  v1 = [v0 undoImageName];

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_opt_self() systemImageNamed:v1];

  v3._countAndFlagsBits = 0x6E654D6F646E552FLL;
  v3._object = 0xED00006D65744975;
  String.append(_:)(v3);
  sub_1000067AC(0, &qword_1002CFE60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_retain_n();
  v4 = v2;
  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v6 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

uint64_t sub_1001900B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1001901D0(result + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_controller, v6);

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_1001846C0(a3);
      swift_unknownObjectRelease();
    }

    return sub_100007988(v6);
  }

  return result;
}

id sub_10019017C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCMoreActionsMenuCreator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001902EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = &v6[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_recordingUUID];
  *v11 = a1;
  *(v11 + 1) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v12 = &v6[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix];
  *v12 = a5;
  *(v12 + 1) = a6;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_100005EF4(v15, &v6[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_controller]);
  v14.receiver = v6;
  v14.super_class = type metadata accessor for RCMoreActionsMenuCreator();
  return objc_msgSendSuper2(&v14, "init");
}

id sub_100190430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VMDateTime();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001905D4(void *a1, void *a2, void *a3, char a4)
{
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC10VoiceMemos12RCFolderView_zoomTransitionSourceView;
  *&v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_zoomTransitionSourceView] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView;
  *&v4[v10] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordButtonFactory] = a1;
  *&v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordingsCollectionViewControllerWrapperView] = a2;
  swift_unknownObjectWeakAssign();
  v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_isBottomContainerViewHidden] = 0;
  v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_allowsNewRecordings] = a4;
  swift_unknownObjectRetain();
  v11 = a2;
  v12 = [a1 createRecordButtonContainer];
  v13 = OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordButtonContainer;
  *&v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordButtonContainer] = v12;
  v14 = [v12 view];
  v15 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityIdentifier:v15];

  v16 = [*&v4[v13] zoomTransitionSourceView];
  v17 = *&v4[v9];
  *&v4[v9] = v16;

  v23.receiver = v4;
  v23.super_class = type metadata accessor for RCFolderView();
  v18 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemBackgroundColor];
  [v20 setBackgroundColor:v21];

  sub_10001B478();
  swift_unknownObjectRelease();

  return v20;
}

void sub_1001908B0(int a1, int a2, void *a3)
{
  v4 = v3;
  v52 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v46 = *(v15 - 8);
  v47 = v15;
  __chkstk_darwin(v15, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v45 - v21;
  v53 = [objc_opt_self() sharedStyleProvider];
  v23 = [v53 supportsHideRecordButtonDuringSearch];
  v24 = v23;
  v54 = a1;
  if ((a1 & 1) == 0 && (a2 & v23 & 1) == 0)
  {
    v25 = 0;
    goto LABEL_7;
  }

  v26 = [*&v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView] isHidden];
  v25 = v26 ^ 1;
  if ((v54 & 1) == 0)
  {
LABEL_7:
    v27 = [*&v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView] isHidden];
    if (v24)
    {
      if ((v25 & 1) == 0)
      {
        v27 &= a2 ^ 1;
        goto LABEL_12;
      }

LABEL_11:
      v28 = v52;
      [v52 willUpdateBottomLayoutForEditing];
      v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_isBottomContainerViewHidden] = 1;
      v29 = objc_opt_self();
      [objc_opt_self() animationDuration];
      v31 = v30;
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v59 = sub_10019141C;
      v60 = v32;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_10012ED20;
      v58 = &unk_100294F30;
      v33 = _Block_copy(&aBlock);

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v28;
      v59 = sub_100191424;
      v60 = v35;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_10019101C;
      v58 = &unk_100294F80;
      v36 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v29 animateWithDuration:v33 animations:v36 completion:v31];
      _Block_release(v36);
      _Block_release(v33);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if ((v24 & 1) == 0)
  {
    if (v26)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v27 = 0;
LABEL_10:
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v27)
  {
    v37 = v52;
    [v52 willUpdateBottomLayoutForEditing];
    v4[OBJC_IVAR____TtC10VoiceMemos12RCFolderView_isBottomContainerViewHidden] = 0;
    sub_1000067AC(0, &qword_1002D1070);
    v45 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v38 = v47;
    v46 = *(v46 + 8);
    (v46)(v18, v47);
    v39 = swift_allocObject();
    *(v39 + 16) = v4;
    *(v39 + 24) = v37;
    v59 = sub_1001913FC;
    v60 = v39;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_10012ED20;
    v58 = &unk_100294EE0;
    v40 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v41 = v4;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100119B28();
    sub_1000C773C(&unk_1002D1080);
    sub_1000FF000();
    v42 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v43 = v45;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v40);

    (*(v50 + 8))(v10, v42);
    (*(v48 + 8))(v14, v49);
    (v46)(v22, v38);
  }

LABEL_15:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong finishedTransitionToEditing:v54 & 1];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100190F18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView) setAlpha:0.0];
    [v1 layoutIfNeeded];
  }
}

void sub_100190F98(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [*(Strong + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView) setHidden:1];
    [a3 didUpdateBottomLayoutForEditing];
  }
}

uint64_t sub_10019101C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100191070(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  [objc_opt_self() animationDuration];
  v5 = v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  v9[4] = sub_10019146C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10012ED20;
  v9[3] = &unk_100294FD0;
  v8 = _Block_copy(v9);
  swift_unknownObjectRetain();

  [v3 animateWithDuration:v8 animations:v5];
  _Block_release(v8);
}

void sub_1001911AC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_allowsNewRecordings) == 1)
    {
      v5 = OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView;
      [*(Strong + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView) setHidden:0];
      [*&v4[v5] setAlpha:1.0];
    }

    [v4 layoutIfNeeded];
    [a2 didUpdateBottomLayoutForEditing];
  }
}

id sub_10019131C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCFolderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100191404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019142C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100191474()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_zoomTransitionSourceView) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerView;
  *(v0 + v1) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_bottomContainerViewBottomConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100191560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = type metadata accessor for UserIDResetFlag();
  __chkstk_darwin(v3 - 8, v4);
  v5 = type metadata accessor for UserIDConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_1002CDDA8 != -1)
  {
    swift_once();
  }

  v10 = qword_1002E8D10;
  v11 = type metadata accessor for UserInfoManager();
  v21 = v11;
  v22 = sub_1001919B4(&qword_1002D5E60);
  v20 = v10;
  started = type metadata accessor for MigrationUserIDStorage();
  v25 = &protocol witness table for MigrationUserIDStorage;
  sub_100015800(v23);
  swift_retain_n();
  MigrationUserIDStorage.init(accessGroup:legacyStorage:)();
  UserIDConfiguration.init(rotationPeriod:storage:)();
  sub_1000C773C(&qword_1002D5E68);
  v12 = (sub_1000C773C(&qword_1002CECA0) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100242C70;
  v15 = v14 + v13;
  v16 = v12[14];
  v17 = type metadata accessor for Session.Kind();
  (*(*(v17 - 8) + 16))(v15, a1, v17);
  (*(v6 + 16))(v15 + v16, v9, v5);
  sub_1000D4568(v14);
  swift_setDeallocating();
  sub_10019194C(v15);
  swift_deallocClassInstance();
  v21 = v11;
  v22 = sub_1001919B4(&qword_1002D5E70);
  v20 = v10;
  started = type metadata accessor for MigrationStartDateStorage();
  v25 = &protocol witness table for MigrationStartDateStorage;
  sub_100015800(v23);
  MigrationStartDateStorage.init(legacyStorage:)();
  UserIDResetFlag.init(suiteName:userDataIDsResetKey:)();
  v21 = &type metadata for RCStoreFront;
  v22 = sub_1001919F8();
  UserDataConfiguration.init(userIDConfigurationsByKind:startDateStorage:globalSamplingThreshold:userIDResetFlag:storefrontProvider:now:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10019194C(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CECA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001919B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserInfoManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001919F8()
{
  result = qword_1002D5E78;
  if (!qword_1002D5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5E78);
  }

  return result;
}

void sub_100191A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002D5FA0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v16 - v8;
  sub_100194064(a1, &v16 - v8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  (*(a3 + 16))(a3, v13, v15);
}

BOOL sub_100191B98(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:bytes:count:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_100191C5C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_100191CF4;

  return sub_1001938F8(a1);
}

uint64_t sub_100191CF4(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_100191FFC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_100191E1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100191E1C()
{
  receiver = v0[2].receiver;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(AVAssetExportSession);
  v3 = receiver;
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithAsset:v3 presetName:v4];

  if (v5)
  {
    v7 = v0[2].receiver;
    super_class = v0[2].super_class;
    *(super_class + OBJC_IVAR____TtC10VoiceMemos34RCExportSessionComposedAssetWriter_exportSession) = v5;
    v8 = type metadata accessor for RCExportSessionComposedAssetWriter();
    v0[1].receiver = super_class;
    v0[1].super_class = v8;
    v9 = objc_msgSendSuper2(v0 + 1, "init");

    v10 = v0->super_class;

    return v10(v9);
  }

  else
  {
    sub_100193DD0();
    v12 = swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v14 = v0[2].receiver;
    swift_allocError();
    *v15 = v12;
    swift_willThrow();

    type metadata accessor for RCExportSessionComposedAssetWriter();
    swift_deallocPartialClassInstance();
    v16 = v0->super_class;

    return v16();
  }
}

uint64_t sub_100191FFC()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_100193DD0();
  swift_allocError();
  *v3 = v1;
  swift_willThrow();

  type metadata accessor for RCExportSessionComposedAssetWriter();
  swift_deallocPartialClassInstance();
  v4 = v0[1];

  return v4();
}

id sub_100192100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCExportSessionComposedAssetWriter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100192168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_1000C773C(&qword_1002D5FA0);
  v6[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100192304, 0, 0);
}

uint64_t sub_100192304()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = objc_opt_self();
  v0[16] = v4;
  v5 = [v4 defaultManager];
  v6 = RCRecordingsDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = *(v3 + 8);
  v0[17] = v10;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  v0[2] = 0;
  v11 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v9 create:1 error:v0 + 2];

  v12 = v0[2];
  v13 = v0[14];
  if (v11)
  {
    v14 = v0[10];
    v23 = v0[11];
    v15 = v0[8];
    v16 = v0[9];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v12;

    UUID.init()();
    UUID.uuidString.getter();
    (*(v16 + 8))(v14, v15);
    URL.appendingPathComponent(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathExtension(_:)();

    v10(v13, v23);
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_100192630;
    v19 = v0[13];

    return AVAssetExportSession.export(to:as:isolation:)(v19, AVFileTypeAppleM4A, 0, 0);
  }

  else
  {
    v20 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100192630()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10019295C;
  }

  else
  {
    v2 = sub_100192770;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100192770()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[5];
  (*(v1 + 16))(v3, v0[13], v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4(v3, 0);
  v5 = v0[16];
  sub_1000EA894(v0[7]);
  v6 = [v5 defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v0[3] = 0;
  LODWORD(v1) = [v6 removeItemAtURL:v8 error:v0 + 3];

  v10 = v0[3];
  if (v1)
  {
    v11 = v10;
  }

  else
  {
    v12 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v13 = v0[17];
  v14 = v0[15];
  v15 = v0[11];
  v13(v0[13], v15);
  v13(v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10019295C()
{
  v1 = v0[20];
  v2 = v0[7];
  v3 = v0[5];
  (*(v0[12] + 56))(v2, 1, 1, v0[11]);
  swift_errorRetain();
  v3(v2, v1);

  v4 = v0[16];
  sub_1000EA894(v0[7]);
  v5 = [v4 defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v0[3] = 0;
  LODWORD(v3) = [v5 removeItemAtURL:v7 error:v0 + 3];

  v9 = v0[3];
  if (v3)
  {
    v10 = v9;
  }

  else
  {
    v11 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = v0[17];
  v13 = v0[15];
  v14 = v0[11];
  v12(v0[13], v14);
  v12(v13, v14);

  v15 = v0[1];

  return v15();
}

void sub_100192C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D5EC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = aBlock - v7;
  v9 = objc_opt_self();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_100193E2C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019101C;
  aBlock[3] = &unk_100295020;
  v12 = _Block_copy(aBlock);
  v13 = AVAssetExportPresetPassthrough;

  [v9 determineCompatibilityOfExportPreset:v13 withAsset:a2 outputFileType:AVFileTypeAppleM4A completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_100193008(void *a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  objc_allocWithZone(type metadata accessor for RCExportSessionComposedAssetWriter());
  v4 = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1001930CC;

  return sub_100191C5C(v4);
}

uint64_t sub_1001930CC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10019326C()
{
  v1 = [*(v0 + 24) rc_audioTracks];
  sub_100103998();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 32) = v2;

  if (v2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 40) = v2 & 0xFFFFFFFFFFFFFF8;
  *(v0 + 48) = v5;
  *(v0 + 56) = &_swiftEmptySetSingleton;
  *(v0 + 64) = &_swiftEmptySetSingleton;
  v6 = *(v0 + 32);
  if (v5)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v5, v6, v3, v4);
      }

      v7 = *(v6 + 32);
    }

    *(v0 + 72) = v7;
    *(v0 + 80) = 1;
    sub_1000C773C(&qword_1002D5EC0);
    v8 = static AVPartialAsyncProperty<A>.formatDescriptions.getter();
    *(v0 + 88) = v8;
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_100193424;
    v5 = v0 + 16;
    v6 = v8;
    v3 = 0;
    v4 = 0;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v5, v6, v3, v4);
  }

  v10 = *(v0 + 8);
  v11 = *(v0 + 64);

  return v10(v11);
}

uint64_t sub_100193424()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_100193894;
  }

  else
  {

    v2 = sub_100193578;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100193578()
{
  v2 = v0 + 2;
  v1 = v0[2];
  if (v1 >> 62)
  {
    v21 = v0[2];
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v21;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[6];

    if (v22 != v24)
    {
      v3 = v0[10];
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v31 = v1 + 32;
  v7 = v0[7];
  v6 = v0[8];
  v8 = v6 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (2)
  {
    for (i = *(v31 + 8 * v4); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v10 = i;
      ++v4;
      MediaSubType = CMFormatDescriptionGetMediaSubType(i);
      v12 = static Hasher._hash(seed:bytes:count:)();
      v13 = -1 << *(v6 + 32);
      v14 = v12 & ~v13;
      if ((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        break;
      }

LABEL_14:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1001B0544(MediaSubType, v14, isUniquelyReferenced_nonNull_native);

      v6 = v7;
      if (v4 == v3)
      {
        goto LABEL_17;
      }

      v8 = v7 + 56;
      if (!v5)
      {
        goto LABEL_9;
      }

LABEL_8:
      ;
    }

    v15 = ~v13;
    while (*(*(v6 + 48) + 4 * v14) != MediaSubType)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (v4 != v3)
    {
      if (!v5)
      {
        continue;
      }

      goto LABEL_8;
    }

    break;
  }

LABEL_17:
  v17 = v0[9];

  v3 = v0[10];
  v0[7] = v7;
  v0[8] = v6;
  v2 = v0 + 2;
  if (v3 == v0[6])
  {
LABEL_21:

    v25 = v0[1];
    v26 = v0[8];

    return v25(v26);
  }

LABEL_25:
  v28 = v0[4];
  if ((v28 & 0xC000000000000001) == 0)
  {
    if (v3 < *(v0[5] + 16))
    {
      v18 = *(v28 + 8 * v3 + 32);
      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v18, v28, v19, v20);
  }

LABEL_33:
  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_28:
  v0[9] = v18;
  v0[10] = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_1000C773C(&qword_1002D5EC0);
  v29 = static AVPartialAsyncProperty<A>.formatDescriptions.getter();
  v0[11] = v29;
  v30 = swift_task_alloc();
  v0[12] = v30;
  *v30 = v0;
  v30[1] = sub_100193424;
  v18 = v2;
  v28 = v29;
  v19 = 0;
  v20 = 0;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v18, v28, v19, v20);
}

uint64_t sub_100193894()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100193918()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100193A10;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000026, 0x8000000100235DE0, sub_100193E24, v2, &type metadata for Bool);
}

uint64_t sub_100193A10()
{

  return _swift_task_switch(sub_100193B28, 0, 0);
}

uint64_t sub_100193B28()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 8);

    return v1(0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_100193BFC;
    v4 = *(v0 + 16);

    return sub_10019324C(v4);
  }
}

uint64_t sub_100193BFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100193D48, 0, 0);
  }
}

uint64_t sub_100193D48()
{
  v1 = sub_100191B98(1634492771, *(v0 + 48));

  v2 = *(v0 + 8);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v2(v3);
}

unint64_t sub_100193DD0()
{
  result = qword_1002D5EB0;
  if (!qword_1002D5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5EB0);
  }

  return result;
}

uint64_t sub_100193E2C()
{
  sub_1000C773C(&qword_1002D5EC8);
  sub_1000C773C(&qword_1002D5EC8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100193ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100193EE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002001C;

  return sub_100193008(v2, v3);
}

uint64_t sub_100193F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002001C;

  return sub_100192168(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100194064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D5FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001940D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100194130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100194190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_10000B46C(a3, v23 - v10, &unk_1002D1D90);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100003CBC(v11, &unk_1002D1D90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100003CBC(a3, &unk_1002D1D90);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003CBC(a3, &unk_1002D1D90);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10019443C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_10000B46C(a3, v23 - v10, &unk_1002D1D90);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100003CBC(v11, &unk_1002D1D90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;
      type metadata accessor for TranscriptionData(0);

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100003CBC(a3, &unk_1002D1D90);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003CBC(a3, &unk_1002D1D90);
  type metadata accessor for TranscriptionData(0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001946F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for IntentSystemContext.Source();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_1000C773C(&qword_1002D5FF8);
  v2[11] = swift_task_alloc();
  sub_1000C773C(&unk_1002D6000);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for IntentSystemContext();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v6;
  v2[20] = v5;

  return _swift_task_switch(sub_1001948D0, v6, v5);
}

uint64_t sub_1001948D0()
{
  v0[4] = v0[5];
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[11];
  v29 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  sub_100012A90();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v2 + 8))(v1, v3);
  (*(v8 + 104))(v5, enum case for IntentSystemContext.Source.actionButton(_:), v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = *(v29 + 48);
  sub_10000B46C(v4, v6, &unk_1002D6000);
  sub_10000B46C(v5, v6 + v9, &unk_1002D6000);
  v10 = *(v8 + 48);
  if (v10(v6, 1, v7) == 1)
  {
    v11 = v0[14];
    v12 = v0[7];
    sub_100003CBC(v0[13], &unk_1002D6000);
    sub_100003CBC(v11, &unk_1002D6000);
    if (v10(v6 + v9, 1, v12) == 1)
    {
      sub_100003CBC(v0[11], &unk_1002D6000);
      v13 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v14 = v0[7];
  sub_10000B46C(v0[11], v0[12], &unk_1002D6000);
  v15 = v10(v6 + v9, 1, v14);
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  if (v15 == 1)
  {
    v19 = v0[7];
    v20 = v0[8];
    sub_100003CBC(v0[13], &unk_1002D6000);
    sub_100003CBC(v16, &unk_1002D6000);
    (*(v20 + 8))(v18, v19);
LABEL_6:
    sub_100003CBC(v0[11], &qword_1002D5FF8);
    v13 = 0;
    goto LABEL_8;
  }

  v30 = v0[11];
  v21 = v0[8];
  v22 = v0[9];
  v23 = v0[7];
  (*(v21 + 32))(v22, v6 + v9, v23);
  sub_1001A3C08(&unk_1002D6010, &type metadata accessor for IntentSystemContext.Source);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v21 + 8);
  v24(v22, v23);
  sub_100003CBC(v17, &unk_1002D6000);
  sub_100003CBC(v16, &unk_1002D6000);
  v24(v18, v23);
  sub_100003CBC(v30, &unk_1002D6000);
LABEL_8:
  IntentParameter.wrappedValue.getter();
  v26 = v0[2];
  v25 = v0[3];
  v0[21] = v25;
  v27 = swift_task_alloc();
  v0[22] = v27;
  *v27 = v0;
  v27[1] = sub_100194CB0;

  return sub_1001962CC(v13 & 1, v26, v25);
}

uint64_t sub_100194CB0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_100194E7C;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_100194DCC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100194DCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100194E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100194F40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000C773C(&qword_1002D5FA0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_100003CBC(v9, &qword_1002D5FA0);
}

uint64_t sub_100195094(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for OSSignpostID();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for OSSignposter();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for SignpostInterval();
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for IntentSystemContext.Source();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = sub_1000C773C(&qword_1002D5FF8);
  v1[18] = swift_task_alloc();
  sub_1000C773C(&unk_1002D6000);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_1000C773C(&qword_1002CED20);
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for IntentSystemContext();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v1[27] = v6;
  v1[28] = *(v6 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[31] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[32] = v8;
  v1[33] = v7;

  return _swift_task_switch(sub_100195410, v8, v7);
}

uint64_t sub_100195410()
{
  v85 = v0;
  if ([*(v0 + 32) isRecording])
  {
    v1 = *(v0 + 32);

    if ([v1 audioRecorder])
    {
      *(v0 + 24) = &OBJC_PROTOCOL___VMAudioRecorder;
      v2 = swift_dynamicCastObjCProtocolConditional();
      if (v2 && (v3 = v2, swift_getObjectType(), sub_1000067AC(0, &qword_1002D42F0), swift_dynamicCastMetatype()))
      {
        v4 = *(v0 + 216);
        v5 = *(v0 + 224);
        v6 = *(v0 + 208);
        v7 = *(v0 + 184);
        v8 = *(v0 + 192);
        v9 = *(v0 + 176);
        sub_10014A264();
        AppIntent.systemContext.getter();
        IntentSystemContext.preciseTimestamp.getter();
        (*(v8 + 8))(v6, v7);
        if ((*(v5 + 48))(v9, 1, v4) == 1)
        {
          v10 = *(v0 + 176);
          swift_unknownObjectRelease();
          sub_100003CBC(v10, &qword_1002CED20);
        }

        else
        {
          v69 = *(v0 + 232);
          v68 = *(v0 + 240);
          v70 = *(v0 + 216);
          v71 = *(v0 + 224);
          (*(v71 + 32))(v68, *(v0 + 176), v70);
          RCCurrentMediaTime();
          v73 = v72;
          Date.init()();
          Date.timeIntervalSince(_:)();
          v75 = v74;
          v76 = *(v71 + 8);
          v76(v69, v70);
          [v3 setStopRecordingTime:v73 + v75];
          swift_unknownObjectRelease();
          v76(v68, v70);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (![*(v0 + 32) isRecording])
    {
      sub_1001A3CC4();
      swift_allocError();
      swift_willThrow();

      v79 = *(v0 + 8);
LABEL_39:

      return v79();
    }

    if ([*(v0 + 32) audioRecorder])
    {
      *(v0 + 16) = &OBJC_PROTOCOL___VMAudioRecorder;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        swift_getObjectType();
        sub_1000067AC(0, &qword_1002D42F0);
        if (swift_dynamicCastMetatype())
        {
          v77 = *(v0 + 32);
          ObjectType = swift_getObjectType();
          sub_1001979F8(DebugData.init(name:), 0, ObjectType);
          [v77 performAction:4 atPosition:0 forUUID:0 sourceController:0 source:0.0];
          swift_unknownObjectRelease();
LABEL_38:

          v79 = *(v0 + 8);
          goto LABEL_39;
        }
      }

      swift_unknownObjectRelease();
    }

    [*(v0 + 32) performAction:4 atPosition:0 forUUID:0 sourceController:0 source:0.0];
    goto LABEL_38;
  }

  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(v0 + 168);
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  sub_10014A264();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v12 + 8))(v11, v13);
  (*(v19 + 104))(v14, enum case for IntentSystemContext.Source.actionButton(_:), v18);
  (*(v19 + 56))(v14, 0, 1, v18);
  v20 = *(v17 + 48);
  sub_10000B46C(v15, v16, &unk_1002D6000);
  sub_10000B46C(v14, v16 + v20, &unk_1002D6000);
  v21 = *(v19 + 48);
  if (v21(v16, 1, v18) != 1)
  {
    v25 = *(v0 + 112);
    sub_10000B46C(*(v0 + 144), *(v0 + 152), &unk_1002D6000);
    v26 = v21(v16 + v20, 1, v25);
    v28 = *(v0 + 160);
    v27 = *(v0 + 168);
    v29 = *(v0 + 152);
    if (v26 != 1)
    {
      v81 = *(v0 + 144);
      v33 = *(v0 + 120);
      v32 = *(v0 + 128);
      v34 = *(v0 + 112);
      (*(v33 + 32))(v32, v16 + v20, v34);
      sub_1001A3C08(&unk_1002D6010, &type metadata accessor for IntentSystemContext.Source);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v33 + 8);
      v36(v32, v34);
      sub_100003CBC(v28, &unk_1002D6000);
      v37 = v27;
      v24 = v35;
      sub_100003CBC(v37, &unk_1002D6000);
      v36(v29, v34);
      sub_100003CBC(v81, &unk_1002D6000);
      goto LABEL_15;
    }

    v30 = *(v0 + 112);
    v31 = *(v0 + 120);
    sub_100003CBC(*(v0 + 160), &unk_1002D6000);
    sub_100003CBC(v27, &unk_1002D6000);
    (*(v31 + 8))(v29, v30);
    goto LABEL_12;
  }

  v22 = *(v0 + 168);
  v23 = *(v0 + 112);
  sub_100003CBC(*(v0 + 160), &unk_1002D6000);
  sub_100003CBC(v22, &unk_1002D6000);
  if (v21(v16 + v20, 1, v23) != 1)
  {
LABEL_12:
    sub_100003CBC(*(v0 + 144), &qword_1002D5FF8);
    v24 = 0;
    goto LABEL_15;
  }

  sub_100003CBC(*(v0 + 144), &unk_1002D6000);
  v24 = 1;
LABEL_15:
  if (qword_1002CDD98 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 96);
  v38 = *(v0 + 104);
  v40 = *(v0 + 80);
  v41 = *(v0 + 88);
  v42 = *(v0 + 72);
  v43 = sub_100018D90(v42, qword_1002E8CE0);
  v44 = *(v40 + 16);
  v44(v41, v43, v42);
  _StringGuts.grow(_:)(28);

  v83 = 0xD00000000000001ALL;
  v84 = 0x8000000100235FC0;
  v82 = v24;
  if (v24)
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (v24)
  {
    v46 = 0xE400000000000000;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  v47 = v46;
  String.append(_:)(*&v45);

  v48 = v84;
  v80 = v83;
  v44(v38, v41, v42);
  v49 = v38 + *(v39 + 20);
  *v49 = "ToggleRecordingStart";
  *(v49 + 8) = 20;
  *(v49 + 16) = 2;
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v50 = OSSignposter.logHandle.getter();
  v51 = static os_signpost_type_t.begin.getter();
  v52 = OS_os_log.signpostsEnabled.getter();

  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v83 = v54;
    *v53 = 136315138;
    v55 = sub_10001901C(v80, v48, &v83);

    *(v53 + 4) = v55;
    v56 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v56, "ToggleRecordingStart", "%s", v53, 0xCu);
    sub_100014B64(v54);
  }

  else
  {
  }

  v58 = *(v0 + 96);
  v57 = *(v0 + 104);
  v60 = *(v0 + 80);
  v59 = *(v0 + 88);
  v62 = *(v0 + 64);
  v61 = *(v0 + 72);
  v63 = *(v0 + 48);
  v64 = *(v0 + 40);
  (*(v63 + 16))(*(v0 + 56), v62, v64);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v65 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v60 + 8))(v59, v61);
  (*(v63 + 8))(v62, v64);
  *(v57 + *(v58 + 24)) = v65;
  v66 = swift_task_alloc();
  *(v0 + 272) = v66;
  *v66 = v0;
  v66[1] = sub_100195F0C;

  return sub_1001962CC(v82 & 1, 0, 0);
}

uint64_t sub_100195F0C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_100196188;
  }

  else
  {
    v5 = sub_100196048;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100196048()
{
  v1 = *(v0 + 104);

  sub_1000E7E64();
  sub_1001A3DAC(v1, type metadata accessor for SignpostInterval);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100196188()
{
  v1 = *(v0 + 104);

  sub_1001A3DAC(v1, type metadata accessor for SignpostInterval);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001962CC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 240) = a1;
  type metadata accessor for MainActor();
  *(v4 + 184) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 192) = v6;
  *(v4 + 200) = v5;

  return _swift_task_switch(sub_10019636C, v6, v5);
}

uint64_t sub_10019636C()
{
  if ([*(v0 + 176) isRecording])
  {

    sub_1001A3C50();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (*(v0 + 168))
    {
      v4 = String._bridgeToObjectiveC()();
    }

    else
    {
      v4 = 0;
    }

    *(v0 + 208) = v4;
    v5 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100196528;
    v6 = swift_continuation_init();
    *(v0 + 136) = sub_1000C773C(&qword_1002D1DB0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100130D90;
    *(v0 + 104) = &unk_1002952D0;
    *(v0 + 112) = v6;
    [v5 _startCapturing:v4 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100196528()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_100196630, v2, v1);
}

uint64_t sub_100196630()
{
  v1 = *(v0 + 176);

  v2 = [v1 audioRecorder];
  *(v0 + 216) = v2;
  if (v2)
  {
    *(v0 + 144) = &OBJC_PROTOCOL___VMAudioRecorder;
    *(v0 + 152) = &OBJC_PROTOCOL___VMRecordingController;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      swift_getObjectType();
      sub_1000067AC(0, &qword_1002D42F0);
      if (swift_dynamicCastMetatype())
      {
        v5 = *(v0 + 240);
        ObjectType = swift_getObjectType();
        v7 = [v4 context];
        v7[OBJC_IVAR____TtC10VoiceMemos18VMRecordingContext_isActionButtonInitiated] = v5;

        v8 = swift_task_alloc();
        *(v0 + 224) = v8;
        *v8 = v0;
        v8[1] = sub_1001967E4;

        return sub_100196A00(ObjectType);
      }
    }

    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001967E4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_100196990;
  }

  else
  {
    v5 = sub_100196920;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100196920()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100196990()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100196A00(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  type metadata accessor for NSObject.KeyValueObservingPublisher();
  v2[14] = sub_1000C7784(&qword_1002D5FD0);
  v2[15] = swift_getWitnessTable();
  v3 = type metadata accessor for Publishers.Map();
  sub_1000C7784(&qword_1002D5FD8);
  type metadata accessor for NSObject.KeyValueObservingPublisher();
  v2[16] = swift_getWitnessTable();
  v4 = type metadata accessor for Publishers.CompactMap();
  WitnessTable = swift_getWitnessTable();
  v2[17] = WitnessTable;
  v6 = swift_getWitnessTable();
  v2[18] = v6;
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = WitnessTable;
  v2[5] = v6;
  type metadata accessor for Publishers.Merge();
  v2[19] = swift_getWitnessTable();
  type metadata accessor for Publishers.First();
  v2[20] = swift_getWitnessTable();
  v7 = type metadata accessor for Publishers.TryMap();
  v8 = sub_1000067AC(255, &qword_1002D5FE0);
  v2[21] = v8;
  v9 = swift_getWitnessTable();
  v2[22] = v9;
  v10 = sub_1001A3B88();
  v2[23] = v10;
  v2[6] = v7;
  v2[7] = v8;
  v2[8] = v9;
  v2[9] = v10;
  type metadata accessor for Publishers.Timeout();
  v2[24] = swift_getWitnessTable();
  v11 = type metadata accessor for AsyncThrowingPublisher.Iterator();
  v2[25] = v11;
  v2[26] = *(v11 - 8);
  v2[27] = swift_task_alloc();
  sub_1000C773C(&qword_1002D5FF0);
  v2[28] = swift_task_alloc();
  v12 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v2[29] = v12;
  v2[30] = *(v12 - 8);
  v2[31] = swift_task_alloc();
  v13 = swift_checkMetadataState();
  v2[32] = v13;
  v2[33] = *(v13 - 8);
  v2[34] = swift_task_alloc();
  v14 = swift_checkMetadataState();
  v2[35] = v14;
  v2[36] = *(v14 - 8);
  v2[37] = swift_task_alloc();
  v15 = type metadata accessor for Publishers.TryMap();
  v2[38] = v15;
  v2[39] = *(v15 - 8);
  v2[40] = swift_task_alloc();
  v16 = swift_checkMetadataState();
  v2[41] = v16;
  v2[42] = *(v16 - 8);
  v2[43] = swift_task_alloc();
  v17 = swift_checkMetadataState();
  v2[44] = v17;
  v2[45] = *(v17 - 8);
  v2[46] = swift_task_alloc();
  v18 = type metadata accessor for AsyncThrowingPublisher();
  v2[47] = v18;
  v2[48] = *(v18 - 8);
  v2[49] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v2[50] = v19;
  v2[51] = *(v19 - 8);
  v2[52] = swift_task_alloc();
  v20 = swift_checkMetadataState();
  v2[53] = v20;
  v2[54] = *(v20 - 8);
  v2[55] = swift_task_alloc();
  v21 = swift_checkMetadataState();
  v2[56] = v21;
  v2[57] = *(v21 - 8);
  v2[58] = swift_task_alloc();
  v22 = swift_checkMetadataState();
  v2[59] = v22;
  v2[60] = *(v22 - 8);
  v2[61] = swift_task_alloc();
  v2[62] = type metadata accessor for MainActor();
  v2[63] = static MainActor.shared.getter();
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[64] = v24;
  v2[65] = v23;

  return _swift_task_switch(sub_1001971C4, v24, v23);
}

uint64_t sub_1001971C4()
{
  if ([*(v0 + 104) recording])
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 464);
    v5 = *(v0 + 448);
    v4 = *(v0 + 456);
    v13 = *(v0 + 416);
    v16 = *(v0 + 408);
    v15 = *(v0 + 400);
    v28 = *(v0 + 368);
    v34 = *(v0 + 360);
    v33 = *(v0 + 352);
    v24 = *(v0 + 344);
    v32 = *(v0 + 336);
    v29 = *(v0 + 328);
    v23 = *(v0 + 304);
    v21 = *(v0 + 320);
    v22 = *(v0 + 288);
    v20 = *(v0 + 280);
    v14 = *(v0 + 272);
    v18 = *(v0 + 296);
    v19 = *(v0 + 264);
    v17 = *(v0 + 256);
    v25 = *(v0 + 312);
    v26 = *(v0 + 248);
    v30 = *(v0 + 240);
    v31 = *(v0 + 232);
    v27 = *(v0 + 224);
    v6 = *(v0 + 96);
    *swift_task_alloc() = v6;
    swift_getKeyPath();

    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    Publisher.map<A>(_:)();
    (*(v4 + 8))(v3, v5);
    *swift_task_alloc() = v6;
    swift_getKeyPath();

    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    Publisher.compactMap<A>(_:)();
    (*(v16 + 8))(v13, v15);
    Publisher.merge<A>(with:)();
    Publisher.first()();
    (*(v19 + 8))(v14, v17);
    Publisher.tryMap<A>(_:)();
    (*(v22 + 8))(v18, v20);
    Publishers.TryMap.map<A>(_:)();
    (*(v25 + 8))(v21, v23);
    static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
    v7 = [objc_opt_self() mainRunLoop];
    *(v0 + 80) = v7;
    v8 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v8 - 8) + 56))(v27, 1, 1, v8);
    swift_checkMetadataState();
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_100003CBC(v27, &qword_1002D5FF0);

    (*(v30 + 8))(v26, v31);
    (*(v32 + 8))(v24, v29);
    Publisher.values.getter();
    (*(v34 + 8))(v28, v33);
    AsyncThrowingPublisher.makeAsyncIterator()();
    v9 = static MainActor.shared.getter();
    *(v0 + 528) = v9;
    v10 = swift_task_alloc();
    *(v0 + 536) = v10;
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = sub_100197830;
    v12 = *(v0 + 200);

    return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v0 + 544, v9, &protocol witness table for MainActor, v12, WitnessTable, v0 + 88);
  }
}

uint64_t sub_100197830()
{
  v2 = *v1;

  v3 = *(v2 + 520);
  v4 = *(v2 + 512);
  if (v0)
  {
    v5 = sub_1001A405C;
  }

  else
  {
    v5 = sub_1001A4058;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10019796C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRecordingError:?];
}

id sub_1001979F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NSObject.KeyValueObservingPublisher();
  v8 = *(v7 - 8);
  *&v10 = __chkstk_darwin(v7, v9).n128_u64[0];
  v12 = &v17 - v11;
  result = [v3 recording];
  if (result)
  {
    __chkstk_darwin(result, v14);
    *(&v17 - 2) = a3;
    swift_getKeyPath();
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;

    WitnessTable = swift_getWitnessTable();
    sub_10010D8D4(sub_1001A3D24, v15, v7, WitnessTable);

    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_100197BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  sub_1000C773C(&qword_1002CF820);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for AppIntentError();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for IntentDialog();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v8;
  v4[20] = v7;

  return _swift_task_switch(sub_100197D34, v8, v7);
}

uint64_t sub_100197D34()
{
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 208))
  {
    IntentParameter.wrappedValue.getter();
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    *(v0 + 184) = v1;
    if (v1)
    {

      sub_1001A3AD0(v2, v1);
      v3 = swift_task_alloc();
      *(v0 + 192) = v3;
      *v3 = v0;
      v3[1] = sub_100198238;
      v4 = *(v0 + 72);

      return sub_1001A0510(v2, v1, v4);
    }

    else
    {
      v9 = *(v0 + 136);
      v10 = *(v0 + 120);
      v11 = *(v0 + 128);
      v13 = *(v0 + 104);
      v12 = *(v0 + 112);
      v14 = *(v0 + 88);
      v15 = *(v0 + 96);

      IntentDialog.init(stringLiteral:)();
      IntentParameter.projectedValue.getter();
      (*(v11 + 16))(v14, v9, v10);
      (*(v11 + 56))(v14, 0, 1, v10);
      IntentParameter.needsValueError(_:)();

      sub_100003CBC(v14, &qword_1002CF820);
      sub_1001A3C08(&qword_1002D3898, &type metadata accessor for AppIntentError);
      swift_allocError();
      (*(v13 + 16))(v16, v12, v15);
      swift_willThrow();
      (*(v13 + 8))(v12, v15);
      (*(v11 + 8))(v9, v10);

      v17 = *(v0 + 8);

      return v17();
    }
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_100198070;
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);

    return sub_10019852C(v8, v7);
  }
}

uint64_t sub_100198070()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1001984A0;
  }

  else
  {
    v5 = sub_1001981AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001981AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100198238()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_100198408;
  }

  else
  {
    v5 = sub_100198374;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100198374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100198408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001984A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019852C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1001985C4, v4, v3);
}

uint64_t sub_1001985C4()
{
  v1 = [*(v0 + 24) mostRecentRecording];
  v2 = v1;
  *(v0 + 56) = v1;
  if (v1 && (v3 = [v1 uuid]) != 0)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v0 + 64) = v7;
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_10019872C;
    v9 = *(v0 + 16);

    return sub_1001A0510(v5, v7, v9);
  }

  else
  {

    sub_1001A3B34();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10019872C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1001988DC;
  }

  else
  {
    v5 = sub_100198868;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100198868()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001988DC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100198950(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  type metadata accessor for NSObject.KeyValueObservingPublisher();
  v2[14] = sub_1000C7784(&qword_1002D5FD0);
  v2[15] = swift_getWitnessTable();
  v3 = type metadata accessor for Publishers.Map();
  sub_1000C7784(&qword_1002D5FD8);
  type metadata accessor for NSObject.KeyValueObservingPublisher();
  v2[16] = swift_getWitnessTable();
  v4 = type metadata accessor for Publishers.CompactMap();
  WitnessTable = swift_getWitnessTable();
  v2[17] = WitnessTable;
  v6 = swift_getWitnessTable();
  v2[18] = v6;
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = WitnessTable;
  v2[5] = v6;
  type metadata accessor for Publishers.Merge();
  v2[19] = swift_getWitnessTable();
  type metadata accessor for Publishers.First();
  v2[20] = swift_getWitnessTable();
  v7 = type metadata accessor for Publishers.TryMap();
  v8 = sub_1000067AC(255, &qword_1002D5FE0);
  v2[21] = v8;
  v9 = swift_getWitnessTable();
  v2[22] = v9;
  v10 = sub_1001A3B88();
  v2[23] = v10;
  v2[6] = v7;
  v2[7] = v8;
  v2[8] = v9;
  v2[9] = v10;
  type metadata accessor for Publishers.Timeout();
  v2[24] = swift_getWitnessTable();
  v11 = type metadata accessor for AsyncThrowingPublisher.Iterator();
  v2[25] = v11;
  v2[26] = *(v11 - 8);
  v2[27] = swift_task_alloc();
  sub_1000C773C(&qword_1002D5FF0);
  v2[28] = swift_task_alloc();
  v12 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v2[29] = v12;
  v2[30] = *(v12 - 8);
  v2[31] = swift_task_alloc();
  v13 = swift_checkMetadataState();
  v2[32] = v13;
  v2[33] = *(v13 - 8);
  v2[34] = swift_task_alloc();
  v14 = swift_checkMetadataState();
  v2[35] = v14;
  v2[36] = *(v14 - 8);
  v2[37] = swift_task_alloc();
  v15 = type metadata accessor for Publishers.TryMap();
  v2[38] = v15;
  v2[39] = *(v15 - 8);
  v2[40] = swift_task_alloc();
  v16 = swift_checkMetadataState();
  v2[41] = v16;
  v2[42] = *(v16 - 8);
  v2[43] = swift_task_alloc();
  v17 = swift_checkMetadataState();
  v2[44] = v17;
  v2[45] = *(v17 - 8);
  v2[46] = swift_task_alloc();
  v18 = type metadata accessor for AsyncThrowingPublisher();
  v2[47] = v18;
  v2[48] = *(v18 - 8);
  v2[49] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v2[50] = v19;
  v2[51] = *(v19 - 8);
  v2[52] = swift_task_alloc();
  v20 = swift_checkMetadataState();
  v2[53] = v20;
  v2[54] = *(v20 - 8);
  v2[55] = swift_task_alloc();
  v21 = swift_checkMetadataState();
  v2[56] = v21;
  v2[57] = *(v21 - 8);
  v2[58] = swift_task_alloc();
  v22 = swift_checkMetadataState();
  v2[59] = v22;
  v2[60] = *(v22 - 8);
  v2[61] = swift_task_alloc();
  v2[62] = type metadata accessor for MainActor();
  v2[63] = static MainActor.shared.getter();
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[64] = v24;
  v2[65] = v23;

  return _swift_task_switch(sub_100199114, v24, v23);
}

uint64_t sub_100199114()
{
  if ([*(v0 + 104) playing])
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 464);
    v5 = *(v0 + 448);
    v4 = *(v0 + 456);
    v13 = *(v0 + 416);
    v16 = *(v0 + 408);
    v15 = *(v0 + 400);
    v28 = *(v0 + 368);
    v34 = *(v0 + 360);
    v33 = *(v0 + 352);
    v24 = *(v0 + 344);
    v32 = *(v0 + 336);
    v29 = *(v0 + 328);
    v23 = *(v0 + 304);
    v21 = *(v0 + 320);
    v22 = *(v0 + 288);
    v20 = *(v0 + 280);
    v14 = *(v0 + 272);
    v18 = *(v0 + 296);
    v19 = *(v0 + 264);
    v17 = *(v0 + 256);
    v25 = *(v0 + 312);
    v26 = *(v0 + 248);
    v30 = *(v0 + 240);
    v31 = *(v0 + 232);
    v27 = *(v0 + 224);
    v6 = *(v0 + 96);
    *swift_task_alloc() = v6;
    swift_getKeyPath();

    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    Publisher.map<A>(_:)();
    (*(v4 + 8))(v3, v5);
    *swift_task_alloc() = v6;
    swift_getKeyPath();

    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    Publisher.compactMap<A>(_:)();
    (*(v16 + 8))(v13, v15);
    Publisher.merge<A>(with:)();
    Publisher.first()();
    (*(v19 + 8))(v14, v17);
    Publisher.tryMap<A>(_:)();
    (*(v22 + 8))(v18, v20);
    Publishers.TryMap.map<A>(_:)();
    (*(v25 + 8))(v21, v23);
    static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
    v7 = [objc_opt_self() mainRunLoop];
    *(v0 + 80) = v7;
    v8 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v8 - 8) + 56))(v27, 1, 1, v8);
    swift_checkMetadataState();
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_100003CBC(v27, &qword_1002D5FF0);

    (*(v30 + 8))(v26, v31);
    (*(v32 + 8))(v24, v29);
    Publisher.values.getter();
    (*(v34 + 8))(v28, v33);
    AsyncThrowingPublisher.makeAsyncIterator()();
    v9 = static MainActor.shared.getter();
    *(v0 + 528) = v9;
    v10 = swift_task_alloc();
    *(v0 + 536) = v10;
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = sub_100199780;
    v12 = *(v0 + 200);

    return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v0 + 544, v9, &protocol witness table for MainActor, v12, WitnessTable, v0 + 88);
  }
}

uint64_t sub_100199780()
{
  v2 = *v1;

  v3 = *(v2 + 520);
  v4 = *(v2 + 512);
  if (v0)
  {
    v5 = sub_100199A60;
  }

  else
  {
    v5 = sub_1001998BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001998BC()
{
  v1 = v0[60];
  v13 = v0[59];
  v14 = v0[61];
  v2 = v0[54];
  v12 = v0[55];
  v3 = v0[53];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[47];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];

  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100199A60()
{
  v1 = v0[60];
  v2 = v0[61];
  v14 = v0[59];
  v3 = v0[54];
  v12 = v0[53];
  v13 = v0[55];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  v7 = v0[27];
  v8 = v0[25];
  v9 = v0[26];

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v13, v12);
  (*(v1 + 8))(v2, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100199C00@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8))
  {
    swift_errorRetain();
    sub_1000C773C(&qword_1002D5540);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a2 = *result & 1;
  }

  return result;
}

uint64_t sub_100199C90@<X0>(void (*a1)(void)@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  a1();
  result = swift_allocError();
  *a3 = result;
  *v6 = a2;
  return result;
}

uint64_t sub_100199CE4()
{
  v1[11] = v0;
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_100199D80, v3, v2);
}

uint64_t sub_100199D80()
{
  v1 = static MainActor.shared.getter();
  *(v0 + 128) = v1;
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

  return _swift_task_switch(sub_100199E14, v2, v4);
}

uint64_t sub_100199E14()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 16;
  v4 = *(v1 + 88);
  *(v1 + 16) = v2;
  *(v1 + 24) = sub_10019A07C;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  if ([v4 isRecording])
  {
    if ([*(v1 + 88) audioRecorder])
    {
      *(v1 + 80) = &OBJC_PROTOCOL___VMAudioRecorder;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        swift_getObjectType();
        sub_1000067AC(0, &qword_1002D42F0);
        if (swift_dynamicCastMetatype())
        {
          v7 = *(v1 + 88);
          ObjectType = swift_getObjectType();
          sub_1001979F8(sub_1001A3CBC, v6, ObjectType);
          [v7 performAction:4 atPosition:0 forUUID:0 sourceController:0 source:0.0];

          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      swift_unknownObjectRelease();
    }

    [*(v1 + 88) performAction:4 atPosition:0 forUUID:0 sourceController:0 source:0.0];
    swift_continuation_throwingResume();
  }

  else
  {
    sub_1001A3CC4();
    v9 = swift_allocError();
    swift_willThrow();

    sub_1000C773C(&qword_1002D5540);
    swift_allocError();
    *v10 = v9;
    swift_continuation_throwingResumeWithError();
  }

LABEL_9:

  return _swift_continuation_await(v3);
}

uint64_t sub_10019A07C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 136) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = *(v1 + 112);
    v4 = *(v1 + 120);
    v5 = sub_10019A228;
  }

  else
  {

    v3 = *(v1 + 112);
    v4 = *(v1 + 120);
    v5 = sub_10019A1C4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10019A1C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019A228()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019A28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for IntentSystemContext.Source();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = sub_1000C773C(&qword_1002D5FF8);
  v3[11] = swift_task_alloc();
  sub_1000C773C(&unk_1002D6000);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for IntentSystemContext();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[18] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[19] = v7;
  v3[20] = v6;

  return _swift_task_switch(sub_10019A46C, v7, v6);
}

uint64_t sub_10019A46C()
{
  *(v0 + 16) = *(v0 + 32);
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v27 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_100187F9C();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v2 + 8))(v1, v3);
  (*(v8 + 104))(v5, enum case for IntentSystemContext.Source.actionButton(_:), v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = *(v27 + 48);
  sub_10000B46C(v4, v6, &unk_1002D6000);
  sub_10000B46C(v5, v6 + v9, &unk_1002D6000);
  v10 = *(v8 + 48);
  if (v10(v6, 1, v7) == 1)
  {
    v11 = *(v0 + 112);
    v12 = *(v0 + 56);
    sub_100003CBC(*(v0 + 104), &unk_1002D6000);
    sub_100003CBC(v11, &unk_1002D6000);
    if (v10(v6 + v9, 1, v12) == 1)
    {
      sub_100003CBC(*(v0 + 88), &unk_1002D6000);
      v13 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v14 = *(v0 + 56);
  sub_10000B46C(*(v0 + 88), *(v0 + 96), &unk_1002D6000);
  v15 = v10(v6 + v9, 1, v14);
  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  v18 = *(v0 + 96);
  if (v15 == 1)
  {
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    sub_100003CBC(*(v0 + 104), &unk_1002D6000);
    sub_100003CBC(v16, &unk_1002D6000);
    (*(v20 + 8))(v18, v19);
LABEL_6:
    sub_100003CBC(*(v0 + 88), &qword_1002D5FF8);
    v13 = 0;
    goto LABEL_8;
  }

  v28 = *(v0 + 88);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v23 = *(v0 + 56);
  (*(v21 + 32))(v22, v6 + v9, v23);
  sub_1001A3C08(&unk_1002D6010, &type metadata accessor for IntentSystemContext.Source);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v21 + 8);
  v24(v22, v23);
  sub_100003CBC(v17, &unk_1002D6000);
  sub_100003CBC(v16, &unk_1002D6000);
  v24(v18, v23);
  sub_100003CBC(v28, &unk_1002D6000);
LABEL_8:
  v25 = swift_task_alloc();
  *(v0 + 168) = v25;
  *v25 = v0;
  v25[1] = sub_10019A83C;

  return sub_1001962CC(v13 & 1, 0, 0);
}

uint64_t sub_10019A83C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_10019A978;
  }

  else
  {
    v5 = sub_1001A3FC4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10019A978()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019AA28(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10019AB88, 0, 0);
}

uint64_t sub_10019AB88()
{
  v1 = v0[25];
  v2 = objc_opt_self();
  v0[34] = v2;
  v3 = [v2 defaultManager];
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v0[30] + 80);
    URL._bridgeToObjectiveC()(((v5 + 32) & ~v5));
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v0[20] = 0;
  v8 = [v3 URLForDirectory:99 inDomain:1 appropriateForURL:v7 create:1 error:v0 + 20];

  v9 = v0[20];
  if (v8)
  {
    v11 = v0[27];
    v10 = v0[28];
    v12 = v0[26];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v9;

    v0[18] = 0xD000000000000017;
    v0[19] = 0x8000000100235F50;
    (*(v11 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v12);
    sub_100028710();
    URL.appending<A>(path:directoryHint:)();
    (*(v11 + 8))(v10, v12);
    if (v4)
    {
      v14 = v0[30];
      v15 = v0[25];
      specialized ContiguousArray.reserveCapacity(_:)();
      v17 = *(v14 + 16);
      v16 = v14 + 16;
      v60 = v17;
      v18 = v15 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v19 = *(v16 + 56);
      do
      {
        v20 = v0[31];
        v21 = v0[29];
        v60(v20, v18, v21);
        v22 = objc_allocWithZone(AVURLAsset);
        URL._bridgeToObjectiveC()(v23);
        v25 = v24;
        [v22 initWithURL:v24 options:0];

        (*(v16 - 8))(v20, v21);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v18 += v19;
        --v4;
      }

      while (v4);
    }

    v0[35] = _swiftEmptyArrayStorage;
    v0[36] = [objc_allocWithZone(AVMutableComposition) init];
    if (_swiftEmptyArrayStorage >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
      v0[37] = v33;
      if (v33)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[37] = v26;
      if (v26)
      {
LABEL_10:
        v27 = AVMediaTypeAudio;
        v0[38] = AVMediaTypeAudio;
        v0[39] = kCMTimeZero.value;
        v0[67] = *&kCMTimeZero.timescale;
        v0[40] = kCMTimeZero.epoch;
        v28 = v0[35];
        if ((v28 & 0xC000000000000001) != 0)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v27 = v0[38];
        }

        else
        {
          if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v29 = *(v28 + 32);
        }

        v0[41] = v29;
        v0[42] = 1;
        v0[2] = v0;
        v0[7] = v0 + 21;
        v0[3] = sub_10019B33C;
        v30 = swift_continuation_init();
        v0[17] = sub_1000C773C(&qword_1002D5FB8);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_10019C980;
        v0[13] = &unk_1002952A8;
        v0[14] = v30;
        [v29 loadTracksWithMediaType:v27 completionHandler:v0 + 10];

        return _swift_continuation_await(v0 + 2);
      }
    }

    v34 = v0[36];

    v35 = [objc_allocWithZone(AVAssetExportSession) initWithAsset:v34 presetName:AVAssetExportPresetPassthrough];
    v0[49] = v35;
    if (v35)
    {
      v36 = swift_task_alloc();
      v0[50] = v36;
      *v36 = v0;
      v36[1] = sub_10019C26C;
      v37 = v0[32];

      return AVAssetExportSession.export(to:as:isolation:)(v37, AVFileTypeQuickTimeMovie, 0, 0);
    }

    v38 = v0[34];
    v39 = v0[31];
    v40 = v0[29];
    v41 = v0[30];
    URL.deletingPathExtension()();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathExtension(_:)();

    v42 = *(v41 + 8);
    v42(v39, v40);
    v43 = [v38 defaultManager];
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    URL._bridgeToObjectiveC()(v47);
    v49 = v48;
    v0[23] = 0;
    LODWORD(v40) = [v43 moveItemAtURL:v46 toURL:v48 error:v0 + 23];

    v50 = v0[23];
    v51 = v0[49];
    v52 = v0[36];
    v54 = v0[32];
    v53 = v0[33];
    if (v40)
    {
      v55 = v0[29];
      v56 = v50;

      v42(v54, v55);
      v42(v53, v55);

      v32 = v0[1];
      goto LABEL_18;
    }

    v57 = v0[29];
    v61 = v0[24];
    v58 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v42(v61, v57);
    v42(v54, v57);
    v42(v53, v57);
  }

  else
  {
    v31 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v32 = v0[1];
LABEL_18:

  return v32();
}

uint64_t sub_10019B33C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {

    v2 = sub_10019C650;
  }

  else
  {
    v2 = sub_10019B480;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019B480()
{
  v2 = *(v1 + 168);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_3:
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_34:
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  v6 = *(v2 + 8 * v5 + 32);
LABEL_8:
  v7 = v6;
  *(v1 + 352) = v6;
  v8 = *(v1 + 304);
  v9 = *(v1 + 288);

  v10 = [v9 addMutableTrackWithMediaType:v8 preferredTrackID:0];
  *(v1 + 360) = v10;
  if (v10)
  {
    sub_1000C773C(&qword_1002D5FB0);
    v11 = static AVPartialAsyncProperty<A>.timeRange.getter();
    *(v1 + 368) = v11;
    v12 = swift_task_alloc();
    *(v1 + 376) = v12;
    *v12 = v1;
    v12[1] = sub_10019BB1C;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v1 + 416, v11, 0, 0);
  }

LABEL_15:
  v0 = *(v1 + 336);
  if (v0 == *(v1 + 296))
  {
    v13 = *(v1 + 288);

    v14 = [objc_allocWithZone(AVAssetExportSession) initWithAsset:v13 presetName:AVAssetExportPresetPassthrough];
    *(v1 + 392) = v14;
    if (v14)
    {
      v15 = swift_task_alloc();
      *(v1 + 400) = v15;
      *v15 = v1;
      v15[1] = sub_10019C26C;
      v16 = *(v1 + 256);

      return AVAssetExportSession.export(to:as:isolation:)(v16, AVFileTypeQuickTimeMovie, 0, 0);
    }

    else
    {
      v22 = *(v1 + 272);
      v23 = *(v1 + 248);
      v24 = *(v1 + 232);
      v25 = *(v1 + 240);
      URL.deletingPathExtension()();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.appendingPathExtension(_:)();

      v44 = *(v25 + 8);
      v44(v23, v24);
      v26 = [v22 defaultManager];
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      URL._bridgeToObjectiveC()(v30);
      v32 = v31;
      *(v1 + 184) = 0;
      LODWORD(v23) = [v26 moveItemAtURL:v29 toURL:v31 error:v1 + 184];

      v33 = *(v1 + 184);
      v34 = *(v1 + 392);
      v35 = *(v1 + 288);
      v36 = *(v1 + 256);
      v37 = *(v1 + 264);
      v38 = *(v1 + 232);
      if (v23)
      {
        v39 = v33;
      }

      else
      {
        v41 = *(v1 + 192);
        v42 = v33;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v44(v41, v38);
      }

      v44(v36, v38);
      v44(v37, v38);

      v40 = *(v1 + 8);

      return v40();
    }
  }

  v17 = *(v1 + 280);
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  if (v0 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

  v18 = *(v17 + 8 * v0 + 32);
LABEL_23:
  v19 = v18;
  *(v1 + 328) = v18;
  *(v1 + 336) = v0 + 1;
  if (__OFADD__(v0, 1))
  {
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v20 = *(v1 + 304);
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 168;
  *(v1 + 24) = sub_10019B33C;
  v21 = swift_continuation_init();
  *(v1 + 136) = sub_1000C773C(&qword_1002D5FB8);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_10019C980;
  *(v1 + 104) = &unk_1002952A8;
  *(v1 + 112) = v21;
  [v19 loadTracksWithMediaType:v20 completionHandler:v1 + 80];

  return _swift_continuation_await(v1 + 16);
}