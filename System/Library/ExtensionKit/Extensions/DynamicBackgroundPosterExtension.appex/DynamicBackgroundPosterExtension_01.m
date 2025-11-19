uint64_t sub_100017C6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100017CC0(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_1000703F0, &qword_100050B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017D28()
{
  v1 = *(v0 + 64);
  if ((v1 - 1) >= 2)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100017D80()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100017DD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017E28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100017E40()
{
  result = qword_1000708A0;
  if (!qword_1000708A0)
  {
    sub_10004CF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708A0);
  }

  return result;
}

uint64_t sub_100017E98()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100017F2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100017FA0(void *a1, __n128 a2, __n128 a3)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10004CEFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 rootNode];
  v10 = sub_10004D05C();
  v32 = [v9 childNodeWithName:v10 recursively:1];

  if (v32)
  {
    v11 = objc_opt_self();
    [v11 begin];
    v12 = [v32 parameters];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() valueWithVFXFloat3:v30.n128_f64[0]];
      v15 = sub_10004D05C();
      [v13 setObject:v14 forKeyedSubscript:v15];
      swift_unknownObjectRelease();
    }

    v16 = [v32 parameters];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_opt_self() valueWithVFXFloat4:v31.n128_f64[0]];
      v19 = sub_10004D05C();
      [v17 setObject:v18 forKeyedSubscript:v19];
      swift_unknownObjectRelease();
    }

    v20 = [v32 parameters];
    if (v20)
    {
      v21 = v20;
      isa = sub_10004D2DC().super.super.isa;
      v23 = sub_10004D05C();
      [v21 setObject:isa forKeyedSubscript:v23];
      swift_unknownObjectRelease();
    }

    [v11 commit];
    v24 = v32;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      (*(v5 + 16))(v8, Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger, v4);

      v27 = sub_10004CEDC();
      v28 = sub_10004D36C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Could not find parametersNode", v29, 2u);
      }

      (*(v5 + 8))(v8, v4);
    }
  }
}

id sub_100018394@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 deviceMotionRotation];
  v4 = sub_10004D40C();
  sub_1000184BC(v19, v4, &v16);
  v11 = v16;
  v5 = v17;
  [a1 deviceMotionRotation];
  v13 = v16.f64[0];
  [a1 deviceMotionRotation];
  v14 = __PAIR128__(*&v16.f64[1], *&v13);
  [a1 deviceMotionRotation];
  v10 = v17;
  [a1 deviceMotionRotation];
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v14), __PAIR128__(v18, *&v10));
  *&v6 = vcvt_f32_f64(v11);
  *&v7 = v5;
  *(&v6 + 1) = v7;
  v12 = v6;
  result = [a1 deviceMotionUpdateInterval];
  *a2 = v12;
  *(a2 + 16) = v15;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  return result;
}

void sub_1000184BC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  _Q1 = *a1;
  if (a2 == 2)
  {
    v6 = *a1;
    _Q1.i64[0] = *(a1 + 16);
  }

  else if (a2 == 1)
  {
    v6 = vextq_s8(_Q1, *(a1 + 16), 8uLL);
  }

  else
  {
    v6 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v7 = *(a1 + 24);
  v26 = v6;
  _D9 = v6.f64[1];
  _V4.D[1] = v7;
  v25 = *(a1 + 32);
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v15 = atan2(_D0 + _D0, (vmulq_f64(v6, v6).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v24 = v15;
  v16 = v7 * v26.f64[0] - _D9 * v27 + v7 * v26.f64[0] - _D9 * v27;
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  if (v16 < -1.0)
  {
    v16 = -1.0;
  }

  v23 = asin(v16);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v25;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v21 = atan2f(*&_D0, *&_D1);
  if (a2 == 2)
  {
    *v22.i64 = v23;
    v22.i64[1] = v21;
    v21 = v24;
  }

  else if (a2 == 1)
  {
    v22.i64[0] = v24;
    *&v22.i64[1] = v23;
  }

  else
  {
    v22 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v21 = 0x7FF8000000000000;
  }

  *a3 = v22;
  *(a3 + 16) = v21;
  *(a3 + 32) = a2;
}

void sub_100018608()
{
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 metalCapture])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      sub_1000186A4();
    }
  }
}

uint64_t sub_1000186A4()
{
  v45 = sub_10004CC9C();
  v42 = *(v45 - 8);
  v0 = v42;
  v1 = *(v42 + 64);
  __chkstk_darwin(v45);
  v3 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000CC1C(&qword_10006F430, &qword_100050B98);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v41 - v6;
  v8 = sub_10004CD3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v44 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v41 - v14;
  __chkstk_darwin(v13);
  v17 = v41 - v16;
  v43 = 0x8000000100053B50;
  v18 = NSTemporaryDirectory();
  v19 = sub_10004D08C();
  v41[1] = v20;
  v41[2] = v19;

  (*(v9 + 56))(v7, 1, 1, v8);
  v21 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v22 = *(v0 + 104);
  v23 = v45;
  v22(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v45);
  sub_10004CD1C();
  v46[0] = 0xD000000000000014;
  v46[1] = v43;
  v24 = v21;
  v25 = v8;
  v22(v3, v24, v23);
  sub_100018B44();
  sub_10004CD2C();
  (*(v42 + 8))(v3, v23);
  v26 = *(v9 + 8);
  v26(v15, v8);
  v27 = *(v9 + 16);
  v28 = v44;
  v45 = v17;
  v27();
  v29 = sub_10004CEDC();
  v30 = sub_10004D36C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v26;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46[0] = v33;
    *v32 = 136315138;
    sub_100018B98();
    v34 = sub_10004D73C();
    v35 = v25;
    v37 = v36;
    v31(v28, v35);
    v38 = sub_10000C618(v34, v37, v46);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "triggerProgrammaticCapture at %s", v32, 0xCu);
    sub_10000CF40(v33);

    v25 = v35;
    v39 = v31;
  }

  else
  {

    v26(v28, v25);
    v39 = v26;
  }

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  [qword_1000730A8 setMetalCapture:0];
  return v39(v45, v25);
}

unint64_t sub_100018B44()
{
  result = qword_10006F438;
  if (!qword_10006F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F438);
  }

  return result;
}

unint64_t sub_100018B98()
{
  result = qword_10006F440;
  if (!qword_10006F440)
  {
    sub_10004CD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F440);
  }

  return result;
}

uint64_t sub_100018BF0()
{
  sub_10001923C();

  v1 = *(v0 + 24);

  sub_100011DCC(v0 + 32);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SimulationSpeedManager()
{
  result = qword_10006F480;
  if (!qword_10006F480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018CFC()
{
  result = sub_10004CEFC();
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

uint64_t sub_100018DB8()
{
  v1 = v0;
  v2 = sub_10004CDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = aBlock - v9;
  if (!*(v0 + 16))
  {
    v11 = sub_10004CEDC();
    v12 = sub_10004D36C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Start monitoring VFXWorld simulation speed", v13, 2u);
    }

    sub_10004CDCC();
    sub_10004CD9C();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = objc_allocWithZone(NSTimer);

    isa = sub_10004CDAC().super.isa;
    aBlock[4] = sub_100019354;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001BB08;
    aBlock[3] = &unk_100066248;
    v17 = _Block_copy(aBlock);
    v18 = [v15 initWithFireDate:isa interval:1 repeats:v17 block:0.333333333];
    _Block_release(v17);

    v19 = *(v1 + 16);
    *(v1 + 16) = v18;
    v20 = v18;

    if (v20)
    {
      v21 = [objc_opt_self() mainRunLoop];
      [v21 addTimer:v20 forMode:NSRunLoopCommonModes];
    }

    v22 = *(v3 + 8);
    v22(v7, v2);
    return (v22)(v10, v2);
  }

  return result;
}

uint64_t sub_1000190C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v3);
    v4 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
    v5 = sub_100019374();

    os_unfair_lock_unlock(v3);

    v6 = v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
    v7 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4);
    if ((v5 & 0x100000000) != 0)
    {
      if ((*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4) & 1) == 0)
      {
        v8 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed);
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4))
      {
        goto LABEL_14;
      }

      v8 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed);
      if (*&v5 != v8)
      {
LABEL_7:
        if (v8 > 0.0)
        {
          if ((v5 & 0x100000000) == 0 && *&v5 > 0.0)
          {
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_18;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_10002E9A8(0xD000000000000012, 0x8000000100053BE0);
            swift_unknownObjectRelease();
          }

LABEL_17:
          swift_unknownObjectRelease();
LABEL_18:
          *v6 = v5;
          *(v6 + 4) = BYTE4(v5) & 1;
        }

LABEL_14:
        if ((v5 & 0x100000000) != 0 || *&v5 <= 0.0)
        {
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }

  return result;
}

void sub_10001923C()
{
  if (*(v0 + 16))
  {
    v1 = v0;
    v2 = sub_10004CEDC();
    v3 = sub_10004D36C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Stop monitoring VFXWorld simulation speed", v4, 2u);
    }

    [*(v1 + 16) invalidate];
    v5 = *(v1 + 16);
    *(v1 + 16) = 0;
  }
}

uint64_t sub_10001931C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001935C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000193B8()
{
  v1 = [v0 rootNode];
  v2 = sub_10004D05C();
  v3 = [v1 childNodeWithName:v2 recursively:1];

  if (!v3 || (v4 = [v3 presentationObject], v3, sub_10004D56C(), swift_unknownObjectRelease(), sub_100019710(), (swift_dynamicCast() & 1) == 0) || (v5 = objc_msgSend(v12[0], "parameters"), v12[0], !v5))
  {
    v14 = 0u;
    v15 = 0u;
LABEL_7:
    sub_1000196A8(&v14);
    v8 = 0;
    v9 = 1;
    goto LABEL_8;
  }

  v6 = sub_10004D05C();
  v7 = [v5 objectForKeyedSubscript:v6];

  swift_unknownObjectRelease();
  if (v7)
  {
    sub_10004D56C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v12 = 0u;
    v13 = 0u;
  }

  v14 = *v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_7;
  }

  v11 = swift_dynamicCast();
  v8 = LODWORD(v12[0]);
  v9 = v11 ^ 1;
  if (!v11)
  {
    v8 = 0;
  }

LABEL_8:
  LOBYTE(v14) = v9;
  return v8 | (v9 << 32);
}

uint64_t sub_1000195B4()
{
  v1 = [v0 assetRegistry];
  v2 = [v1 rootNode];

  v3 = sub_10004D05C();
  v4 = [v2 childNodeWithAssetName:v3];

  if (v4)
  {
    v5 = [v4 asset];

    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_1000196A8(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_1000703D0, &qword_100050E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100019710()
{
  result = qword_10006F5A8;
  if (!qword_10006F5A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006F5A8);
  }

  return result;
}

id sub_100019780()
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100073028 = result;
  return result;
}

void sub_1000197D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgIdle);
}

uint64_t sub_100019814()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgEffects);

  v5 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgIdle);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudsEffect()
{
  result = qword_10006F670;
  if (!qword_10006F670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001998C(void *a1, uint64_t a2, unint64_t a3, void *a4, char a5, char a6)
{
  v12 = [a1 rootNode];
  v13 = sub_10004D05C();
  v14 = [v12 childNodeWithName:v13];

  if (v14)
  {
    v15 = sub_10003F3A8(a2, a3, a4, a5) - 2;
    if (v15 > 4)
    {
      v16 = 0;
    }

    else
    {
      v16 = qword_100050C68[v15];
    }

    v17 = [v14 parameters];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10004D05C();
      v20 = [v18 objectForKeyedSubscript:v19];

      swift_unknownObjectRelease();
      if (v20)
      {
        sub_10004D56C();
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
      }

      v27 = v25;
      v28 = v26;
      if (*(&v26 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v25 == v16)
        {
LABEL_19:

          return;
        }

LABEL_15:
        v21 = [v14 parameters];
        if (v21)
        {
          v22 = v21;
          isa = sub_10004D32C().super.super.isa;
          v24 = sub_10004D05C();
          [v22 setObject:isa forKeyedSubscript:v24];
          swift_unknownObjectRelease();
        }

        if (a6)
        {
          [a1 restart];
        }

        goto LABEL_19;
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    sub_1000196A8(&v27);
    goto LABEL_15;
  }
}

uint64_t sub_100019BF0()
{
  sub_100019D90(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension17EffectDataManager_logger);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EffectDataManager()
{
  result = qword_10006F7A0;
  if (!qword_10006F7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019CA8()
{
  sub_100019D38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100019D38()
{
  if (!qword_10006F7B0)
  {
    sub_10004CEFC();
    v0 = sub_10004D53C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006F7B0);
    }
  }
}

uint64_t sub_100019D90(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019DF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10004CFEC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10004CFFC();
  v5 = sub_10004CFBC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_10004CFCC();
  sub_10000CC1C(&qword_10006F8C0, &qword_100050D48);
  v8 = *(sub_10004CE2C() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100050CB0;
  sub_10001A4F0(&qword_10006F8C8, &type metadata accessor for PRRenderingConfiguration);

  sub_10004CE1C();
  sub_10001A4F0(&qword_10006F8D0, &type metadata accessor for PREditingConfiguration);

  sub_10004CE1C();

  *a1 = v11;
  return result;
}

uint64_t sub_10001A028()
{
  v0 = sub_10004CEFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E098 != -1)
  {
    swift_once();
  }

  v5 = sub_1000132A8(v0, qword_10006F888);
  (*(v1 + 16))(v4, v5, v0);
  v6 = objc_allocWithZone(type metadata accessor for DynamicTranscriptBackgroundPosterController());
  return sub_100032100(v4);
}

uint64_t sub_10001A144()
{
  v0 = sub_10004CEFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E098 != -1)
  {
    swift_once();
  }

  v5 = sub_1000132A8(v0, qword_10006F888);
  v6 = *(v1 + 16);
  v6(v4, v5, v0);
  v7 = type metadata accessor for DynamicTranscriptBackgroundPosterDelegate();
  v8 = objc_allocWithZone(v7);
  v6(&v8[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension41DynamicTranscriptBackgroundPosterDelegate_logger], v4, v0);
  v14.receiver = v8;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "init");
  (*(v1 + 8))(v4, v0);
  v9 = sub_10000CC1C(&qword_10006F8B0, &unk_100050CC0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v13[1] = sub_10004CFDC();
  sub_10001A7CC(&qword_10006F8B8);
  sub_10004CE9C();
}

uint64_t sub_10001A350()
{
  v0 = sub_10004CEFC();
  sub_10001A538(v0, qword_10006F888);
  sub_1000132A8(v0, qword_10006F888);
  return sub_10004CEEC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001A454();
  sub_10001A7CC(&qword_10006F8A8);
  sub_10004CE7C();
  return 0;
}

unint64_t sub_10001A454()
{
  result = qword_10006F8A0;
  if (!qword_10006F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8A0);
  }

  return result;
}

uint64_t sub_10001A4F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10001A538(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10001A59C()
{
  v0 = sub_10004CECC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100028178(0);
  sub_10004D4BC();
  v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v1 + 16))(v4, v5 + v7, v0);
  v8 = v6;
  sub_10004CEAC();

  (*(v1 + 8))(v4, v0);
  if (qword_10006E0A0 != -1)
  {
    swift_once();
  }

  if (qword_10006E098 != -1)
  {
    swift_once();
  }

  v9 = sub_10004CEFC();
  v10 = sub_1000132A8(v9, qword_10006F888);
  return sub_1000217CC(v10, 0xD000000000000010, 0x8000000100053D10);
}

uint64_t sub_10001A7CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000CD64(&qword_10006F8B0, &unk_100050CC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10001A820(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  if (a4 == 3)
  {
    result = a3;
    if (a3)
    {
      return result;
    }

    v8 = sub_10003F3A8(a1, a2, 0, 3);
    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100050D50;
      *(inited + 32) = [objc_allocWithZone(UIColor) initWithRed:0.894117647 green:0.584313725 blue:0.223529412 alpha:1.0];
      *(inited + 40) = [objc_allocWithZone(UIColor) initWithRed:0.607843137 green:0.270588235 blue:0.17254902 alpha:1.0];
      result = [objc_allocWithZone(UIColor) initWithRed:0.615686275 green:0.603921569 blue:0.560784314 alpha:1.0];
      *(inited + 48) = result;
      if ((inited & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(inited + 32 + 8 * v9);
LABEL_8:
          v12 = v11;

          return v12;
        }

        __break(1u);
        return result;
      }
    }

    v11 = sub_10004D62C();
    goto LABEL_8;
  }

  v13 = [objc_opt_self() blackColor];

  return v13;
}

id sub_10001A9EC(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  if (a4 != 3)
  {
    v10 = [objc_opt_self() blackColor];

    return v10;
  }

  v7 = a3;
  if (a3)
  {
    v8 = v7;
    v9 = sub_10001ABDC();

    return v9;
  }

  v12 = sub_10003F3A8(a1, a2, 0, 3);
  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100050D50;
  *(inited + 32) = [objc_allocWithZone(UIColor) initWithRed:0.68627451 green:0.423529412 blue:0.168627451 alpha:1.0];
  *(inited + 40) = [objc_allocWithZone(UIColor) initWithRed:0.68627451 green:0.356862745 blue:0.22745098 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.635294118 green:0.635294118 blue:0.62745098 alpha:1.0];
  *(inited + 48) = result;
  if ((inited & 0xC000000000000001) != 0)
  {
LABEL_15:
    v15 = sub_10004D62C();
    goto LABEL_12;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(inited + 32 + 8 * v13);
LABEL_12:
    v9 = v15;

    return v9;
  }

  __break(1u);
  return result;
}

id sub_10001ABDC()
{
  *v0.i64 = sub_10004B11C();
  __asm { FMOV            V1.4S, #0.75 }

  v9 = vmulq_f32(v0, _Q1);
  v6 = sub_10004D05C();
  v7 = sub_10004B21C(v6, v9);

  return v7;
}

uint64_t sub_10001AC34(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v3 + v4, v28);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  if (v27 != 3)
  {
    sub_100010F08(v24, v25, v26, v27);
    return 0;
  }

  sub_10000CEDC(v3 + v4, v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = v27;
  if (v27 != 3)
  {
    goto LABEL_14;
  }

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if (![qword_1000730A8 enableFantasy])
  {
    v5 = 3;
LABEL_14:
    sub_100010F08(v24, v25, v26, v5);
    goto LABEL_15;
  }

  v6 = sub_10003F3A8(v24, v25, v26, 3);
  v7 = sub_10004A040(v24, v25, v26, 3u);
  if (v7 >> 62)
  {
    v8 = sub_10004D67C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100010F08(v24, v25, v26, 3u);

  if (v6 == v8)
  {
    return 0;
  }

LABEL_15:
  sub_10000CEDC(v3 + v4, v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    result = sub_10004D66C();
    __break(1u);
    return result;
  }

  v10 = sub_10001A820(v24, v25, v26, v27);
  sub_100010F08(v24, v25, v26, v27);
  v23 = v10;
  v11 = sub_10001CEF8(v10);
  sub_10000D024(0, &qword_10006F9E0, UIAction_ptr);
  if (qword_10006E090 != -1)
  {
    swift_once();
  }

  v12 = qword_100073028;
  v22._countAndFlagsBits = 0x8000000100053F20;
  v29._countAndFlagsBits = 0x49505F524F4C4F43;
  v29._object = 0xEC00000052454B43;
  v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31.value._object = 0xEB00000000656C62;
  v13.super.isa = qword_100073028;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004CC4C(v29, v31, v13, v33, v22);
  sub_10004D05C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  v16 = a1;
  v17 = v11;
  v18 = sub_10004D51C();
  v30._countAndFlagsBits = 0x49505F524F4C4F43;
  v30._object = 0xEC00000052454B43;
  v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32.value._object = 0xEB00000000656C62;
  v19.super.isa = v12;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004CC4C(v30, v32, v19, v34, 0x8000000100053F20);
  v20 = sub_10004D05C();

  [v18 setAccessibilityLabel:v20];

  sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100050D60;
  *(v21 + 32) = v18;

  return v21;
}

void sub_10001B158(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10001B1B4(a3);
  }
}

void sub_10001B1B4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v3 + v4, aBlock);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = sub_10001A820(v19, v20, v21, v22);
    sub_100010F08(v5, v6, v7, v8);
    v10 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
    v11 = [objc_allocWithZone(PRPosterColor) initWithColor:v9];
    [v10 setSelectedColor:v11];

    v12 = sub_10004D05C();
    v13 = [a1 viewForMenuElementIdentifier:v12];

    [v10 setColorPickerSourceItem:v13];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_10001D430;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001BB08;
    aBlock[3] = &unk_100066330;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    [v17 presentColorPickerWithConfiguration:v10 changeHandler:v16];
    _Block_release(v16);
  }

  else
  {
    sub_10004D66C();
    __break(1u);
  }
}

