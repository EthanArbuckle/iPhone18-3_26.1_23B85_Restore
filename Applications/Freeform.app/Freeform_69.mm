uint64_t sub_1009FBC14()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1009FBCB0(Strong);
    }
  }

  return result;
}

void sub_1009FBCB0(uint64_t a1)
{
  if ([*(v1 + 16) objectForKey:a1])
  {
    sub_1009FD60C();
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_10006217C(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 305;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:305 isFatal:0 format:v24 args:v21];
  }
}

void sub_1009FC0D0()
{
  if (*(v0 + 96))
  {
    dispatch thunk of __ServiceLocator.renderService.getter();
    sub_100020E58(v24, v24[3]);
    dispatch thunk of __RenderService.__coreRenderManager.getter();
    sub_100005070(v24);
    RERenderGraphEmitterAssetUnregisterProviders();
    RERelease();
    *(v0 + 96) = 0;
  }

  else
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_1005CF000();
    *(inited + 96) = v11;
    v12 = sub_10006217C(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 275;
    v14 = v24[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:275 isFatal:0 format:v23 args:v20];
  }
}

BOOL sub_1009FC4E8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_1005B981C(&qword_101A0C008);
  __chkstk_darwin(v9 - 8);
  v11 = (&v25 - v10);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v25 - v18;
  v20 = [*(v4 + 16) objectForKey:{a1, v17}];
  if (v20)
  {
    UUID.init()();
    (*(v13 + 16))(v15, v19, v12);
    v21 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
    v22 = *(v21 + 20);
    v23 = sub_1005B981C(&qword_101A1B3C0);
    (*(*(v23 - 8) + 16))(v11 + v22, a2, v23);
    *v11 = a3;
    v11[1] = a4;
    *(v11 + *(v21 + 24)) = 0;
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
    swift_beginAccess();
    sub_100BC3F28(v11, v15);
    swift_endAccess();

    (*(v13 + 8))(v19, v12);
  }

  return v20 != 0;
}

uint64_t sub_1009FC76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NSFastEnumerationIterator();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a3 + 16) keyEnumerator];
  NSEnumerator.makeIterator()();

  NSFastEnumerationIterator.next()();
  while (v20)
  {
    sub_10000BF3C(&v19, &v18);
    _s11ClientSceneCMa();
    if (swift_dynamicCast())
    {
      if (dispatch thunk of Scene.name.getter() == a1 && v12 == a2)
      {

        v15 = 1;
        goto LABEL_12;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        v15 = 1;
        goto LABEL_12;
      }
    }

    NSFastEnumerationIterator.next()();
  }

  v15 = 0;
LABEL_12:
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t sub_1009FC954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1009FCA48, v7, v6);
}

uint64_t sub_1009FCA48()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1009FCB14;

  return sub_100061EEC(0xA055690D9DB80000, 1, 0, 0, 1);
}

uint64_t sub_1009FCB14()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1009FCD3C;
  }

  else
  {
    v8 = sub_1009FCCAC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1009FCCAC()
{
  v1 = *(v0 + 16);

  if (![*(v1 + 16) count])
  {
    dispatch thunk of __Engine.__stop()();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009FCD3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009FCDA8()
{
  swift_unknownObjectRelease();

  sub_10000CAAC(v0 + 48, &unk_101A08DE0);

  return swift_deallocClassInstance();
}

uint64_t sub_1009FCE34(void *a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 64) = 0u;
  v7 = v2 + 64;
  *(v4 + 96) = 0;
  *(v4 + 80) = 0u;
  sub_1009FF8A8(v43);
  v8 = v43[7];
  *(v4 + 208) = v43[6];
  *(v4 + 224) = v8;
  *(v4 + 240) = v43[8];
  v9 = v43[3];
  *(v4 + 144) = v43[2];
  *(v4 + 160) = v9;
  v10 = v43[5];
  *(v4 + 176) = v43[4];
  *(v4 + 192) = v10;
  v11 = v43[1];
  *(v4 + 112) = v43[0];
  *(v4 + 128) = v11;
  *(v4 + 256) = 1;
  *(v4 + 264) = 0;
  v12 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_lastTextureResizeTimestamp;
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  *(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_textureSizeIsStale) = 1;
  v14 = v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_viewDescriptorsValid) = 0;
  v15 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_snapshotRequests;
  *(v4 + v15) = sub_100BD6C60(_swiftEmptyArrayStorage);
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v16 = *(a2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 48);
  v41[2] = *(a2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 32);
  v41[3] = v16;
  v42 = *(a2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 64);
  v17 = *(a2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 16);
  v41[0] = *(a2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration);
  v41[1] = v17;
  swift_unknownObjectRetain_n();

  v19 = sub_10096A5FC(v41, v18);
  v21 = [objc_opt_self() texture2DDescriptorWithPixelFormat:81 width:v19 height:v20 mipmapped:0];
  [v21 setStorageMode:2];
  [v21 setUsage:23];
  v22 = sub_10096A8B0(a1, v21, 0, 0);
  if (v3)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_10000CAAC(v7, &unk_101A08DE0);
    v26 = *(v4 + 224);
    v40[6] = *(v4 + 208);
    v40[7] = v26;
    v40[8] = *(v4 + 240);
    v27 = *(v4 + 160);
    v40[2] = *(v4 + 144);
    v40[3] = v27;
    v28 = *(v4 + 192);
    v40[4] = *(v4 + 176);
    v40[5] = v28;
    v29 = *(v4 + 128);
    v40[0] = *(v4 + 112);
    v40[1] = v29;
    sub_10000CAAC(v40, &qword_101A0C000);
    sub_10000CAAC(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_lastTextureResizeTimestamp, &qword_101A0A320);

    _s6CoreREO19SceneRenderingStateCMa(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v22;
    *(v4 + 32) = v22;
    *(v4 + 40) = v23;
    v31 = v23;
    v32 = v24;
    *(v4 + 48) = v24;
    *(v4 + 56) = v25;
    v33 = v25;
    *(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_textureSizeIsStale) = 0;
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v34 = v33;
      sub_10086C834(v30, v31, v32, v34);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    if (*(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState + 8) == 1)
    {
      if (*(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState))
      {
        v35 = 0x7065656C7361;
      }

      else
      {
        v35 = 0x656B617761;
      }

      if (*(v4 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState))
      {
        v36 = 0xE600000000000000;
      }

      else
      {
        v36 = 0xE500000000000000;
      }
    }

    else
    {
      v36 = 0x8000000101582280;
      v35 = 0xD000000000000011;
    }

    v37 = *(a2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_metadata);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100A9EA10(v35, v36, isUniquelyReferenced_nonNull_native);
    sub_100CEE8B0(v37);

    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t sub_1009FD254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v7 = v5[7];
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a4;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {
    v9 = v5[4];
    v10 = v5[5];
    v11 = v5[6];
    v12 = v5[7];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = v12;
    sub_10086C834(v9, v10, v11, v13);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  *(v5 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_viewDescriptorsValid) = 0;
  return result;
}

BOOL sub_1009FD388(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration);
  v3 = *(a1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 16);
  v4 = v3;
  v4.i32[3] = *(a1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration);
  v5 = *(v1 + 16);
  v5.i32[3] = *v1;
  if ((vminv_u16(vmovn_s32(vceqq_f32(v4, v5))) & 1) == 0)
  {
    return 1;
  }

  result = 1;
  if ((vmovn_s32(vceqq_f32(v3, *(v1 + 16))).i8[6] & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v2[2], *(v1 + 32)), vceqq_f64(v2[3], *(v1 + 48))), xmmword_10148D100)) & 0xF) == 0 && v2[4].f64[0] == *(v1 + 64))
  {
    v9 = (a1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription);
    v10 = v9[2].i64[0];
    v11 = v9[2].u8[8];
    v12 = *(v1 + 112);
    v13 = *(v1 + 120);
    if ((sub_100C7287C(*v9, v9[1], *(v1 + 80), *(v1 + 96)) & 1) == 0)
    {
      return 1;
    }

    v14 = sub_100B32A64(v10, v12);

    result = 1;
    if ((v14 & 1) != 0 && ((v11 ^ v13) & 1) == 0)
    {
      return sub_100CEE500() != *(v1 + 136);
    }
  }

  return result;
}

uint64_t sub_1009FD4F8(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState;
  v4 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState);
  v5 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState + 8);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  if (a2)
  {
    if (result)
    {
      if (!v4)
      {
        v5 = 0;
      }

      if (v5 == 1)
      {
        return result;
      }

LABEL_10:
      v6 = 0x7065656C7361;
      if (!result)
      {
        v6 = 0x656B617761;
      }

      v7 = 0xE600000000000000;
      if (!result)
      {
        v7 = 0xE500000000000000;
      }

      if (a2)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0xD000000000000011;
      }

      if (a2)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0x8000000101582280;
      }

      v10 = *(*(v2 + 16) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_metadata);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9EA10(v8, v9, isUniquelyReferenced_nonNull_native);
      return sub_100CEE8B0(v10);
    }

    if (v4)
    {
      LOBYTE(v5) = 0;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v4 != result)
    {
      LOBYTE(v5) = 1;
    }

    if (v5)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1009FD60C()
{
  v2 = v0;
  v3 = type metadata accessor for __EntityRef();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = type metadata accessor for Date();
  v70 = *(v13 - 8);
  __chkstk_darwin(v13);
  v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = &v61 - v16;
  if (sub_1009FDE2C())
  {
    v66 = v13;
    v64 = v9;
    v63 = v3;
    v67 = v1;
    if (*(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState + 8) == 1 && *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState))
    {
      v17 = *(v0 + 32);
      v18 = *(v2 + 56);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = v18;
      if ([v17 setPurgeableState:1] - 3 < 2)
      {
        [v17 setPurgeableState:2];
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v61 = v6;
    v62 = v4;
    sub_1009FD4F8(0, 1);
    *(v2 + 256) = 1;
    v20 = *(v2 + 32);
    v21 = *(v2 + 56);
    v65 = *(v2 + 16);
    v22 = v65 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration;
    v23 = *(v65 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 48);
    v73[2] = *(v65 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 32);
    v73[3] = v23;
    v74 = *(v65 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 64);
    v24 = *(v65 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 16);
    v73[0] = *(v65 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration);
    v73[1] = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v25 = v21;
    v27 = sub_10096A5FC(v73, v26);
    v29 = v28;
    if ([v20 width] == v27)
    {
      v30 = [v20 height];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v31 = v30 == v29;
      v32 = v66;
      if (v31)
      {
        goto LABEL_28;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v32 = v66;
    }

    v36 = v64;
    if (*(v2 + 264) >= 0x79uLL)
    {
      v37 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_lastTextureResizeTimestamp;
      swift_beginAccess();
      sub_10000BE14(v2 + v37, v12, &qword_101A0A320);
      v38 = v70;
      if ((*(v70 + 48))(v12, 1, v32) == 1)
      {
        sub_10000CAAC(v12, &qword_101A0A320);
      }

      else
      {
        v39 = v68;
        (*(v38 + 32))(v68, v12, v32);
        v40 = v69;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v42 = v41;
        v43 = *(v38 + 8);
        v43(v40, v32);
        v43(v39, v32);
        if (v42 < 1.0)
        {
          v44 = 1;
LABEL_27:
          *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_textureSizeIsStale) = v44;
LABEL_28:
          sub_100CEDF50();
          return sub_1009FDFE4();
        }
      }
    }

    v45 = *(v2 + 40);
    v46 = *(v2 + 48);
    v47 = *(v2 + 24);
    v48 = *(v22 + 48);
    v71[2] = *(v22 + 32);
    v71[3] = v48;
    v72 = *(v22 + 64);
    v49 = *(v22 + 16);
    v71[0] = *v22;
    v71[1] = v49;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v51 = sub_10096A5FC(v71, v50);
    v53 = [objc_opt_self() texture2DDescriptorWithPixelFormat:81 width:v51 height:v52 mipmapped:0];
    [v53 setStorageMode:2];
    [v53 setUsage:23];
    v54 = v67;
    v55 = sub_10096A8B0(v47, v53, v45, v46);
    if (v54)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 256) = 0;

      v59 = v61;
      dispatch thunk of Entity.__coreEntity.getter();

      __EntityRef.__as<A>(_:)();
      (*(v62 + 8))(v59, v63);
      RECameraViewDescriptorsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECameraViewDescriptorsComponentClearCameraViewDescriptors();
      *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_viewDescriptorsValid) = 0;
      return swift_willThrow();
    }

    sub_1009FD254(v55, v56, v57, v58);
    Date.init()();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v70 + 56))(v36, 0, 1, v32);
    v60 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_lastTextureResizeTimestamp;
    swift_beginAccess();
    sub_10002C638(v36, v2 + v60, &qword_101A0A320);
    swift_endAccess();
    v44 = 0;
    goto LABEL_27;
  }

  dispatch thunk of Entity.__coreEntity.getter();

  __EntityRef.__as<A>(_:)();
  (*(v4 + 8))(v6, v3);
  RECameraViewDescriptorsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECameraViewDescriptorsComponentClearCameraViewDescriptors();
  *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_viewDescriptorsValid) = 0;
  *(v0 + 256) = 0;
  v33 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState);
  if (*(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_awakeState + 8) == 1)
  {
    v34 = v33 != 0;
    result = 1;
    return sub_1009FD4F8(result, v34);
  }

  result = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    if (result > 59)
    {
      [*(v0 + 32) setPurgeableState:3];
      result = 1;
      v34 = 1;
    }

    else
    {
      v34 = 0;
    }

    return sub_1009FD4F8(result, v34);
  }

  __break(1u);
  return result;
}

uint64_t sub_1009FDE2C()
{
  v1 = v0;
  v2 = [*(v0 + 48) signaledValue];
  if (v2 != [*(v1 + 40) signaledValue])
  {
    return 0;
  }

  v3 = *(v1 + 192);
  v4 = *(v1 + 224);
  v24 = *(v1 + 208);
  v25 = v4;
  v5 = *(v1 + 224);
  v26 = *(v1 + 240);
  v6 = *(v1 + 128);
  v7 = *(v1 + 160);
  v20 = *(v1 + 144);
  v21 = v7;
  v8 = *(v1 + 160);
  v9 = *(v1 + 192);
  v22 = *(v1 + 176);
  v23 = v9;
  v10 = *(v1 + 128);
  v18 = *(v1 + 112);
  v19 = v10;
  v33 = v24;
  v34 = v5;
  v35 = *(v1 + 240);
  v29 = v20;
  v30 = v8;
  v31 = v22;
  v32 = v3;
  v27 = v18;
  v28 = v6;
  if (sub_1009FFA78(&v27) == 1)
  {
    v11 = 1;
  }

  else
  {
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v36 = v27;
    v37 = v28;
    v13 = *(v1 + 16);
    v17[6] = v24;
    v17[7] = v25;
    v17[8] = v26;
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[5] = v23;
    v17[0] = v18;
    v17[1] = v19;
    sub_1009FFA90(v17, &v16);
    v11 = sub_1009FD388(v13);
    sub_10000CAAC(&v18, &qword_101A0C000);
  }

  v14 = sub_100CEE3D0();
  v15 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_snapshotRequests;
  swift_beginAccess();
  if (v11 || (v14 & 1) != 0 || *(*(v1 + v15) + 16) > 0 || *(v1 + 264) <= 0x77uLL)
  {
    return 1;
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_textureSizeIsStale);
  }
}