void sub_10001B518(void *a1, uint64_t a2, void *a3)
{
  v4 = convert(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10001B594(v4, a3);
  }
}

void sub_10001B594(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v4 + v5, &v44);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    v6 = sub_10001A820(v40, v41, v42, v43);
    sub_100010F08(v40, v41, v42, v43);
    v7 = [a1 colorWithAlphaComponent:1.0];
    v8.n128_f64[0] = sub_10004B11C();
    v9 = sub_10004B44C(v8);
    v11 = v10;
    v12.n128_f64[0] = sub_10004B11C();
    if (v9 == sub_10004B44C(v12) && v11 == v13)
    {

      return;
    }

    v15 = sub_10004D74C();

    if (v15)
    {

LABEL_28:
      return;
    }

    sub_10000CEDC(v4 + v5, &v44);
    if (swift_dynamicCast())
    {
      if (v43 == 3)
      {
        v16 = sub_10003F3A8(v40, v41, v42, v43);
        v17 = sub_10004A040(v40, v41, v42, 3u);
        v18 = v17 >> 62 ? sub_10004D67C() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100010F08(v40, v41, v42, 3u);

        v19 = v18 < v16;
      }

      else
      {
        sub_100010F08(v40, v41, v42, v43);
        v19 = 0;
      }

      sub_10000CEDC(v4 + v5, &v44);
      if (swift_dynamicCast())
      {
        v38 = v19;
        v20 = sub_10004A040(v40, v41, v42, v43);
        if (v20 >> 62)
        {
          v21 = sub_10004D67C();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFADD__(v21, 1))
        {
          __break(1u);
        }

        else
        {
          *&v44 = v21 + 1;
          v22 = sub_10004D73C();
          v24 = v23;
          sub_100010F08(v40, v41, v42, v43);
          v45 = &type metadata for EffectType;
          v46 = &off_100066D68;
          v25 = swift_allocObject();
          *&v44 = v25;
          *(v25 + 16) = v22;
          *(v25 + 24) = v24;
          *(v25 + 32) = v7;
          *(v25 + 40) = 3;
          swift_beginAccess();
          v7 = v7;
          sub_10000CF40((v4 + v5));
          sub_10000CEC4(&v44, v4 + v5);
          swift_endAccess();
          if (qword_10006E0A8 == -1)
          {
LABEL_20:
            v26 = qword_1000730A8;
            v27.n128_f64[0] = sub_10004B11C();
            sub_10004B44C(v27);
            v28 = sub_10004D05C();

            [v26 setCustomGlitterVariant:v28];

            if (!v38)
            {
              [a2 updateLooksWithoutBuilding];
            }

            v29 = sub_100032974();
            if (v29)
            {
              v30 = *&v29[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
              v31 = v29;

              if (v30)
              {
                swift_unknownObjectWeakInit();
                v32 = *(v30 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
                os_unfair_lock_lock(v32);
                v33 = *(v30 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v35 = Strong;
                  v36 = v33;
                  v37 = sub_10001ABDC();
                  sub_10001CD0C(v36);
                }

                os_unfair_lock_unlock(v32);

                swift_unknownObjectWeakDestroy();
              }
            }

            [a2 updateActions];

            goto LABEL_28;
          }
        }

        swift_once();
        goto LABEL_20;
      }
    }
  }

  sub_10004D66C();
  __break(1u);
}

void sub_10001BB08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10001BB70(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [a2 CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  v12 = [a1 CGContext];
  CGContextSetLineWidth(v12, a3);

  v13 = [a1 CGContext];
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 resolvedColorWithTraitCollection:v15];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(v13, v17);

  v18 = [a1 CGContext];
  v21.origin.x = a3;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextAddEllipseInRect(v18, v21);

  v19 = [a1 CGContext];
  CGContextDrawPath(v19, kCGPathFillStroke);
}

void sub_10001BD5C(void *a1, unint64_t a2)
{

  v4 = sub_10004CEDC();
  v5 = sub_10004D39C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_10000D024(0, &qword_10006F9D0, UIColor_ptr);
    v8 = sub_10004D24C();
    v10 = sub_10000C618(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "editor colors %s", v6, 0xCu);
    sub_10000CF40(v7);
  }

  if (a2 >> 62)
  {
    if (sub_10004D67C() != 1)
    {
      return;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = sub_10004D62C();
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(a2 + 32);
  }

  v12 = v11;
  sub_10001B594(v11, a1);
}

float sub_10001C88C(void *a1)
{
  v1 = a1;
  v2 = sub_10004D05C();
  [v1 floatForKey:v2];
  v4 = v3;

  return v4;
}

void sub_10001C91C(void *a1, float a2)
{
  v5 = a1;
  v3 = sub_10004D05C();
  *&v4 = a2;
  [v5 setFloat:v3 forKey:v4];
}

uint64_t type metadata accessor for GlitterEffect()
{
  result = qword_10006F908;
  if (!qword_10006F908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CAE8(char a1, id a2, char a3)
{
  v6 = [a2 rootNode];
  v7 = sub_10004D05C();
  v8 = [v6 childNodeWithName:v7];

  if (v8)
  {
    v9 = [v8 parameters];
    if (v9)
    {
      v10 = v9;
      v11 = sub_10004D05C();
      v12 = [v10 objectForKeyedSubscript:v11];

      swift_unknownObjectRelease();
      if (v12)
      {
        sub_10004D56C();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v19 = v17;
      v20 = v18;
      if (*(&v18 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v17 == (a1 & 1))
        {
LABEL_16:

          return;
        }

LABEL_12:
        v13 = [v8 parameters];
        if (v13)
        {
          v14 = v13;
          isa = sub_10004D28C().super.super.isa;
          v16 = sub_10004D05C();
          [v14 setObject:isa forKeyedSubscript:v16];
          swift_unknownObjectRelease();
        }

        if (a3)
        {
          [a2 restart];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    sub_1000196A8(&v19);
    goto LABEL_12;
  }
}

void sub_10001CD0C(void *a1)
{
  v1 = [a1 rootNode];
  v2 = sub_10004D05C();
  v14 = [v1 childNodeWithName:v2];

  if (v14)
  {
    v3 = [v14 parameters];
    if (v3)
    {
      v4 = v3;
      *&v5 = sub_10004B11C();
      v13 = v5;
      v6 = [objc_opt_self() valueWithVFXFloat4:*&v5];
      v7 = sub_10004D05C();
      [v4 setObject:v6 forKeyedSubscript:v7];
      swift_unknownObjectRelease();
    }

    v8 = [v14 parameters];
    if (v8)
    {
      v9 = v8;
      v10 = sub_10004B11C();
      v11 = [objc_opt_self() valueWithVFXFloat4:v10];
      v12 = sub_10004D05C();
      [v9 setObject:v11 forKeyedSubscript:v12];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10001CEF8(void *a1)
{
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = xmmword_100050D70;
  *(v3 + 40) = 0x403D000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10001D488;
  *(v4 + 24) = v3;
  v9[4] = sub_10001D4A8;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001F2FC;
  v9[3] = &unk_1000663A8;
  v5 = _Block_copy(v9);
  v6 = a1;

  v7 = [v2 imageWithActions:v5];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_10001D0A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v1 + v2, v17);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    if (v16 != 3)
    {
      sub_100010F08(v13, v14, v15, v16);
      return &_swiftEmptyArrayStorage;
    }

    sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100050D60;
    sub_10000CEDC(v1 + v2, v17);
    if (swift_dynamicCast())
    {
      v4 = sub_10001A820(v13, v14, v15, v16);
      sub_100010F08(v13, v14, v15, v16);
      *(v3 + 32) = v4;

      v5 = sub_10004CEDC();
      v6 = sub_10004D39C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v17[0] = v8;
        *v7 = 136315138;
        sub_10000D024(0, &qword_10006F9D0, UIColor_ptr);
        v9 = sub_10004D24C();
        v11 = sub_10000C618(v9, v10, v17);

        *(v7 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v5, v6, "initialColors %s", v7, 0xCu);
        sub_10000CF40(v8);
      }

      return v3;
    }
  }

  result = sub_10004D66C();
  __break(1u);
  return result;
}

uint64_t sub_10001D36C()
{
  sub_100010F08(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001D3AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D3F0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001D450()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D4BC(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = a1;

  v4 = *(v1 + 16);
  swift_weakInit();
  v5 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v5);
  v6 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_10001D554(v6, v8, v3);

  os_unfair_lock_unlock(v5);
  return swift_weakDestroy();
}

uint64_t sub_10001D554(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10004CEFC();
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v66 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v73 = result;
  v13 = [a1 assets];
  v14 = [v13 rootNode];

  v15 = [v14 childNodes];
  v16 = sub_10000D024(0, &qword_10006FB18, VFXAssetNode_ptr);
  v17 = sub_10004D23C();

  v67 = a3;
  v68 = v9;
  v69 = v11;
  v70 = v5;
  v74 = a1;
  v71 = v16;
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_28:

    v30 = v74;
    p_attr = &stru_10006AFF8.attr;
    v32 = &stru_10006AFF8.attr;
    v33 = &stru_10006AFF8.attr;
    goto LABEL_29;
  }

LABEL_27:
  v18 = sub_10004D67C();
  if (!v18)
  {
    goto LABEL_28;
  }

LABEL_4:
  v19 = 0;
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = sub_10004D62C();
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v23 = [v20 name];
    v24 = sub_10004D08C();
    v26 = v25;

    if (v24 == 0x47207265646E6552 && v26 == 0xEC00000068706172)
    {
      break;
    }

    v28 = sub_10004D74C();

    if (v28)
    {
      goto LABEL_18;
    }

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_28;
    }
  }

LABEL_18:

  v29 = [v21 asset];

  v30 = v74;
  p_attr = (&stru_10006AFF8 + 8);
  v32 = (&stru_10006AFF8 + 8);
  v33 = (&stru_10006AFF8 + 8);
  v34 = v69;
  if (v29)
  {
    v35 = v74;
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v37 = v36;
      (*(v72 + 16))(v34, v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v70);
      v38 = sub_10004CEDC();
      v39 = sub_10004D39C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Found 'Render Graph'", v40, 2u);
      }

      (*(v72 + 8))(v34, v70);
      v41 = *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects);
      *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects) = v37;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v30 = v35;
  }

LABEL_29:
  v42 = [v30 p_attr[123]];
  v43 = [v42 v32[46]];

  v44 = [v43 v33[124]];
  v45 = sub_10004D23C();

  if (!(v45 >> 62))
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_31;
    }

LABEL_55:
  }

LABEL_54:
  v46 = sub_10004D67C();
  if (!v46)
  {
    goto LABEL_55;
  }

LABEL_31:
  v47 = 0;
  v74 = v45 & 0xC000000000000001;
  while (1)
  {
    if (v74)
    {
      v48 = sub_10004D62C();
    }

    else
    {
      if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v48 = *(v45 + 8 * v47 + 32);
    }

    v49 = v48;
    v50 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v51 = [v48 name];
    v52 = sub_10004D08C();
    v54 = v53;

    if (v52 == 0xD00000000000001CLL && 0x8000000100053FF0 == v54)
    {
      break;
    }

    v56 = sub_10004D74C();

    if (v56)
    {
      goto LABEL_45;
    }

    ++v47;
    if (v50 == v46)
    {
      goto LABEL_55;
    }
  }

LABEL_45:

  v57 = [v49 asset];

  v58 = v70;
  v59 = v68;
  if (!v57)
  {
  }

  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (v60)
  {
    v61 = v60;
    (*(v72 + 16))(v59, v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v58);
    v62 = sub_10004CEDC();
    v63 = sub_10004D39C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Found 'Render Graph without Rripple'", v64, 2u);
    }

    (*(v72 + 8))(v59, v58);
    v65 = *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle);
    *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle) = v61;
    swift_unknownObjectRetain_n();

    [v67 setRenderGraph:v61];
    swift_unknownObjectRelease_n();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10001DC78(char a1)
{
  v3 = *(v1 + 16);
  swift_weakInit();
  v4 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v4);
  sub_10001DE98(v6, a1 & 1);
  os_unfair_lock_unlock(v4);
  return swift_weakDestroy();
}

void sub_10001DCE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle);
}

uint64_t sub_10001DD20()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects);

  v5 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OceanEffect()
{
  result = qword_10006FA10;
  if (!qword_10006FA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DE98(uint64_t a1, char a2)
{
  v3 = sub_10004CEFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 24);

    v14 = [v13 renderGraph];
    v15 = v14;
    if (a2)
    {
      v16 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle;
      v17 = *(v12 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle);
      if (v14)
      {
        if (v17)
        {
          sub_10000D024(0, &qword_10006FB10, VFXRenderGraph_ptr);
          v18 = v17;
          v19 = sub_10004D50C();

          if ((v19 & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_14:
        }
      }

      else if (!v17)
      {
        goto LABEL_14;
      }

LABEL_16:
      (*(v4 + 16))(v8, v12 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v3);
      v24 = sub_10004CEDC();
      v25 = sub_10004D39C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Switching to idle render graph", v26, 2u);
      }

      (*(v4 + 8))(v8, v3);
      v27 = *(v12 + 24);
      v28 = v27;

      if (!v27)
      {
      }

      v29 = *(v12 + v16);
      goto LABEL_25;
    }

    v20 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects;
    v21 = *(v12 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects);
    if (v14)
    {
      if (v21)
      {
        sub_10000D024(0, &qword_10006FB10, VFXRenderGraph_ptr);
        v22 = v21;
        v23 = sub_10004D50C();

        if (v23)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else if (!v21)
    {
      goto LABEL_14;
    }

    (*(v4 + 16))(v10, v12 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v3);

    v30 = sub_10004CEDC();
    v31 = sub_10004D39C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v12 + v20);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Switching to effects render graph - %@", v32, 0xCu);
      sub_100017CC0(v33);
    }

    (*(v4 + 8))(v10, v3);
    v36 = *(v12 + 24);
    v28 = v36;

    if (!v36)
    {
    }

    v29 = *(v12 + v20);
LABEL_25:
    v37 = v29;
    [v28 setRenderGraph:v37];
  }

  return result;
}

void sub_10001E314()
{
  v1 = v0;
  [v0 bounds];
  v6 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation;
  if ((*&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  if ((*&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  if ((*&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  if ((*&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100050E70;
  v12 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView];
  *(inited + 32) = v12;
  v70 = inited + 32;
  v13 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_label];
  *(inited + 40) = v13;
  v73 = *&CGAffineTransformIdentity.c;
  v74 = *&CGAffineTransformIdentity.a;
  v72 = *&CGAffineTransformIdentity.tx;
  v14 = inited & 0xC000000000000001;
  v71 = inited;
  v67 = &v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_configuration];
  v15 = v12;
  v16 = v13;
  v17 = 0;
  v18 = 0;
  p_attr = &stru_10006AFF8.attr;
  v20 = (&stru_10006AFF8 + 8);
  *&v21 = 136315138;
  v66 = v21;
  v68 = v6;
  v69 = v15;
  do
  {
    v22 = v17;
    if (v14)
    {
      v23 = sub_10004D62C();
    }

    else
    {
      v23 = *(v70 + 8 * v18);
    }

    v24 = v23;
    v25 = p_attr[129];
    *&v75.a = v74;
    *&v75.c = v73;
    *&v75.tx = v72;
    [v23 v25];
    [v24 setBounds:{v7, v8, v9, v10}];
    v76.origin.x = v7;
    v76.origin.y = v8;
    v76.size.width = v9;
    v76.size.height = v10;
    MidX = CGRectGetMidX(v76);
    v77.origin.x = v7;
    v77.origin.y = v8;
    v77.size.width = v9;
    v77.size.height = v10;
    [v24 v20[131]];
    v27 = *&v1[v6];
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v49 = v1;
        v50 = sub_10004CEDC();
        v51 = sub_10004D37C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *&v75.a = v53;
          *v52 = v66;
          v54 = *(v67 + 4);
          v55 = *(v67 + 5);

          v56 = sub_10000C618(v54, v55, &v75);
          p_attr = &stru_10006AFF8.attr;

          *(v52 + 4) = v56;
          v15 = v69;
          _os_log_impl(&_mh_execute_header, v50, v51, "#%s updateLayout right", v52, 0xCu);
          sub_10000CF40(v53);
          v6 = v68;
        }

        v20 = &stru_10006AFF8.attr;
        v80.origin.x = v7;
        v80.origin.y = v8;
        v80.size.width = v9;
        v80.size.height = v10;
        MidY = CGRectGetMidY(v80);
        v81.origin.x = v7;
        v81.origin.y = v8;
        v81.size.width = v9;
        v81.size.height = v10;
        [v24 setCenter:{MidY, CGRectGetMidX(v81)}];
        v48 = 1.57079633;
        goto LABEL_33;
      }

      if (v27 == 4)
      {
        v36 = v1;
        v37 = sub_10004CEDC();
        v38 = sub_10004D37C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&v75.a = v40;
          *v39 = v66;
          v42 = *(v67 + 4);
          v41 = *(v67 + 5);

          v43 = sub_10000C618(v42, v41, &v75);
          v20 = &stru_10006AFF8.attr;

          *(v39 + 4) = v43;
          v6 = v68;
          _os_log_impl(&_mh_execute_header, v37, v38, "#%s updateLayout left", v39, 0xCu);
          sub_10000CF40(v40);
          v15 = v69;
        }

        v78.origin.x = v7;
        v78.origin.y = v8;
        v78.size.width = v9;
        v78.size.height = v10;
        v44 = CGRectGetMidY(v78);
        v79.origin.x = v7;
        v79.origin.y = v8;
        v79.size.width = v9;
        v79.size.height = v10;
        [v24 v20[131]];
        CGAffineTransformMakeRotation(&v75, -1.57079633);
        v45 = *&v75.a;
        v46 = *&v75.c;
        v47 = *&v75.tx;
        p_attr = (&stru_10006AFF8 + 8);
        goto LABEL_34;
      }

LABEL_35:

      goto LABEL_15;
    }

    if (v27 >= 2)
    {
      if (v27 == 2)
      {
        v48 = 3.14159265;
LABEL_33:
        CGAffineTransformMakeRotation(&v75, v48);
        v45 = *&v75.a;
        v46 = *&v75.c;
        v47 = *&v75.tx;
LABEL_34:
        v58 = p_attr[129];
        *&v75.a = v45;
        *&v75.c = v46;
        *&v75.tx = v47;
        [v24 v58];
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v28 = v1;
    v29 = sub_10004CEDC();
    v30 = sub_10004D37C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v75.a = v32;
      *v31 = v66;
      v33 = *(v67 + 4);
      v34 = *(v67 + 5);

      v35 = sub_10000C618(v33, v34, &v75);
      p_attr = (&stru_10006AFF8 + 8);

      *(v31 + 4) = v35;
      v15 = v69;
      _os_log_impl(&_mh_execute_header, v29, v30, "#%s updateLayout portrait", v31, 0xCu);
      sub_10000CF40(v32);
      v6 = v68;
    }

    v20 = &stru_10006AFF8.attr;
LABEL_15:
    v17 = 1;
    v18 = 1;
  }

  while ((v22 & 1) == 0);
  swift_setDeallocating();
  v59 = *(v71 + 16);
  swift_arrayDestroy();
  v60 = [v15 subviews];
  sub_10001F288();
  v61 = sub_10004D23C();

  if (v61 >> 62)
  {
    v62 = sub_10004D67C();
    if (!v62)
    {
      goto LABEL_45;
    }

LABEL_38:
    if (v62 >= 1)
    {
      v63 = 0;
      do
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v64 = sub_10004D62C();
        }

        else
        {
          v64 = *(v61 + 8 * v63 + 32);
        }

        v65 = v64;
        ++v63;
        [v15 bounds];
        [v65 setFrame:?];
      }

      while (v62 != v63);
      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_38;
    }

LABEL_45:
  }
}

void sub_10001EA04(void *a1, _BYTE *a2)
{
  v3 = v2;
  v6 = [a1 superview];
  v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView];
  if (!v6 || (v8 = v6, sub_10001F288(), v9 = v7, v10 = sub_10004D50C(), v8, v9, (v10 & 1) == 0))
  {
    v11 = v3;
    v12 = a1;
    v13 = sub_10004CEDC();
    v14 = sub_10004D37C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v15 = 136315650;
      v18 = &v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_configuration];
      v19 = *&v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_configuration + 32];
      v20 = *(v18 + 5);

      v21 = sub_10000C618(v19, v20, &v24);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *(v15 + 22) = 2112;
      *(v15 + 24) = v7;
      *v16 = v12;
      v16[1] = v7;
      v22 = v7;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "#%s PlaceholderView add%@ to contentView %@", v15, 0x20u);
      sub_10000CC1C(&qword_1000703F0, &qword_100050B90);
      swift_arrayDestroy();

      sub_10000CF40(v17);
    }

    *a2 = 1;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    [v7 addSubview:v12];
  }
}

id sub_10001EDAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaceholderView()
{
  result = qword_10006FB60;
  if (!qword_10006FB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EF0C()
{
  result = sub_10004CEFC();
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

char *sub_10001EFC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004CEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_label;
  *&v3[v11] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] = 0;
  v12 = *(v7 + 16);
  v12(v10, a1, v6);
  objc_allocWithZone(type metadata accessor for SnapshotView());
  sub_10000CDAC(a2, v30);
  v13 = sub_100026A58(a2, v10);
  sub_10000CE08(a2);
  *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_snapshotView] = v13;
  v14 = &v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_configuration];
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 80);
  *(v14 + 4) = *(a2 + 64);
  *(v14 + 5) = v17;
  *(v14 + 6) = *(a2 + 96);
  *(v14 + 110) = *(a2 + 110);
  v18 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 1) = v18;
  v19 = *(a2 + 48);
  *(v14 + 2) = *(a2 + 32);
  *(v14 + 3) = v19;
  v12(&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_logger], a1, v6);
  v20 = objc_allocWithZone(UIView);
  sub_10000CDAC(a2, v30);
  v21 = [v20 initWithFrame:{0.0, 0.0, v15, v16}];
  *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView] = v21;
  v22 = type metadata accessor for PlaceholderView();
  v29.receiver = v3;
  v29.super_class = v22;
  v23 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, v15, v16);
  v24 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView;
  v25 = *&v23[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView];
  v26 = v23;
  [v25 setAutoresizesSubviews:0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 addSubview:*&v23[v24]];
  sub_10001E314();
  v27 = *&v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_snapshotView];
  sub_10001EA04(v27, v30);

  sub_10001E314();
  (*(v7 + 8))(a1, v6);
  return v26;
}

unint64_t sub_10001F288()
{
  result = qword_10006FB70;
  if (!qword_10006FB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006FB70);
  }

  return result;
}