uint64_t sub_1009FDFE4()
{
  v25 = type metadata accessor for UUID();
  v1 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for __EntityRef();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  dispatch thunk of Entity.__coreEntity.getter();

  __EntityRef.__as<A>(_:)();
  v8 = *(v5 + 8);
  v8(v7, v4);
  RECameraViewDescriptorsComponentGetComponentType();
  v26 = REEntityGetOrAddComponentByClass();
  v22 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_viewDescriptorsValid;
  if ((*(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_viewDescriptorsValid) & 1) == 0)
  {

    dispatch thunk of Entity.__coreEntity.getter();

    __EntityRef.__as<A>(_:)();
    v8(v7, v4);
    RECameraViewDescriptorsComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RECameraViewDescriptorsComponentClearCameraViewDescriptors();
    *(v0 + v22) = 0;
    RECameraViewDescriptorsComponentAddViewDescriptor();
    RECameraViewDescriptorsComponentAddSpecifyCommandFromTexture();
    RECameraViewDescriptorsComponentCameraViewDescriptorSetViewport();
    RECameraViewDescriptorsComponentCameraViewDescriptorCopySettingStruct();
    RERenderGraphDataStructAddFloat4();
    RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct();
    RERelease();
  }

  v9 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_snapshotRequests;
  swift_beginAccess();
  v27 = v0;
  v10 = *(v0 + v9);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v23 = v1 + 8;
  v24 = v1 + 16;

  for (i = 0; v13; result = (*(v1 + 8))(v3, v19))
  {
    v17 = i;
LABEL_11:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v25;
    (*(v1 + 16))(v3, *(v10 + 48) + *(v1 + 72) * (v18 | (v17 << 6)), v25);
    v20 = [*(v27 + 32) device];
    sub_1009FE790(v3, v26, v20);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      *(v27 + v22) = 1;
      return result;
    }

    v13 = *(v10 + 64 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1009FE43C(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  v32 = a4;
  v31 = a3;
  v33 = a2;
  v6 = sub_1005B981C(&qword_101A0C008);
  __chkstk_darwin(v6 - 8);
  v35 = &v30 - v7;
  v34 = type metadata accessor for UUID();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_snapshotRequests;
  swift_beginAccess();
  v19 = *(v4 + v18);
  if (*(v19 + 16))
  {

    v30 = a1;
    v20 = sub_10003E994(a1);
    if (v21)
    {
      sub_1009FF8C4(*(v19 + 56) + *(v12 + 72) * v20, v14);

      sub_1009FF928(v14, v17);
      v22 = v32;
      if ((v32 & 0x100) != 0)
      {
        sub_10086E6A0();
        v24 = swift_allocError();
        v25 = v33;
        v26 = v31;
        *v27 = v33;
        *(v27 + 8) = v26;
        *(v27 + 16) = v22;
        v36 = v24;
        sub_10086756C(v25, v26, v22);
        sub_1005B981C(&qword_101A1B3C0);
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        v36 = v33;
        v37 = v31;
        v38 = v32 & 1;
        v23 = v33;
        sub_1005B981C(&qword_101A1B3C0);
        CheckedContinuation.resume(returning:)();
      }

      sub_1009FF98C(v17);
    }

    else
    {
    }

    a1 = v30;
  }

  (*(v8 + 16))(v10, a1, v34);
  v28 = v35;
  (*(v12 + 56))(v35, 1, 1, v11);
  swift_beginAccess();
  sub_100BC3F28(v28, v10);
  return swift_endAccess();
}

uint64_t sub_1009FE790(uint64_t a1, void *a2, char *a3)
{
  v4 = v3;
  v50 = a2;
  v51 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v49 = &v40 - v10;
  v11 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v40 - v15);
  v17 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_snapshotRequests;
  result = swift_beginAccess();
  v19 = *(v4 + v17);
  if (*(v19 + 16))
  {
    v48 = v6;

    v20 = sub_10003E994(a1);
    if ((v21 & 1) == 0)
    {
    }

    sub_1009FF8C4(*(v19 + 56) + *(v52 + 72) * v20, v13);

    result = sub_1009FF928(v13, v16);
    if (*(v16 + *(v11 + 24)))
    {
      return sub_1009FF98C(v16);
    }

    v22 = *v16;
    if ((*v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      v47 = a1;
      if (v22 < 9.22337204e18)
      {
        v23 = v16[1];
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v23 > -9.22337204e18)
          {
            if (v23 < 9.22337204e18)
            {
              v24 = v11;
              v25 = [objc_opt_self() texture2DDescriptorWithPixelFormat:81 width:v22 height:v23 mipmapped:0];
              [v25 setUsage:23];
              [v25 setStorageMode:0];
              v26 = [v51 newTextureWithDescriptor:v25];

              if (v26)
              {
                RenderGraphDataStruct = RERenderGraphCreateRenderGraphDataStruct();
                RERenderGraphDataStructAddFloat4();
                v27 = swift_allocObject();
                swift_weakInit();
                v42 = *(v7 + 16);
                v43 = v7 + 16;
                v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
                v45 = v4;
                v28 = v49;
                v41 = v24;
                v29 = v48;
                v42(v49, v47, v48);
                v30 = (*(v7 + 80) + 24) & ~*(v7 + 80);
                v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
                v32 = swift_allocObject();
                *(v32 + 16) = v27;
                v46 = v7;
                (*(v7 + 32))(v32 + v30, v28, v29);
                *(v32 + v31) = v26;
                aBlock[4] = sub_1009FF9E8;
                aBlock[5] = v32;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = *"";
                aBlock[2] = sub_100007638;
                aBlock[3] = &unk_1018912B0;
                v33 = _Block_copy(aBlock);
                swift_unknownObjectRetain();

                v50 = v26;
                v34 = v41;
                RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings();
                _Block_release(v33);
                v42(v51, v47, v29);
                v35 = v51;
                v36 = sub_1009FE3DC();
                v37 = sub_101125868(v53);
                v39 = v38;
                if (!(*(v52 + 48))(v38, 1, v34))
                {
                  *(v39 + *(v34 + 24)) = 1;
                }

                (v37)(v53, 0);
                (*(v46 + 8))(v35, v29);
                (v36)(aBlock, 0);
                RERelease();
                swift_unknownObjectRelease();
              }

              else
              {
                sub_1009FE43C(v47, 0xD000000000000022, 0x80000001015822D0, 261);
              }

              return sub_1009FF98C(v16);
            }

LABEL_23:
            __break(1u);
            return result;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1009FED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1009FEDD8(a2, a3);
  }

  return result;
}

void sub_1009FEDD8(uint64_t a1, uint64_t a2)
{
  v5 = CGColorSpaceCreateWithName(kCGColorSpaceLinearSRGB);
  if (v5)
  {
    v6 = v5;
    sub_1005B981C(&qword_101A0C010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 32) = kCIContextWorkingColorSpace;
    type metadata accessor for CGColorSpace(0);
    *(inited + 40) = v6;
    *(inited + 64) = v8;
    *(inited + 72) = kCIContextOutputColorSpace;
    *(inited + 104) = v8;
    *(inited + 80) = v6;
    v9 = v6;
    v10 = kCIContextWorkingColorSpace;
    v11 = kCIContextOutputColorSpace;
    sub_100BD7D00(inited);
    swift_setDeallocating();
    sub_1005B981C(&qword_101A0C018);
    swift_arrayDestroy();
    v12 = objc_allocWithZone(CIContext);
    type metadata accessor for CIContextOption(0);
    sub_10006217C(&qword_101A0C020, type metadata accessor for CIContextOption);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v12 initWithOptions:isa];

    v15 = [objc_allocWithZone(CIImage) initWithMTLTexture:a2 options:0];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 imageByApplyingCGOrientation:4];

      if (v17)
      {
        [v17 extent];
        v18 = [v14 createCGImage:v17 fromRect:kCIFormatBGRA8 format:v9 colorSpace:?];
        if (v18)
        {
          v19 = *(v2 + 16) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_compression;
          v20 = *v19;
          v21 = *(v19 + 8);
          v22 = v18;
          v23 = v18;
          sub_1009FE43C(a1, v22, v20, v21);

LABEL_8:
          return;
        }
      }
    }

    sub_1009FE43C(a1, 0xD000000000000024, 0x80000001015822A0, 261);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1009FF084()
{
  if (*(v0 + 8) != 1)
  {
    return 0xD000000000000011;
  }

  if (*v0)
  {
    return 0x7065656C7361;
  }

  return 0x656B617761;
}

uint64_t sub_1009FF0E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009FF11C()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10000CAAC(v0 + 64, &unk_101A08DE0);
  v1 = *(v0 + 224);
  v6[6] = *(v0 + 208);
  v6[7] = v1;
  v6[8] = *(v0 + 240);
  v2 = *(v0 + 160);
  v6[2] = *(v0 + 144);
  v6[3] = v2;
  v3 = *(v0 + 192);
  v6[4] = *(v0 + 176);
  v6[5] = v3;
  v4 = *(v0 + 128);
  v6[0] = *(v0 + 112);
  v6[1] = v4;
  sub_10000CAAC(v6, &qword_101A0C000);
  sub_10000CAAC(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreREP33_23F24EF2C3AE8F7E8DC9481174D548F219SceneRenderingState_lastTextureResizeTimestamp, &qword_101A0A320);

  return swift_deallocClassInstance();
}

void sub_1009FF260()
{
  sub_10000D990();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1009FF3A0()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1009FF42C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1009FF42C()
{
  if (!qword_101A0BF98)
  {
    sub_1005C4E5C(qword_101A0BFA0);
    sub_1005C4E5C(&unk_1019F6B40);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_101A0BF98);
    }
  }
}

__n128 sub_1009FF4C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1009FF4F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1009FF538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1009FF5BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1009FC954(a1, v4, v5, v6);
}