void sub_10001F2FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_10001F348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *(v6 + 45) = 0u;
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_logger;
  v8 = sub_10004CEFC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a2, v8);
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_isSnapshotMode) = *(a1 + 96);
  sub_1000427C8(v20);
  v10 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
  v11 = v20[1];
  *v10 = v20[0];
  v10[1] = v11;
  v10[2] = v21[0];
  *(v10 + 45) = *(v21 + 13);
  v12 = *(a1 + 40);
  v13 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID);
  *v13 = *(a1 + 32);
  v13[1] = v12;
  v14 = qword_10006E0B8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
  v24[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
  v24[1] = v15;
  v25[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
  *(v25 + 13) = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
  sub_100044D30(v24, v22);
  sub_10000CE08(a1);
  (*(v9 + 8))(a2, v8);
  v16 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v17 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v26[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v26[1] = v17;
  v27[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  *(v27 + 13) = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
  v18 = v22[1];
  *v16 = v22[0];
  v16[1] = v18;
  v16[2] = v23[0];
  *(v16 + 45) = *(v23 + 13);
  sub_1000132E0(v26);
  return v3;
}

BOOL sub_10001F534()
{
  v1 = v0;
  if (qword_10006E0A0 != -1)
  {
    swift_once();
  }

  if (*(qword_100073070 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_shouldRunAsSnapshot) == 1)
  {

    v2 = sub_10004CEDC();
    v3 = sub_10004D36C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v23 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10000C618(*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v23);
      _os_log_impl(&_mh_execute_header, v2, v3, "#%s PIDObserver: shouldRunAsSnapshot", v4, 0xCu);
      sub_10000CF40(v5);
    }

    return 0;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_isSnapshotMode) != 1)
    {
      return 1;
    }

    v7 = (v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
    v8 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
    v19[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
    v19[1] = v8;
    v20[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
    *(v20 + 13) = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
    if (!*(&v19[0] + 1))
    {
      return 1;
    }

    v23 = v19[0];
    v9 = v7[2];
    v10 = *v7;
    v24 = v7[1];
    v25[0] = v9;
    *(v25 + 13) = *(v7 + 45);
    v17[0] = v10;
    v17[1] = v24;
    v18[0] = v9;
    *(v18 + 13) = *(v25 + 13);
    sub_1000131F8(v17, v21);
    v11 = sub_100042698();
    v13 = v12;
    sub_1000132E0(v19);
    v14 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
    v21[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v21[1] = v14;
    v22[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
    *(v22 + 13) = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
    if (v11 == sub_100042698() && v13 == v15)
    {

      return 0;
    }

    v16 = sub_10004D74C();

    return (v16 & 1) == 0;
  }
}

void sub_10001F7C0(id a1, void (*a2)(uint64_t), void *a3)
{
  v5 = v3;
  v7 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v8 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v99[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v99[1] = v8;
  v100[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  *(v100 + 13) = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
  if (*(&v99[0] + 1))
  {
    v96[2] = v99[0];
    v9 = v7[2];
    v10 = *v7;
    v97 = v7[1];
    v98[0] = v9;
    *(v98 + 13) = *(v7 + 45);
    aBlock = v10;
    v90 = v97;
    v91[0] = v9;
    *(v91 + 13) = *(v98 + 13);
    sub_1000131F8(&aBlock, v95);
    v11 = sub_100042698();
    v13 = v12;
    sub_1000132E0(v99);
    v4 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v14 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
    v95[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v95[1] = v14;
    v96[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
    *(v96 + 13) = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
    if (v11 == sub_100042698() && v13 == v15)
    {

LABEL_6:

      v17 = sub_10004CEDC();
      v18 = sub_10004D39C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *&v87[0] = swift_slowAlloc();
        *v19 = 136315394;
        *(v19 + 4) = sub_10000C618(*(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), v87);
        *(v19 + 12) = 2080;
        v20 = v4[1];
        v92 = *v4;
        v93 = v20;
        v94[0] = v4[2];
        *(v94 + 13) = *(v4 + 45);
        v21 = sub_1000428CC();
        v23 = sub_10000C618(v21, v22, v87);

        *(v19 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "#%s snapshot: exist for %s", v19, 0x16u);
        swift_arrayDestroy();
      }

      if (a2)
      {
        a2(1);
      }

      return;
    }

    v16 = sub_10004D74C();

    if (v16)
    {
      goto LABEL_6;
    }
  }

  [a1 bounds];
  x = v102.origin.x;
  y = v102.origin.y;
  width = v102.size.width;
  height = v102.size.height;
  v28 = CGRectGetWidth(v102);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v28 < 9.22337204e18)
  {
    v80 = a1;
    v4 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    if (*(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 40) != v28)
    {
LABEL_19:

      v30 = sub_10004CEDC();
      v31 = sub_10004D37C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v32 = 136315906;
        *(v32 + 4) = sub_10000C618(*(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock);
        *(v32 + 12) = 2080;
        v33 = v4[1];
        v92 = *v4;
        v93 = v33;
        v94[0] = v4[2];
        *(v94 + 13) = *(v4 + 45);
        v34 = sub_1000428CC();
        v36 = sub_10000C618(v34, v35, &aBlock);

        *(v32 + 14) = v36;
        *(v32 + 22) = 2048;
        *(v32 + 24) = width;
        *(v32 + 32) = 2048;
        *(v32 + 34) = height;
        _os_log_impl(&_mh_execute_header, v30, v31, "#%s snapshot: size are not matching %s vs %fx%f", v32, 0x2Au);
        swift_arrayDestroy();
      }

LABEL_22:
      if (qword_10006E0A8 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_54;
    }

    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = width;
    v103.size.height = height;
    v29 = CGRectGetHeight(v103);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        if (*(v4 + 6) == v29)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_23:
  v37 = [qword_1000730A8 useVFXSnapshot];
  v38 = [qword_1000730A8 useCASnapshot];
  if (v37)
  {

    v39 = sub_10004CEDC();
    v40 = sub_10004D37C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&aBlock = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10000C618(*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock);
      _os_log_impl(&_mh_execute_header, v39, v40, "#%s snapshot: from vfxview", v41, 0xCu);
      sub_10000CF40(v42);
    }

    v43 = [v80 snapshot];
    goto LABEL_27;
  }

  if ((v38 & 1) == 0)
  {
    v48 = v4;
    v49 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{width, height}];
    v50 = swift_allocObject();
    *(v50 + 2) = v80;
    v50[3] = x;
    v50[4] = y;
    v50[5] = width;
    v50[6] = height;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1000206AC;
    *(v51 + 24) = v50;
    *&v91[0] = sub_1000206D8;
    *(&v91[0] + 1) = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v90 = sub_10001F2FC;
    *(&v90 + 1) = &unk_100066420;
    v52 = _Block_copy(&aBlock);
    v53 = v80;

    v43 = [v49 imageWithActions:v52];

    _Block_release(v52);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if ((v49 & 1) == 0)
    {
      v4 = v48;
      v44 = sub_1000206AC;
      goto LABEL_34;
    }

LABEL_58:
    __break(1u);
    return;
  }

  v101.width = width;
  v101.height = height;
  UIGraphicsBeginImageContext(v101);
  v45 = UIGraphicsGetCurrentContext();
  if (v45)
  {
    v46 = v45;
    v47 = [v80 layer];
    [v47 renderInContext:v46];

    v43 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v43)
    {

LABEL_27:
      v44 = 0;
LABEL_34:

      v54 = v43;
      v55 = sub_10004CEDC();
      v56 = sub_10004D39C();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = v44;
        v58 = v4;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&aBlock = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_10000C618(*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock);
        _os_log_impl(&_mh_execute_header, v55, v56, "#%s snapshot: generated", v59, 0xCu);
        sub_10000CF40(v60);

        v4 = v58;
        v44 = v57;
      }

      if (qword_10006E0B8 != -1)
      {
        swift_once();
      }

      v61 = v4[1];
      aBlock = *v4;
      v90 = v61;
      v91[0] = v4[2];
      *(v91 + 13) = *(v4 + 45);
      v62 = sub_10004658C(v54, &aBlock, a2, a3);

      if (v62)
      {
        v63 = v4[1];
        v87[0] = *v4;
        v87[1] = v63;
        v88[0] = v4[2];
        *(v88 + 13) = *(v4 + 45);
        sub_100044D30(v87, v85);

        v64 = v7[1];
        v83[0] = *v7;
        v83[1] = v64;
        v84[0] = v7[2];
        *(v84 + 13) = *(v7 + 45);
        v65 = v85[1];
        *v7 = v85[0];
        v7[1] = v65;
        v7[2] = v86[0];
        *(v7 + 45) = *(v86 + 13);
        sub_1000132E0(v83);
        sub_100020718(v44);
      }

      else
      {

        sub_100020718(v44);
      }

      return;
    }

    v73 = sub_10004CEDC();
    v74 = sub_10004D37C();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *&v87[0] = swift_slowAlloc();
      *v75 = 136315394;
      *(v75 + 4) = sub_10000C618(*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), v87);
      *(v75 + 12) = 2080;
      v76 = v4[1];
      aBlock = *v4;
      v90 = v76;
      v91[0] = v4[2];
      *(v91 + 13) = *(v4 + 45);
      v77 = sub_1000428CC();
      v79 = sub_10000C618(v77, v78, v87);

      *(v75 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v73, v74, "#%s snapshot: cannot create image for %s", v75, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      a2(0);
    }
  }

  else
  {

    v66 = sub_10004CEDC();
    v67 = sub_10004D37C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *&v87[0] = swift_slowAlloc();
      *v68 = 136315394;
      *(v68 + 4) = sub_10000C618(*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), v87);
      *(v68 + 12) = 2080;
      v69 = v4[1];
      aBlock = *v4;
      v90 = v69;
      v91[0] = v4[2];
      *(v91 + 13) = *(v4 + 45);
      v70 = sub_1000428CC();
      v72 = sub_10000C618(v70, v71, v87);

      *(v68 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "#%s snapshot: cannot create context for %s", v68, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      a2(0);
    }
  }
}

uint64_t sub_10002046C()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8);

  v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 8);
  v5 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 24);

  v6 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v7 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 24);
  v8 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  v9 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 40);
  v10 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 48);
  v11 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 60);
  v12 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 56);
  sub_100013368(*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration), *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 8));
  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotWriter()
{
  result = qword_10006FBC8;
  if (!qword_10006FBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000205BC()
{
  result = sub_10004CEFC();
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

uint64_t sub_100020674()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000206D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100020700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100020718(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100020728()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager;
  if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager))
  {

    sub_10001923C();

    v3 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor;
    if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor))
    {
      v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);

      sub_100023FE8();

      v5 = *(v0 + v2);
      *(v0 + v2) = 0;

      v6 = *(v0 + v3);
      *(v0 + v3) = 0;

      v7 = *(v0 + 24);

      sub_100011DCC(v0 + 32);
      v8 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_logger;
      v9 = sub_10004CEFC();
      (*(*(v9 - 8) + 8))(v1 + v8, v9);
      v10 = *(v1 + v2);

      v11 = *(v1 + v3);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10002081C()
{
  sub_100020728();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LifecycleManager()
{
  result = qword_10006FCF8;
  if (!qword_10006FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000208C8()
{
  result = sub_10004CEFC();
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

void sub_10002098C()
{
  if ((*(v0 + 16) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v1)
    {
      if ((*(v1 + 16) & 1) != 0 || *(v1 + 24) == 3)
      {
        v2 = sub_10004CEDC();
        v3 = sub_10004D36C();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = swift_slowAlloc();
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v2, v3, "cannot Resume Running: shouldReduceResourcesUsage", v4, 2u);
        }
      }

      else if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) == 1)
      {
        v5 = *(v0 + 17) ^ 1;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100020A98(uint64_t a1, unint64_t a2)
{
  sub_10002098C();
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager);
    if (v6)
    {
      v7 = v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
      if (*(v7 + 4))
      {
        return;
      }

      if (*v7 <= 0.0)
      {
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v9 = Strong;
      v10 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
        v12 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

        os_unfair_lock_lock(v11);
        v13 = *(v10 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
        sub_10002E258(v13, 1, v9, a1, a2);

        os_unfair_lock_unlock(v11);
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10002E9A8(a1, a2);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100020BF4()
{
  if ((*(v0 + 16) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) & 1) == 0)
  {
    v1 = sub_10004CEDC();
    v2 = sub_10004D36C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Set State to idle", v3, 2u);
    }

    sub_100020DC4();
  }

  sub_10002098C();
  v5 = v4;
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (v5)
  {
    if (result)
    {
      v8 = *(result + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
        v10 = *(result + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

        os_unfair_lock_lock(v9);
        v11 = *(v8 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
        sub_10002E258(v11, 1, v7, 0x6C616974696E69, 0xE700000000000000);

        os_unfair_lock_unlock(v9);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (result)
    {
      sub_10002E9A8(0x206C616974696E69, 0xEE00636974617473);
      swift_unknownObjectRelease();
    }

    return sub_100020F60();
  }

  return result;
}

uint64_t sub_100020DC4()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D36C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Set Idle State", v4, 2u);
  }

  v5 = *(v1 + 24);
  v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v6);
  v7 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  v8 = [v7 rootNode];
  v9 = sub_10004D05C();
  v10 = [v8 childNodeWithName:v9 recursively:1];

  if (v10)
  {
    v11 = sub_10004D05C();
    [v10 setStateNamed:v11];
  }

  os_unfair_lock_unlock(v6);
}

uint64_t sub_100020F60()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D36C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Set Render Static", v4, 2u);
  }

  v5 = *(v1 + 24);
  v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v6);
  v7 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_100021058(v7);

  os_unfair_lock_unlock(v6);
}

void sub_100021058(void *a1)
{
  v1 = [a1 rootNode];
  v2 = sub_10004D05C();
  v3 = [v1 childNodeWithName:v2 recursively:1];

  if (v3)
  {
    v4 = [v3 parameters];

    if (v4)
    {
      isa = sub_10004D28C().super.super.isa;
      v6 = sub_10004D05C();
      [v4 setObject:isa forKeyedSubscript:v6];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10002118C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranscriptBackgroundEffect()
{
  result = qword_10006FF10;
  if (!qword_10006FF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002128C()
{
  result = sub_10004CEFC();
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

uint64_t sub_100021334(void *a1)
{
  v3 = sub_10000CC1C(&qword_100070418, &qword_100051220);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000CF8C(a1, a1[3]);
  sub_100025284();
  sub_10004D7FC();
  v10[15] = 0;
  sub_10004D72C();
  if (!v1)
  {
    v10[14] = 1;
    sub_10004D70C();
    v10[13] = 2;
    sub_10004D71C();
  }

  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_100021500()
{
  v1 = *v0;
  sub_10004D7BC();
  sub_10004D7CC(v1);
  return sub_10004D7DC();
}

Swift::Int sub_100021574()
{
  v1 = *v0;
  sub_10004D7BC();
  sub_10004D7CC(v1);
  return sub_10004D7DC();
}

uint64_t sub_1000215B8()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x76696C4177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6580592;
  }
}

uint64_t sub_100021608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100024F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100021648(uint64_t a1)
{
  v2 = sub_100025284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100021684(uint64_t a1)
{
  v2 = sub_100025284();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000216C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1000250B8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

uint64_t sub_1000216F4(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  return sub_100021334(a1);
}

uint64_t sub_100021718()
{
  v0 = type metadata accessor for PIDObserver(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_logger;
  v5 = sub_10004CEFC();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_shouldRunAsSnapshot) = 0;
  qword_100073070 = v3;
  return result;
}

uint64_t sub_1000217CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10004CDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v38 - v15;
  v17 = sub_10004CEFC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_logger;
  swift_beginAccess();
  sub_100024D58(v16, v4 + v19);
  swift_endAccess();
  v20 = *(v4 + 24);
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;

  v21 = [objc_opt_self() processInfo];
  v22 = [v21 processIdentifier];

  v23 = v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid;
  *v23 = v22;
  *(v23 + 4) = 0;
  sub_10004CDCC();
  sub_10004CDBC();
  v25 = v24;
  (*(v9 + 8))(v12, v8);
  v26 = sub_10004CEDC();
  v27 = sub_10004D36C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    v39 = v22;
    v40 = v25;
    v41 = 0;
    v30 = sub_10004D0FC();
    v32 = sub_10000C618(v30, v31, &v38);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "pid: %s", v28, 0xCu);
    sub_10000CF40(v29);
  }

  v33 = sub_100022840();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_100047EE4(0, *(v33 + 2) + 1, 1, v33);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_100047EE4((v34 > 1), v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = &v33[24 * v35];
  *(v36 + 8) = v22;
  *(v36 + 5) = v25;
  *(v36 + 6) = 0;
  sub_1000222AC(v33);

  return sub_100021B8C();
}

uint64_t sub_100021B8C()
{
  v1 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  sub_100022840();
  v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_logger;
  swift_beginAccess();
  sub_100024AEC(v0 + v5, v4);
  v6 = sub_10004CEFC();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_10004CEDC();
    v10 = sub_10004D36C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = sub_10004D24C();
      v15 = v14;

      v16 = sub_10000C618(v13, v15, &v17);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "pidList: %s", v11, 0xCu);
      sub_10000CF40(v12);
    }

    else
    {
    }

    return (*(v7 + 8))(v4, v6);
  }

  return result;
}

uint64_t sub_100021DB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid);
  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid + 4);
  sub_100021B8C();
  v3 = sub_100022840();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v3 + 48;
  v7 = *(v3 + 2);
  while (1)
  {
    v8 = *(v6 - 4) == v1 ? v2 : 1;
    if ((v8 & 1) == 0)
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      goto LABEL_29;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v6 - 1);
  v12 = *v6;
  while (*&v3[v9 + 32] != v1)
  {
    ++v10;
    v9 += 24;
    if (v5 == v10)
    {
      v10 = *(v3 + 2);
      goto LABEL_19;
    }
  }

  v13 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

  v4 = sub_100024C28(v4);
LABEL_15:
  v5 = *(v4 + 2);
  if (v13 != v5)
  {
    v14 = (v4 + 32);
    v19 = &v4[v9 + 72];
    while (v13 < v5)
    {
      v20 = *(v19 - 4);
      if (v20 != v1)
      {
        if (v13 != v10)
        {
          if (v10 >= v5)
          {
            goto LABEL_41;
          }

          v21 = v14 + 24 * v10;
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v19 - 1);
          v26 = *v19;
          *v21 = v20;
          *(v21 + 8) = v25;
          *(v21 + 16) = v26;
          *(v19 - 4) = v22;
          *(v19 - 1) = v23;
          *v19 = v24;
          v5 = *(v4 + 2);
        }

        ++v10;
      }

      v13 = (v13 + 1);
      v19 += 24;
      if (v13 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v10 + 1;
LABEL_17:
  if (v5 < v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  v14 = v10 - v5;
  v13 = v10;
  if (__OFADD__(v5, v10 - v5))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v4 + 3) >> 1)
  {
    if (v5 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    v4 = sub_100047EE4(isUniquelyReferenced_nonNull_native, v16, 1, v4);
    v27 = v4;
  }

  v13 = &v27;
  sub_100024CA0(v10, v5, 0);
  v10 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_45;
  }

  v5 = *(v4 + 2);
  v14 = *(v4 + 3);
  v13 = (v5 + 1);
  if (v5 < v14 >> 1)
  {
    goto LABEL_28;
  }

LABEL_46:
  v4 = sub_100047EE4((v14 > 1), v13, 1, v4);
LABEL_28:
  *(v4 + 2) = v13;
  v17 = &v4[24 * v5];
  *(v17 + 8) = v1;
  *(v17 + 5) = v11;
  *(v17 + 6) = v10;
  sub_1000222AC(v4);
LABEL_29:

  return sub_100021B8C();
}

uint64_t sub_100022030()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid);
  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid + 4);
  sub_100021B8C();
  v3 = sub_100022840();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v3 + 48;
  v7 = *(v3 + 2);
  while (1)
  {
    v8 = *(v6 - 4) == v1 ? v2 : 1;
    if ((v8 & 1) == 0)
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      goto LABEL_29;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v6 - 1);
  v12 = *v6;
  while (*&v3[v9 + 32] != v1)
  {
    ++v10;
    v9 += 24;
    if (v5 == v10)
    {
      v10 = *(v3 + 2);
      goto LABEL_19;
    }
  }

  v13 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

  v4 = sub_100024C28(v4);
LABEL_15:
  v5 = *(v4 + 2);
  if (v13 != v5)
  {
    v14 = (v4 + 32);
    v19 = &v4[v9 + 72];
    while (v13 < v5)
    {
      v20 = *(v19 - 4);
      if (v20 != v1)
      {
        if (v13 != v10)
        {
          if (v10 >= v5)
          {
            goto LABEL_41;
          }

          v21 = v14 + 24 * v10;
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v19 - 1);
          v26 = *v19;
          *v21 = v20;
          *(v21 + 8) = v25;
          *(v21 + 16) = v26;
          *(v19 - 4) = v22;
          *(v19 - 1) = v23;
          *v19 = v24;
          v5 = *(v4 + 2);
        }

        ++v10;
      }

      v13 = (v13 + 1);
      v19 += 24;
      if (v13 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v10 + 1;
LABEL_17:
  if (v5 < v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  v14 = v10 - v5;
  v13 = v10;
  if (__OFADD__(v5, v10 - v5))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v4 + 3) >> 1)
  {
    if (v5 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    v4 = sub_100047EE4(isUniquelyReferenced_nonNull_native, v16, 1, v4);
    v27 = v4;
  }

  v13 = &v27;
  sub_100024CA0(v10, v5, 0);
  v10 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_45;
  }

  v5 = *(v4 + 2);
  v14 = *(v4 + 3);
  v13 = (v5 + 1);
  if (v5 < v14 >> 1)
  {
    goto LABEL_28;
  }

LABEL_46:
  v4 = sub_100047EE4((v14 > 1), v13, 1, v4);
LABEL_28:
  *(v4 + 2) = v13;
  v17 = &v4[24 * v5];
  *(v17 + 8) = v1;
  *(v17 + 5) = v11;
  *(v17 + 6) = v10;
  sub_1000222AC(v4);
LABEL_29:

  return sub_100021B8C();
}

NSData sub_1000222AC(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v34 = &v34 - v4;
  v5 = sub_10004CDDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CB8C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v36 = sub_10004CB7C();
  sub_10004CDCC();
  sub_10004CDBC();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 48);
    v17 = &_swiftEmptyArrayStorage;
    do
    {
      v21 = *(v16 - 1);
      if (v14 - v21 < 60.0)
      {
        v22 = *(v16 - 4);
        v23 = *v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004BDBC(0, v17[2] + 1, 1);
          v17 = v37;
        }

        v19 = v17[2];
        v18 = v17[3];
        if (v19 >= v18 >> 1)
        {
          sub_10004BDBC((v18 > 1), v19 + 1, 1);
          v17 = v37;
        }

        v17[2] = v19 + 1;
        v20 = &v17[3 * v19];
        *(v20 + 8) = v22;
        *(v20 + 5) = v21;
        *(v20 + 6) = v23;
      }

      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  v37 = v17;
  sub_10000CC1C(&qword_1000703D8, &unk_100051198);
  sub_100024B5C(&qword_1000703F8, sub_100024BD4);
  v25 = sub_10004CB6C();
  v27 = v26;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  v28 = qword_1000730A8;
  result.super.isa = sub_10004CD6C().super.isa;
  if (*(v35 + 24))
  {
    isa = result.super.isa;
    v31 = *(v35 + 16);
    v32 = *(v35 + 24);

    v33 = sub_10004D05C();

    [v28 setObject:isa forKey:v33];

    return sub_100017C6C(v25, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100022840()
{
  v1 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  if (qword_10006E0A8 != -1)
  {
    result = swift_once();
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    __break(1u);
    return result;
  }

  if (!*(v0 + 24))
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = *(v0 + 16);
  v5 = qword_1000730A8;

  v6 = sub_10004D05C();

  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    sub_10004D56C();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = sub_10004CB5C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_10004CB4C();
      sub_10000CC1C(&qword_1000703D8, &unk_100051198);
      sub_100024B5C(&qword_1000703E0, sub_100024A98);
      sub_10004CB3C();

      sub_100017C6C(v11, v12);
      return *&v15[0];
    }
  }

  else
  {
    sub_100024DC8(v15, &qword_1000703D0, &qword_100050E30);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100022C60()
{
  v1 = v0[3];

  sub_100024DC8(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_logger, &qword_10006F880, &qword_100050CA8);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100022D04()
{
  sub_100019D38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100022DB4()
{
  sub_100023FE8();
  sub_100011DCC(v0 + 32);
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource);
  swift_unknownObjectRelease();

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100022EA4()
{
  v0 = sub_10004CF1C();
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  __chkstk_darwin(v0);
  v40 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10004D45C();
  v33 = *(v36 - 8);
  v34 = v33;
  v3 = *(v33 + 64);
  __chkstk_darwin(v36);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10004D3CC();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v32);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004D4CC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_10004CF6C();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000D024(0, &unk_100070360, OS_dispatch_queue_serial_ptr);
  v31[0] = "Thermal state changed ";
  v31[1] = v15;
  sub_10004CF5C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100024A50(&unk_100070AC0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10000CC1C(&unk_100070370, "dd");
  sub_1000249FC(&qword_100070AD0, &unk_100070370, "dd");
  sub_10004D57C();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v32);
  v16 = sub_10004D4DC();
  sub_10000D024(0, &qword_100070380, OS_dispatch_source_ptr);
  sub_10000CC1C(&qword_100070388, "fd");
  v17 = v34;
  v18 = *(v33 + 72);
  v19 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000505B0;
  sub_10004D41C();
  aBlock[0] = v20;
  sub_100024A50(&qword_100070390, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
  sub_10000CC1C(&qword_100070398, &unk_100051180);
  sub_1000249FC(&unk_1000703A0, &qword_100070398, &unk_100051180);
  v21 = v35;
  v22 = v36;
  sub_10004D57C();
  v23 = v16;
  v24 = sub_10004D46C();

  (*(v17 + 8))(v21, v22);
  swift_getObjectType();
  v25 = swift_allocObject();
  v26 = v39;
  swift_weakInit();
  aBlock[4] = sub_1000249DC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100066490;
  v27 = _Block_copy(aBlock);

  sub_10004CF3C();
  v28 = v40;
  sub_100023D8C();
  sub_10004D47C();
  _Block_release(v27);
  (*(v41 + 8))(v28, v42);
  (*(v37 + 8))(v14, v38);

  sub_10004D48C();
  v29 = *(v26 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource);
  *(v26 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource) = v24;
  swift_unknownObjectRelease();
  v30 = *(v26 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue);
  *(v26 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue) = v16;
}

uint64_t sub_1000234B8()
{
  v0 = sub_10004D45C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v59 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v59 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource))
    {
    }

    v62 = v5;
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10004D4EC();
    swift_unknownObjectRelease();
    (*(v1 + 32))(v16, v14, v0);
    sub_1000246C4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_10000CC1C(&qword_1000703B0, &qword_100051190);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100051080;
    *(v24 + 56) = &type metadata for Float;
    *(v24 + 64) = &protocol witness table for Float;
    *(v24 + 32) = v19;
    *(v24 + 96) = &type metadata for Float;
    *(v24 + 104) = &protocol witness table for Float;
    *(v24 + 72) = v21;
    *(v24 + 136) = &type metadata for Float;
    *(v24 + 144) = &protocol witness table for Float;
    *(v24 + 112) = v23;
    v63 = sub_10004D0AC();
    v26 = v25;
    v27 = *(v1 + 16);
    v64 = v16;
    v61 = v27;
    (v27)(v11);
    sub_10004D42C();
    sub_100024A50(&qword_1000703B8, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
    v28 = sub_10004D04C();
    v29 = *(v1 + 8);
    v29(v8, v0);
    if (v28)
    {
      v29(v11, v0);

      v30 = sub_10004CEDC();
      v31 = sub_10004D36C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 136315138;
        v34 = sub_10000C618(v63, v26, &v65);

        *(v32 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "MemoryFootprint: normal %s", v32, 0xCu);
        sub_10000CF40(v33);

LABEL_10:

        return (v29)(v64, v0);
      }

      goto LABEL_15;
    }

    sub_10004D43C();
    v35 = sub_10004D04C();
    v29(v8, v0);
    if (v35)
    {
      v29(v11, v0);

      v30 = sub_10004CEDC();
      v36 = sub_10004D36C();

      if (os_log_type_enabled(v30, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v65 = v38;
        *v37 = 136315138;
        v39 = sub_10000C618(v63, v26, &v65);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v36, "MemoryFootprint: warning %s", v37, 0xCu);
        sub_10000CF40(v38);

        goto LABEL_10;
      }

LABEL_15:

      return (v29)(v64, v0);
    }

    sub_10004D44C();
    v40 = sub_10004D04C();
    v29(v8, v0);
    v29(v11, v0);
    if (v40)
    {

      v30 = sub_10004CEDC();
      v41 = sub_10004D36C();

      if (os_log_type_enabled(v30, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v65 = v43;
        *v42 = 136315138;
        v44 = sub_10000C618(v63, v26, &v65);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v30, v41, "MemoryFootprint: critical %s", v42, 0xCu);
        sub_10000CF40(v43);

        return (v29)(v64, v0);
      }

      goto LABEL_15;
    }

    v60 = v29;
    v45 = v62;
    v46 = v64;
    (v61)(v62, v64, v0);

    v47 = sub_10004CEDC();
    v48 = sub_10004D36C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = v61;
      *v49 = 136315394;
      sub_100024A50(&unk_1000703C0, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
      v50 = sub_10004D73C();
      v52 = v51;
      v53 = v45;
      v54 = v60;
      v60(v53, v0);
      v55 = sub_10000C618(v50, v52, &v65);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = sub_10000C618(v63, v26, &v65);

      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "MemoryFootprint: state %s %s", v49, 0x16u);
      swift_arrayDestroy();

      return v54(v64, v0);
    }

    else
    {

      v57 = v45;
      v58 = v60;
      v60(v57, v0);
      return v58(v46, v0);
    }
  }

  return result;
}

uint64_t sub_100023D8C()
{
  sub_10004CF1C();
  sub_100024A50(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
  return sub_10004D57C();
}

void sub_100023E64()
{
  if ((*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) & 1) == 0)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 1;
    v2 = sub_10004CEDC();
    v3 = sub_10004D36C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Start monitoring lower power and thermal state.", v4, 2u);
    }

    v5 = objc_opt_self();
    v6 = [v5 defaultCenter];
    [v6 addObserver:v1 selector:"thermalStateDidChangeWithNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

    v7 = [v5 defaultCenter];
    [v7 addObserver:v1 selector:"lowPowerModeStateDidChangeWithNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
  }
}

void sub_100023FE8()
{
  if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) == 1)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 0;
    v2 = sub_10004CEDC();
    v3 = sub_10004D36C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Stop monitoring lower power and thermal state.", v4, 2u);
    }

    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver:v1];
  }
}