uint64_t sub_1009FF670()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1009FF82C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1009FF82C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1009FF8A8(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1009FF8C4(uint64_t a1, uint64_t a2)
{
  v4 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009FF928(uint64_t a1, uint64_t a2)
{
  v4 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009FF98C(uint64_t a1)
{
  v2 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009FF9E8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1009FED64(v3, v0 + v2, v4);
}

uint64_t sub_1009FFA78(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1009FFBB8()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v79.receiver = v0;
  v79.super_class = type metadata accessor for CRLiOSCompactScenesNavigatorViewController();
  objc_msgSendSuper2(&v79, "viewDidLoad");
  v3 = OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_hostingController;
  v4 = [*&v0[OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_hostingController] view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = *&v0[v3];
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v7 = [v0 view];
  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  [v8 setBackgroundColor:v10];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v11;
  v13 = [v11 layer];

  [v13 setCornerRadius:22.0];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v14;
  v16 = [v14 layer];

  [v16 setCornerCurve:kCACornerCurveContinuous];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  v19 = [v17 layer];

  [v19 setBorderWidth:0.5];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  v22 = [v20 layer];

  v23 = [v9 blackColor];
  v24 = [v23 colorWithAlphaComponent:0.08];

  v25 = [v24 CGColor];
  [v22 setBorderColor:v25];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = v26;
  v28 = [v26 layer];

  [v28 crl_applyDefaultCanvasOverlayUIShadowSettings];
  [v1 addChildViewController:*&v1[v3]];
  [*&v1[v3] didMoveToParentViewController:v1];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = v29;
  v31 = [*&v1[v3] view];
  if (!v31)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v32 = v31;
  [v30 addSubview:v31];

  sub_1005B981C(&unk_1019F4D60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10147AD40;
  v34 = [*&v1[v3] view];
  if (!v34)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v35 = v34;
  v36 = [v34 widthAnchor];

  v37 = [v36 constraintEqualToConstant:156.0];
  *(v33 + 32) = v37;
  v38 = [v1 view];
  if (!v38)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [*&v1[v3] view];
  if (!v41)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 leadingAnchor];
  v45 = [v40 constraintEqualToAnchor:v44 constant:-6.0];

  *(v33 + 40) = v45;
  v46 = [v1 view];
  if (!v46)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [*&v1[v3] view];
  if (!v49)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 trailingAnchor];
  v53 = [v48 constraintEqualToAnchor:v52 constant:6.0];

  *(v33 + 48) = v53;
  v54 = [v1 view];
  if (!v54)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [*&v1[v3] view];
  if (!v57)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v58 = v57;
  v59 = [v57 safeAreaLayoutGuide];

  v60 = [v59 topAnchor];
  v61 = [v56 constraintEqualToAnchor:v60 constant:-8.0];

  *(v33 + 56) = v61;
  v62 = [v1 view];
  if (!v62)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v63 = v62;
  v64 = [v62 bottomAnchor];

  v65 = [*&v1[v3] view];
  if (!v65)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v66 = v65;
  v67 = objc_opt_self();
  v68 = [v66 safeAreaLayoutGuide];

  v69 = [v68 bottomAnchor];
  v70 = [v64 constraintEqualToAnchor:v69 constant:8.0];

  *(v33 + 64) = v70;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v67 activateConstraints:isa];

  v72 = [v1 view];
  if (v72)
  {
    v73 = v72;
    [v72 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v75 = v74;
    v77 = v76;

    v78 = &v1[OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_contentViewSize];
    *v78 = v75;
    *(v78 + 1) = v77;
    return;
  }

LABEL_39:
  __break(1u);
}

void sub_100A00500()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v34 = [v1 view];

  if (!v34)
  {
    return;
  }

  [v34 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![objc_opt_self() crl_phoneUI] || !objc_msgSend(objc_opt_self(), "crl_deviceIsLandscape"))
  {
    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v10;
    Height = CGRectGetHeight(v38);
    v20 = &v0[OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_contentViewSize];
    v21 = *&v0[OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_contentViewSize + 8];
    v39.origin.x = v4;
    v39.origin.y = v6;
    v39.size.width = v8;
    v39.size.height = v10;
    Width = CGRectGetWidth(v39);
    v23 = *v20;
    v24 = v20[1];
    v25 = [v0 view];
    if (v25)
    {
      v26 = v25;
      [v25 setFrame:{(Width - v23) * 0.5, Height - v21 + -30.0, v23, v24}];

      v27 = [v0 view];
      if (v27)
      {
        v18 = v27;
        [v34 center];
        v29 = v28;
        v30 = [v0 view];
        if (v30)
        {
          v31 = v30;
          [v30 center];
          v33 = v32;

          [v18 setCenter:{v29, v33}];
          goto LABEL_12;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v36.origin.x = v4;
  v36.origin.y = v6;
  v36.size.width = v8;
  v36.size.height = v10;
  v11 = CGRectGetHeight(v36);
  v12 = &v0[OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_contentViewSize];
  v13 = *&v0[OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_contentViewSize + 8];
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v14 = CGRectGetWidth(v37);
  v15 = *v12;
  v16 = v12[1];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 setFrame:{v14 - v15 + -30.0, v11 - v13 + -30.0, v15, v16}];
LABEL_12:
}

id sub_100A00864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSCompactScenesNavigatorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100A00908(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v6 = sub_1000640CC(v15), (v7 & 1) != 0))
    {
      sub_100064288(*(v5 + 56) + 32 * v6, v16);
      sub_100064234(v15);

      sub_100006370(0, &qword_1019FCBC0);
      if (swift_dynamicCast())
      {
        v8 = OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_editorController;
        v9 = [*&v2[OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_editorController] selectionPath];
        sub_100006370(0, &qword_1019F54D0);
        v10 = [*&v2[v8] selectionPath];
        v11 = static NSObject.== infix(_:_:)();

        if ((v11 & 1) == 0)
        {
LABEL_8:

          return;
        }

        v12 = [v2 view];
        if (v12)
        {
          v13 = v12;
          [v12 removeFromSuperview];

          [v2 removeFromParentViewController];
          goto LABEL_8;
        }

        __break(1u);
      }
    }

    else
    {

      sub_100064234(v15);
    }
  }
}

uint64_t sub_100A00B58()
{
  qword_101AD6F10 = 97;
  *algn_101AD6F18 = 0xE100000000000000;
  qword_101AD6F20 = swift_getKeyPath();
  unk_101AD6F28 = 98;
  qword_101AD6F30 = 0xE100000000000000;
  qword_101AD6F38 = swift_getKeyPath();
  qword_101AD6F40 = 99;
  qword_101AD6F48 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD6F50 = result;
  return result;
}

uint64_t sub_100A00BC8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1005B981C(&qword_101A06128);
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  __chkstk_darwin(v1);
  v37 = v31 - v3;
  v36 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v36);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v31 - v7;
  __chkstk_darwin(v9);
  v11 = v31 - v10;
  v35 = v31 - v10;
  __chkstk_darwin(v12);
  v14 = v31 - v13;
  v34 = v31 - v13;
  v15 = type metadata accessor for CRLShapeItemCRDTData(0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v18;
  sub_100FED700(v18);
  *&v18[*(v16 + 28)] = _swiftEmptyDictionarySingleton;
  v19 = type metadata accessor for UUID();
  v20 = *(*(v19 - 8) + 56);
  v20(v14, 1, 1, v19);
  v20(v11, 1, 1, v19);
  v21 = type metadata accessor for CRLConnectionLineCRDTData(0);
  v32 = v21[5];
  v20(v8, 1, 1, v19);
  sub_10000BE14(v8, v5, &qword_1019F6990);
  v31[1] = sub_100A02EB4();
  v22 = v40;
  CRRegister.init(wrappedValue:)();
  sub_10000CAAC(v8, &qword_1019F6990);
  v33 = v21[6];
  v20(v8, 1, 1, v19);
  sub_10000BE14(v8, v5, &qword_1019F6990);
  CRRegister.init(wrappedValue:)();
  sub_10000CAAC(v8, &qword_1019F6990);
  *(v22 + v21[7]) = _swiftEmptyDictionarySingleton;
  sub_100A039F0(v41, v22, type metadata accessor for CRLShapeItemCRDTData);
  v23 = v34;
  sub_10000BE14(v34, v8, &qword_1019F6990);
  v24 = v37;
  CRRegister.init(_:)();
  v39 = *(v39 + 40);
  v25 = v22 + v32;
  v26 = v24;
  v27 = v24;
  v28 = v38;
  (v39)(v25, v26, v38);
  v29 = v35;
  sub_10000BE14(v35, v8, &qword_1019F6990);
  CRRegister.init(_:)();
  sub_10000CAAC(v29, &qword_1019F6990);
  sub_10000CAAC(v23, &qword_1019F6990);
  sub_100A03A58(v41, type metadata accessor for CRLShapeItemCRDTData);
  return (v39)(v40 + v33, v27, v28);
}

void (*sub_100A0106C(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_100A039F0(v1, v4, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  return sub_100691D64;
}

uint64_t sub_100A01114(uint64_t a1)
{
  v2 = sub_100A02FC0(&qword_101A0C550, type metadata accessor for CRLConnectionLineCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100A01180(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100A011FC()
{
  sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.actionUndoingDifference(from:)();
}

uint64_t sub_100A01280()
{
  sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.apply(_:)();
}

uint64_t sub_100A012FC()
{
  sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.hasDelta(from:)();
}

uint64_t sub_100A01378()
{
  sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.delta(_:from:)();
}

uint64_t sub_100A0140C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100A01488()
{
  sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.merge(delta:)();
}

uint64_t sub_100A01508@<X0>(void *a1@<X8>)
{
  if (qword_1019F1AC0 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = *algn_101AD6F18;
  v3 = qword_101AD6F20;
  v2 = unk_101AD6F28;
  v4 = qword_101AD6F30;
  v5 = qword_101AD6F38;
  v6 = qword_101AD6F40;
  v7 = qword_101AD6F48;
  v8 = qword_101AD6F50;
  *a1 = qword_101AD6F10;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t sub_100A015D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A01658(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A016DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_100A01770(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100A017EC()
{
  sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.needToFinalizeTimestamps()();
}

uint64_t sub_100A01858(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_100A018D4()
{
  sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.merge(_:)();
}

uint64_t sub_100A01958(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.merge(_:)(a1, a2, v4);
}

uint64_t sub_100A01AE4(uint64_t a1)
{
  v2 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return static CRStruct_3.fieldKeys.getter(a1, v2);
}

uint64_t sub_100A01C4C(uint64_t a1)
{
  v2 = sub_100A02FC0(&qword_101A10710, type metadata accessor for CRLConnectionLineCRDTData);

  return CRStruct_3.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100A01CE0()
{
  v1 = type metadata accessor for CRLShapeItemParentAffinity(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v8);
  v10 = v20 - v9 + 16;
  v11 = sub_10073CD20();
  v12 = *(*v0 + 736);
  swift_beginAccess();
  sub_10000BE14(v0 + v12, v10, &unk_101A0F400);
  sub_1005B981C(&unk_101A0F410);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v10, &unk_101A0F400);
  sub_100A039F0(&v4[*(v2 + 28)], v7, type metadata accessor for CRLPathSourceData);
  sub_100A03A58(v4, type metadata accessor for CRLShapeItemParentAffinity);
  v13 = *(v7 + 264);
  v14 = *(v7 + 280);
  v21 = *(v7 + 248);
  v22 = v13;
  v15 = *(v7 + 296);
  v23 = v14;
  v24 = v15;
  v16 = *(v7 + 200);
  v20[0] = *(v7 + 184);
  v20[1] = v16;
  v17 = *(v7 + 232);
  v20[2] = *(v7 + 216);
  v20[3] = v17;
  if (sub_100A03AB8(v20) != 1 && *(&v21 + 1) | *(&v23 + 1))
  {
    sub_100A03A58(v7, type metadata accessor for CRLPathSourceData);
    return 0x3000000000000;
  }

  else
  {
    sub_100A03A58(v7, type metadata accessor for CRLPathSourceData);
  }

  return v11;
}

uint64_t *sub_100A01F5C(int a1)
{
  v2 = v1;
  LODWORD(v40) = a1;
  v3 = *v1;
  v4 = *v1;
  v37 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v37);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v41 = &v36 - v16;
  __chkstk_darwin(v17);
  v43 = &v36 - v18;
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v25 = *(v3 + 736);
  if (v40)
  {
    swift_beginAccess();
    v40 = v8;
    v36 = v4;
    sub_10000BE14(v2 + v25, v21, &unk_101A0F400);
    sub_10001A2F8(&qword_1019F7EF0, &unk_101A0F400);
    v26 = v24;
    CRType.copy(renamingReferences:)();
    v8 = v40;
    sub_10000CAAC(v21, &unk_101A0F400);
    v27 = *(*v2 + 888);
    swift_beginAccess();
    sub_100A039F0(v2 + v27, v8, type metadata accessor for CRLConnectionLineCRDTData);
    sub_100A02FC0(&qword_101A0C550, type metadata accessor for CRLConnectionLineCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100A03A58(v8, type metadata accessor for CRLConnectionLineCRDTData);
  }

  else
  {
    swift_beginAccess();
    v28 = v2 + v25;
    v26 = v24;
    sub_10000BE14(v28, v24, &unk_101A0F400);
    v29 = *(*v2 + 888);
    swift_beginAccess();
    sub_100A039F0(v2 + v29, v11, type metadata accessor for CRLConnectionLineCRDTData);
  }

  v38 = v26;
  sub_10000BE14(v26, v21, &unk_101A0F400);
  v39 = v11;
  sub_100A039F0(v11, v8, type metadata accessor for CRLConnectionLineCRDTData);
  v30 = *(v2 + 5);
  v44[0] = *(v2 + 3);
  v44[1] = v30;
  v45 = *(v2 + 56);
  v40 = v2[2];
  v31 = swift_allocObject();
  v32 = v43;
  sub_10000BE14(v21, v43, &unk_101A0F400);
  v33 = v42;
  sub_100A039F0(v8, v42, type metadata accessor for CRLConnectionLineCRDTData);
  sub_100A039F0(v33, v31 + *(*v31 + 888), type metadata accessor for CRLConnectionLineCRDTData);
  v34 = v41;
  sub_10000BE14(v32, v41, &unk_101A0F400);
  *(v31 + qword_101A27318) = 0;
  sub_10000BE14(v34, v14, &unk_101A0F400);
  sub_10000BE14(v14, v31 + *(*v31 + 736), &unk_101A0F400);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v14, &unk_101A0F400);
  sub_10000CAAC(v34, &unk_101A0F400);
  sub_100A03A58(v33, type metadata accessor for CRLConnectionLineCRDTData);
  sub_10000CAAC(v32, &unk_101A0F400);
  sub_100A03A58(v8, type metadata accessor for CRLConnectionLineCRDTData);
  sub_10000CAAC(v21, &unk_101A0F400);
  sub_100A03A58(v39, type metadata accessor for CRLConnectionLineCRDTData);
  sub_10000CAAC(v38, &unk_101A0F400);
  return sub_100747AF0(v44, v40);
}

uint64_t sub_100A02534(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v4 - 8);
  v6 = v45 - v5;
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v55 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = v45 - v10;
  __chkstk_darwin(v11);
  v56 = v45 - v12;
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  v16 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v16);
  v54 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v45 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v51 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v28 = v45 - v27;
  v59 = a1;
  v29 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs);
  v52 = v30;
  v53 = v22;
  if (v29)
  {
    v46 = v26;
    v31 = *v2;
    v48 = v2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v49 = v6;
    v32 = v2 + *(v31 + 888);
    swift_beginAccess();
    v50 = v32;
    sub_100A039F0(v32, v20, type metadata accessor for CRLConnectionLineCRDTData);
    v33 = sub_1005B981C(&qword_101A06128);
    CRRegister.wrappedValue.getter();
    sub_100A03A58(v20, type metadata accessor for CRLConnectionLineCRDTData);
    v47 = *(v22 + 48);
    v34 = v16;
    if (v47(v15, 1, v21) == 1)
    {
      sub_10000CAAC(v15, &qword_1019F6990);
    }

    else
    {
      (*(v22 + 32))(v28, v15, v21);
      v45[0] = v33;
      v35 = v56;
      sub_100C03B78(v28, v56);
      (*(v22 + 56))(v35, 0, 1, v21);
      swift_beginAccess();
      sub_10000BE14(v35, v57, &qword_1019F6990);
      CRRegister.wrappedValue.setter();
      v34 = v16;
      sub_10000CAAC(v35, &qword_1019F6990);
      swift_endAccess();
      (*(v22 + 8))(v28, v21);
    }

    v45[1] = v34;
    v36 = v54;
    sub_100A039F0(v50, v54, type metadata accessor for CRLConnectionLineCRDTData);
    v37 = v55;
    CRRegister.wrappedValue.getter();
    sub_100A03A58(v36, type metadata accessor for CRLConnectionLineCRDTData);
    if (v47(v37, 1, v21) == 1)
    {
      sub_10000CAAC(v37, &qword_1019F6990);
    }

    else
    {
      v38 = v46;
      (*(v22 + 32))(v46, v37, v21);
      v39 = v56;
      sub_100C03B78(v38, v56);
      (*(v22 + 56))(v39, 0, 1, v21);
      swift_beginAccess();
      sub_10000BE14(v39, v57, &qword_1019F6990);
      CRRegister.wrappedValue.setter();
      sub_10000CAAC(v39, &qword_1019F6990);
      swift_endAccess();
      (*(v22 + 8))(v38, v21);
    }

    v6 = v49;
  }

  v40 = *(*v2 + 736);
  swift_beginAccess();
  v41 = v58;
  sub_10124E270(v59);
  result = swift_endAccess();
  if (!v41)
  {
    sub_10000BE14(v2 + v40, v6, &unk_101A0F400);
    sub_1005B981C(&unk_1019F5250);
    v43 = v51;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v6, &unk_101A0F400);
    v44 = *(*v2 + 744);
    swift_beginAccess();
    (*(v53 + 40))(v2 + v44, v43, v52);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100A02C2C()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A0F400);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100A03A58(v0 + *(*v0 + 888), type metadata accessor for CRLConnectionLineCRDTData);

  return swift_deallocClassInstance();
}

void sub_100A02DA8()
{
  type metadata accessor for CRLShapeItemCRDTData(319);
  if (v0 <= 0x3F)
  {
    sub_100A02E44();
    if (v1 <= 0x3F)
    {
      sub_100039F68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100A02E44()
{
  if (!qword_101A0C4F0)
  {
    sub_1005C4E5C(&qword_1019F6990);
    sub_100A02EB4();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_101A0C4F0);
    }
  }
}

unint64_t sub_100A02EB4()
{
  result = qword_101A106F0;
  if (!qword_101A106F0)
  {
    sub_1005C4E5C(&qword_1019F6990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A106F0);
  }

  return result;
}

uint64_t sub_100A02FC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100A031FC(uint64_t a1)
{
  result = sub_100A02FC0(&qword_101A0C528, type metadata accessor for CRLConnectionLineCRDTData);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100A03254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  __chkstk_darwin(v4);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v64);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v49[-v11];
  v13 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v13 - 8);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v60 = &v49[-v17];
  __chkstk_darwin(v18);
  v20 = &v49[-v19];
  __chkstk_darwin(v21);
  v61 = &v49[-v22];
  __chkstk_darwin(v23);
  v25 = &v49[-v24];
  __chkstk_darwin(v26);
  v28 = &v49[-v27];
  if (!sub_100FEDCD8())
  {
    goto LABEL_14;
  }

  v57 = v20;
  v58 = v9;
  v53 = v15;
  v54 = v7;
  v29 = type metadata accessor for CRLConnectionLineCRDTData(0);
  sub_1005B981C(&qword_101A06128);
  v56 = a1;
  CRRegister.wrappedValue.getter();
  v55 = v29;
  v59 = a2;
  CRRegister.wrappedValue.getter();
  v30 = *(v64 + 48);
  sub_10000BE14(v28, v12, &qword_1019F6990);
  v31 = v63;
  sub_10000BE14(v25, &v12[v30], &qword_1019F6990);
  v32 = *(v31 + 48);
  v33 = v62;
  if (v32(v12, 1, v62) == 1)
  {
    sub_10000CAAC(v25, &qword_1019F6990);
    sub_10000CAAC(v28, &qword_1019F6990);
    if (v32(&v12[v30], 1, v33) != 1)
    {
      goto LABEL_13;
    }

    sub_10000CAAC(v12, &qword_1019F6990);
  }

  else
  {
    v52 = v28;
    v34 = v61;
    sub_10000BE14(v12, v61, &qword_1019F6990);
    v51 = v32;
    v35 = v32(&v12[v30], 1, v33);
    v36 = v33;
    if (v35 == 1)
    {
      sub_10000CAAC(v25, &qword_1019F6990);
      sub_10000CAAC(v52, &qword_1019F6990);
      (*(v31 + 8))(v34, v33);
      goto LABEL_13;
    }

    v37 = v54;
    (*(v31 + 32))(v54, &v12[v30], v36);
    sub_100A02FC0(&qword_1019F37C0, &type metadata accessor for UUID);
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v31 + 8);
    v38(v37, v36);
    sub_10000CAAC(v25, &qword_1019F6990);
    sub_10000CAAC(v52, &qword_1019F6990);
    v38(v34, v36);
    sub_10000CAAC(v12, &qword_1019F6990);
    v33 = v36;
    v32 = v51;
    if ((v50 & 1) == 0)
    {
LABEL_14:
      v43 = 0;
      return v43 & 1;
    }
  }

  v39 = v57;
  CRRegister.wrappedValue.getter();
  v40 = v60;
  CRRegister.wrappedValue.getter();
  v41 = v33;
  v42 = *(v64 + 48);
  v12 = v58;
  sub_10000BE14(v39, v58, &qword_1019F6990);
  sub_10000BE14(v40, &v12[v42], &qword_1019F6990);
  if (v32(v12, 1, v41) != 1)
  {
    v44 = v53;
    sub_10000BE14(v12, v53, &qword_1019F6990);
    if (v32(&v12[v42], 1, v41) != 1)
    {
      v46 = v63;
      v47 = v54;
      (*(v63 + 32))(v54, &v12[v42], v41);
      sub_100A02FC0(&qword_1019F37C0, &type metadata accessor for UUID);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v46 + 8);
      v48(v47, v41);
      sub_10000CAAC(v40, &qword_1019F6990);
      sub_10000CAAC(v39, &qword_1019F6990);
      v48(v44, v41);
      sub_10000CAAC(v12, &qword_1019F6990);
      return v43 & 1;
    }

    sub_10000CAAC(v40, &qword_1019F6990);
    sub_10000CAAC(v39, &qword_1019F6990);
    (*(v63 + 8))(v44, v41);
    goto LABEL_13;
  }

  sub_10000CAAC(v40, &qword_1019F6990);
  sub_10000CAAC(v39, &qword_1019F6990);
  if (v32(&v12[v42], 1, v41) != 1)
  {
LABEL_13:
    sub_10000CAAC(v12, &unk_101A0AFE0);
    goto LABEL_14;
  }

  sub_10000CAAC(v12, &qword_1019F6990);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_100A039F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A03A58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100A03AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for CRLSerializableObjectType(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLSerializableObjectType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 19))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLSerializableObjectType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 15) = 0;
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

  *(result + 19) = v3;
  return result;
}

uint64_t sub_100A03B38(uint64_t a1)
{
  if (*(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A03B54(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 18) = 1;
  }

  else
  {
    *(result + 18) = 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CRLSerializableObjectType.RawPersistenceValues(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100A03BC4(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 & 0x10000) != 0)
  {
    if (a3)
    {
      v3 = 0;
    }

    else
    {
      v3 = (a2 | result) == 0;
    }

    if (v3)
    {
      return 1;
    }

    else
    {
      return 99;
    }
  }

  else if ((a3 & 0x100) != 0)
  {
    if (!(a2 | result) && !a3)
    {
      return 2;
    }

    if (result == 1 && !a2 && !a3)
    {
      return 3;
    }

    if (result == 2 && !a2 && !a3)
    {
      return 4;
    }

    if (result == 3 && !a2 && !a3)
    {
      return 5;
    }

    if (result == 4 && !a2 && !a3)
    {
      return 6;
    }

    if (result == 5 && !a2 && !a3)
    {
      return 7;
    }

    if (result == 6 && !a2 && !a3)
    {
      return 8;
    }

    if (result == 7 && !a2 && !a3)
    {
      return 9;
    }

    if (result == 8 && !a2 && !a3)
    {
      return 10;
    }

    if (result == 9 && !a2 && !a3)
    {
      return 11;
    }

    if (result == 10 && !a2 && !a3)
    {
      return 12;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_100A03D9C(void *a1, uint64_t a2, uint64_t a3)
{
  v10[1] = a3;
  v5 = sub_1005B981C(&qword_101A0C600);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100A061DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100A03F30(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v31 = a3;
  v29 = a2;
  v30 = a4;
  v6 = sub_1005B981C(&qword_101A0C5C8);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v24 = &v21 - v7;
  v8 = sub_1005B981C(&qword_101A0C5D0);
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1005B981C(&qword_101A0C5D8);
  v22 = *(v11 - 8);
  v23 = v11;
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = sub_1005B981C(&qword_101A0C5E0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  sub_100020E58(a1, a1[3]);
  sub_100A05FE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((a4 & 0x10000) != 0)
  {
    if (v31 | v29 || v30)
    {
      LOBYTE(v32) = 2;
      sub_100A06038();
      v19 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v19, v26);
    }

    else
    {
      LOBYTE(v32) = 0;
      sub_100A06134();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v22 + 8))(v13, v23);
    }
  }

  else
  {
    LOBYTE(v32) = 1;
    sub_100A0608C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v32 = v29;
    v33 = v31;
    v34 = a4;
    v35 = BYTE1(v30) & 1;
    sub_100A06188();
    v18 = v28;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v27 + 8))(v10, v18);
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_100A04310()
{
  if (*v0)
  {
    return 0x65707954627573;
  }

  else
  {
    return 0x657079546E69616DLL;
  }
}

uint64_t sub_100A0434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546E69616DLL && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65707954627573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100A04428(uint64_t a1)
{
  v2 = sub_100A061DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A04464(uint64_t a1)
{
  v2 = sub_100A061DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100A044A0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_100A04520()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_100A0457C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100A045F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100A05704(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100A0464C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_100A04694()
{
  result = qword_101A0C578;
  if (!qword_101A0C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C578);
  }

  return result;
}

uint64_t sub_100A046E8(uint64_t a1)
{
  v2 = sub_100A06134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A04724(uint64_t a1)
{
  v2 = sub_100A06134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A04778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657079546D657469 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100A04800(uint64_t a1)
{
  v2 = sub_100A0608C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A0483C(uint64_t a1)
{
  v2 = sub_100A0608C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A04878()
{
  v1 = 0x6574496472616F62;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6472616F62;
  }
}

uint64_t sub_100A048D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A058B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A04900(uint64_t a1)
{
  v2 = sub_100A05FE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A0493C(uint64_t a1)
{
  v2 = sub_100A05FE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A04978(uint64_t a1)
{
  v2 = sub_100A06038();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A049B4(uint64_t a1)
{
  v2 = sub_100A06038();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A049F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100A059D4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 18) = BYTE2(v6) & 1;
  }

  return result;
}

uint64_t sub_100A04A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 0x10000) != 0)
  {
    if (a2 | a1 || a3)
    {
      if (a5 | a4)
      {
        v9 = 0;
      }

      else
      {
        v9 = a6 == 0;
      }

      v8 = !v9;
    }

    else
    {
      if (a5 | a4)
      {
        v7 = 0;
      }

      else
      {
        v7 = a6 == 0;
      }

      v8 = v7;
    }

    if ((a6 & 0x10000) != 0)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((a6 & 0x10000) != 0)
    {
      return 0;
    }

    if ((a3 & 0x100) == 0)
    {
      if ((a6 & 0x100) == 0 && a1 == a4)
      {
        if (a3)
        {
          if (a6)
          {
            return 1;
          }
        }

        else if ((a6 & 1) == 0 && a2 == a5)
        {
          return 1;
        }
      }

      return 0;
    }

    if (!(a2 | a1) && !a3)
    {
      return (a6 & 0x100) != 0 && !(a5 | a4) && !a6;
    }

    if (a1 == 1 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && a4 == 1 && !a5 && !a6;
    }

    if (a1 == 2 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && a4 == 2 && !a5 && !a6;
    }

    if (a1 == 3 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && a4 == 3 && !a5 && !a6;
    }

    if (a1 == 4 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && a4 == 4 && !a5 && !a6;
    }

    if (a1 == 5 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && (a4 != 4 || a5 || a6) && a4 == 5 && !a5 && !a6;
    }

    if (a1 == 6 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && (a4 != 4 || a5 || a6) && (a4 != 5 || a5 || a6) && a4 == 6 && !a5 && !a6;
    }

    if (a1 == 7 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && (a4 != 4 || a5 || a6) && (a4 != 5 || a5 || a6) && (a4 != 6 || a5 || a6) && a4 == 7 && !a5 && !a6;
    }

    if (a1 == 8 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && (a4 != 4 || a5 || a6) && (a4 != 5 || a5 || a6) && (a4 != 6 || a5 || a6) && (a4 != 7 || a5 || a6) && a4 == 8 && !a5 && !a6;
    }

    if (a1 == 9 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && (a4 != 4 || a5 || a6) && (a4 != 5 || a5 || a6) && (a4 != 6 || a5 || a6) && (a4 != 7 || a5 || a6) && (a4 != 8 || a5 || a6) && a4 == 9 && !a5 && !a6;
    }

    if (a1 == 10 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && (a4 != 4 || a5 || a6) && (a4 != 5 || a5 || a6) && (a4 != 6 || a5 || a6) && (a4 != 7 || a5 || a6) && (a4 != 8 || a5 || a6) && (a4 != 9 || a5 || a6) && a4 == 10 && !a5 && !a6;
    }

    if (a1 == 11 && !a2 && !a3)
    {
      return (a6 & 0x100) != 0 && (a5 | a4 || a6) && (a4 != 1 || a5 || a6) && (a4 != 2 || a5 || a6) && (a4 != 3 || a5 || a6) && (a4 != 4 || a5 || a6) && (a4 != 5 || a5 || a6) && (a4 != 6 || a5 || a6) && (a4 != 7 || a5 || a6) && (a4 != 8 || a5 || a6) && (a4 != 9 || a5 || a6) && (a4 != 10 || a5 || a6) && a4 == 11 && !a5 && !a6;
    }

    if ((a6 & 0x100) == 0 || !(a5 | a4) && !a6)
    {
      return 0;
    }

    if (a4 == 1 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 2 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 3 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 4 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 5 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 6 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 7 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 8 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 9 && !a5 && !a6)
    {
      return 0;
    }

    if (a4 == 10 && !a5 && !a6)
    {
      return 0;
    }

    result = 1;
    if (a4 == 11 && !a5 && !a6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100A054D4(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 98:
      result = 14;
      break;
    default:
      result = 15;
      break;
  }

  return result;
}

uint64_t sub_100A0557C(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_100A054D4(a1);
  switch(result)
  {
    case 1:
      if (a2)
      {
        v7 = a1;
      }

      else
      {
        v7 = 0;
      }

      if (a3)
      {
        result = 0;
      }

      else
      {
        result = v7;
      }

      break;
    case 2:
    case 14:
      result = 1;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 10;
      break;
    case 12:
    case 13:
    case 15:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100A05704(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0C5F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100020E58(a1, v7);
  sub_100A061DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

uint64_t sub_100A058B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6472616F62 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574496472616F62 && a2 == 0xE90000000000006DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101574C90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100A059D4(void *a1)
{
  v34 = sub_1005B981C(&qword_101A0C580);
  v39 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v31 - v2;
  v3 = sub_1005B981C(&qword_101A0C588);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  v7 = sub_1005B981C(&qword_101A0C590);
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1005B981C(&qword_101A0C598);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v41 = a1;
  sub_100020E58(a1, v14);
  sub_100A05FE4();
  v15 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_11;
  }

  v32 = v7;
  v33 = 0;
  v17 = v37;
  v16 = v38;
  v18 = v39;
  v40 = v11;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v43 = v19;
  v44 = v19 + 32;
  v45 = 0;
  v46 = v20;
  v21 = sub_10074DC2C();
  if (v21 == 3 || v45 != v46 >> 1)
  {
    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    sub_1005B981C(&qword_101A0AEE0);
    *v26 = &type metadata for CRLSerializableObjectType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v11);
    swift_willThrow();
LABEL_9:
    v23 = v40;
    goto LABEL_10;
  }

  if (!v21)
  {
    LOBYTE(v42) = 0;
    sub_100A06134();
    v28 = v33;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v28)
    {
      (*(v17 + 8))(v9, v32);
      (*(v40 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v11 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v21 == 1)
  {
    LOBYTE(v42) = 1;
    sub_100A0608C();
    v22 = v33;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v40;
    if (!v22)
    {
      sub_100A060E0();
      v24 = v35;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v36 + 8))(v6, v24);
      (*(v23 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v11 = v42;
      goto LABEL_11;
    }

LABEL_10:
    (*(v23 + 8))(v13, v10);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  LOBYTE(v42) = 2;
  sub_100A06038();
  v29 = v33;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v30 = v40;
  if (v29)
  {
    (*(v40 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v18 + 8))(v16, v34);
    (*(v30 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v11 = 1;
  }

LABEL_11:
  sub_100005070(v41);
  return v11;
}

unint64_t sub_100A05FE4()
{
  result = qword_101A0C5A0;
  if (!qword_101A0C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C5A0);
  }

  return result;
}

unint64_t sub_100A06038()
{
  result = qword_101A0C5A8;
  if (!qword_101A0C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C5A8);
  }

  return result;
}

unint64_t sub_100A0608C()
{
  result = qword_101A0C5B0;
  if (!qword_101A0C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C5B0);
  }

  return result;
}

unint64_t sub_100A060E0()
{
  result = qword_101A0C5B8;
  if (!qword_101A0C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C5B8);
  }

  return result;
}

unint64_t sub_100A06134()
{
  result = qword_101A0C5C0;
  if (!qword_101A0C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C5C0);
  }

  return result;
}

unint64_t sub_100A06188()
{
  result = qword_101A0C5E8;
  if (!qword_101A0C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C5E8);
  }

  return result;
}

unint64_t sub_100A061DC()
{
  result = qword_101A0C5F8;
  if (!qword_101A0C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C5F8);
  }

  return result;
}

unint64_t sub_100A06284()
{
  result = qword_101A0C608;
  if (!qword_101A0C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C608);
  }

  return result;
}

unint64_t sub_100A062DC()
{
  result = qword_101A0C610;
  if (!qword_101A0C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C610);
  }

  return result;
}

unint64_t sub_100A06334()
{
  result = qword_101A0C618;
  if (!qword_101A0C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C618);
  }

  return result;
}

unint64_t sub_100A0638C()
{
  result = qword_101A0C620;
  if (!qword_101A0C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C620);
  }

  return result;
}

unint64_t sub_100A063E4()
{
  result = qword_101A0C628;
  if (!qword_101A0C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C628);
  }

  return result;
}

unint64_t sub_100A0643C()
{
  result = qword_101A0C630;
  if (!qword_101A0C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C630);
  }

  return result;
}

unint64_t sub_100A06494()
{
  result = qword_101A0C638;
  if (!qword_101A0C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C638);
  }

  return result;
}

unint64_t sub_100A064EC()
{
  result = qword_101A0C640;
  if (!qword_101A0C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C640);
  }

  return result;
}

unint64_t sub_100A06544()
{
  result = qword_101A0C648;
  if (!qword_101A0C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C648);
  }

  return result;
}