void sub_100024104()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4 > 3;
    LOBYTE(v4) = v4 & 0xF;
    v6 = 8u >> v4;
    v7 = 4u >> v4;
    v8 = 3u >> v4;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v1 = v7;
    }

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = v8;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 thermalState];

  *(v0 + 24) = v10;
  if (*(v0 + 16))
  {
LABEL_13:
    if (v3)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v10 < 2)
  {
    goto LABEL_18;
  }

  if (v10 != 2)
  {
    if (v10 == 3)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (v2)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v1)
  {
    return;
  }

LABEL_21:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  sub_10004D61C(24);

  v11 = *(v0 + 24);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 0xE700000000000000;
      v13._countAndFlagsBits = 0x73756F69726573;
      goto LABEL_33;
    }

    if (v11 == 3)
    {
      v12 = 0xE800000000000000;
      v13._countAndFlagsBits = 0x6C61636974697263;
      goto LABEL_33;
    }

LABEL_30:
    v12 = 0xE600000000000000;
    v13._countAndFlagsBits = 0x6E776F6B6E75;
    goto LABEL_33;
  }

  if (!v11)
  {
    v12 = 0xE700000000000000;
    v13._countAndFlagsBits = 0x6C616E696D6F6ELL;
    goto LABEL_33;
  }

  if (v11 != 1)
  {
    goto LABEL_30;
  }

  v12 = 0xE400000000000000;
  v13._countAndFlagsBits = 1919508838;
LABEL_33:
  v13._object = v12;
  sub_10004D16C(v13);

  sub_100020A98(0xD000000000000016, 0x80000001000543F0);

  swift_unknownObjectRelease();
}

void sub_10002433C()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4 > 3;
    LOBYTE(v4) = v4 & 0xF;
    v6 = 8u >> v4;
    v7 = 4u >> v4;
    v8 = 3u >> v4;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v1 = v7;
    }

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = v8;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 isLowPowerModeEnabled];

  *(v0 + 16) = v10;
  if (v10)
  {
LABEL_13:
    if (v3)
    {
      return;
    }

    goto LABEL_21;
  }

  v11 = *(v0 + 24);
  if (v11 < 2)
  {
LABEL_18:
    if (v2)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v1)
  {
    return;
  }

LABEL_21:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10004D61C(21);

    if (*(v0 + 16))
    {
      v12._countAndFlagsBits = 1702195828;
    }

    else
    {
      v12._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v0 + 16))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v12._object = v13;
    sub_10004D16C(v12);

    sub_100020A98(0xD000000000000013, 0x80000001000543D0);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100024510(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_10004CBAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CB9C();

  a4(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100024604()
{
  result = sub_10004CEFC();
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

void sub_1000246C4()
{
  v0 = sub_10004D0EC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  memset(v13, 0, 372);
  v12 = 93;
  v2 = task_info(mach_task_self_, 0x16u, v13, &v12);
  if (v2)
  {
    if (mach_error_string(v2))
    {
      sub_10004D0DC();
      v4 = sub_10004D0BC();
      v5 = v3;
      if (v3)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0xED0000726F727245;
      }

      v7 = sub_10004CEDC();
      v8 = sub_10004D38C();

      if (os_log_type_enabled(v7, v8))
      {
        if (!v5)
        {
          v4 = 0x206E776F6E6B6E55;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v14 = v10;
        *v9 = 136315138;
        v11 = sub_10000C618(v4, v6, &v14);

        *(v9 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v7, v8, "Error with task_info() in memoryUsageInMBytes: %s", v9, 0xCu);
        sub_10000CF40(v10);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000249A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000249E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000249FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CD64(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100024A50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100024A98()
{
  result = qword_1000703E8;
  if (!qword_1000703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000703E8);
  }

  return result;
}

uint64_t sub_100024AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024B5C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000CD64(&qword_1000703D8, &unk_100051198);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100024BD4()
{
  result = qword_100070400;
  if (!qword_100070400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070400);
  }

  return result;
}

uint64_t sub_100024C3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10004D67C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_10004D63C();
}

unint64_t sub_100024CA0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100024D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024DC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000CC1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100024E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SnapshotManager.WeakObserver();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_10004D67C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_10004D67C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PIDObserver.PidData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PIDObserver.PidData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PIDObserver.PidData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100024F98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (sub_10004D74C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_10004D74C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76696C4177656976 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_10004D74C();

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

double sub_1000250B8(uint64_t *a1)
{
  v2 = sub_10000CC1C(&qword_100070408, &qword_100051218);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_10000CF8C(a1, a1[3]);
  sub_100025284();
  sub_10004D7EC();
  v14 = 0;
  sub_10004D6FC();
  v13 = 1;
  sub_10004D6DC();
  v10 = v9;
  v12 = 2;
  sub_10004D6EC();
  (*(v3 + 8))(v6, v2);
  sub_10000CF40(a1);
  return v10;
}

unint64_t sub_100025284()
{
  result = qword_100070410;
  if (!qword_100070410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIDObserver.PidData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PIDObserver.PidData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002542C()
{
  result = qword_100070420;
  if (!qword_100070420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070420);
  }

  return result;
}

unint64_t sub_100025484()
{
  result = qword_100070428;
  if (!qword_100070428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070428);
  }

  return result;
}

unint64_t sub_1000254DC()
{
  result = qword_100070430;
  if (!qword_100070430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070430);
  }

  return result;
}

void sub_100025530(uint64_t a1)
{
  v3 = v1;
  sub_10000CDAC(a1, v10);
  v4 = sub_10004CEDC();
  v5 = sub_10004D37C();

  sub_10000CE08(a1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v10[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v8 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v9 = sub_10000C618(v7, v8, v10);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10000C618(*(a1 + 32), *(a1 + 40), v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "#%s snapshot: viewConfiguration updated old tagId: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_100025CD0();
}

id sub_1000256A4@<X0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
  if (v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] != 1)
  {
    v18 = *(v3 + 5);
    v27[4] = *(v3 + 4);
    v27[5] = v18;
    v28[0] = *(v3 + 6);
    *(v28 + 14) = *(v3 + 110);
    v19 = *(v3 + 1);
    v27[0] = *v3;
    v27[1] = v19;
    v20 = *(v3 + 3);
    v27[2] = *(v3 + 2);
    v27[3] = v20;
    sub_10000CDAC(v27, v21);
    sub_1000427C8(v21);
    result = sub_10000CE08(v27);
    v17 = v26;
    v13 = v25;
    v11 = v23;
    v12 = v24;
    v6 = v22;
    v5 = v21[2];
    v4 = v21[3];
    v14 = v21[0];
    v16 = v21[1];
    goto LABEL_10;
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = *(v3 + 25);

  result = [v1 frame];
  v9 = v8;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [v1 frame];
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 9.22337204e18)
  {
    v11 = v9;
    v12 = v10;
    v13 = *(v3 + 30);

    v14 = sub_10004B888();
    v16 = v15;

    v17 = 0;
LABEL_10:
    *a1 = v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v5;
    *(a1 + 24) = v4;
    *(a1 + 32) = v6;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 60) = v17;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_100025874()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_100026EAC;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001BB08;
  v6[3] = &unk_1000665F8;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:0.0166666667];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_timer);
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_timer) = v4;
}

void sub_10002598C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10004C788();
    [v1 setBackgroundColor:v2];
  }
}

id sub_1000259FC(uint64_t a1)
{
  v3 = sub_10004CECC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100028178(0);
  sub_10004D4BC();
  v9 = *(v8 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v10 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v4 + 16))(v7, v8 + v10, v3);
  v11 = v9;
  sub_10004CEAC();

  (*(v4 + 8))(v7, v3);
  v12 = v1;
  v13 = sub_10004CEDC();
  v14 = sub_10004D37C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v15 = 136315394;
    v18 = *&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v19 = *&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v20 = sub_10000C618(v18, v19, &v25);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = *&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView];
    *(v15 + 14) = v21;
    *v16 = v21;
    v22 = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "#%s snapshot: imageView %@", v15, 0x16u);
    sub_100017CC0(v16);

    sub_10000CF40(v17);
  }

  v23 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView;
  [*&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView] setAlpha:1.0];
  return [*&v12[v23] setImage:a1];
}

void sub_100025CD0()
{
  v1 = v0;
  v2 = sub_10004CEFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotManagerSet;
  if (v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotManagerSet] != 1)
  {
    goto LABEL_7;
  }

  v50 = v3;
  v8 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
  v60[4] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
  v60[5] = v8;
  v61[0] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
  *(v61 + 14) = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
  v9 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
  v60[0] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
  v60[1] = v9;
  v10 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
  v60[2] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
  v60[3] = v10;
  sub_10000CDAC(v60, v56);
  sub_1000427C8(v52);
  sub_10000CE08(v60);
  v11 = sub_100042698();
  v13 = v12;
  sub_100013254(v52);
  v14 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotReader];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = (v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  v17 = v15[1];
  v16 = v15[2];
  v18 = *v15;
  *(v59 + 13) = *(v15 + 45);
  v58[1] = v17;
  v59[0] = v16;
  v58[0] = v18;
  sub_1000131F8(v58, v56);
  v19 = sub_100042698();
  v21 = v20;
  sub_100013254(v58);
  if (v11 == v19 && v13 == v21)
  {

    return;
  }

  v22 = sub_10004D74C();

  v3 = v50;
  if ((v22 & 1) == 0)
  {
LABEL_7:
    sub_1000256A4(v53);
    v23 = v54;
    if (v54)
    {
      [*&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView] setAlpha:0.0];
      v24 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_logger;
      sub_1000131F8(v53, v56);
      v25 = v1;
      v49 = v24;
      v26 = sub_10004CEDC();
      v27 = sub_10004D37C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v50 = v3;
        v29 = v28;
        v30 = swift_slowAlloc();
        v48 = v7;
        v46 = v30;
        *&v56[0] = v30;
        *v29 = 136315650;
        v47 = v6;
        v31 = v2;
        v33 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
        v32 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

        v34 = sub_10000C618(v33, v32, v56);
        v2 = v31;

        *(v29 + 4) = v34;
        v6 = v47;
        *(v29 + 12) = 2048;
        *(v29 + 14) = v23;
        *(v29 + 22) = 2048;
        sub_100013254(v53);
        *(v29 + 24) = v55;
        sub_100013254(v53);
        _os_log_impl(&_mh_execute_header, v26, v27, "#%s snapshot: update manager for size %ldx%ld", v29, 0x20u);
        sub_10000CF40(v46);
        v7 = v48;

        v3 = v50;
      }

      else
      {
        sub_100013254(v53);
        sub_100013254(v53);
      }

      v35 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
      v37 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
      v36 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
      v56[2] = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
      v56[3] = v35;
      v56[0] = v37;
      v56[1] = v36;
      v39 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
      v38 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
      v40 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
      *(v57 + 14) = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
      v56[5] = v39;
      v57[0] = v38;
      v56[4] = v40;
      (*(v3 + 16))(v6, &v1[v49], v2);
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = objc_allocWithZone(type metadata accessor for SnapshotReader());
      sub_10000CDAC(v56, &v51);
      v43 = sub_100012F8C(v56, v6, sub_100026EA4, v41);

      sub_10000CE08(v56);
      v44 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotReader];
      *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotReader] = v43;

      v1[v7] = 1;
    }

    else
    {
      sub_100013254(v53);
    }
  }
}

void sub_10002615C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_10004CEDC();
    v7 = sub_10004D37C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
      v10 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

      v11 = sub_10000C618(v9, v10, &v15);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      if (a2)
      {
        v12 = 1953066601;
      }

      else
      {
        v12 = 0x6163696669746F6ELL;
      }

      if (a2)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xEC0000006E6F6974;
      }

      v14 = sub_10000C618(v12, v13, &v15);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "#%s snapshot: image updated from %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000259FC(a1);
  }
}

id sub_100026338()
{
  v66.receiver = v0;
  v66.super_class = type metadata accessor for SnapshotView();
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D37C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v67[0] = v5;
    *v4 = 136315650;
    v6 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v7 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v8 = sub_10000C618(v6, v7, v67);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    [v1 bounds];
    *(v4 + 14) = v9;
    *(v4 + 22) = 2048;
    [v1 bounds];
    *(v4 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s snapshotView layoutsubview %fx%f", v4, 0x20u);
    sub_10000CF40(v5);
  }

  result = [v1 bounds];
  if (v12 != 0.0)
  {
    v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] = 1;
    v13 = &v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
    v14 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
    v16 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
    v15 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
    v54 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v55 = v14;
    v52 = v16;
    v53 = v15;
    v18 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
    v17 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
    v19 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
    *&v58[14] = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
    v57 = v18;
    *v58 = v17;
    v56 = v19;
    sub_10000CDAC(&v52, v67);
    [v1 bounds];
    v21 = v20;
    v23 = v22;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v50 = v55;
    v27 = BYTE8(v55);
    v28 = v56;
    v48 = BYTE9(v56);
    v49 = BYTE8(v56);
    v46 = *(&v57 + 1);
    v47 = v57;
    v29 = v56;

    sub_10000CE08(&v52);
    v59[0] = v24;
    v59[1] = v25;
    v59[2] = v26;
    *&v60 = v50;
    BYTE8(v60) = v27;
    *&v61 = v28;
    BYTE8(v61) = v49;
    BYTE9(v61) = v48;
    *&v62 = v47;
    *(&v62 + 1) = v46;
    *v63 = *v58;
    v63[2] = v58[2];
    *&v63[4] = *&v58[4];
    *&v63[8] = v21;
    *&v63[16] = v23;
    *&v63[24] = *&v58[24];
    v63[28] = v58[28];
    v63[29] = v58[29];
    v30 = *v13;
    v31 = *(v13 + 1);
    v32 = *(v13 + 3);
    v67[2] = *(v13 + 2);
    v67[3] = v32;
    v67[0] = v30;
    v67[1] = v31;
    v33 = *(v13 + 4);
    v34 = *(v13 + 5);
    v35 = *(v13 + 6);
    *(v68 + 14) = *(v13 + 110);
    v67[5] = v34;
    v68[0] = v35;
    v67[4] = v33;
    v37 = *(v13 + 5);
    v36 = *(v13 + 6);
    v38 = *(v13 + 4);
    *(v65 + 14) = *(v13 + 110);
    v64[5] = v37;
    v65[0] = v36;
    v64[4] = v38;
    v39 = *v13;
    v40 = *(v13 + 1);
    v41 = *(v13 + 3);
    v64[2] = *(v13 + 2);
    v64[3] = v41;
    v64[0] = v39;
    v64[1] = v40;
    v42 = v60;
    *(v13 + 2) = v26;
    *(v13 + 3) = v42;
    *v13 = v24;
    *(v13 + 1) = v25;
    v43 = v61;
    v44 = v62;
    v45 = *v63;
    *(v13 + 110) = *&v63[14];
    *(v13 + 5) = v44;
    *(v13 + 6) = v45;
    *(v13 + 4) = v43;
    sub_10000CDAC(v67, v51);
    sub_10000CDAC(v59, v51);
    sub_10000CE08(v64);
    sub_100025530(v67);
    sub_10000CE08(v67);
    return sub_10000CE08(v59);
  }

  return result;
}

id sub_100026838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SnapshotView()
{
  result = qword_100070490;
  if (!qword_100070490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026998()
{
  result = sub_10004CEFC();
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

id sub_100026A58(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004CECC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotManagerSet] = 0;
  *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotReader] = 0;
  v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] = 0;
  *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_timer] = 0;
  v10 = sub_100028178(0);
  sub_10004D4BC();
  v11 = *(v10 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v12 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v12, v5);
  v13 = v11;
  sub_10004CEAC();

  (*(v6 + 8))(v9, v5);
  v14 = &v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
  v15 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v15;
  v14[6] = *(a1 + 96);
  *(v14 + 110) = *(a1 + 110);
  v16 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_logger;
  v19 = sub_10004CEFC();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v2[v18], a2, v19);
  v21 = objc_allocWithZone(UIImage);
  sub_10000CDAC(a1, v34);
  v22 = [v21 init];
  v23 = [objc_allocWithZone(UIImageView) initWithImage:v22];

  *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView] = v23;
  v24 = *(a1 + 104);
  v25 = *(a1 + 112);
  v26 = type metadata accessor for SnapshotView();
  v33.receiver = v2;
  v33.super_class = v26;
  v27 = v23;
  v28 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, v24, v25);
  v29 = v27;
  v30 = v28;
  [v30 bounds];
  [v29 setFrame:?];
  [v29 setAutoresizingMask:18];
  [v30 addSubview:v29];
  [v29 setContentMode:0];

  v31 = [objc_opt_self() blackColor];
  [v30 setBackgroundColor:v31];

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 nullMode])
  {
    sub_100025874();
  }

  else
  {
    sub_100025CD0();
  }

  (*(v20 + 8))(a2, v19);
  return v30;
}

uint64_t sub_100026E6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100026ECC()
{
  result = sub_100026EEC();
  qword_1000730A8 = result;
  return result;
}

id sub_100026EEC()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_10004D05C();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    sub_10000CC1C(&qword_1000704A0, &unk_1000513B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000513A0;
    *(inited + 32) = 0x694B726574736F70;
    *(inited + 40) = 0xEF726F7469644574;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000013;
    *(inited + 88) = 0x8000000100054610;
    *(inited + 96) = 1;
    *(inited + 120) = &type metadata for Bool;
    strcpy((inited + 128), "useVFXSnapshot");
    *(inited + 143) = -18;
    *(inited + 144) = 1;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 176) = 0xD000000000000016;
    *(inited + 184) = 0x80000001000546F0;
    *(inited + 216) = &type metadata for Bool;
    *(inited + 192) = 1;
    sub_100039DB0(inited);
    swift_setDeallocating();
    sub_10000CC1C(&qword_1000704A8, &unk_100051740);
    swift_arrayDestroy();
    isa = sub_10004D00C().super.isa;

    [v2 registerDefaults:isa];

    return v2;
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];

    return v6;
  }
}

id sub_10002791C(void *a1)
{
  v1 = a1;
  v2 = sub_10004D05C();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

void sub_1000279A8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_10004D05C();
  [v5 setBool:a3 forKey:v4];
}

id sub_100027B68(void *a1)
{
  v1 = a1;
  v2 = sub_10004D05C();
  v3 = [v1 integerForKey:v2];

  return v3;
}

void sub_100027BF0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_10004D05C();
  [v5 setInteger:a3 forKey:v4];
}

uint64_t sub_100027C70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E656964617247;
  }

  else
  {
    v4 = 0x63696D616E7944;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E656964617247;
  }

  else
  {
    v6 = 0x63696D616E7944;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10004D74C();
  }

  return v9 & 1;
}

Swift::Int sub_100027D18()
{
  v1 = *v0;
  sub_10004D7BC();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100027D9C()
{
  *v0;
  sub_10004D14C();
}

Swift::Int sub_100027E0C()
{
  v1 = *v0;
  sub_10004D7BC();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100027E8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000658F8;
  v8._object = v3;
  v5 = sub_10004D6CC(v4, v8);

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

void sub_100027EEC(uint64_t *a1@<X8>)
{
  v2 = 0x63696D616E7944;
  if (*v1)
  {
    v2 = 0x746E656964617247;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100027F2C()
{
  sub_100028360();
  v0 = sub_10004D52C();
  v1 = type metadata accessor for Signpost();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = v0;
  result = sub_10004CEBC();
  *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog) = v5;
  qword_1000730B0 = v4;
  return result;
}

uint64_t sub_100027FDC()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  v2 = sub_10004CECC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_1000704E8;
  if (!qword_1000704E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000280DC()
{
  result = sub_10004CECC();
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

uint64_t sub_100028178(char a1)
{
  v2 = sub_10004CECC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E0B0 != -1)
  {
    swift_once();
  }

  v7 = qword_1000730B0;
  sub_100028360();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v14 = a1 & 1;

  sub_10004D65C();
  v15._countAndFlagsBits = 0x6F69736E65747845;
  v15._object = 0xE90000000000006ELL;
  sub_10004D16C(v15);
  v8 = sub_10004D52C();
  v9 = *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog) = v8;
  v10 = v8;

  sub_10004CEBC();
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v3 + 40))(v7 + v11, v6, v2);
  swift_endAccess();
  return v7;
}

unint64_t sub_100028360()
{
  result = qword_1000705B0;
  if (!qword_1000705B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000705B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Signpost.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for Signpost.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002850C()
{
  result = qword_1000705B8;
  if (!qword_1000705B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000705B8);
  }

  return result;
}

uint64_t sub_100028560(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (*&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] && (, sub_10002098C(), v7 = v6, result = , (v7 & 1) != 0))
  {
    v9 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
      v11 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

      os_unfair_lock_lock(v10);
      v12 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
      sub_10002E258(v12, 1, v3, a1, a2);

      os_unfair_lock_unlock(v10);

      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = v2;
    v14 = sub_10004CEDC();
    v15 = sub_10004D37C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = &v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v19 = *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v20 = *(v18 + 5);

      v21 = sub_10000C618(v19, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "#%s resume running not allowed", v16, 0xCu);
      sub_10000CF40(v17);
    }

    return 0;
  }

  return result;
}

void sub_100028734(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10004CEFC();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger;
  sub_10000CDAC(a1, v81);
  v10 = sub_10004CEDC();
  v11 = sub_10004D39C();
  sub_10000CE08(a1);
  v12 = os_log_type_enabled(v10, v11);
  v67 = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v81[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_10000C618(*(a1 + 32), *(a1 + 40), v81);
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "#%s vfxview update from editor %{BOOL}d", v13, 0x12u);
    sub_10000CF40(v14);
  }

  v15 = &v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v16 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
  v81[4] = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
  v81[5] = v16;
  v82[0] = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
  *(v82 + 14) = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
  v17 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
  v81[0] = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v81[1] = v17;
  v18 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
  v81[2] = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
  v81[3] = v18;
  sub_10000CDAC(v81, &v74);
  sub_1000427C8(v72);
  sub_10000CE08(v81);
  v19 = sub_100042698();
  v21 = v20;
  sub_100013254(v72);
  sub_1000427C8(v73);
  v22 = sub_100042698();
  v24 = v23;
  sub_100013254(v73);
  if (v19 == v22 && v21 == v24)
  {
  }

  else
  {
    v25 = sub_10004D74C();

    if ((v25 & 1) == 0)
    {
      sub_10000CDAC(a1, &v74);
      v26 = v3;
      v27 = sub_10004CEDC();
      v28 = sub_10004D39C();

      sub_10000CE08(a1);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v63 = v26;
        v30 = v29;
        v62 = swift_slowAlloc();
        v68 = v62;
        *v30 = 136315650;
        v59 = *(a1 + 32);
        v61 = v28;
        v31 = *(a1 + 40);
        *(v30 + 4) = sub_10000C618(v59, v31, &v68);
        *(v30 + 12) = 2080;
        v32 = *(v15 + 5);
        v78 = *(v15 + 4);
        v79 = v32;
        v80[0] = *(v15 + 6);
        *(v80 + 14) = *(v15 + 110);
        v33 = *(v15 + 1);
        v74 = *v15;
        v75 = v33;
        v34 = *(v15 + 3);
        v76 = *(v15 + 2);
        v77 = v34;
        v60 = v27;
        v69[0] = v76;
        sub_10000CDAC(&v74, v70);

        v83._countAndFlagsBits = 8250;
        v83._object = 0xE200000000000000;
        sub_10004D16C(v83);
        sub_10004D16C(v75);
        v84._countAndFlagsBits = 32;
        v84._object = 0xE100000000000000;
        sub_10004D16C(v84);
        v85._countAndFlagsBits = sub_10004D2CC();
        sub_10004D16C(v85);

        v86._countAndFlagsBits = 120;
        v86._object = 0xE100000000000000;
        sub_10004D16C(v86);
        v87._countAndFlagsBits = sub_10004D2CC();
        sub_10004D16C(v87);

        sub_10000CE08(&v74);
        v35 = sub_10000C618(*&v69[0], *(&v69[0] + 1), &v68);

        *(v30 + 14) = v35;
        *(v30 + 22) = 2080;
        *&v70[0] = v59;
        *(&v70[0] + 1) = v31;

        v88._countAndFlagsBits = 8250;
        v88._object = 0xE200000000000000;
        sub_10004D16C(v88);
        sub_10004D16C(*(a1 + 16));
        v89._countAndFlagsBits = 32;
        v89._object = 0xE100000000000000;
        sub_10004D16C(v89);
        v36 = *(a1 + 104);
        v37 = *(a1 + 112);
        v90._countAndFlagsBits = sub_10004D2CC();
        sub_10004D16C(v90);

        v91._countAndFlagsBits = 120;
        v91._object = 0xE100000000000000;
        sub_10004D16C(v91);
        v92._countAndFlagsBits = sub_10004D2CC();
        sub_10004D16C(v92);

        v38 = sub_10000C618(*&v70[0], *(&v70[0] + 1), &v68);

        *(v30 + 24) = v38;
        v39 = v60;
        _os_log_impl(&_mh_execute_header, v60, v61, "#%s vfxview update old '%s' -> '%s'", v30, 0x20u);
        swift_arrayDestroy();

        v26 = v63;
      }

      else
      {
      }

      v40 = *(v15 + 5);
      v70[4] = *(v15 + 4);
      v70[5] = v40;
      v71[0] = *(v15 + 6);
      *(v71 + 14) = *(v15 + 110);
      v41 = *(v15 + 1);
      v70[0] = *v15;
      v70[1] = v41;
      v42 = *(v15 + 3);
      v70[2] = *(v15 + 2);
      v70[3] = v42;
      v43 = *a1;
      v44 = *(a1 + 16);
      v45 = *(a1 + 48);
      *(v15 + 2) = *(a1 + 32);
      *(v15 + 3) = v45;
      *v15 = v43;
      *(v15 + 1) = v44;
      v46 = *(a1 + 64);
      v47 = *(a1 + 80);
      v48 = *(a1 + 96);
      *(v15 + 110) = *(a1 + 110);
      *(v15 + 5) = v47;
      *(v15 + 6) = v48;
      *(v15 + 4) = v46;
      sub_10000CE08(v70);
      v49 = *(v15 + 5);
      v78 = *(v15 + 4);
      v79 = v49;
      v80[0] = *(v15 + 6);
      *(v80 + 14) = *(v15 + 110);
      v50 = *(v15 + 1);
      v74 = *v15;
      v75 = v50;
      v51 = *(v15 + 3);
      v76 = *(v15 + 2);
      v77 = v51;
      v52 = v66;
      (*(v64 + 16))(v66, &v3[v9], v65);
      v53 = type metadata accessor for SnapshotWriter();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      sub_10000CDAC(a1, v69);
      sub_10000CDAC(&v74, v69);
      v56 = sub_10001F348(&v74, v52);
      v57 = *&v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];
      *&v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = v56;

      if (v67)
      {
        v58 = *&v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock];
        os_unfair_lock_lock(v58);
        v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] = 0;
        sub_10002CFE8();
        v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] = 0;
        os_unfair_lock_unlock(v58);
      }
    }
  }
}

void sub_100028DC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100028E14();
  }
}

uint64_t sub_100028E14()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D37C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000C618(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s worldRendered", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10002A5FC(sub_10002F8E8, v9);
}

uint64_t sub_1000290A4()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100029100()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000291D4()
{
  result = sub_10004CEFC();
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

uint64_t sub_1000292A4(void *a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_10004D3CC();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004D4CC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_10004CF6C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  v33 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *(v1 + v10) = [objc_allocWithZone(VFXView) init];
  v34 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager) = 0;
  v36 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager) = 0;
  v37 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect) = 0;
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  v31 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v12 = swift_allocObject();
  *(v12 + 16) = swift_slowAlloc();
  *(v12 + 24) = 0;
  *(v12 + 32) = &_swiftEmptyArrayStorage;
  *(v1 + v11) = v12;
  v32 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = 1;
  v13 = v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime;
  *v13 = 0;
  v13[4] = 1;
  v30 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) = 0;
  v29 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000D024(0, &unk_100070360, OS_dispatch_queue_serial_ptr);
  sub_10004CF4C();
  v41 = &_swiftEmptyArrayStorage;
  sub_10002F898(&unk_100070AC0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10000CC1C(&unk_100070370, "dd");
  sub_1000249FC(&qword_100070AD0, &unk_100070370, "dd");
  sub_10004D57C();
  (*(v38 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v39);
  v14 = sub_10004D4DC();
  v15 = v29;
  *(v1 + v29) = v14;
  v16 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock;
  v17 = swift_slowAlloc();

  *(v2 + v16) = v17;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
  v18 = (v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  *v18 = 0;
  v18[1] = 0;

  v19 = *(v2 + v34);

  v20 = *(v2 + v36);

  v21 = *(v2 + v37);

  v22 = *(v2 + v31);

  v23 = *(v2 + v32);

  v24 = v18[1];
  sub_100020718(*v18);
  type metadata accessor for TranscriptBackgroundView(0);
  v25 = *((swift_isaMask & *v2) + 0x30);
  v26 = *((swift_isaMask & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10002976C()
{
  v1 = sub_10004CEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager;
  v7 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager];
  if (v7)
  {
    if (!*(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager);

    sub_10001923C();

    if (!*(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor))
    {
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);

    sub_100023FE8();

    v10 = *&v0[v6];
    if (v10)
    {
      *(v10 + 40) = 0;
      swift_unknownObjectWeakAssign();
      v11 = *&v0[v6];
    }
  }

  *&v0[v6] = 0;

  if (qword_10006E0A0 != -1)
  {
    swift_once();
  }

  sub_100022030();
  v12 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation];
  *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = 0;

  if (__OFSUB__(qword_1000730B8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  --qword_1000730B8;
  (*(v2 + 16))(v5, &v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger], v1);
  v13 = v0;
  v14 = sub_10004CEDC();
  v15 = sub_10004D36C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v1;
    v27 = v17;
    *v16 = 136315650;
    v18 = &v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v19 = *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v20 = *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v21 = sub_10000C618(v19, v20, &v27);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = *v18;
    v23 = v18[1];

    v24 = sub_10000C618(v22, v23, &v27);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2048;
    *(v16 + 24) = qword_1000730B8;
    _os_log_impl(&_mh_execute_header, v14, v15, "#%s deinit %s alive count %ld", v16, 0x20u);
    swift_arrayDestroy();

    (*(v2 + 8))(v5, v26);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v25 = type metadata accessor for TranscriptBackgroundView(0);
  v28.receiver = v13;
  v28.super_class = v25;
  objc_msgSendSuper2(&v28, "dealloc");
}

id sub_100029C88()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000C618(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s didMoveToWindow", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v9 = type metadata accessor for TranscriptBackgroundView(0);
  v12.receiver = v1;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "didMoveToWindow");
}

void sub_100029E18()
{
  v59.receiver = v0;
  v59.super_class = type metadata accessor for TranscriptBackgroundView(0);
  objc_msgSendSuper2(&v59, "layoutSubviews");
  [v0 bounds];
  if (v1 == 0.0 || ([v0 bounds], CGRectGetHeight(v67) == 0.0))
  {
    v2 = v0;
    v3 = sub_10004CEDC();
    v4 = sub_10004D39C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *&v52 = swift_slowAlloc();
      *v5 = 136315394;
      v6 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v8 = sub_10000C618(v6, v7, &v52);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      [v2 bounds];
      *&v60 = v9;
      *(&v60 + 1) = v10;
      *&v61 = v11;
      *(&v61 + 1) = v12;
      type metadata accessor for CGRect(0);
      v13 = sub_10004D0FC();
      v15 = sub_10000C618(v13, v14, &v52);

      *(v5 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "#%s rejecting layout size 0 layoutSubviews %s", v5, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v16 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    [v0 bounds];
    [v16 setFrame:?];
    v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView;
    v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView] = 1;
    if (v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady] != 1)
    {
      goto LABEL_11;
    }

    v18 = [v16 world];
    if (v18)
    {
    }

    else
    {
      sub_10002A2A8();
      sub_10002C944();
    }

    if (v0[v17] != 1)
    {
      *&v66[14] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
      v39 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
      v40 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
      v60 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v61 = v40;
      v41 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
      v65 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
      *v66 = v39;
      v42 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
      v62 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v63 = v42;
      v64 = v41;
      v43 = v66[29];
      v37 = v66[28];
      v36 = *&v66[24];
      v23 = *(&v39 + 1);
      v25 = *&v66[16];
      v35 = DWORD1(v39);
      v34 = BYTE2(v39);
      v33 = BYTE1(v39);
      v32 = v39;
      v28 = *(&v62 + 1);
      v51 = v42;
      v29 = v41;
      v49 = BYTE8(v41);
      v50 = BYTE8(v42);
      v47 = BYTE9(v41);
      v30 = *(&v65 + 1);
      v27 = *(&v40 + 1);
      v48 = v62;
      v26 = *(&v60 + 1);
      v45 = v65;
      v46 = v40;
      v44 = v60;
      sub_10000CDAC(&v60, &v52);
      v38 = v43;
    }

    else
    {
LABEL_11:
      v19 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
      v64 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
      v65 = v19;
      *v66 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
      *&v66[14] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
      v20 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
      v60 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v61 = v20;
      v21 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
      v62 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v63 = v21;
      sub_10000CDAC(&v60, &v52);
      [v0 bounds];
      v23 = v22;
      v25 = v24;
      v26 = *(&v60 + 1);
      v27 = *(&v61 + 1);
      v46 = v61;
      v28 = *(&v62 + 1);
      v48 = v62;
      v51 = v63;
      v29 = v64;
      v49 = BYTE8(v64);
      v50 = BYTE8(v63);
      v47 = BYTE9(v64);
      v30 = *(&v65 + 1);
      v44 = v60;
      v45 = v65;
      v31 = v64;

      sub_10000CE08(&v60);
      v32 = v66[0];
      v33 = v66[1];
      v34 = v66[2];
      v35 = *&v66[4];
      v36 = *&v66[24];
      v37 = v66[28];
      v38 = v66[29];
    }

    *&v52 = v44;
    *(&v52 + 1) = v26;
    *&v53 = v46;
    *(&v53 + 1) = v27;
    *&v54 = v48;
    *(&v54 + 1) = v28;
    *&v55 = v51;
    BYTE8(v55) = v50;
    *&v56 = v29;
    BYTE8(v56) = v49;
    BYTE9(v56) = v47;
    *&v57 = v45;
    *(&v57 + 1) = v30;
    v58[0] = v32;
    v58[1] = v33;
    v58[2] = v34;
    *&v58[4] = v35;
    *&v58[8] = v23;
    *&v58[16] = v25;
    *&v58[24] = v36;
    v58[28] = v37;
    v58[29] = v38;
    v62 = v54;
    v63 = v55;
    v60 = v52;
    v61 = v53;
    *&v66[14] = *&v58[14];
    v65 = v57;
    *v66 = *v58;
    v64 = v56;
    sub_100028734(&v60, 0);
    sub_10000CE08(&v52);
  }
}

void sub_10002A2A8()
{
  v1 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];

    v3 = v0;
    v4 = sub_10004CEDC();
    v5 = sub_10004D37C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      v8 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v9 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v10 = sub_10000C618(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "#%s provideEmptyMaskIfNeeded", v6, 0xCu);
      sub_10000CF40(v7);
    }

    [v3 frame];
    v12 = v11;
    v14 = v13;
    sub_10000E8AC();
    v15 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset);
    v16 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider);
    sub_10000DCFC(0, v12, v14);
    swift_unknownObjectRelease();
    [v15 setTexture:*(v16 + 24)];
  }
}