unint64_t sub_100A0659C()
{
  result = qword_101A0C650;
  if (!qword_101A0C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C650);
  }

  return result;
}

unint64_t sub_100A065F4()
{
  result = qword_101A0C658;
  if (!qword_101A0C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C658);
  }

  return result;
}

unint64_t sub_100A0664C()
{
  result = qword_101A0C660;
  if (!qword_101A0C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C660);
  }

  return result;
}

unint64_t sub_100A066A4()
{
  result = qword_101A0C668;
  if (!qword_101A0C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C668);
  }

  return result;
}

void sub_100A066F8(char *a1, char *a2)
{
  v5 = sub_1005B981C(&unk_101A096B0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v38 - v6);
  v8 = sub_1005B981C(&unk_101A0DAB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  sub_100960E34();
  if (v11)
  {
    v12 = [v11 selectedRange];
    v14 = v13;
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v41 = [Strong selectionModelTranslator];

  if (!v41)
  {
    return;
  }

  v39 = a2;
  v17 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v18 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = [v41 selectionPathForRange:v12 onStorage:v14 headCursorAffinity:v18 tailCursorAffinity:{2, 2}];
  if (!v19)
  {
    v24 = v41;
    goto LABEL_21;
  }

  v40 = v19;
  v20 = [a1 start];
  v21 = *&v20[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v21 == NSNotFound.getter())
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = 0;
    goto LABEL_12;
  }

  v22 = *&a1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v25 = *&a1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  v23 = v25 - v22;
  if (__OFSUB__(v25, v22))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_12:
  v26 = *(*(v2 + v17) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v26)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v27 = [v41 selectionPathForRange:v22 onStorage:v23 headCursorAffinity:v26 tailCursorAffinity:{1, 2}];
  if (v27)
  {
    v28 = v27;
    v29 = objc_allocWithZone(CRLWPReplaceTextCommandSelectionBehavior);
    v30 = [v29 initWithCommitSelectionPath:v40 forwardSelectionPath:v28 reverseSelectionPath:v28 usePersistableCommitSelectionPath:1];
    v31 = sub_1005B981C(&qword_101A0D850);
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    v32 = sub_1005B981C(&qword_101A06188);
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    v33 = sub_1009512C8(a1, v39, v10, v7);
    sub_10000CAAC(v7, &unk_101A096B0);
    sub_10000CAAC(v10, &unk_101A0DAB0);
    *(v33 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools) = sub_100D34670() & 1;
    *(v33 + OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands) = 1;
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34 && (v35 = v34, v36 = [v34 commandController], v35, v36))
    {
      v37 = v30;
      sub_100888700(v33, 0, v30, 4, 0);
    }

    else
    {
    }

    return;
  }

  v24 = v40;
LABEL_21:
}

uint64_t sub_100A06B7C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100A06BE4()
{
  v1 = inited;
  if ([inited aa_isAccountClass:AAAccountClassPrimary])
  {
    v2 = [inited aa_altDSID];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }
  }

  else
  {
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v2 = [v1 accountDescription];
    if (v2)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v6 = v2;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = &type metadata for String;
  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v11;
  *(inited + 40) = v8;
  v47 = objc_opt_self();
  LODWORD(v11) = [v47 _atomicIncrementAssertCount];
  v48 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v48);
  StaticString.description.getter();
  v12 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10146CA70;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v11;
  v20 = sub_1005CF000();
  *(v19 + 96) = v20;
  v21 = sub_1005CF04C();
  *(v19 + 72) = v12;
  *(v19 + 136) = v9;
  *(v19 + 144) = v10;
  *(v19 + 104) = v21;
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 152) = 17;
  v22 = v48;
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v22;
  v23 = v12;
  v24 = v22;
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);

  v26 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v26, "No stable account identifier found for %{public}@", 49, 2, inited);

  sub_10063DF98(inited, "No stable account identifier found for %{public}@");
  type metadata accessor for __VaListBuilder();
  v27 = swift_allocObject();
  v27[2] = 8;
  v27[3] = 0;
  v12 = v27 + 3;
  v27[4] = 0;
  v27[5] = 0;
  v28 = *(inited + 16);
  if (v28)
  {
    v15 = 0;
    v17 = inited + 32;
    v9 = 40;
    while (1)
    {
      v29 = (v17 + 40 * v15);
      v10 = v29[3];
      v11 = v29[4];
      inited = sub_100020E58(v29, v10);
      v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v31 = *v12;
      v32 = *(v30 + 16);
      v33 = __OFADD__(*v12, v32);
      v34 = *v12 + v32;
      if (v33)
      {
        goto LABEL_33;
      }

      v10 = v30;
      inited = v27[4];
      if (inited >= v34)
      {
        goto LABEL_25;
      }

      if (inited + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v11 = v27[5];
      if (2 * inited > v34)
      {
        v34 = 2 * inited;
      }

      v27[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v35 = swift_slowAlloc();
      v27[5] = v35;
      if (v11)
      {
        break;
      }

LABEL_26:
      if (!v35)
      {
        __break(1u);
        goto LABEL_38;
      }

      v37 = *(v10 + 16);
      if (v37)
      {
        v38 = (v10 + 32);
        v39 = *v12;
        while (1)
        {
          v40 = *v38++;
          *&v35[8 * v39] = v40;
          v39 = *v12 + 1;
          if (__OFADD__(*v12, 1))
          {
            break;
          }

          *v12 = v39;
          if (!--v37)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_10:

      if (++v15 == v28)
      {
        goto LABEL_38;
      }
    }

    if (v35 != v11 || v35 >= &v11[8 * v31])
    {
      memmove(v35, v11, 8 * v31);
    }

    inited = v27;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_25:
    v35 = v27[5];
    goto LABEL_26;
  }

LABEL_38:
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v47 handleFailureInFunction:v42 file:v43 lineNumber:17 isFatal:1 format:v44 args:v41];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v45, v46);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100A07184(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Freeform34CRLMiniFormatterStrokeDataProvider_strokeChangingState;
  if (*(v1 + OBJC_IVAR____TtC8Freeform34CRLMiniFormatterStrokeDataProvider_strokeChangingState + 8) != 1)
  {
LABEL_7:
    if ([*(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController) mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLStrokeEditor])
    {
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        [v7 didChangeStrokeWidth:a1];
      }

      swift_unknownObjectRelease();
    }

    *v3 = a1;
    *(v3 + 8) = 0;
    goto LABEL_12;
  }

  v4 = *v3;
  v5 = [*(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController) mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLStrokeEditor];
  if (v4 != 0.0)
  {
    if (v5)
    {
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        [v6 beginChangingStrokeWidth:a1];
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      [v8 applyStrokeWidth:a1];
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
  sub_100A07740();
}

void sub_100A072F0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_100A07D44();
  if (v9 != 1)
  {
    v10 = v9;
    sub_100A0816C();
    if ((v12 & 0xFF00) == 0x200)
    {

      sub_1000505D0(v10);
    }

    else
    {
      if (v10)
      {
        v13 = v10;
      }

      else
      {
        v14 = v11;
        v15 = v12;
        if (a4)
        {
          v16 = a4;
        }

        else
        {
          v16 = [objc_opt_self() blackColor];
        }

        v13 = v16;
        LOBYTE(v12) = v15;
        v11 = v14;
      }

      v17 = *&a2;
      if (a3)
      {
        v17 = 1.0;
      }

      if (v12)
      {
        v18 = v17;
      }

      else
      {
        v18 = v11;
      }

      v19 = objc_opt_self();
      v20 = v10;
      v21 = [v19 strokeWithColor:v13 width:a1 pattern:v18];
      if ([*(v4 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController) mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLStrokeEditor])
      {
        v22 = swift_dynamicCastObjCProtocolConditional();
        if (v22)
        {
          v23 = v22;
          v24 = v21;
          [v23 applyStroke:v24];
        }

        swift_unknownObjectRelease();
      }

      sub_100A07740();

      sub_1000505D0(v10);
    }
  }
}

void sub_100A074E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_100A07D44();
  if (v9 != 1)
  {
    v10 = v9;
    sub_100A0816C();
    if ((v12 & 0xFF00) == 0x200)
    {

      sub_1000505D0(v10);
    }

    else
    {
      if (v10)
      {
        v13 = v10;
      }

      else
      {
        v14 = v11;
        v15 = v12;
        if (a5)
        {
          v16 = a5;
        }

        else
        {
          v16 = [objc_opt_self() blackColor];
        }

        v13 = v16;
        LOBYTE(v12) = v15;
        v11 = v14;
      }

      v17 = *&a3;
      if (a4)
      {
        v17 = 1.0;
      }

      if (v12)
      {
        v18 = v17;
      }

      else
      {
        v18 = v11;
      }

      sub_100006370(0, &qword_101A0C7F8);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = v10;
      v21 = String._bridgeToObjectiveC()();
      v22 = [ObjCClassFromMetadata strokeWithName:v21 color:v13 width:v18];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006370(0, &qword_101A0C7F0);
      if (swift_dynamicCast())
      {
        if ([*(v5 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController) mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLStrokeEditor])
        {
          v23 = swift_dynamicCastObjCProtocolConditional();
          if (v23)
          {
            [v23 applyStroke:{v24, &OBJC_PROTOCOL___CRLStrokeEditor}];
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      sub_100A07740();

      sub_1000505D0(v10);
    }
  }
}

void sub_100A07740()
{
  v1 = sub_100A07960();
  if (v1 != 1)
  {
    if (v2)
    {

      sub_1000505D0(v1);
    }

    else if (v1)
    {
      v3 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
      v4 = v1;
      sub_1000505E0(v1);
      v6 = v4;
      v5 = String._bridgeToObjectiveC()();
      [v3 setObject:v6 forInspectorPropertyKey:v5];

      sub_1000505D0(v4);
      sub_1000505D0(v4);
    }
  }
}

uint64_t sub_100A07844()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForInspectorPropertyKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100006370(0, &qword_101A0C7F0);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1005E09AC(v8);
    return 0;
  }
}

uint64_t sub_100A07960()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  sub_100006370(0, &qword_101A0C7E8);
  if (![v1 mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()])
  {
    return 1;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  v3 = [v2 styledItems];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 1;
  }

  type metadata accessor for CRLStyledItem();
  sub_1009CCDDC();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1006764D4(v4);

  LODWORD(v7) = v5 < 0 || (v5 & 0x4000000000000000) != 0;
  if (v7 == 1)
  {
    goto LABEL_42;
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {

        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(v5 + 16))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          return result;
        }

        v9 = *(v5 + 32);

        v10 = v9;
      }

      v11 = v10;
      result = (*((swift_isaMask & *v10) + 0x4D8))();
      if (v8 < 0)
      {
        goto LABEL_49;
      }

      v12 = result;
      if (v7)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 1)
        {
          goto LABEL_47;
        }

        v13 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v13 = *(v5 + 16);
        if (!v13)
        {
          goto LABEL_47;
        }
      }

      if (v13 < v8)
      {
        goto LABEL_48;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {

        if (v8 != 1)
        {
          v14 = 1;
          do
          {
            v15 = v14 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v14);
            v14 = v15;
          }

          while (v8 != v15);
        }
      }

      else
      {
      }

      if (v7)
      {
        v16 = _CocoaArrayWrapper.subscript.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v8 = v22 >> 1;
        v5 = v16;
        if (v20 == v8)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v18 = (v5 + 32);
        v20 = 1;
        if (v8 == 1)
        {
LABEL_37:

LABEL_39:
          swift_unknownObjectRelease();
          return v12;
        }
      }

      v28 = v11;
      while (v20 < v8)
      {
        v23 = *&v18[8 * v20];
        v7 = *((swift_isaMask & *v23) + 0x4D8);
        v24 = v23;
        v25 = v7();

        if (v25)
        {
          if (!v12)
          {

            swift_unknownObjectRelease();
            return v12;
          }

          sub_100006370(0, &qword_101A0C7F0);
          v7 = v12;
          v26 = v25;
          v27 = static NSObject.== infix(_:_:)();

          if ((v27 & 1) == 0)
          {
LABEL_35:

            swift_unknownObjectRelease();
            return v12;
          }
        }

        else if (v12)
        {
          goto LABEL_35;
        }

        if (v8 == ++v20)
        {

          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_42:
      result = _CocoaArrayWrapper.endIndex.getter();
      v8 = result;
    }

    while (result);
  }

  return 0;
}

void sub_100A07D60(SEL *a1, unint64_t *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  sub_100006370(0, &qword_101A0C7E8);
  if (![v5 mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()])
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
    return;
  }

  v7 = [v6 styledItems];
  swift_unknownObjectRelease();
  if (!v7)
  {
    return;
  }

  type metadata accessor for CRLStyledItem();
  sub_1009CCDDC();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_1006764D4(v8);

  LODWORD(v10) = v9 < 0 || (v9 & 0x4000000000000000) != 0;
  if (v10 == 1)
  {
    goto LABEL_49;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {
LABEL_50:

    return;
  }

  while (1)
  {
    v35 = a2;
    if ((v9 & 0xC000000000000001) == 0)
    {
      break;
    }

    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    a2 = v13;
    v14 = (*((swift_isaMask & *v13) + 0x4D8))();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 *a1];

      if (v11 < 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = 0;
      if (v11 < 0)
      {
LABEL_27:
        __break(1u);
LABEL_28:

        goto LABEL_29;
      }
    }

    if (v10)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_53;
      }

      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *(v9 + 16);
      if (!v17)
      {
        goto LABEL_53;
      }
    }

    if (v17 < v11)
    {
      goto LABEL_54;
    }

    if ((v9 & 0xC000000000000001) == 0)
    {
      goto LABEL_28;
    }

    if (v11 != 1)
    {
      v18 = 1;
      do
      {
        v19 = v18 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v18);
        v18 = v19;
      }

      while (v11 != v19);
    }

LABEL_29:

    if (v10)
    {
      v20 = _CocoaArrayWrapper.subscript.getter();
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v11 = v26 >> 1;
      v9 = v20;
    }

    else
    {
      v22 = (v9 + 32);
      v24 = 1;
    }

    v27 = a2;
    if (v24 == v11)
    {
LABEL_45:

      swift_unknownObjectRelease();
      return;
    }

    while (v24 < v11)
    {
      v28 = *&v22[8 * v24];
      v29 = *((swift_isaMask & *v28) + 0x4D8);
      v10 = ((swift_isaMask & *v28) + 1240);
      v30 = v28;
      v31 = v29();
      if (v31)
      {
        v32 = v31;
        v10 = [v31 *a1];

        if (v10)
        {
          if (!v16)
          {

LABEL_47:
            swift_unknownObjectRelease();
            return;
          }

          sub_100006370(0, v35);
          v33 = v16;
          v10 = v10;
          v34 = static NSObject.== infix(_:_:)();

          if ((v34 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if (v16)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_47;
        }
      }

      if (v11 == ++v24)
      {
        v27 = a2;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_49:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      goto LABEL_50;
    }
  }

  if (*(v9 + 16))
  {
    v12 = *(v9 + 32);

    v13 = v12;
    goto LABEL_12;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_100A0816C()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform34CRLMiniFormatterStrokeDataProvider_strokeChangingState + 8) & 1) == 0)
  {
    return;
  }

  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  sub_100006370(0, &qword_101A0C7E8);
  if (![v1 mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()])
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return;
  }

  v3 = [v2 styledItems];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return;
  }

  type metadata accessor for CRLStyledItem();
  sub_1009CCDDC();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1006764D4(v4);

  LODWORD(v6) = v5 < 0 || (v5 & 0x4000000000000000) != 0;
  if (v6 == 1)
  {
    goto LABEL_47;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
LABEL_48:

    return;
  }

  while ((v5 & 0xC000000000000001) != 0)
  {

    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
    v10 = v9;
    v11 = (*((swift_isaMask & *v9) + 0x4D8))();
    v12 = v11;
    if (v11)
    {
      [v11 width];
      v14 = v13;

      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    if (v7 < 0)
    {
      goto LABEL_53;
    }

    if (v6)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_51;
      }

      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *(v5 + 16);
      if (!v16)
      {
        goto LABEL_51;
      }
    }

    if (v16 < v7)
    {
      goto LABEL_52;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {

      if (v7 != 1)
      {
        v17 = 1;
        do
        {
          v18 = v17 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v17);
          v17 = v18;
        }

        while (v7 != v18);
      }
    }

    else
    {
    }

    if (v6)
    {
      v19 = _CocoaArrayWrapper.subscript.getter();
      v21 = v20;
      v6 = v22;
      v24 = v23;

      v7 = v24 >> 1;
      v5 = v19;
      if (v6 != v7)
      {
        goto LABEL_40;
      }

LABEL_44:

      swift_unknownObjectRelease();
      return;
    }

    v21 = (v5 + 32);
    v6 = 1;
    if (v7 == 1)
    {
      goto LABEL_44;
    }