uint64_t sub_10002A4D8()
{
  result = sub_10004CEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10002A5FC(uint64_t result, NSObject *a2)
{
  v4 = result;
  if (v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 125])
  {
    v5 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (!v5)
    {
      return result;
    }

    v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
    v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

    os_unfair_lock_lock(v6);
    v8 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
    sub_10002A744(v8, v2, v4, a2);

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];
    v10 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = a2;

    sub_10002F790(v4);
    sub_10001F7C0(v10, sub_10002F7B0, v11);
  }
}

void sub_10002A744(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_10004CEFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100019398();
  if ((v12 & 0x100000000) != 0)
  {
    v26 = a2;
    v59 = sub_10004CEDC();
    v27 = sub_10004D38C();

    if (os_log_type_enabled(v59, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v61[0] = v29;
      *v28 = 136315138;
      v30 = &v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v31 = *&v26[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v32 = *(v30 + 5);

      v33 = sub_10000C618(v31, v32, v61);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v59, v27, "#%s Could not get current internal time for Gradient snapshot", v28, 0xCu);
      sub_10000CF40(v29);
    }

    else
    {
      v55 = v59;
    }
  }

  else
  {
    v13 = *&v12;
    v14 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
    v15 = a2;
    v16 = sub_10004CEDC();
    v17 = sub_10004D36C();

    v18 = os_log_type_enabled(v16, v17);
    if (v13 <= 10000.0)
    {
      if (v18)
      {
        v34 = swift_slowAlloc();
        v59 = a4;
        v35 = v34;
        v36 = swift_slowAlloc();
        v57 = v7;
        v37 = v36;
        *&v61[0] = v36;
        *v35 = 136315394;
        v58 = a3;
        v38 = *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
        v39 = *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

        v40 = sub_10000C618(v38, v39, v61);
        a3 = v58;

        *(v35 + 4) = v40;
        v14 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
        *(v35 + 12) = 2048;
        *(v35 + 14) = v13;
        _os_log_impl(&_mh_execute_header, v16, v17, "#%s Snapshot internal time: %f", v35, 0x16u);
        sub_10000CF40(v37);
        v7 = v57;

        a4 = v59;
      }
    }

    else
    {
      if (v18)
      {
        v19 = swift_slowAlloc();
        v59 = a4;
        v20 = v19;
        v21 = swift_slowAlloc();
        v58 = a3;
        v22 = v21;
        *&v61[0] = v21;
        *v20 = 136315394;
        v57 = v7;
        v23 = *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
        v24 = *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

        v25 = sub_10000C618(v23, v24, v61);
        v14 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;

        *(v20 + 4) = v25;
        v7 = v57;
        *(v20 + 12) = 2048;
        *(v20 + 14) = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "#%s Restarting effect internal time next time: %f", v20, 0x16u);
        sub_10000CF40(v22);
        a3 = v58;

        a4 = v59;
      }

      v13 = 0.0;
    }

    v41 = &v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    *(v41 + 30) = v13;
    v42 = *v41;
    v43 = *(v41 + 1);
    v44 = *(v41 + 3);
    v61[2] = *(v41 + 2);
    v61[3] = v44;
    v61[0] = v42;
    v61[1] = v43;
    v45 = *(v41 + 4);
    v46 = *(v41 + 5);
    v47 = *(v41 + 6);
    *(v62 + 14) = *(v41 + 110);
    v61[5] = v46;
    v62[0] = v47;
    v61[4] = v45;
    (*(v8 + 16))(v11, &v15[v14[24]], v7);
    v48 = type metadata accessor for SnapshotWriter();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    sub_10000CDAC(v61, &v60);
    v51 = sub_10001F348(v61, v11);
    v52 = *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];
    *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = v51;

    v53 = *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    v54 = swift_allocObject();
    *(v54 + 16) = a3;
    *(v54 + 24) = a4;
    *(v54 + 32) = v13;
    sub_10002F790(a3);
    sub_10001F7C0(v53, sub_10002F84C, v54);
  }
}

uint64_t sub_10002AC88()
{
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  result = [qword_1000730A8 baseFPS];
  if (result <= 0)
  {
    result = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80);
  }

  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v3)
    {
      if ((*(v3 + 16) & 1) == 0)
      {
        v4 = *(v3 + 24);
        v5 = 30;
        if (result < 30)
        {
          v5 = result;
        }

        if (v4 == 2)
        {
          return v5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002AD3C()
{
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  result = [qword_1000730A8 scrollingFPS];
  if (result <= 0)
  {
    result = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 88);
  }

  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v3)
    {
      if ((*(v3 + 16) & 1) == 0)
      {
        v4 = *(v3 + 24);
        v5 = 15;
        if (result < 15)
        {
          v5 = result;
        }

        if (v4 == 2)
        {
          return v5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10002ADF0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling;
  if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) == 1)
  {
    v3 = sub_10002AD3C();
  }

  else
  {
    v3 = sub_10002AC88();
  }

  if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 124))
  {
    v4 = v3 / 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v0 + v2);
  v6 = sub_10004CEDC();
  v7 = sub_10004D39C();
  if (os_log_type_enabled(v6, v7))
  {
    if (v5)
    {
      v8 = "Scrolling - Reducing FPS to %ld";
    }

    else
    {
      v8 = "Using base FPS: %ld";
    }

    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, v8, v9, 0xCu);
  }

  v10 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView);

  return [v10 setPreferredFramesPerSecond:v4];
}

id sub_10002AF24(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v1 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
  v6 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  [v1 addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 bounds];
  [v5 setFrame:?];
  [v5 setUserInteractionEnabled:0];
  [v5 setAntialiasingMode:0];
  [v5 setDelegate:v1];
  if (*(a1 + 24))
  {
    [v5 setWantsExtendedDynamicRange:1];
  }

  if (*(a1 + 16))
  {
    [v5 setColorSpace:?];
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    [v5 setPixelFormat:*a1];
  }

  return sub_10002ADF0();
}

void sub_10002B0B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(id), uint64_t a6)
{
  v149[1] = a6;
  v150 = a5;
  v171 = a4;
  v170 = a2;
  v166 = sub_10004CECC();
  v165 = *(v166 - 8);
  v8 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_10004CF1C();
  v156 = *(v157 - 8);
  v10 = *(v156 + 64);
  __chkstk_darwin(v157);
  v154 = v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10004CF6C();
  v153 = *(v155 - 8);
  v12 = *(v153 + 64);
  __chkstk_darwin(v155);
  v152 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_10004CD3C();
  v172 = *(v167 - 1);
  v14 = *(v172 + 8);
  v15 = __chkstk_darwin(v167);
  v158 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v149 - v17;
  v173 = sub_10004CDDC();
  v19 = *(v173 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v173);
  v22 = v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004CEFC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v159 = v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v163 = v149 - v29;
  v30 = __chkstk_darwin(v28);
  v151 = v149 - v31;
  __chkstk_darwin(v30);
  v33 = v149 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v174 = a3;
  v168 = v23;
  if (Strong)
  {
    v35 = Strong;
    (*(v24 + 16))(v33, Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger, v23);

    v36 = v24;
    v37 = sub_10004CEDC();
    v38 = sub_10004D39C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = a1;
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v39 = 136315138;
      *(v39 + 4) = sub_10000C618(v170, v174, aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "#%s------- task loading starting ..", v39, 0xCu);
      sub_10000CF40(v41);
      a1 = v40;
      v23 = v168;
    }

    (*(v36 + 8))(v33, v23);
    v24 = v36;
  }

  sub_10004CDCC();
  sub_10004CDBC();
  v43 = v42;
  v45 = *(v19 + 8);
  v44 = (v19 + 8);
  v160 = v45;
  v45(v22, v173);
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  v46 = [qword_1000730A8 allowsFuture];
  v169 = v24;
  v161 = v44;
  if (v46)
  {
    sub_10000CC1C(&qword_1000708B8, &qword_1000515C8);
    inited = swift_initStackObject();
    v48 = VFXWorldLoaderAllowLoadingEffectFromTheFuture;
    *(inited + 32) = VFXWorldLoaderAllowLoadingEffectFromTheFuture;
    *(inited + 16) = xmmword_1000505B0;
    *(inited + 64) = &type metadata for Bool;
    *(inited + 40) = 1;
    v49 = v48;
    v50 = sub_10003A210(inited);
    swift_setDeallocating();
    sub_10002F728(inited + 32);
  }

  else
  {
    v50 = sub_10003A210(&_swiftEmptyArrayStorage);
  }

  sub_10000D024(0, &qword_100070898, VFXWorld_ptr);
  (*(v172 + 2))(v18, v171, v167);
  v51 = sub_10002C6F4(v18, v50);
  sub_10004CDCC();
  sub_10004CDBC();
  v53 = v52;
  v160(v22, v173);
  swift_beginAccess();
  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    v162 = a1;
    v56 = (v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration);
    if (*(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 73))
    {
      v57 = [v51 physicsWorld];
      [v57 setUseFixedTimeStep:1];
    }

    v158 = v56;
    v167 = v51;
    v150(v51);
    v58 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger;
    v59 = v174;

    v60 = v55;
    v61 = sub_10004CEDC();
    v62 = sub_10004D39C();

    v63 = os_log_type_enabled(v61, v62);
    v172 = v60;
    v171 = v58;
    v159 = v55;
    if (v63)
    {
      v64 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v64 = 136315394;
      *(v64 + 4) = sub_10000C618(v170, v59, aBlock);
      *(v64 + 12) = 2080;
      [*&v60[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] bounds];
      v65 = NSStringFromRect(v177);
      v66 = sub_10004D08C();
      v68 = v67;

      v69 = sub_10000C618(v66, v68, aBlock);

      *(v64 + 14) = v69;
      v60 = v172;
      _os_log_impl(&_mh_execute_header, v61, v62, "#%s Prepare with size: %s", v64, 0x16u);
      swift_arrayDestroy();

      v55 = v159;
    }

    v70 = v169;
    v71 = v151;
    v151 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
    [v167 prepareForRenderer:*&v60[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] progressHandler:0];
    sub_10004CDCC();
    sub_10004CDBC();
    v73 = v72;
    v160(v22, v173);

    v74 = sub_10004CEDC();
    v75 = sub_10004D37C();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v76 = 136315394;
      *(v76 + 4) = sub_10000C618(v170, v59, aBlock);
      *(v76 + 12) = 2048;
      *(v76 + 14) = v53 - v43;
      _os_log_impl(&_mh_execute_header, v74, v75, "#%s Reading time: %fs", v76, 0x16u);
      sub_10000CF40(v77);
    }

    v78 = sub_10004CEDC();
    v79 = sub_10004D37C();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v80 = 136315394;
      *(v80 + 4) = sub_10000C618(v170, v59, aBlock);
      *(v80 + 12) = 2048;
      *(v80 + 14) = v73 - v53;
      _os_log_impl(&_mh_execute_header, v78, v79, "#%s Preparing time: %fs", v80, 0x16u);
      sub_10000CF40(v81);
    }

    v82 = sub_10004CEDC();
    v83 = sub_10004D37C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock[0] = v85;
      *v84 = 136315394;
      *(v84 + 4) = sub_10000C618(v170, v59, aBlock);
      *(v84 + 12) = 2048;
      *(v84 + 14) = v73 - v43;
      _os_log_impl(&_mh_execute_header, v82, v83, "#%s Total time: %fs", v84, 0x16u);
      sub_10000CF40(v85);
    }

    v86 = v172;
    v87 = sub_1000195B4();
    if (v87)
    {
      v88 = v87;
      v89 = *(v70 + 16);
      v89(v71, &v55[v171], v168);
      v90 = type metadata accessor for MaskManager(0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      swift_allocObject();
      v93 = sub_10000E09C(v71, v88);
      v94 = *&v86[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
      *&v86[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager] = v93;
      v95 = v88;

      if (v86[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView] == 1)
      {
        sub_10002A2A8();
      }

      v96 = v169;
    }

    else
    {
      v96 = v70;
      v89 = *(v70 + 16);
    }

    v161 = v89;
    v97 = v171;
    v98 = &v55[v171];
    v99 = v55;
    v100 = v168;
    v89(v71, v98, v168);
    v101 = type metadata accessor for WorldSerialAccessor(0);
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    v104 = swift_allocObject();
    v105 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock;
    v106 = v167;
    v107 = swift_slowAlloc();
    *(v104 + v105) = v107;
    *v107 = 0;
    (*(v96 + 32))(v104 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_logger, v71, v100);
    v167 = v106;
    *(v104 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world) = v106;
    v173 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
    v108 = *&v86[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    *&v86[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor] = v104;

    v109 = v158;
    v110 = v86;
    v111 = v158[98];
    v161(v71, &v99[v97], v100);
    v112 = v110;
    v113 = sub_10002F36C(v104, v111, 0, v112, v71);

    v114 = *&v112[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager];
    *&v112[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] = v113;

    sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
    v115 = sub_10004D3DC();
    v116 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10002F708;
    aBlock[5] = v116;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002FBD0;
    aBlock[3] = &unk_1000666F0;
    v117 = _Block_copy(aBlock);

    v118 = v152;
    sub_10004CF3C();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
    sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
    v119 = v154;
    v120 = v157;
    sub_10004D57C();
    sub_10004D3EC();
    _Block_release(v117);

    (*(v156 + 8))(v119, v120);
    (*(v153 + 8))(v118, v155);
    v121 = *&v172[v173];
    if (v121)
    {
      v123 = *(v109 + 2);
      v122 = *(v109 + 3);

      v124 = sub_100041D04(v123, v122, v121, &v159[v171]);

      v125 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect;
      v126 = *&v112[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect];
      *&v112[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect] = v124;

      v127 = *&v112[v125];
      v128 = v174;
      if (v127)
      {
        v129 = *&v151[v172];
        v130 = *(*v127 + 136);

        v131 = v129;
        v130();
      }

      sub_10002CB60();

      v132 = v169;
      swift_beginAccess();
      v133 = swift_unknownObjectWeakLoadStrong();
      v134 = v163;
      if (v133)
      {
        v135 = v133;
        v136 = v168;
        (*(v132 + 16))(v163, v133 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger, v168);

        v137 = sub_10004CEDC();
        v138 = sub_10004D39C();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v176 = v140;
          *v139 = 136315138;
          *(v139 + 4) = sub_10000C618(v170, v128, &v176);
          _os_log_impl(&_mh_execute_header, v137, v138, "#%s------- task loading done", v139, 0xCu);
          sub_10000CF40(v140);
        }

        (*(v132 + 8))(v134, v136);
      }

      if (qword_10006E0B0 != -1)
      {
        swift_once();
      }

      v141 = qword_1000730B0;
      sub_10004D49C();
      v142 = *(v141 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
      v143 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
      swift_beginAccess();
      v144 = v165;
      v145 = v141 + v143;
      v146 = v164;
      v147 = v166;
      (*(v165 + 16))(v164, v145, v166);
      v148 = v142;
      sub_10004CEAC();

      (*(v144 + 8))(v146, v147);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_10002C6F4(uint64_t a1, uint64_t a2)
{
  sub_10004CCCC(__stack_chk_guard);
  v5 = v4;
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_10002F898(&qword_10006E4E0, type metadata accessor for VFXWorldLoaderOption);
    v6.super.isa = sub_10004D00C().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v15 = 0;
  v7 = [swift_getObjCClassFromMetadata() worldWithURL:v5 options:v6.super.isa error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = sub_10004CD3C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    sub_10004CC6C();

    swift_willThrow();
    v13 = sub_10004CD3C();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

void sub_10002C8CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 1;
    if (*(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView) == 1)
    {
      sub_10002C944();
    }
  }
}

void sub_10002C944()
{
  v1 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
    v3 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

    os_unfair_lock_lock(v2);
    v4 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    [v4 setWorld:*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world)];
    os_unfair_lock_unlock(v2);

    v5 = v0;
    v6 = sub_10004CEDC();
    v7 = sub_10004D39C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v11 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v12 = sub_10000C618(v10, v11, &v19);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "#%s setting world", v8, 0xCu);
      sub_10000CF40(v9);
    }

    v13 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v14 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
    v15 = v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 56];
    v16 = *(v13 + 8);
    v17 = v13[72];
    v18 = v16;
    if (v17 == 1)
    {
      [v4 setWantsExtendedDynamicRange:1];
    }

    if (v16)
    {
      [v4 setColorSpace:v18];
    }

    if ((v15 & 1) == 0)
    {
      [v4 setPixelFormat:v14];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002CB60()
{
  v0 = sub_10004CF1C();
  v13 = *(v0 - 8);
  v1 = *(v13 + 64);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004CF6C();
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v8 = sub_10004D3DC();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10002F7A0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100066718;
  v10 = _Block_copy(aBlock);

  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
  sub_10004D57C();
  sub_10004D3EC();
  _Block_release(v10);

  (*(v13 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v12);
}

uint64_t sub_10002CE44()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v13 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
    v2 = *(result + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder);
    *(v2 + 24) = 1;
    swift_beginAccess();
    v3 = *(v2 + 32);
    v4 = *(v3 + 16);
    v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;

    v14 = v4;
    if (v4)
    {
      v5 = 0;
      v6 = v3 + 32;
      while (v5 < *(v3 + 16))
      {
        sub_10000CEDC(v6, v16);
        v8 = v17;
        v7 = v18;
        result = sub_10000CF8C(v16, v17);
        if (!*&v1[v15])
        {
          goto LABEL_10;
        }

        ++v5;
        v9 = *(v7 + 8);

        v9(v10, v8, v7);

        result = sub_10000CF40(v16);
        v6 += 40;
        if (v14 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

    else
    {
LABEL_7:

      v11 = *&v1[v13];

      swift_beginAccess();
      v12 = *(v11 + 32);
      *(v11 + 32) = &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_10002CFE8()
{
  if ((v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] & 1) == 0)
  {
    v1 = v0;
    v2 = sub_10004CEDC();
    v3 = sub_10004D39C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "show snapshot", v4, 2u);
    }

    [v1 setAlpha:0.0];
    *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = 0;
  }
}

id sub_10002D0B8()
{
  v1 = v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting];
  v2 = v0;
  v3 = sub_10004CEDC();
  v4 = sub_10004D39C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000C618(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    if (v1)
    {
      v9 = 0x676E69646968;
    }

    else
    {
      v9 = 0x676E69776F6873;
    }

    if (v1)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_10000C618(v9, v10, &v14);

    *(v5 + 14) = v11;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "#%s %s live view (isSnapshotting = %{BOOL}d", v5, 0x1Cu);
    swift_arrayDestroy();
  }

  v12 = 1.0;
  if (v1)
  {
    v12 = 0.0;
    if (v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot])
    {
      v12 = 1.0;
    }
  }

  return [v2 setAlpha:v12];
}

uint64_t sub_10002D2A0(void (*a1)(void), uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v5 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v6 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_10002F790(a1);
  result = sub_100020718(v5);
  if (a1)
  {
    v8 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock);
    os_unfair_lock_lock(v8);
    v9 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented);
    os_unfair_lock_unlock(v8);
    if ((v9 & 1) != 0 || (v10 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter), , v11 = sub_10001F534(), , !v11))
    {
      a1();
      sub_100020718(a1);
      v12 = *v4;
      v13 = v4[1];
      *v4 = 0;
      v4[1] = 0;
    }

    else
    {
      v12 = a1;
    }

    return sub_100020718(v12);
  }

  return result;
}

void sub_10002D3A0(uint64_t a1, uint64_t a2, char *a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    v5 = a3;
    v6 = sub_10004CEDC();
    v7 = sub_10004D36C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      v10 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v11 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v12 = *(v10 + 5);

      v13 = sub_10000C618(v11, v12, &v15);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2048;
      *(v8 + 14) = *&a2;
      _os_log_impl(&_mh_execute_header, v6, v7, "#%s Snapshot for PosterKit done. lastSnapshotTime: %f", v8, 0x16u);
      sub_10000CF40(v9);
    }
  }

  v14 = &a3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
  *v14 = a2;
  v14[4] = BYTE4(a2) & 1;
}

void sub_10002D50C(char a1, uint64_t a2)
{
  v4 = sub_10004CF1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004CF6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v77 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10004CF8C();
  v76 = *(v79 - 8);
  v13 = *(v76 + 64);
  v14 = __chkstk_darwin(v79);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = &v66 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = (a1 & 1) == 0;
  v20 = Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed;
  v21 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v75 = v10;
  if (!v21)
  {
    v33 = *&v19[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];

    v34 = sub_10001F534();

    if (v34)
    {
      sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
      v35 = sub_10004D3DC();
      v74 = v9;
      v79 = v35;
      v36 = swift_allocObject();
      *(v36 + 16) = v19;
      v84 = sub_10002F93C;
      v85 = v36;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_10002FBD0;
      v83 = &unk_1000667E0;
      v37 = _Block_copy(&aBlock);
      v38 = v19;

      v39 = v77;
      sub_10004CF3C();
      aBlock = &_swiftEmptyArrayStorage;
      sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
      sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
      sub_10004D57C();
      v40 = v79;
      sub_10004D3EC();
      _Block_release(v37);

      (*(v5 + 8))(v8, v4);
      (*(v75 + 8))(v39, v74);
    }

    else
    {
    }

    return;
  }

  v72 = v5;
  v73 = v4;
  v22 = *(v20 + 8);
  v74 = v9;
  v70 = v21;
  v71 = v8;
  v69 = v22;
  if (a1)
  {
    v23 = &v19[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
    *v23 = a2;
    v23[4] = BYTE4(a2) & 1;
    sub_10002F790(v21);
    v24 = v19;
    v25 = sub_10004CEDC();
    v26 = sub_10004D39C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315394;
      v29 = &v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v30 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v31 = *(v29 + 5);

      v32 = sub_10000C618(v30, v31, &aBlock);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2048;
      if (v23[4])
      {
        __break(1u);
        return;
      }

      *(v27 + 14) = *v23;
      _os_log_impl(&_mh_execute_header, v25, v26, "#%s snapshot succeeded: %f", v27, 0x16u);
      sub_10000CF40(v28);

      goto LABEL_11;
    }
  }

  else
  {

    [v19 setAlpha:1.0];
    v41 = v19;
    v25 = sub_10004CEDC();
    v42 = sub_10004D39C();

    if (os_log_type_enabled(v25, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      v45 = &v41[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v46 = *&v41[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v47 = *(v45 + 5);

      v48 = sub_10000C618(v46, v47, &aBlock);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v25, v42, "#%s Failed snapshot", v43, 0xCu);
      sub_10000CF40(v44);

LABEL_11:
    }
  }

  v49 = v19;
  v50 = sub_10004CEDC();
  v51 = sub_10004D39C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock = v53;
    *v52 = 136315138;
    v54 = *&v49[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v55 = *&v49[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v56 = sub_10000C618(v54, v55, &aBlock);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "#%s readyForSnapshot", v52, 0xCu);
    sub_10000CF40(v53);
  }

  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v68 = sub_10004D3DC();
  sub_10004CF7C();
  sub_10004CFAC();
  v76 = *(v76 + 8);
  (v76)(v16, v79);
  v57 = swift_allocObject();
  v58 = v69;
  v59 = v70;
  v57[2] = v70;
  v57[3] = v58;
  v57[4] = v49;
  v84 = sub_10002F984;
  v85 = v57;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_10002FBD0;
  v83 = &unk_100066830;
  v60 = _Block_copy(&aBlock);
  sub_10002F790(v59);
  v67 = v49;

  v61 = v77;
  sub_10004CF3C();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
  v62 = v71;
  v63 = v73;
  sub_10004D57C();
  v64 = v78;
  v65 = v68;
  sub_10004D3BC();
  _Block_release(v60);

  sub_100020718(v59);
  (*(v72 + 8))(v62, v63);
  (*(v75 + 8))(v61, v74);
  (v76)(v64, v79);
}

void sub_10002DEA4(void *a1)
{
  v1 = a1;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000C618(v6, v7, v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s showing live view (worldRendered)", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_10002F9D8;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10002FBD0;
  v12[3] = &unk_100066858;
  v11 = _Block_copy(v12);

  [v9 animateWithDuration:v11 animations:0.25];
  _Block_release(v11);
}

void sub_10002E094()
{
  v0 = sub_10004CECC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10006E0B0 != -1)
  {
    swift_once();
  }

  v5 = qword_1000730B0;
  sub_10004D4BC();
  v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v1 + 16))(v4, v5 + v7, v0);
  v8 = v6;
  sub_10004CEAC();

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong setAlpha:1.0];
  }
}

id sub_10002E258(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;

  v10 = sub_10004CEDC();
  v11 = sub_10004D39C();

  v12 = os_log_type_enabled(v10, v11);
  if (a2)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v15 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v16 = sub_10000C618(v14, v15, &v31);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_10000C618(a4, a5, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "#%s Starting VFXWorld clock and rendering, reason: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = [a1 clock];
    [v17 setPaused:0];

    [*&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] setRendersContinuously:1];
    v18 = [a1 rootNode];
    v19 = sub_10004D05C();
    v20 = [v18 childNodeWithName:v19 recursively:1];

    if (v20)
    {
      v21 = [v20 parameters];

      if (v21)
      {
        isa = sub_10004D28C().super.super.isa;
        v23 = sub_10004D05C();
        [v21 setObject:isa forKeyedSubscript:v23];
        swift_unknownObjectRelease();
      }
    }

    return sub_10002ADF0();
  }

  else
  {
    if (v12)
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v27 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v28 = sub_10000C618(v26, v27, &v31);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_10000C618(a4, a5, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "#%s Pausing VFXWorld clock and rendering, reason: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 clock];
    [v29 setPaused:1];

    v30 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];

    return [v30 setRendersContinuously:0];
  }
}

uint64_t sub_10002E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 0;
  *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource) = 0;
  *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue) = 0;
  *(a3 + 40) = &off_100066448;
  swift_unknownObjectWeakAssign();

  v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_logger;
  v6 = sub_10004CEFC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3 + v5, a2, v6);
  v8 = objc_opt_self();
  v9 = [v8 processInfo];
  v10 = [v9 thermalState];

  *(a3 + 24) = v10;
  v11 = [v8 processInfo];
  LOBYTE(v9) = [v11 isLowPowerModeEnabled];

  *(a3 + 16) = v9;

  v12 = sub_10004CEDC();
  v13 = sub_10004D36C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 67109378;
    *(v14 + 4) = *(a3 + 16);

    *(v14 + 8) = 2080;
    v16 = *(a3 + 24);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = 0xE700000000000000;
        v18 = 0x73756F69726573;
        goto LABEL_13;
      }

      if (v16 == 3)
      {
        v17 = 0xE800000000000000;
        v18 = 0x6C61636974697263;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = 0xE700000000000000;
        v18 = 0x6C616E696D6F6ELL;
        goto LABEL_13;
      }

      if (v16 == 1)
      {
        v17 = 0xE400000000000000;
        v18 = 1919508838;
LABEL_13:
        v19 = sub_10000C618(v18, v17, &v21);

        *(v14 + 10) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "lowPowerEnabled base state: %{BOOL}d. thermalState: %s", v14, 0x12u);
        sub_10000CF40(v15);

        goto LABEL_14;
      }
    }

    v17 = 0xE600000000000000;
    v18 = 0x6E776F6B6E75;
    goto LABEL_13;
  }

LABEL_14:
  sub_100022EA4();
  (*(v7 + 8))(a2, v6);
  return a3;
}

uint64_t sub_10002E9A8(uint64_t result, unint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
  if (v3)
  {
    v5 = result;
    v6 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
    v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

    os_unfair_lock_lock(v6);
    v8 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
    sub_10002E258(v8, 0, v2, v5, a2);

    os_unfair_lock_unlock(v6);

    if ((v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp] & 1) == 0)
    {
      v9 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect];
      if (v9)
      {
        v10 = *(*v9 + 144);

        v10(1);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002EAC0()
{
  v1 = sub_10004CF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004CF6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock];
  os_unfair_lock_lock(v11);
  v12 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented;
  v13 = (v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] & 1) != 0 || *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] > 1;
  if (v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] == 1)
  {
    v14 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = v16;
      os_unfair_lock_unlock(v11);
      if (!v13)
      {
        v28 = v7;
        v29 = v6;
        v30 = v2;
        v17 = v0;
        v31 = v0;
        v18 = sub_10004CEDC();
        v19 = sub_10004D37C();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v27[0] = swift_slowAlloc();
          aBlock[0] = v27[0];
          *v20 = 136315138;
          v27[1] = v17;
          v21 = *&v17[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
          v22 = *&v17[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

          v23 = sub_10000C618(v21, v22, aBlock);

          *(v20 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v18, v19, "#%s didPresent", v20, 0xCu);
          sub_10000CF40(v27[0]);
        }

        os_unfair_lock_lock(v11);
        v31[v12] = 1;
        sub_10002CFE8();
        os_unfair_lock_unlock(v11);
        sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
        v24 = sub_10004D3DC();
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_10002F8E0;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002FBD0;
        aBlock[3] = &unk_100066790;
        v26 = _Block_copy(aBlock);

        sub_10004CF3C();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
        sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
        sub_10004D57C();
        sub_10004D3EC();
        _Block_release(v26);

        (*(v30 + 8))(v5, v1);
        (*(v28 + 8))(v10, v29);
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(v11);
  }
}

void sub_10002EF78()
{
  v1 = v0;
  v2 = sub_10004D3CC();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v17 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004D4CC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_10004CF6C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *(v0 + v9) = [objc_allocWithZone(VFXView) init];
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect) = 0;
  v10 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v11 = swift_allocObject();
  *(v11 + 16) = swift_slowAlloc();
  *(v11 + 24) = 0;
  *(v11 + 32) = &_swiftEmptyArrayStorage;
  *(v0 + v10) = v11;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = 1;
  v12 = v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) = 0;
  v16 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000D024(0, &unk_100070360, OS_dispatch_queue_serial_ptr);
  sub_10004CF4C();
  v20 = &_swiftEmptyArrayStorage;
  sub_10002F898(&unk_100070AC0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10000CC1C(&unk_100070370, "dd");
  sub_1000249FC(&qword_100070AD0, &unk_100070370, "dd");
  sub_10004D57C();
  (*(v18 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  *(v0 + v16) = sub_10004D4DC();
  v13 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock;
  *(v1 + v13) = swift_slowAlloc();
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
  v14 = (v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  *v14 = 0;
  v14[1] = 0;
  sub_10004D66C();
  __break(1u);
}

uint64_t sub_10002F36C(uint64_t a1, char a2, char a3, void *a4, uint64_t a5)
{
  v10 = sub_10004CEFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LifecycleManager();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager) = 0;
  *(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor) = 0;
  *(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) = 1;
  v19 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning;
  *(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) = 0;
  *(v18 + 40) = &off_1000666B0;
  v39 = a4;
  swift_unknownObjectWeakAssign();
  *(v18 + 16) = a2;
  *(v18 + 17) = a3;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  *(v18 + v19) = [qword_1000730A8 alwaysRender];
  *(v18 + 24) = a1;
  v20 = *(v11 + 16);
  v20(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_logger, a5, v10);
  v20(v14, a5, v10);
  v21 = type metadata accessor for SimulationSpeedManager();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[5] = 0;
  swift_unknownObjectWeakInit();
  v25 = v24 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
  *v25 = 0;
  v25[4] = 1;
  v24[5] = &off_100066458;
  swift_unknownObjectWeakAssign();
  v24[3] = a1;
  v40 = v11;
  (*(v11 + 32))(v24 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_logger, v14, v10);
  v26 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager;
  v27 = *(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager);
  *(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager) = v24;
  swift_retain_n();

  v20(v14, a5, v10);
  v28 = type metadata accessor for PerformanceMonitor(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();

  v33 = sub_10002E67C(v32, v14, v31);
  v34 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor;
  v35 = *(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);
  *(v18 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor) = v33;

  if (*(v18 + v26))
  {
    v37 = *(v18 + v26);

    sub_100018DB8();

    if (*(v18 + v34))
    {
      v38 = *(v18 + v34);

      sub_100023E64();

      sub_100020BF4();
      (*(v40 + 8))(a5, v10);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F6D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F728(uint64_t a1)
{
  v2 = sub_10000CC1C(&unk_1000708C0, qword_1000515D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F790(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002F7B0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1, 0);
  }

  return result;
}

uint64_t sub_10002F800(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 24);
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10002F84C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 24);
    return v2(result & 1, v3);
  }

  return result;
}

uint64_t sub_10002F898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002F904()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F944()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002F984()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();
  v3 = (v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v4 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v5 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);
  *v3 = 0;
  v3[1] = 0;

  return sub_100020718(v4);
}

__n128 sub_10002FA08(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}