LABEL_40:
    while (v6 < v7)
    {
      v25 = *&v21[8 * v6];
      v26 = *((swift_isaMask & *v25) + 0x4D8);
      v27 = v25;
      v28 = v26();
      if (v28)
      {
        v29 = v28;
        [v28 width];
        v31 = v30;

        if (!v12 || v31 != v15)
        {
          goto LABEL_44;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_44;
        }
      }

      if (v7 == ++v6)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_47:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_48;
    }
  }

  if (*(v5 + 16))
  {
    v8 = *(v5 + 32);

    v9 = v8;
    goto LABEL_13;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_100A08580()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A0C7E0))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    if ([v4 infosAreLines])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 infosAreConnectionLines];
    }
  }

  else
  {
    v6 = 0;
  }

  swift_unknownObjectRelease();
  return v6;
}

id sub_100A08654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterStrokeDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A086BC()
{
  sub_100A08C84();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_100A0875C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterUSDZBuilder_usdzDataProvider);

    v3 = *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    if (type metadata accessor for CRLUSDZEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v5 = [v3 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      [v6 showMediaReplaceUI:v2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100A08840()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100A08904()
{
  sub_100A08C84();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

void sub_100A089A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterUSDZBuilder_usdzDataProvider);

    v3 = *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    if (type metadata accessor for CRLUSDZEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v5 = [v3 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    if (swift_dynamicCastClass())
    {
      sub_1008E985C();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100A08A90()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterUSDZBuilder_usdzDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (type metadata accessor for CRLUSDZEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  if (swift_dynamicCastClass())
  {
    v4 = sub_1008E91E8();
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_100A08B3C(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, v9);
  type metadata accessor for CRLUSDZItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_100911E34();
  if (!v4)
  {

LABEL_5:
    v6 = sub_1009C5EDC(a1, a2);
    return v6 & 1;
  }

  v5 = sub_10079DB40(v8, v4);

  v6 = v5;
  return v6 & 1;
}

id sub_100A08C1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterUSDZBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100A08C84()
{
  result = qword_1019F6190;
  if (!qword_1019F6190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F6190);
  }

  return result;
}

uint64_t sub_100A08D00()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_100A08E14;
  v2 = swift_continuation_init();
  v0[17] = sub_1005B981C(&qword_101A14AA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = *"";
  v0[12] = sub_100675B28;
  v0[13] = &unk_1018916F8;
  v0[14] = v2;
  [v1 importBoardItemsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100A08E14()
{

  return _swift_task_switch(sub_100A08EF4, 0, 0);
}

uint64_t sub_100A08EF4()
{
  v1 = [*(v0 + 144) boardItems];
  type metadata accessor for CRLBoardItem(0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 144);
  if (v3)
  {
    v5 = [v4 boardItems];
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = *(v0 + 8);

    return v7(v6);
  }

  else
  {
    v9 = [v4 errors];
    sub_1005B981C(&unk_1019F6B40);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v13 = [*(v0 + 144) errors];
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10072BCBC();
    swift_allocError();
    *v14 = v12;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100A090E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100A09108, 0, 0);
}

uint64_t sub_100A09108()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = *(*(*sub_100020E58(*(v0 + 24), *(*(v0 + 24) + 24)) + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
    v3 = objc_allocWithZone(CRLMultipleItemImporter);
    type metadata accessor for CRLPreinsertionAssetWrapper();
    v4 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v6 = [v3 initWithDataWrappers:isa boardItemFactory:v4 importAnimatedGIFsAsImages:0];
    *(v0 + 32) = v6;

    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_100A092C8;

    return sub_100A08CE0(v6);
  }

  sub_10072BCBC();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100A092C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_100A09458;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_100A093F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A093F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_100A09458()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A094BC(uint64_t a1, uint64_t a2)
{
  v2[31] = a1;
  v2[32] = a2;
  v3 = type metadata accessor for URL();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_100A09588, 0, 0);
}

uint64_t sub_100A09588()
{
  v58 = v0;
  v1 = *(v0 + 248);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 272);
    v4 = *(v3 + 16);
    v3 += 16;
    v55 = v4;
    v50 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v5 = v1 + v50;
    v6 = (v3 + 16);
    v48 = (v3 - 8);
    v7 = *(v3 + 56);
    v8 = "File url backed assets must be imported using a CRLPreinsertionAssetWrapper";
    v56 = _swiftEmptyArrayStorage;
    v49 = (v3 + 16);
    v4(*(v0 + 288), v1 + v50, *(v0 + 264));
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        v52 = v2;
        v51 = objc_opt_self();
        v9 = [v51 _atomicIncrementAssertCount];
        v57 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v57);
        StaticString.description.getter();
        v10 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v11 = String._bridgeToObjectiveC()();

        v12 = [v11 lastPathComponent];

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v16 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v9;
        v18 = sub_1005CF000();
        *(inited + 96) = v18;
        v19 = sub_1005CF04C();
        *(inited + 104) = v19;
        *(inited + 72) = v10;
        *(inited + 136) = &type metadata for String;
        v20 = sub_1000053B0();
        *(inited + 112) = v13;
        *(inited + 120) = v15;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v20;
        *(inited + 152) = 17;
        v21 = v57;
        *(inited + 216) = v18;
        *(inited + 224) = v19;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v21;
        v22 = v10;
        v23 = v21;
        v24 = static os_log_type_t.error.getter();
        sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v25 = static os_log_type_t.error.getter();
        sub_100005404(v16, &_mh_execute_header, v25, "File url backed assets must be imported using a CRLPreinsertionAssetWrapper", 75, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v26 = swift_allocObject();
        v26[2] = 8;
        v26[3] = 0;
        v26[4] = 0;
        v26[5] = 0;
        v27 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v28 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v29 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v30 = String._bridgeToObjectiveC()();

        [v51 handleFailureInFunction:v28 file:v29 lineNumber:17 isFatal:0 format:v30 args:v27];

        v6 = v49;
        v7 = v54;
        v8 = "File url backed assets must be imported using a CRLPreinsertionAssetWrapper";
        v2 = v52;
        v0 = v53;
      }

      if (URL.isFileURL.getter())
      {
        (*v48)(*(v0 + 288), *(v0 + 264));
      }

      else
      {
        v31 = v8;
        v32 = *v6;
        (*v6)(*(v0 + 280), *(v0 + 288), *(v0 + 264));
        v33 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100776944(0, v56[2] + 1, 1);
          v33 = v56;
        }

        v35 = v33[2];
        v34 = v33[3];
        if (v35 >= v34 >> 1)
        {
          sub_100776944(v34 > 1, v35 + 1, 1);
          v33 = v56;
        }

        v0 = v53;
        v36 = *(v53 + 280);
        v37 = *(v53 + 264);
        v33[2] = v35 + 1;
        v56 = v33;
        v7 = v54;
        v32(v33 + v50 + v35 * v54, v36, v37);
        v8 = v31;
      }

      v5 += v7;
      if (!--v2)
      {
        break;
      }

      v55(*(v0 + 288), v5, *(v0 + 264));
    }
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
  }

  v38 = v56[2];

  if (v38)
  {
    v39 = *(*(*sub_100020E58(*(v0 + 256), *(*(v0 + 256) + 24)) + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
    v40 = objc_allocWithZone(CRLMultipleItemImporter);
    v41 = v39;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v43 = [v40 initWithURLs:isa boardItemFactory:v41];
    *(v0 + 296) = v43;

    v44 = swift_task_alloc();
    *(v0 + 304) = v44;
    *v44 = v0;
    v44[1] = sub_100A09C50;

    return sub_100A08CE0(v43);
  }

  else
  {
    sub_10072BCBC();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_100A09C50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_100A09DF4;
  }

  else
  {
    *(v4 + 320) = a1;
    v5 = sub_100A09D78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A09D78()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 320);

  return v1(v2);
}

uint64_t sub_100A09DF4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100A09F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_id;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  *&v7[OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_imageData] = a2;
  *&v7[OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_thumbnailData] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

void sub_100A0A368(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLImageItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        sub_100BB4A48(*(v5 + OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_imageData), *(v5 + OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_thumbnailData));
        v13 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, a3);
      }

      return;
    }
  }

  v14 = objc_opt_self();
  v15 = [v14 _atomicIncrementAssertCount];
  v39 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v39);
  StaticString.description.getter();
  v16 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v17 lastPathComponent];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v15;
  v24 = sub_1005CF000();
  *(inited + 96) = v24;
  v25 = sub_1005CF04C();
  *(inited + 104) = v25;
  *(inited + 72) = v16;
  *(inited + 136) = &type metadata for String;
  v26 = sub_1000053B0();
  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v26;
  *(inited + 152) = 29;
  v27 = v39;
  *(inited + 216) = v24;
  *(inited + 224) = v25;
  *(inited + 192) = v27;
  v28 = v16;
  v29 = v27;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v31 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v31, "Unable to retrieve image item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve image item");
  type metadata accessor for __VaListBuilder();
  v32 = swift_allocObject();
  v32[2] = 8;
  v32[3] = 0;
  v32[4] = 0;
  v32[5] = 0;
  v33 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  [v14 handleFailureInFunction:v34 file:v35 lineNumber:29 isFatal:1 format:v36 args:v33];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v37, v38);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100A0A838()
{
  v1 = OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_thumbnailData);
}

id sub_100A0A8C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetImageMedia();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetImageMedia()
{
  result = qword_101A0C8B8;
  if (!qword_101A0C8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A0A9D8()
{
  result = type metadata accessor for UUID();
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

id sub_100A0AC3C(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC8Freeform26CRLCommandDeleteBoardItems_actionString];
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *v5 = v10;
  v5[1] = v12;
  *&v2[OBJC_IVAR____TtC8Freeform26CRLCommandDeleteBoardItems_boardItems] = a1;
  v2[OBJC_IVAR____TtC8Freeform26CRLCommandDeleteBoardItems_canDeleteNewlyCreatedItems] = a2;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CRLCommandDeleteBoardItems();
  return objc_msgSendSuper2(&v14, "init");
}

void sub_100A0AF0C(uint64_t a1, uint64_t a2)
{
  v266 = a2;
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v256 = &v245 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v267 = *(v5 - 8);
  __chkstk_darwin(v5);
  v254 = &v245 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v245 - v8);
  __chkstk_darwin(v10);
  v262 = &v245 - v11;
  __chkstk_darwin(v12);
  v261 = &v245 - v13;
  __chkstk_darwin(v14);
  v275 = &v245 - v15;
  __chkstk_darwin(v16);
  Strong = &v245 - v17;
  if (qword_1019F22B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v258 = v9;
    v9 = static OS_os_log.boardItemLifecycle;
    v19 = static os_log_type_t.default.getter();
    v260 = v9;
    sub_100005404(v9, &_mh_execute_header, v19, "⭕ CRLCommandDeleteBoardItems commit() begin", 45, 0, _swiftEmptyArrayStorage);
    v20 = sub_100BD6E7C(_swiftEmptyArrayStorage);
    v21 = v20;
    v248 = v2;
    v22 = *(v2 + OBJC_IVAR____TtC8Freeform26CRLCommandDeleteBoardItems_boardItems);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = v20;

      __CocoaSet.makeIterator()();
      v9 = type metadata accessor for CRLBoardItem(0);
      sub_100A0CF5C(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      Set.Iterator.init(_cocoa:)();
      v21 = v23;
      v22 = v279[32];
      v264 = v279[33];
      v24 = v279[34];
      v25 = v279[35];
      v26 = v279[36];
    }

    else
    {
      v27 = -1 << *(v22 + 32);
      v28 = *(v22 + 56);
      v264 = (v22 + 56);
      v29 = ~v27;
      v30 = -v27;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v26 = (v31 & v28);

      v24 = v29;
      v25 = 0;
    }

    *&v259 = v24;
    v263 = (v24 + 64) >> 6;
    v276 = v267 + 16;
    v277 = (v267 + 8);
    v278 = v5;
    v265 = v22;
    v255 = v21;
    if ((v22 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        v36 = __CocoaSet.Iterator.next()();
        if (!v36)
        {
          goto LABEL_37;
        }

        v280 = v36;
        type metadata accessor for CRLBoardItem(0);
        swift_dynamicCast();
        v35 = v279[0];
        v2 = v25;
        v34 = v26;
        if (!v279[0])
        {
          goto LABEL_37;
        }

LABEL_17:
        v269 = v34;
        v270 = v2;
        v37 = [v35 parentContainerItem];
        if (!v37)
        {
          v139 = v35;
          Strong = swift_unknownObjectWeakLoadStrong();
          v277 = sub_1005B981C(&qword_1019F54E0);
          if (Strong)
          {
            goto LABEL_141;
          }

          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v141 = [v139 description];
          v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v144 = v143;

          *(inited + 56) = &type metadata for String;
          v145 = sub_1000053B0();
          *(inited + 32) = v142;
          v278 = inited + 32;
          v146 = v145;
          *(inited + 64) = v145;
          *(inited + 40) = v144;
          v275 = objc_opt_self();
          LODWORD(v276) = [v275 _atomicIncrementAssertCount];
          v279[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(inited, v279);
          StaticString.description.getter();
          v147 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v148 = String._bridgeToObjectiveC()();

          v149 = [v148 lastPathComponent];

          v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v152 = v151;

          if (qword_1019F20A0 != -1)
          {
            goto LABEL_181;
          }

          goto LABEL_116;
        }

        v38 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs;
        v271 = v37;
        v39 = *&v37[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs];
        if (!v39)
        {
          v40 = v271;
          sub_10096C7D4();
          v39 = *(v40 + v38);
        }

        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = _swiftEmptySetSingleton;
        }

        v42 = *((swift_isaMask & *v35) + 0x88);
        v268 = v35;
        v42();
        if (!v41[2])
        {
          goto LABEL_176;
        }

        sub_100A0CF5C(&qword_1019FB870, &type metadata accessor for UUID);

        v43 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v44 = -1 << *(v41 + 32);
        v45 = v43 & ~v44;
        v273 = (v41 + 7);
        if (((*(v41 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v45) & 1) == 0)
        {
          break;
        }

        v272 = ~v44;
        v274 = *(v267 + 72);
        v46 = *(v267 + 16);
        while (1)
        {
          v47 = v41;
          v48 = v275;
          v49 = v278;
          v46(v275, v41[6] + v274 * v45, v278);
          sub_100A0CF5C(&qword_1019F37C0, &type metadata accessor for UUID);
          v50 = Strong;
          v51 = dispatch thunk of static Equatable.== infix(_:_:)();
          v52 = *v277;
          (*v277)(v48, v49);
          if (v51)
          {
            break;
          }

          v45 = (v45 + 1) & v272;
          Strong = v50;
          v41 = v47;
          if (((*(v273 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_177;
          }
        }

        v53 = v278;
        v52(v50);
        v54 = v268;
        v55 = v271;
        if (*(v255 + 16) && (v56 = sub_1007C8CE8(v271), (v57 & 1) != 0))
        {
          v279[0] = *(*(v255 + 56) + 8 * v56);
        }

        else
        {
          v279[0] = _swiftEmptyArrayStorage;
        }

        v9 = v54;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        Strong = v50;
        if (*((v279[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v279[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v58 = v279[0];
        v59 = v255;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v280 = v59;
        sub_100A9EB50(v58, v55, isUniquelyReferenced_nonNull_native);

        v26 = v269;
        v25 = v270;
        v22 = v265;
        v5 = v53;
        v255 = v280;
        if ((v265 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

LABEL_177:

      (*v277)(Strong, v278);
      v152 = objc_opt_self();
      v221 = [v152 _atomicIncrementAssertCount];
      v279[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v279);
      StaticString.description.getter();
      v222 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v223 = String._bridgeToObjectiveC()();

      v224 = [v223 lastPathComponent];

      v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v227 = v226;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v228 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v229 = swift_allocObject();
      *(v229 + 16) = xmmword_10146CA70;
      *(v229 + 56) = &type metadata for Int32;
      *(v229 + 64) = &protocol witness table for Int32;
      *(v229 + 32) = v221;
      v230 = sub_1005CF000();
      *(v229 + 96) = v230;
      v146 = sub_100A0CF5C(&qword_1019F52E0, sub_1005CF000);
      *(v229 + 104) = v146;
      *(v229 + 72) = v222;
      *(v229 + 136) = &type metadata for String;
      v231 = sub_1000053B0();
      *(v229 + 112) = v225;
      *(v229 + 120) = v227;
      *(v229 + 176) = &type metadata for UInt;
      *(v229 + 184) = &protocol witness table for UInt;
      *(v229 + 144) = v231;
      *(v229 + 152) = 36;
      v232 = v279[0];
      *(v229 + 216) = v230;
      *(v229 + 224) = v146;
      *(v229 + 192) = v232;
      v233 = v222;
      v234 = v232;
      v235 = static os_log_type_t.error.getter();
      sub_100005404(v228, &_mh_execute_header, v235, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v229);

      v236 = static os_log_type_t.error.getter();
      sub_100005404(v228, &_mh_execute_header, v236, "Board item being deleted should be a child of its parent container.", 67, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Board item being deleted should be a child of its parent container.");
      type metadata accessor for __VaListBuilder();
      v237 = swift_allocObject();
      v237[2] = 8;
      v237[3] = 0;
      v237[4] = 0;
      v237[5] = 0;
      v150 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v238 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v239 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      inited = v240;
      v147 = String._bridgeToObjectiveC()();

      [v152 handleFailureInFunction:v238 file:v239 lineNumber:36 isFatal:1 format:v147 args:v150];

      while (1)
      {

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v241, v242);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_181:
        swift_once();
LABEL_116:
        v153 = static OS_os_log.crlAssert;
        v154 = swift_initStackObject();
        *(v154 + 16) = xmmword_10146CA70;
        *(v154 + 56) = &type metadata for Int32;
        *(v154 + 64) = &protocol witness table for Int32;
        *(v154 + 32) = v276;
        v155 = sub_1005CF000();
        *(v154 + 96) = v155;
        v156 = sub_100A0CF5C(&qword_1019F52E0, sub_1005CF000);
        *(v154 + 72) = v147;
        *(v154 + 136) = &type metadata for String;
        *(v154 + 144) = v146;
        *(v154 + 104) = v156;
        *(v154 + 112) = v150;
        *(v154 + 120) = v152;
        *(v154 + 176) = &type metadata for UInt;
        *(v154 + 184) = &protocol witness table for UInt;
        *(v154 + 152) = 45;
        v157 = v279[0];
        *(v154 + 216) = v155;
        *(v154 + 224) = v156;
        *(v154 + 192) = v157;
        v158 = v147;
        v159 = v157;
        v160 = static os_log_type_t.error.getter();
        sub_100005404(v153, &_mh_execute_header, v160, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v154);

        v161 = static os_log_type_t.error.getter();
        sub_100005404(v153, &_mh_execute_header, v161, "Trying to delete a board item (%{public}@) which has no parent.", 63, 2, inited);

        sub_10063DF98(inited, "Trying to delete a board item (%{public}@) which has no parent.");
        type metadata accessor for __VaListBuilder();
        v150 = swift_allocObject();
        v150[2] = 8;
        v150[3] = 0;
        Strong = (v150 + 3);
        v150[4] = 0;
        v150[5] = 0;
        v162 = *(inited + 16);
        if (v162)
        {
          v163 = 0;
          while (1)
          {
            v164 = (v278 + 40 * v163);
            v139 = v164[3];
            sub_100020E58(v164, v139);
            v165 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
            v146 = *Strong;
            v166 = *(v165 + 16);
            v167 = __OFADD__(*Strong, v166);
            v168 = *Strong + v166;
            if (v167)
            {
              goto LABEL_170;
            }

            v169 = v165;
            v170 = v150[4];
            if (v170 >= v168)
            {
              goto LABEL_133;
            }

            v171 = v165;
            if (v170 + 0x4000000000000000 < 0)
            {
              goto LABEL_172;
            }

            v139 = v150[5];
            v172 = 2 * v170;
            if (2 * v170 <= v168)
            {
              v172 = v168;
            }

            v150[4] = v172;
            if ((v172 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_174;
            }

            v173 = swift_slowAlloc();
            v150[5] = v173;
            if (!v139)
            {
              break;
            }

            if (v173 != v139 || v173 >= &v139[8 * v146])
            {
              memmove(v173, v139, 8 * v146);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v169 = v171;
LABEL_133:
            v173 = v150[5];
            if (!v173)
            {
              goto LABEL_140;
            }

LABEL_134:
            v175 = *(v169 + 16);
            if (v175)
            {
              v176 = (v169 + 32);
              v177 = *Strong;
              while (1)
              {
                v178 = *v176++;
                *&v173[8 * v177] = v178;
                v177 = *Strong + 1;
                if (__OFADD__(*Strong, 1))
                {
                  break;
                }

                *Strong = v177;
                if (!--v175)
                {
                  goto LABEL_118;
                }
              }

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
LABEL_173:
              __break(1u);
LABEL_174:
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:

              goto LABEL_177;
            }

LABEL_118:

            if (++v163 == v162)
            {
              goto LABEL_182;
            }
          }

          v169 = v171;
          if (v173)
          {
            goto LABEL_134;
          }

LABEL_140:
          __break(1u);
LABEL_141:
          v179 = swift_initStackObject();
          *(v179 + 16) = xmmword_10146BDE0;
          v180 = [v139 description];
          v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v183 = v182;

          *(v179 + 56) = &type metadata for String;
          v184 = sub_1000053B0();
          *(v179 + 32) = v181;
          v278 = v179 + 32;
          *(v179 + 64) = v184;
          *(v179 + 40) = v183;
          v185 = [Strong description];
          v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v188 = v187;

          *(v179 + 96) = &type metadata for String;
          *(v179 + 104) = v184;
          v276 = v184;
          *(v179 + 72) = v186;
          *(v179 + 80) = v188;
          v275 = objc_opt_self();
          v146 = [v275 _atomicIncrementAssertCount];
          v279[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(v179, v279);
          StaticString.description.getter();
          v189 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v190 = String._bridgeToObjectiveC()();

          v191 = [v190 lastPathComponent];

          v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v194 = v193;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v195 = static OS_os_log.crlAssert;
          v196 = swift_initStackObject();
          *(v196 + 16) = xmmword_10146CA70;
          *(v196 + 56) = &type metadata for Int32;
          *(v196 + 64) = &protocol witness table for Int32;
          *(v196 + 32) = v146;
          v197 = sub_1005CF000();
          *(v196 + 96) = v197;
          v198 = sub_100A0CF5C(&qword_1019F52E0, sub_1005CF000);
          *(v196 + 72) = v189;
          v199 = v276;
          *(v196 + 136) = &type metadata for String;
          *(v196 + 144) = v199;
          *(v196 + 104) = v198;
          *(v196 + 112) = v192;
          *(v196 + 120) = v194;
          *(v196 + 176) = &type metadata for UInt;
          *(v196 + 184) = &protocol witness table for UInt;
          *(v196 + 152) = 43;
          v200 = v279[0];
          *(v196 + 216) = v197;
          *(v196 + 224) = v198;
          *(v196 + 192) = v200;
          v201 = v189;
          v202 = v200;
          v203 = static os_log_type_t.error.getter();
          sub_100005404(v195, &_mh_execute_header, v203, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v196);

          v204 = static os_log_type_t.error.getter();
          sub_100005404(v195, &_mh_execute_header, v204, "Trying to delete a board item (%{public}@) which is not in a container (%{public}@).", 84, 2, v179);

          sub_10063DF98(v179, "Trying to delete a board item (%{public}@) which is not in a container (%{public}@).");
          type metadata accessor for __VaListBuilder();
          v150 = swift_allocObject();
          v150[2] = 8;
          v150[3] = 0;
          Strong = (v150 + 3);
          v150[4] = 0;
          v150[5] = 0;
          v205 = *(v179 + 16);
          if (v205)
          {
            v206 = 0;
            while (1)
            {
              sub_100020E58((v278 + 40 * v206), *(v278 + 40 * v206 + 24));
              v207 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
              v146 = *Strong;
              v208 = *(v207 + 16);
              v167 = __OFADD__(*Strong, v208);
              v209 = *Strong + v208;
              if (v167)
              {
                goto LABEL_171;
              }

              v210 = v207;
              v211 = v150[4];
              if (v211 >= v209)
              {
                goto LABEL_160;
              }

              v212 = v207;
              if (v211 + 0x4000000000000000 < 0)
              {
                goto LABEL_173;
              }

              v213 = v150[5];
              v214 = 2 * v211;
              if (2 * v211 <= v209)
              {
                v214 = v209;
              }

              v150[4] = v214;
              if ((v214 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_175;
              }

              v215 = swift_slowAlloc();
              v150[5] = v215;
              if (v213)
              {
                break;
              }

              v210 = v212;
              if (!v215)
              {
LABEL_167:
                __break(1u);
                goto LABEL_168;
              }

LABEL_161:
              v217 = *(v210 + 16);
              if (v217)
              {
                v218 = (v210 + 32);
                v219 = *Strong;
                do
                {
                  v220 = *v218++;
                  *&v215[8 * v219] = v220;
                  v219 = *Strong + 1;
                  if (__OFADD__(*Strong, 1))
                  {
                    goto LABEL_169;
                  }

                  *Strong = v219;
                }

                while (--v217);
              }

              if (++v206 == v205)
              {
                goto LABEL_183;
              }
            }

            if (v215 != v213 || v215 >= &v213[8 * v146])
            {
              memmove(v215, v213, 8 * v146);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v210 = v212;
LABEL_160:
            v215 = v150[5];
            if (!v215)
            {
              goto LABEL_167;
            }

            goto LABEL_161;
          }

LABEL_183:
          v244 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v152 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          inited = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v147 = String._bridgeToObjectiveC()();

          [v275 handleFailureInFunction:v152 file:inited lineNumber:43 isFatal:1 format:v147 args:v244];
        }

        else
        {
LABEL_182:
          v243 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v152 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          inited = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v147 = String._bridgeToObjectiveC()();

          [v275 handleFailureInFunction:v152 file:inited lineNumber:45 isFatal:1 format:v147 args:v243];
        }
      }
    }

LABEL_9:
    v32 = v25;
    v33 = v26;
    v2 = v25;
    if (v26)
    {
      break;
    }

    while (1)
    {
      v2 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v2 >= v263)
      {
        goto LABEL_37;
      }

      v33 = v264[v2];
      ++v32;
      if (v33)
      {
        goto LABEL_13;
      }
    }

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
  }

LABEL_13:
  v34 = (v33 - 1) & v33;
  v35 = *(*(v22 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v33)))));
  if (v35)
  {
    goto LABEL_17;
  }

LABEL_37:
  sub_100035F90();
  v2 = v255 + 64;
  v61 = 1 << *(v255 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v9 = (v62 & *(v255 + 64));
  v247 = OBJC_IVAR____TtC8Freeform26CRLCommandDeleteBoardItems_canDeleteNewlyCreatedItems;
  v249 = (v61 + 63) >> 6;
  v257 = v267 + 32;
  swift_bridgeObjectRetain_n();
  v63 = 0;
  v259 = xmmword_10146CA70;
  v246 = v2;
  while (2)
  {
    v64 = v277;
    if (!v9)
    {
      v66 = v255;
      while (1)
      {
        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_107;
        }

        if (v65 >= v249)
        {
          break;
        }

        v9 = *(v2 + 8 * v65);
        ++v63;
        if (v9)
        {
          goto LABEL_46;
        }
      }

      swift_bridgeObjectRelease_n();
      return;
    }

    v65 = v63;
    v66 = v255;
LABEL_46:
    if (!*(v66 + 16))
    {
      goto LABEL_108;
    }

    v250 = v65;
    v251 = v9;
    v2 = v66;
    v268 = *(*(v66 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v9)))));
    v67 = sub_1007C8CE8(v268);
    if ((v68 & 1) == 0)
    {
      goto LABEL_109;
    }

    v69 = *(*(v2 + 56) + 8 * v67);
    v252 = v69 >> 62;
    if (v69 >> 62)
    {
      v70 = _CocoaArrayWrapper.endIndex.getter();
      v272 = v69;
      if (!v70)
      {
        goto LABEL_63;
      }

LABEL_50:
      if (v70 < 1)
      {
        goto LABEL_110;
      }

      v263 = v69 & 0xC000000000000001;
      v264 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;

      v71 = 0;
      v265 = v70;
      while (1)
      {
        v269 = v71;
        v78 = v5;
        if (v263)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v79 = *(v69 + 8 * v71 + 32);
        }

        v80 = v79;
        sub_1005B981C(&qword_1019F54E0);
        v81 = swift_initStackObject();
        *(v81 + 16) = v259;
        v82 = *((swift_isaMask & *v80) + 0x88);
        v83 = v261;
        v84 = v80;
        v270 = v80;
        v82();
        v85 = UUID.uuidString.getter();
        v87 = v86;
        v273 = *v64;
        v273(v83, v78);
        *(v81 + 56) = &type metadata for String;
        v88 = sub_1000053B0();
        *(v81 + 32) = v85;
        v271 = (v81 + 32);
        *(v81 + 64) = v88;
        *(v81 + 40) = v87;
        v89 = v84;
        v274 = v89;
        v90 = [v89 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        *(v81 + 96) = &type metadata for String;
        *(v81 + 104) = v88;
        *(v81 + 72) = v91;
        *(v81 + 80) = v93;
        v94 = v268;
        v95 = v262;
        (*(**(v264 + v268) + 264))();
        v96 = UUID.uuidString.getter();
        v98 = v97;
        v273(v95, v278);
        *(v81 + 136) = &type metadata for String;
        *(v81 + 144) = v88;
        *(v81 + 112) = v96;
        *(v81 + 120) = v98;
        v99 = v94;
        v100 = [v99 description];
        v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v102;

        *(v81 + 176) = &type metadata for String;
        *(v81 + 184) = v88;
        v270 = v88;
        *(v81 + 152) = v101;
        *(v81 + 160) = v103;
        v104 = (*((swift_isaMask & *v274) + 0x380))();
        if (v104)
        {
          v105 = *(v104 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
          v106 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          v107 = v104;
          swift_beginAccess();
          v108 = v105 + v106;
          v109 = v256;
          sub_1005E2B78(v108, v256);
          sub_1005B981C(&unk_1019F5250);
          v110 = v275;
          CRRegister.wrappedValue.getter();

          sub_1005E2BDC(v109);
          v111 = UUID.uuidString.getter();
          v76 = v112;
          v64 = v277;
          v273(v110, v278);
          v72 = (v81 + 192);
          v113 = v270;
          *(v81 + 216) = &type metadata for String;
          *(v81 + 224) = v113;
          if (v76)
          {
            *v72 = v111;
            v5 = v278;
            v69 = v272;
            v74 = v265;
            v75 = v269;
            goto LABEL_54;
          }

          v5 = v278;
        }

        else
        {
          v72 = (v81 + 192);
          v73 = v270;
          *(v81 + 216) = &type metadata for String;
          *(v81 + 224) = v73;
          v64 = v277;
          v5 = v278;
        }

        v74 = v265;
        v75 = v269;
        *v72 = 7104878;
        v76 = 0xE300000000000000;
        v69 = v272;
LABEL_54:
        v71 = v75 + 1;
        *(v81 + 200) = v76;
        v77 = static os_log_type_t.default.getter();
        sub_100005404(v260, &_mh_execute_header, v77, "⭕ CRLCommandDeleteBoardItems commit() remove %{public}@%{public}@ from parent %{public}@%{public}@. Board: %{public}@", 119, 0, v81);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        if (v74 == v71)
        {
          goto LABEL_64;
        }
      }
    }

    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v272 = v69;
    if (v70)
    {
      goto LABEL_50;
    }

LABEL_63:

LABEL_64:
    if (v252)
    {
      Strong = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      Strong = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = _swiftEmptyArrayStorage;
    v114 = v268;
    if (Strong)
    {
      v280 = _swiftEmptyArrayStorage;
      v2 = &v280;
      sub_100776524(0, Strong & ~(Strong >> 63), 0);
      if (Strong < 0)
      {
        goto LABEL_111;
      }

      v115 = 0;
      v9 = v280;
      v274 = v69 & 0xC000000000000001;
      v116 = v5;
      do
      {
        if (v274)
        {
          v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v117 = *(v69 + 8 * v115 + 32);
        }

        v118 = v117;
        v119 = v258;
        (*((swift_isaMask & *v117) + 0x88))();

        v280 = v9;
        v121 = v9[2];
        v120 = v9[3];
        if (v121 >= v120 >> 1)
        {
          sub_100776524(v120 > 1, v121 + 1, 1);
          v9 = v280;
        }

        ++v115;
        v9[2] = v121 + 1;
        (*(v267 + 32))(v9 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v121, v119, v116);
        v69 = v272;
      }

      while (Strong != v115);

      v114 = v268;
    }

    else
    {
    }

    v122 = *(v248 + v247);
    v123 = v253;
    sub_1012E0400(v114, &off_10188FE10);
    v253 = v123;
    if (v123)
    {
      goto LABEL_104;
    }

    v124 = _swiftEmptyArrayStorage;
    v280 = _swiftEmptyArrayStorage;
    Strong = v9[2];
    if (Strong)
    {
      v125 = v9 + ((*(v267 + 80) + 32) & ~*(v267 + 80));
      v273 = *(v267 + 72);
      v274 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
      v272 = *(v267 + 16);
      v126 = v254;
      LODWORD(v271) = v122;
      (v272)(v254, v125, v278);
      while (1)
      {
        v127 = *&v114[v274];
        if (!*(v127 + 16))
        {
          goto LABEL_82;
        }

        v128 = sub_10003E994(v126);
        if ((v129 & 1) == 0)
        {
          break;
        }

        v130 = *v277;
        v131 = *(*(v127 + 56) + 8 * v128);
        v130(v126, v278);

        v132 = v131;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v280 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v280 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v270 = *((v280 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v124 = v280;
        v126 = v254;
        v114 = v268;
        v122 = v271;
LABEL_83:
        v125 = v273 + v125;
        if (!--Strong)
        {
          goto LABEL_90;
        }

        (v272)(v126, v125, v278);
      }

LABEL_82:
      (*v277)(v126, v278);
      goto LABEL_83;
    }

LABEL_90:
    v133 = v253;
    sub_100972450(v9);
    v253 = v133;
    if (v133)
    {

LABEL_104:

      swift_bridgeObjectRelease_n();
    }

    else
    {

      if (v124 >> 62)
      {
        v2 = _CocoaArrayWrapper.endIndex.getter();
        v5 = v278;
        if (v2)
        {
LABEL_93:
          if (v2 < 1)
          {
            goto LABEL_112;
          }

          for (i = 0; i != v2; ++i)
          {
            if ((v124 & 0xC000000000000001) != 0)
            {
              v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v135 = *(v124 + 8 * i + 32);
            }

            v136 = v135;
            sub_1012DCC7C(v135, v122, 0, v266);
          }
        }
      }

      else
      {
        v2 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v5 = v278;
        if (v2)
        {
          goto LABEL_93;
        }
      }

      v137 = v268;
      v138 = v253;
      sub_1012CF6CC(v268, &off_10188FE10, 2);
      v253 = v138;
      if (!v138)
      {
        v9 = ((v251 - 1) & v251);

        v63 = v250;
        v2 = v246;
        continue;
      }

      swift_bridgeObjectRelease_n();
    }

    break;
  }
}

uint64_t sub_100A0CE30()
{
}

id sub_100A0CE74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandDeleteBoardItems();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A0CF1C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform26CRLCommandDeleteBoardItems_actionString);

  return v1;
}

uint64_t sub_100A0CF5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100A0CFA4(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1 & 1;
    *(v6 + 24) = a2;
    *(v6 + 32) = a3;

    sub_10002E7A8(a2);
    Tracker.whenSession(block:)();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = static OS_os_log.crlAppAnalytics;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "Skip submit session event for unselected user", 45, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100A0D150()
{
  type metadata accessor for BoardInitialAppStateEvent(0);
  sub_100A0EB24(&qword_101A0C9D8, type metadata accessor for BoardInitialAppStateEvent);
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1005E09AC(v1);
}

uint64_t sub_100A0D208()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1019F2748 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_101AD8948 object:0];

  return swift_deallocClassInstance();
}

uint64_t sub_100A0D390()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100A0D44C, 0, 0);
}

uint64_t sub_100A0D44C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100A0D518;

  return sub_100061EEC(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100A0D518()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_100A0D8F0;
  }

  else
  {
    v3 = sub_100A0D680;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A0D680()
{
  v1 = *(v0 + 96);
  static Task<>.checkCancellation()();
  if (!v1)
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = static OS_os_log.crlAppAnalytics;
    v3 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "Reached timerInterval for BoardInitialAppStateEvent, submit event", 65, 2, _swiftEmptyArrayStorage);

    if (qword_1019F14F0 != -1)
    {
      swift_once();
    }

    if (*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
    {

      sub_100A0CFA4(0, 0, 0);
    }

    type metadata accessor for CancellationError();
    sub_100A0EB24(&qword_1019F4FA0, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
  }

  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static OS_os_log.crlAppAnalytics;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Submit BoardInitialAppStateEvent canceled.", 42, 2, _swiftEmptyArrayStorage);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100A0D8F0()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static OS_os_log.crlAppAnalytics;
  v2 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v2, "Submit BoardInitialAppStateEvent canceled.", 42, 2, _swiftEmptyArrayStorage);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100A0D9F8()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = *v0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v4 + 16) = sub_100796D54(0, 0, v3, &unk_10148E048, v6);
}

uint64_t sub_100A0DAF8()
{
  v1 = *v0;
  if (*(v1 + 16))
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  *(v1 + 16) = 0;
}

uint64_t sub_100A0DB84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_100A0D390();
}

uint64_t sub_100A0DC3C(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v16 = &type metadata for BoardCollectionData;
  v17 = sub_100A0EB6C();
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v6;
  v15[3] = v9;
  v15[4] = a3;
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    sub_10000630C(v15, v14);
    v10 = swift_allocObject();
    sub_100050F74(v14, v10 + 16);
    *(v10 + 56) = a4;

    Tracker.whenSession(block:)();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static OS_os_log.crlAppAnalytics;
    v12 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v12, "Skip push session data for unselected user", 42, 2, _swiftEmptyArrayStorage);
  }

  return sub_100005070(v15);
}

void sub_100A0DE14()
{
  v100 = type metadata accessor for UUID();
  v0 = *(v100 - 8);
  __chkstk_darwin(v100);
  v95 = &v89 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v94 = &v89 - v3;
  __chkstk_darwin(v4);
  v6 = &v89 - v5;
  __chkstk_darwin(v7);
  v9 = &v89 - v8;
  __chkstk_darwin(v10);
  v12 = &v89 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v13 - 8);
  v93 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v89 - v16;
  __chkstk_darwin(v18);
  v20 = &v89 - v19;
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  Notification.object.getter();
  if (v102[3])
  {
    sub_1005B981C(&qword_101A0C9E0);
    if (swift_dynamicCast())
    {
      v92 = v0;
      v91 = v101;
      v99 = v101 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
      v27 = *(v101 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 16);
      v28 = sub_1005B981C(&qword_1019F3480);
      v29 = *(v28 - 8);
      v97 = *(v29 + 56);
      v98 = v28;
      v96 = v29 + 56;
      v97(v26, 1, 5);

      sub_10003E264(v12);
      sub_10006BF9C(v26);
      if (*(v27 + 16) && (v30 = sub_10003E994(v12), (v31 & 1) != 0))
      {
        v90 = *(*(v27 + 56) + 8 * v30);
        v32 = *(v92 + 8);
        v32(v12, v100);
      }

      else
      {

        v32 = *(v92 + 8);
        v32(v12, v100);
        v90 = -1;
      }

      v56 = *(v99 + 16);
      (v97)(v23, 4, 5, v98);

      sub_10003E264(v9);
      sub_10006BF9C(v23);
      if (*(v56 + 16) && (v57 = sub_10003E994(v9), (v58 & 1) != 0))
      {
        v59 = *(*(v56 + 56) + 8 * v57);
        v60 = v9;
        v61 = v100;
        v32(v60, v100);
      }

      else
      {

        v62 = v9;
        v61 = v100;
        v32(v62, v100);
        v59 = -1;
      }

      v63 = *(v99 + 16);
      (v97)(v20, 3, 5, v98);

      sub_10003E264(v6);
      sub_10006BF9C(v20);
      if (*(v63 + 16) && (v64 = sub_10003E994(v6), (v65 & 1) != 0))
      {
        v66 = *(*(v63 + 56) + 8 * v64);
        v32(v6, v61);
      }

      else
      {

        v32(v6, v61);
        v66 = -1;
      }

      v67 = v95;
      v68 = *(v99 + 16);
      (v97)(v17, 2, 5, v98);

      v69 = v94;
      sub_10003E264(v94);
      sub_10006BF9C(v17);
      if (*(v68 + 16) && (v70 = sub_10003E994(v69), (v71 & 1) != 0))
      {
        v72 = *(*(v68 + 56) + 8 * v70);
        v32(v69, v61);
      }

      else
      {

        v32(v69, v61);
        v72 = -1;
      }

      v73 = *(v99 + 16);
      v74 = v93;
      (v97)(v93, 5, 5, v98);

      sub_10003E264(v67);
      sub_10006BF9C(v74);
      if (*(v73 + 16) && (v75 = sub_10003E994(v67), (v76 & 1) != 0))
      {
        v77 = *(*(v73 + 56) + 8 * v75);
        v32(v67, v61);
      }

      else
      {

        v32(v67, v61);
        v77 = -1;
      }

      if (v90 <= 100)
      {
        if (v90 <= 10)
        {
          if (v90 <= 5)
          {
            if (v90 <= 2)
            {
              v78 = v90;
              if (v90 < 0)
              {
                v78 = 0xFFFFFFFFLL;
              }
            }

            else
            {
              v78 = 5;
            }
          }

          else
          {
            v78 = 10;
          }
        }

        else
        {
          v78 = 100;
        }
      }

      else
      {
        v78 = 101;
      }

      v100 = v78;
      if (v59 <= 100)
      {
        if (v59 <= 10)
        {
          if (v59 <= 5)
          {
            if (v59 <= 2)
            {
              if (v59 >= 0)
              {
                v79 = v59 << 32;
              }

              else
              {
                v79 = 0xFFFFFFFF00000000;
              }
            }

            else
            {
              v79 = 0x500000000;
            }
          }

          else
          {
            v79 = 0xA00000000;
          }
        }

        else
        {
          v79 = 0x6400000000;
        }
      }

      else
      {
        v79 = 0x6500000000;
      }

      if (v66 <= 100)
      {
        if (v66 <= 10)
        {
          if (v66 <= 5)
          {
            if (v66 <= 2)
            {
              if (v66 >= 0)
              {
                v80 = v66;
              }

              else
              {
                v80 = 0xFFFFFFFFLL;
              }
            }

            else
            {
              v80 = 5;
            }
          }

          else
          {
            v80 = 10;
          }
        }

        else
        {
          v80 = 100;
        }
      }

      else
      {
        v80 = 101;
      }

      if (v72 <= 100)
      {
        if (v72 <= 10)
        {
          if (v72 <= 5)
          {
            if (v72 <= 2)
            {
              if (v72 >= 0)
              {
                v81 = v72 << 32;
              }

              else
              {
                v81 = 0xFFFFFFFF00000000;
              }
            }

            else
            {
              v81 = 0x500000000;
            }
          }

          else
          {
            v81 = 0xA00000000;
          }
        }

        else
        {
          v81 = 0x6400000000;
        }
      }

      else
      {
        v81 = 0x6500000000;
      }

      if (v77 <= 100)
      {
        if (v77 <= 10)
        {
          if (v77 <= 5)
          {
            if (v77 <= 2)
            {
              if (v77 < 0)
              {
                LODWORD(v77) = -1;
              }
            }

            else
            {
              LODWORD(v77) = 5;
            }
          }

          else
          {
            LODWORD(v77) = 10;
          }
        }

        else
        {
          LODWORD(v77) = 100;
        }
      }

      else
      {
        LODWORD(v77) = 101;
      }

      if (qword_1019F2118 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v82 = static OS_os_log.crlAppAnalytics;
      v83 = static os_log_type_t.default.getter();
      sub_100005404(v82, &_mh_execute_header, v83, "Update BoardInitialAppStateEvent data", 37, 2, _swiftEmptyArrayStorage);

      if (qword_1019F14F0 != -1)
      {
        swift_once();
      }

      v84 = static AASApplicationManager.shared;
      sub_1005B981C(&qword_1019FE480);
      v85 = type metadata accessor for DataEventTrait();
      v86 = *(v85 - 8);
      v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_10146C6B0;
      (*(v86 + 104))(v88 + v87, enum case for DataEventTrait.unique(_:), v85);
      if (*(v84 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
      {

        sub_100A0DC3C(v79 | v100, v81 | v80, v77, v88);
      }

      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    sub_1005E09AC(v102);
  }

  v33 = objc_opt_self();
  v34 = [v33 _atomicIncrementAssertCount];
  v102[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v102);
  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  v37 = [v36 lastPathComponent];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v41 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v34;
  v43 = sub_1005CF000();
  *(inited + 96) = v43;
  v44 = sub_100A0EB24(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v44;
  *(inited + 72) = v35;
  *(inited + 136) = &type metadata for String;
  v45 = sub_1000053B0();
  *(inited + 112) = v38;
  *(inited + 120) = v40;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v45;
  *(inited + 152) = 18;
  v46 = v102[0];
  *(inited + 216) = v43;
  *(inited + 224) = v44;
  *(inited + 192) = v46;
  v47 = v35;
  v48 = v46;
  v49 = static os_log_type_t.error.getter();
  sub_100005404(v41, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v41, &_mh_execute_header, v50, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v51 = swift_allocObject();
  v51[2] = 8;
  v51[3] = 0;
  v51[4] = 0;
  v51[5] = 0;
  v52 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v53 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v55 = String._bridgeToObjectiveC()();

  [v33 handleFailureInFunction:v53 file:v54 lineNumber:18 isFatal:0 format:v55 args:v52];
}

uint64_t sub_100A0EB24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100A0EB6C()
{
  result = qword_101A0C9E8;
  if (!qword_101A0C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0C9E8);
  }

  return result;
}

Swift::Int sub_100A0EBC0(void **a1)
{
  v2 = *(_s4NodeVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10113CE6C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100A1555C(v6);
  *a1 = v3;
  return result;
}

void *sub_100A0EC6C(uint64_t a1)
{
  v88 = _s5BoardVMa(0);
  __chkstk_darwin(v88);
  v93 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v92 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F6990);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v83 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v83 - v18;
  __chkstk_darwin(v17);
  v109 = v83 - v20;
  v104 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v21 = __chkstk_darwin(v104);
  v100 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v91 = v83 - v24;
  __chkstk_darwin(v23);
  v94 = v83 - v25;
  v26 = _s4NodeVMa(0);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26 - 8);
  v105 = v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v96 = v83 - v31;
  result = __chkstk_darwin(v30);
  v97 = v83 - v33;
  v34 = *(v1 + *(result + 7));
  v99 = *(v34 + 16);
  if (v99)
  {
    v84 = v11;
    v85 = v9;
    v35 = 0;
    v106 = (v13 + 16);
    v83[1] = "00-0000-000000000001";
    v86 = (v13 + 48);
    v95 = (v13 + 32);
    v83[0] = "odel index path %@";
    v107 = a1 + 56;
    v36 = v13;
    v37 = _swiftEmptyArrayStorage;
    v87 = v36;
    v108 = (v36 + 8);
    v89 = v27;
    v38 = v94;
    v39 = v97;
    v90 = v19;
    v98 = v34;
    while (v35 < *(v34 + 16))
    {
      v40 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v102 = *(v27 + 72);
      v103 = v40;
      sub_10003CAC4(v34 + v40 + v102 * v35, v39, _s4NodeVMa);
      sub_10003CAC4(v39, v38, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_10000BA44(v38, _s5BoardVMa);
        v41 = v91;
        sub_10003CAC4(v39, v91, type metadata accessor for CRLBoardLibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v101 = v37;
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v43 = v92;
            sub_10003DF68(v41, v92, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            sub_10003E264(v19);
            v44 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
          }

          else
          {
            v43 = v93;
            sub_10003DF68(v41, v93, _s5BoardVMa);
            (*v106)(v19, v43, v12);
            v44 = _s5BoardVMa;
          }

          sub_10000BA44(v43, v44);
        }

        else
        {
          if (*v41)
          {
            v45 = v85;
            UUID.init(uuidString:)();
            result = (*v86)(v45, 1, v12);
            if (result == 1)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v45 = v84;
            UUID.init(uuidString:)();
            result = (*v86)(v45, 1, v12);
            if (result == 1)
            {
              goto LABEL_46;
            }
          }

          (*v95)(v19, v45, v12);
        }

        (*v95)(v109, v19, v12);
        if (*(a1 + 16) && (sub_100A178C8(&qword_1019FB870, &type metadata accessor for UUID), v46 = dispatch thunk of Hashable._rawHashValue(seed:)(), v47 = -1 << *(a1 + 32), v48 = v46 & ~v47, ((*(v107 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
        {
          v49 = ~v47;
          v50 = *(v87 + 72);
          v51 = *(v87 + 16);
          while (1)
          {
            v52 = a1;
            v51(v16, *(a1 + 48) + v50 * v48, v12);
            sub_100A178C8(&qword_1019F37C0, &type metadata accessor for UUID);
            v53 = dispatch thunk of static Equatable.== infix(_:_:)();
            v54 = *v108;
            (*v108)(v16, v12);
            if (v53)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            a1 = v52;
            if (((*(v107 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          v54(v109, v12);
          v39 = v97;
          result = sub_10000BA44(v97, _s4NodeVMa);
          v37 = v101;
          a1 = v52;
          v19 = v90;
          v27 = v89;
          v38 = v94;
        }

        else
        {
LABEL_22:
          (*v108)(v109, v12);
          sub_10003DF68(v97, v96, _s4NodeVMa);
          v37 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100776804(0, v37[2] + 1, 1);
            v37 = v110;
          }

          v27 = v89;
          v57 = v37[2];
          v56 = v37[3];
          if (v57 >= v56 >> 1)
          {
            sub_100776804(v56 > 1, v57 + 1, 1);
            v37 = v110;
          }

          v37[2] = v57 + 1;
          result = sub_10003DF68(v96, v37 + v103 + v57 * v102, _s4NodeVMa);
          v19 = v90;
          v38 = v94;
          v39 = v97;
        }
      }

      else
      {
        sub_10000BA44(v39, _s4NodeVMa);
        result = sub_10000BA44(v38, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      ++v35;
      v34 = v98;
      if (v35 == v99)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_29:
    v58 = v37[2];
    if (v58)
    {
      v110 = _swiftEmptyArrayStorage;
      sub_100034080(0, v58, 0);
      v59 = v110;
      v60 = *(v27 + 80);
      v101 = v37;
      v61 = v37 + ((v60 + 32) & ~v60);
      v62 = *(v27 + 72);
      do
      {
        v63 = v105;
        sub_10003CAC4(v61, v105, _s4NodeVMa);
        v64 = v63;
        v65 = v100;
        sub_10003CAC4(v64, v100, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v66 = swift_getEnumCaseMultiPayload();
        if (v66)
        {
          if (v66 == 1)
          {
            v67 = v92;
            sub_10003DF68(v65, v92, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v68 = sub_10006A888();
            v70 = v69;
            sub_10000BA44(v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v71 = _s4NodeVMa;
            v72 = v105;
          }

          else
          {
            sub_10000BA44(v105, _s4NodeVMa);
            v73 = v93;
            sub_10003DF68(v65, v93, _s5BoardVMa);
            v74 = (v73 + *(v88 + 24));
            v68 = *v74;
            v70 = v74[1];

            v71 = _s5BoardVMa;
            v72 = v73;
          }

          sub_10000BA44(v72, v71);
        }

        else if (*v65 == 1)
        {
          sub_10000BA44(v105, _s4NodeVMa);
          v70 = 0xE700000000000000;
          v68 = 0x737265646C6F46;
        }

        else
        {
          v78 = [objc_opt_self() mainBundle];
          v79 = String._bridgeToObjectiveC()();
          v80 = String._bridgeToObjectiveC()();
          v81 = [v78 localizedStringForKey:v79 value:v80 table:0];

          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v82;

          sub_10000BA44(v105, _s4NodeVMa);
        }

        v110 = v59;
        v76 = v59[2];
        v75 = v59[3];
        if (v76 >= v75 >> 1)
        {
          sub_100034080((v75 > 1), v76 + 1, 1);
          v59 = v110;
        }

        v59[2] = v76 + 1;
        v77 = &v59[2 * v76];
        v77[4] = v68;
        v77[5] = v70;
        v61 += v62;
        --v58;
      }

      while (v58);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v59;
  }

  return result;
}

void *sub_100A0F8BC(uint64_t a1)
{
  v98 = _s5BoardVMa(0);
  __chkstk_darwin(v98);
  v102 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019F6990);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v86 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v108 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v86 - v15;
  __chkstk_darwin(v14);
  v112 = v86 - v17;
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v19 = __chkstk_darwin(v18 - 8);
  v101 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v86 - v21;
  v105 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v23 = __chkstk_darwin(v105);
  v113 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v93 = v86 - v26;
  __chkstk_darwin(v25);
  v94 = v86 - v27;
  v28 = _s4NodeVMa(0);
  v96 = *(v28 - 8);
  v29 = __chkstk_darwin(v28 - 8);
  v114 = v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v97 = v86 - v32;
  result = __chkstk_darwin(v31);
  v99 = v86 - v34;
  v35 = *(v1 + *(result + 7));
  v36 = _swiftEmptyArrayStorage;
  v104 = *(v35 + 16);
  if (!v104)
  {
    v38 = v96;
LABEL_32:
    v63 = v36[2];
    if (v63)
    {
      v115 = _swiftEmptyArrayStorage;
      sub_100034080(0, v63, 0);
      v64 = v115;
      v65 = *(v38 + 80);
      v100 = v36;
      v66 = v36 + ((v65 + 32) & ~v65);
      v67 = *(v38 + 72);
      do
      {
        v68 = v114;
        sub_10003CAC4(v66, v114, _s4NodeVMa);
        sub_10003CAC4(v68, v113, type metadata accessor for CRLBoardLibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v70 = v101;
            sub_10003DF68(v113, v101, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v71 = sub_10006A888();
            v73 = v72;
            sub_10000BA44(v70, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v74 = _s4NodeVMa;
            v75 = v114;
          }

          else
          {
            sub_10000BA44(v114, _s4NodeVMa);
            v76 = v102;
            sub_10003DF68(v113, v102, _s5BoardVMa);
            v77 = (v76 + *(v98 + 24));
            v71 = *v77;
            v73 = v77[1];

            v74 = _s5BoardVMa;
            v75 = v76;
          }

          sub_10000BA44(v75, v74);
        }

        else if (*v113 == 1)
        {
          sub_10000BA44(v114, _s4NodeVMa);
          v73 = 0xE700000000000000;
          v71 = 0x737265646C6F46;
        }

        else
        {
          v81 = [objc_opt_self() mainBundle];
          v82 = String._bridgeToObjectiveC()();
          v83 = String._bridgeToObjectiveC()();
          v84 = [v81 localizedStringForKey:v82 value:v83 table:0];

          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v85;

          sub_10000BA44(v114, _s4NodeVMa);
        }

        v115 = v64;
        v79 = v64[2];
        v78 = v64[3];
        if (v79 >= v78 >> 1)
        {
          sub_100034080((v78 > 1), v79 + 1, 1);
          v64 = v115;
        }

        v64[2] = v79 + 1;
        v80 = &v64[2 * v79];
        v80[4] = v71;
        v80[5] = v73;
        v66 += v67;
        --v63;
      }

      while (v63);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v64;
  }

  v87 = v9;
  v88 = v7;
  v37 = 0;
  v109 = (v11 + 16);
  v86[1] = "00-0000-000000000001";
  v89 = (v11 + 48);
  v95 = (v11 + 32);
  v86[0] = "odel index path %@";
  v110 = a1 + 56;
  v90 = v11;
  v111 = (v11 + 8);
  v91 = v22;
  v38 = v96;
  v39 = v94;
  v40 = v99;
  v92 = v16;
  v103 = v35;
  while (v37 < *(v35 + 16))
  {
    v43 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v106 = *(v38 + 72);
    v107 = v43;
    sub_10003CAC4(v35 + v43 + v106 * v37, v40, _s4NodeVMa);
    sub_10003CAC4(v40, v39, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000BA44(v40, _s4NodeVMa);
      v41 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v42 = v39;
LABEL_4:
      result = sub_10000BA44(v42, v41);
      goto LABEL_5;
    }

    sub_10003DF68(v39, v22, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v44 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v44 - 8) + 48))(v22, 5, v44))
    {
      sub_10000BA44(v40, _s4NodeVMa);
      v41 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v42 = v22;
      goto LABEL_4;
    }

    sub_10000BA44(v22, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v45 = v93;
    sub_10003CAC4(v40, v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v46 = swift_getEnumCaseMultiPayload();
    v100 = v36;
    if (v46)
    {
      if (v46 == 1)
      {
        v47 = v101;
        sub_10003DF68(v45, v101, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10003E264(v16);
        v48 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v47 = v102;
        sub_10003DF68(v45, v102, _s5BoardVMa);
        (*v109)(v16, v47, v10);
        v48 = _s5BoardVMa;
      }

      sub_10000BA44(v47, v48);
    }

    else
    {
      if (*v45)
      {
        v49 = v88;
        UUID.init(uuidString:)();
        result = (*v89)(v49, 1, v10);
        if (result == 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v49 = v87;
        UUID.init(uuidString:)();
        result = (*v89)(v49, 1, v10);
        if (result == 1)
        {
          goto LABEL_49;
        }
      }

      (*v95)(v16, v49, v10);
    }

    (*v95)(v112, v16, v10);
    if (*(a1 + 16) && (sub_100A178C8(&qword_1019FB870, &type metadata accessor for UUID), v50 = dispatch thunk of Hashable._rawHashValue(seed:)(), v51 = -1 << *(a1 + 32), v52 = v50 & ~v51, ((*(v110 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0))
    {
      v53 = ~v51;
      v54 = *(v90 + 72);
      v55 = *(v90 + 16);
      while (1)
      {
        v56 = a1;
        v57 = v108;
        v55(v108, *(a1 + 48) + v54 * v52, v10);
        sub_100A178C8(&qword_1019F37C0, &type metadata accessor for UUID);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *v111;
        (*v111)(v57, v10);
        if (v58)
        {
          break;
        }

        v52 = (v52 + 1) & v53;
        a1 = v56;
        if (((*(v110 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v59(v112, v10);
      v40 = v99;
      result = sub_10000BA44(v99, _s4NodeVMa);
      v36 = v100;
      a1 = v56;
      v16 = v92;
      v22 = v91;
      v38 = v96;
      v39 = v94;
    }

    else
    {
LABEL_25:
      (*v111)(v112, v10);
      sub_10003DF68(v99, v97, _s4NodeVMa);
      v36 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776804(0, v36[2] + 1, 1);
        v36 = v115;
      }

      v22 = v91;
      v62 = v36[2];
      v61 = v36[3];
      if (v62 >= v61 >> 1)
      {
        sub_100776804(v61 > 1, v62 + 1, 1);
        v36 = v115;
      }

      v36[2] = v62 + 1;
      result = sub_10003DF68(v97, v36 + v107 + v62 * v106, _s4NodeVMa);
      v16 = v92;
      v38 = v96;
      v39 = v94;
      v40 = v99;
    }

LABEL_5:
    ++v37;
    v35 = v103;
    if (v37 == v104)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_100A1060C(uint64_t a1)
{
  sub_1005B981C(&qword_101A0CAD8);
  v2 = *(type metadata accessor for CRLBoardLibraryViewModel.Folder(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C6B0;
  sub_10003CAC4(a1, v4 + v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v5 = sub_1005C0754(v4);
  swift_setDeallocating();
  sub_10000BA44(v4 + v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  swift_deallocClassInstance();
  return v5;
}

size_t sub_100A10724(void **a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v78 = a2;
  v4 = _s5BoardVMa(0);
  v74 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v83 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4NodeVMa(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v69 - v11;
  v88 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v88);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v75 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v84 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = &v69 - v18;
  result = sub_100A0EBC0(a1);
  v72 = a1;
  v20 = *a1;
  v21 = (*a1)[2];
  if (!v21)
  {
    return result;
  }

  v22 = 0;
  v86 = v6;
  v73 = v7;
  v70 = v14;
  v69 = v21;
  while (v22 < v20[2])
  {
    v89 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v87 = *(v7 + 72);
    v82 = v87 * v22;
    sub_10003CAC4(v20 + v89 + v87 * v22, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = type metadata accessor for CRLBoardLibraryViewModel.Item;
LABEL_4:
      result = sub_10000BA44(v14, v23);
      goto LABEL_5;
    }

    v24 = sub_1005B981C(&qword_1019F3480);
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v14, 5, v24))
    {
      v23 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      goto LABEL_4;
    }

    v76 = v25;
    v85 = v24;
    v26 = v14;
    v27 = v80;
    sub_10003DF68(v26, v80, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v28 = v78;
    swift_beginAccess();
    v29 = *(v28 + 16);
    if (*(v29 + 16) && (v30 = sub_1007C88C4(v27), (v31 & 1) != 0))
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v32 = _swiftEmptySetSingleton;
    }

    v81 = v20;
    v33 = v32[2];
    if (v33)
    {
      sub_1005B981C(&qword_101A0CAD8);
      v34 = *(v75 + 72);
      v35 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v36 = swift_allocObject();
      result = j__malloc_size_1(v36);
      if (!v34)
      {
        goto LABEL_60;
      }

      if (result - v35 == 0x8000000000000000 && v34 == -1)
      {
        goto LABEL_64;
      }

      v36[2] = v33;
      v36[3] = 2 * ((result - v35) / v34);
      v38 = sub_100B3AAA8(&v90, v36 + v35, v33, v32);
      result = sub_100035F90();
      if (v38 != v33)
      {
        goto LABEL_61;
      }

      v27 = v80;
    }

    else
    {

      v36 = _swiftEmptyArrayStorage;
    }

    v39 = v36[2];
    v79 = v22;
    if (v39)
    {
      v90 = _swiftEmptyArrayStorage;
      sub_100776804(0, v39, 0);
      v40 = v90;
      v41 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v71 = v36;
      v42 = v36 + v41;
      v43 = *(v75 + 72);
      v44 = (v76 + 56);
      do
      {
        v45 = v84;
        sub_10003CAC4(v42, v84, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003CAC4(v45, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        (*v44)(v12, 0, 5, v85);
        swift_storeEnumTagMultiPayload();
        sub_10000BA44(v45, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        *&v12[*(v86 + 20)] = _swiftEmptyArrayStorage;
        v90 = v40;
        v47 = v40[2];
        v46 = v40[3];
        if (v47 >= v46 >> 1)
        {
          sub_100776804(v46 > 1, v47 + 1, 1);
          v40 = v90;
        }

        v40[2] = v47 + 1;
        sub_10003DF68(v12, v40 + v89 + v47 * v87, _s4NodeVMa);
        v42 += v43;
        --v39;
      }

      while (v39);

      v6 = v86;
      v7 = v73;
      v22 = v79;
      v27 = v80;
    }

    else
    {

      v40 = _swiftEmptyArrayStorage;
    }

    v48 = v81;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10113CE6C(v48);
      v48 = result;
    }

    if (v22 >= v48[2])
    {
      goto LABEL_57;
    }

    v85 = v48 + v89 + v82;
    sub_10003F1A0(v40);
    v49 = v77;
    swift_beginAccess();
    v50 = *(v49 + 16);
    if (*(v50 + 16) && (v51 = sub_1007C88C4(v27), (v52 & 1) != 0))
    {
      v53 = *(*(v50 + 56) + 8 * v51);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v53 = _swiftEmptySetSingleton;
    }

    v81 = v48;
    v54 = v53[2];
    if (v54)
    {
      sub_1005B981C(&qword_101A0CAD0);
      v55 = *(v74 + 72);
      v56 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v57 = swift_allocObject();
      result = j__malloc_size_1(v57);
      if (!v55)
      {
        goto LABEL_62;
      }

      if (result - v56 == 0x8000000000000000 && v55 == -1)
      {
        goto LABEL_65;
      }

      v57[2] = v54;
      v57[3] = 2 * ((result - v56) / v55);
      v59 = sub_100B3AA68(&v90, v57 + v56, v54, v53);
      result = sub_100035F90();
      if (v59 != v54)
      {
        goto LABEL_63;
      }

      v60 = v57[2];
      if (v60)
      {
LABEL_45:
        v90 = _swiftEmptyArrayStorage;
        sub_100776804(0, v60, 0);
        v61 = v90;
        v62 = v57 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v63 = *(v74 + 72);
        do
        {
          v64 = v83;
          sub_10003CAC4(v62, v83, _s5BoardVMa);
          sub_10003CAC4(v64, v10, _s5BoardVMa);
          swift_storeEnumTagMultiPayload();
          sub_10000BA44(v64, _s5BoardVMa);
          *&v10[*(v6 + 20)] = _swiftEmptyArrayStorage;
          v90 = v61;
          v66 = v61[2];
          v65 = v61[3];
          if (v66 >= v65 >> 1)
          {
            sub_100776804(v65 > 1, v66 + 1, 1);
            v61 = v90;
          }

          v61[2] = v66 + 1;
          sub_10003DF68(v10, v61 + v89 + v66 * v87, _s4NodeVMa);
          v62 += v63;
          --v60;
          v6 = v86;
        }

        while (v60);

        v7 = v73;
        goto LABEL_52;
      }
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
      v60 = _swiftEmptyArrayStorage[2];
      if (v60)
      {
        goto LABEL_45;
      }
    }

    v61 = _swiftEmptyArrayStorage;
LABEL_52:
    v20 = v81;
    v67 = v79;
    v68 = v85;
    if (v79 >= v81[2])
    {
      goto LABEL_58;
    }

    result = sub_10003F1A0(v61);
    if (v67 >= v20[2])
    {
      goto LABEL_59;
    }

    v22 = v67;
    sub_100A10724(&v68[*(v6 + 20)], v78, v77);
    result = sub_10000BA44(v80, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    *v72 = v20;
    v14 = v70;
    v21 = v69;
LABEL_5:
    if (++v22 == v21)
    {
      return result;
    }
  }

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
  return result;
}

uint64_t sub_100A110FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v5 = __chkstk_darwin(v4 - 8);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v68 - v7;
  v74 = _s5BoardVMa(0);
  v8 = __chkstk_darwin(v74);
  v75 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v68 - v10;
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v12 = __chkstk_darwin(v11);
  v79 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v78 = &v68 - v15;
  v16 = __chkstk_darwin(v14);
  v72 = &v68 - v17;
  v18 = __chkstk_darwin(v16);
  v77 = &v68 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v68 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v68 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v68 - v27;
  __chkstk_darwin(v26);
  v30 = &v68 - v29;
  v70 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v31 = __chkstk_darwin(v70);
  v71 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v68 - v33;
  sub_10003CAC4(a1, v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = a1;
    v73 = a2;
    v35 = sub_1005B981C(&qword_1019F3480);
    v36 = *(*(v35 - 8) + 48);
    if (v36(v30, 5, v35))
    {
      sub_10000BA44(v30, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      a2 = v73;
      a1 = v69;
    }

    else
    {
      sub_10003DF68(v30, v34, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003CAC4(v73, v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (!v36(v28, 5, v35))
        {
          v67 = v71;
          sub_10003DF68(v28, v71, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v59 = sub_1009D1B18(*&v34[*(v70 + 28)], *(v67 + *(v70 + 28)));
          sub_10000BA44(v67, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10000BA44(v34, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          return v59 & 1;
        }

        sub_10000BA44(v34, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v37 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        sub_10000BA44(v34, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v37 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10000BA44(v28, v37);
      a2 = v73;
      a1 = v69;
    }
  }

  else
  {
    sub_10000BA44(v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  sub_10003CAC4(a1, v25, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = v81;
  if (EnumCaseMultiPayload == 2)
  {
    v40 = v25;
    v41 = v76;
    sub_10003DF68(v40, v76, _s5BoardVMa);
    sub_10003CAC4(a2, v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v42 = v22;
      v43 = v75;
      sub_10003DF68(v42, v75, _s5BoardVMa);
      v44 = *(v74 + 24);
      v45 = *(v41 + v44 + 8);
      v84 = *(v41 + v44);
      v85 = v45;
      v46 = (v43 + v44);
      v48 = *v46;
      v47 = v46[1];
      v82 = v48;
      v83 = v47;
      sub_100017CD8();
      v49 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
      sub_10000BA44(v43, _s5BoardVMa);
      sub_10000BA44(v41, _s5BoardVMa);
      v50 = v49 == -1;
      goto LABEL_30;
    }

    sub_10000BA44(v41, _s5BoardVMa);
  }

  else
  {
    v22 = v25;
  }

  sub_10000BA44(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v51 = v77;
  sub_10003CAC4(a1, v77, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v52 = swift_getEnumCaseMultiPayload();
  v53 = v78;
  if (v52 == 1)
  {
    sub_10003DF68(v51, v39, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v54 = sub_1005B981C(&qword_1019F3480);
    v55 = (*(*(v54 - 8) + 48))(v39, 5, v54);
    v57 = v79;
    v56 = v80;
    if (v55)
    {
      v58 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    }

    else
    {
      sub_10000BA44(v39, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v39 = v72;
      sub_10003CAC4(a2, v72, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_10000BA44(v39, _s5BoardVMa);
        v59 = 1;
        return v59 & 1;
      }

      v58 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    }

    sub_10000BA44(v39, v58);
  }

  else
  {
    sub_10000BA44(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v57 = v79;
    v56 = v80;
  }

  sub_10003CAC4(a1, v53, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10000BA44(v53, _s5BoardVMa);
    sub_10003CAC4(a2, v57, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10003DF68(v57, v56, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v60 = sub_1005B981C(&qword_1019F3480);
      if (!(*(*(v60 - 8) + 48))(v56, 5, v60))
      {
        sub_10000BA44(v56, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v59 = 0;
        return v59 & 1;
      }

      v61 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v62 = v56;
    }

    else
    {
      v61 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v62 = v57;
    }
  }

  else
  {
    v61 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v62 = v53;
  }

  sub_10000BA44(v62, v61);
  v84 = sub_100F88220();
  v85 = v63;
  v82 = sub_100F88220();
  v83 = v64;
  sub_100017CD8();
  v65 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

  v50 = v65 == -1;
LABEL_30:
  v59 = v50;
  return v59 & 1;
}

uint64_t sub_100A11AD0(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v2 - 8);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4 = *(v41 - 8);
  v5 = __chkstk_darwin(v41);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = _s4NodeVMa(0) - 8;
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v40 = *(v16 + 72);
    v21 = _swiftEmptyArrayStorage;
    do
    {
      sub_10003CAC4(v20, v18, _s4NodeVMa);
      sub_10003CAC4(v18, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BA44(v18, _s4NodeVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100B3648C(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_100B3648C(v22 > 1, v23 + 1, 1, v21);
      }

      v21[2] = v23 + 1;
      sub_10003DF68(v14, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v20 += v40;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v40 = v21[2];
  if (v40)
  {
    v24 = 0;
    v25 = _swiftEmptyArrayStorage;
    v26 = v38;
    while (1)
    {
      if (v24 >= v21[2])
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v30 = *(v4 + 72);
      sub_10003CAC4(v21 + v29 + v30 * v24, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003CAC4(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10003DF68(v9, v26, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v31 = sub_1005B981C(&qword_1019F3480);
        if (!(*(*(v31 - 8) + 48))(v26, 5, v31))
        {
          sub_10000BA44(v26, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003DF68(v12, v39, type metadata accessor for CRLBoardLibraryViewModel.Item);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100776764(0, v25[2] + 1, 1);
            v25 = v42;
          }

          v34 = v25[2];
          v33 = v25[3];
          v35 = v25;
          if (v34 >= v33 >> 1)
          {
            sub_100776764(v33 > 1, v34 + 1, 1);
            v35 = v42;
          }

          *(v35 + 16) = v34 + 1;
          sub_10003DF68(v39, v35 + v29 + v34 * v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v26 = v38;
          v25 = v35;
          goto LABEL_14;
        }

        v27 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v28 = v26;
      }

      else
      {
        v27 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        v28 = v9;
      }

      sub_10000BA44(v28, v27);
      sub_10000BA44(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_14:
      if (v40 == ++v24)
      {
        goto LABEL_25;
      }
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_25:

  if (v25[2] >= 2uLL)
  {
    v42 = v25;

    sub_1008262A8(sub_100F8B608, 0);
    v37 = sub_100674024(v25, v42);

    return (v37 & 1) == 0;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_100A120AC(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0CB58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100A17A00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  sub_100A178C8(&qword_101A0CB60, type metadata accessor for CRLBoardLibraryViewModel.Item);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(_s4NodeVMa(0) + 20));
    v10[15] = 1;
    sub_1005B981C(&unk_101A23CC0);
    sub_100A17A54(&unk_101A0CB68, &qword_101A0CB18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100A122C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A0CB30);
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = _s4NodeVMa(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100A17A00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_100A178C8(&unk_101A0CB40, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v14 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10003DF68(v20, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_1005B981C(&unk_101A23CC0);
  v22 = 1;
  sub_100A17A54(&qword_101A0CB50, &qword_101A0CAF0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_10003CAC4(v13, v17, _s4NodeVMa);
  sub_100005070(a1);
  return sub_10000BA44(v13, _s4NodeVMa);
}

uint64_t sub_100A12638(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6572646C696863;
  }

  else
  {
    v3 = 1835365481;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6572646C696863;
  }

  else
  {
    v5 = 1835365481;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100A126D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100A12754()
{
  String.hash(into:)();
}

Swift::Int sub_100A127BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100A12834@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101875050, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100A12894(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (*v1)
  {
    v2 = 0x6E6572646C696863;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100A128CC@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101875050, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100A12930(uint64_t a1)
{
  v2 = sub_100A17A00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A1296C(uint64_t a1)
{
  v2 = sub_100A17A00();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100A129A8(uint64_t a1)
{
  v2 = v1;
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CAC4(v2, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10003DF68(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100F8D588();
      v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v15 = v9;
    }

    else
    {
      sub_10003DF68(v12, v6, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_100A178C8(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v14 = _s5BoardVMa;
      v15 = v6;
    }

    sub_10000BA44(v15, v14);
  }

  else
  {
    Hasher._combine(_:)(*v12);
  }

  v16 = _s4NodeVMa(0);
  sub_100E90344(a1, *(v2 + *(v16 + 20)));
}