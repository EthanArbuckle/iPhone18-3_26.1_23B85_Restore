id sub_100038D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_100038E4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100038E60(uint64_t a1, unsigned int a2)
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

uint64_t sub_100038EA8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100038F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100039010, 0, 0);
}

uint64_t sub_100039010()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10003A42C(&qword_1003A17A0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10003A42C(&unk_1003A17A8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000391A0;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000391A0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10003935C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10003935C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000393C8()
{
  *(v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_isAnimating) = 0;
  v1 = (v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl) = 0;
  *(v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControlProgress) = 0;
  *(v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_skipButton) = 0;
  *(v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_panGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidBecomeActiveObservationToken) = 0;
  *(v0 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidEnterBackgroundObservationToken) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003949C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 136) = a6;
  *(v8 + 144) = v7;
  *(v8 + 49) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = type metadata accessor for MainActor();
  *(v8 + 208) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 216) = v12;
  *(v8 + 224) = v11;

  return _swift_task_switch(sub_100039600, v12, v11);
}

uint64_t sub_100039600()
{
  v1 = *(v0 + 104);
  type metadata accessor for NewFeatureTextView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + 232) = v2;
  if (v1)
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = *(v0 + 120);
      if (v6)
      {
        v7 = *(v0 + 112);
        *(v0 + 16) = v4;
        *(v0 + 24) = v3;
        *(v0 + 32) = v7;
        *(v0 + 40) = v6;
        *(v0 + 48) = 0;
        sub_1000389E8(v0 + 16);

        v8._countAndFlagsBits = 8236;
        v8._object = 0xE200000000000000;
        String.append(_:)(v8);
        v9._countAndFlagsBits = v7;
        v9._object = v6;
        String.append(_:)(v9);
        v10 = v4;
        v11 = v3;
        goto LABEL_9;
      }

LABEL_15:

LABEL_24:

      v27 = *(v0 + 8);

      return v27();
    }
  }

  v11 = *(v0 + 120);
  if (!v11)
  {
    goto LABEL_15;
  }

  *(v0 + 56) = *(v0 + 112);
  *(v0 + 64) = v11;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  sub_1000389E8(v0 + 56);

  v10 = *(v0 + 112);
LABEL_9:
  *(v0 + 240) = v10;
  *(v0 + 248) = v11;
  if (*(v0 + 49))
  {
    if (*(v0 + 49) == 1)
    {
      v12 = *(v0 + 144);
      v13 = *(v12 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_currentTextScrollView);
      *(v0 + 272) = v13;
      if (v13)
      {
        v14 = *(v0 + 136);
        v15 = *(v0 + 128);
        v16 = v13;
        *(v0 + 304) = static MainActor.shared.getter();
        v17 = swift_task_alloc();
        *(v0 + 312) = v17;
        *(v17 + 16) = v12;
        *(v17 + 24) = v15 & 1;
        *(v17 + 32) = v2;
        *(v17 + 40) = v14;
        *(v17 + 48) = v16;
        v18 = swift_task_alloc();
        *(v0 + 320) = v18;
        *v18 = v0;
        v18[1] = sub_10003A090;

        return withCheckedContinuation<A>(isolation:function:_:)();
      }
    }

    else
    {
      v23 = *(v0 + 144);

      v24 = *(v23 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_currentTextScrollView);
      if (v24)
      {
        [v24 removeFromSuperview];
      }

      [v2 setAlpha:1.0];
      sub_100033FB8(v2);
    }

    v25 = *(v0 + 232);
    v26 = UIAccessibilityAnnouncementNotification;
    v2 = String._bridgeToObjectiveC()();

    UIAccessibilityPostNotification(v26, v2);

    goto LABEL_24;
  }

  v19 = static Duration.seconds(_:)();
  v21 = v20;
  static Clock<>.continuous.getter();
  v22 = swift_task_alloc();
  *(v0 + 256) = v22;
  *v22 = v0;
  v22[1] = sub_1000399EC;

  return sub_100038F10(v19, v21, 0, 0, 1);
}

uint64_t sub_1000399EC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  *(*v1 + 264) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 224);
  v7 = *(v2 + 216);
  if (v0)
  {
    v8 = sub_100039EB8;
  }

  else
  {
    v8 = sub_100039B84;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100039B84()
{
  v1 = v0[29];
  v2 = v0[18];
  v3 = v0[16];
  v0[35] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[36] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_100039CA0;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100039CA0()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_100039E00, v3, v2);
}

uint64_t sub_100039E00()
{

  v1 = *(v0 + 232);
  v2 = UIAccessibilityAnnouncementNotification;
  v3 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100039EB8()
{

  static Logger.purpleBuddyGeneral.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to sleep: %@", v3, 0xCu);
    sub_10003ACA0(v4, &qword_1003A0320);
  }

  else
  {
  }

  (*(v0[20] + 8))(v0[21], v0[19]);
  v6 = v0[29];
  v7 = UIAccessibilityAnnouncementNotification;
  v8 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003A090()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_10003A1F0, v3, v2);
}

uint64_t sub_10003A1F0()
{
  v1 = v0[34];

  v2 = v0[29];
  v3 = UIAccessibilityAnnouncementNotification;
  v4 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003A2D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003A32C()
{
  v1 = sub_100006410(&qword_1003A2250);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003A42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003A474()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003A500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10003A564()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003A5BC()
{
  v1 = sub_100006410(&qword_1003A2250);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003A690()
{
  sub_100006410(&qword_1003A2250);
  [*(v0 + 16) removeFromSuperview];
  sub_100006410(&qword_1003A2250);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10003A728()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003A768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003B268;

  return sub_100031D3C(a1, v4, v5, v6);
}

id sub_10003A864(void *a1)
{
  result = *(*(v1 + 16) + *a1);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A888()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A8D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003B26C;

  return sub_100023EAC(a1, v4, v5, v6);
}

uint64_t sub_10003A994()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003AA88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003B270;

  return sub_100023AA0(a1, v4, v5, v6);
}

uint64_t sub_10003AB3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003B274;

  return sub_100023EAC(a1, v4, v5, v6);
}

uint64_t sub_10003ABF0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10003AC38()
{
  result = qword_1003A1800;
  if (!qword_1003A1800)
  {
    sub_10003ABF0(255, &qword_1003A0430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1800);
  }

  return result;
}

uint64_t sub_10003ACA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006410(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003AD08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003ADFC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000097E0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003AE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006410(&unk_1003A1860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AEB4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72) != 1)
  {
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_10003AF14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003B278;

  return sub_1000302C8(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_10003AFE8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10003B034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003B27C;

  return sub_1000259F0(a1, v4, v5, v6);
}

uint64_t sub_10003B0E8()
{

  return _swift_deallocObject(v0, 25, 7);
}

__n128 initializeBufferWithCopyOfBuffer for NewFeaturesViewController.TextTransitionStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NewFeaturesViewController.TextTransitionStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for NewFeaturesViewController.TextTransitionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10003B1CC(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10003B1E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id IntelligenceManager.__allocating_init(featureFlags:availabilityProvider:stateProvider:preferences:chronicle:deviceProvider:visualIntelligencePresentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  v15[OBJC_IVAR____TtC5Setup19IntelligenceManager_didShowIntelligencePaneThisBuddyRun] = 0;
  *&v15[OBJC_IVAR____TtC5Setup19IntelligenceManager_featureFlags] = a1;
  *&v15[OBJC_IVAR____TtC5Setup19IntelligenceManager_availabilityProvider] = a2;
  *&v15[OBJC_IVAR____TtC5Setup19IntelligenceManager_stateProvider] = a3;
  *&v15[OBJC_IVAR____TtC5Setup19IntelligenceManager_preferences] = a4;
  *&v15[OBJC_IVAR____TtC5Setup19IntelligenceManager_chronicle] = a5;
  *&v15[OBJC_IVAR____TtC5Setup19IntelligenceManager_visualIntelligencePresentationManager] = a7;
  v20.receiver = v15;
  v20.super_class = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = a4;
  v17 = a5;
  v18 = objc_msgSendSuper2(&v20, "init");
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v18;
}

id IntelligenceManager.init(featureFlags:availabilityProvider:stateProvider:preferences:chronicle:deviceProvider:visualIntelligencePresentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10003F08C(a1, a2, a3, a4, a5, a7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

id IntelligenceManager.__allocating_init(featureFlags:preferences:chronicle:deviceProvider:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = a1;
  v37 = a4;
  v35 = a3;
  v33 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeModelsAvailability();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = objc_allocWithZone(v4);
  v13 = [objc_allocWithZone(type metadata accessor for BuddyGMAvailabilityProvider()) init];
  v14 = [objc_allocWithZone(type metadata accessor for IntelligenceServerControlProvider()) init];
  v15 = type metadata accessor for IntelligenceAvailabilityProvider();
  v16 = objc_allocWithZone(v15);
  v16[OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_serverBackedValue] = 2;
  *&v16[OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_generativeModelsAvailabilityProvider] = v13;
  *&v16[OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_serverControlProvider] = v14;
  has_internal_ui = os_variant_has_internal_ui();
  v18 = 0;
  if (has_internal_ui)
  {
    v19 = a2;
    v18 = a2;
  }

  *&v16[OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_preferences] = v18;
  v40.receiver = v16;
  v40.super_class = v15;
  v20 = objc_msgSendSuper2(&v40, "init", v33);
  v21 = a2;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v6 + 8))(v8, v33);
  v22 = type metadata accessor for IntelligenceStateProvider();
  v23 = objc_allocWithZone(v22);
  v39[3] = v9;
  v39[4] = &protocol witness table for GenerativeModelsAvailability;
  v24 = sub_100011C98(v39);
  (*(v10 + 16))(v24, v12, v9);
  sub_100011CFC(v39, &v23[OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_generativeModelProvider]);
  *&v23[OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_preferences] = v21;
  v38.receiver = v23;
  v38.super_class = v22;
  v25 = objc_msgSendSuper2(&v38, "init");
  (*(v10 + 8))(v12, v9);
  sub_10003F190(v39);
  v26 = objc_allocWithZone(type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager());
  v27 = v21;
  v28 = v37;
  swift_unknownObjectRetain();
  v29 = v35;
  v30 = BuddyControlCenterVisualIntelligencePresentationManager.init(preferenceController:deviceProvider:chronicle:)(v27, v28, v29);
  v31 = [v34 initWithFeatureFlags:v36 availabilityProvider:v20 stateProvider:v25 preferences:v27 chronicle:v29 deviceProvider:v28 visualIntelligencePresentationManager:v30];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v31;
}

id IntelligenceManager.init(featureFlags:preferences:chronicle:deviceProvider:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = a3;
  v35 = a1;
  v36 = a4;
  v32 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeModelsAvailability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(type metadata accessor for BuddyGMAvailabilityProvider()) init];
  v13 = [objc_allocWithZone(type metadata accessor for IntelligenceServerControlProvider()) init];
  v14 = type metadata accessor for IntelligenceAvailabilityProvider();
  v15 = objc_allocWithZone(v14);
  v15[OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_serverBackedValue] = 2;
  *&v15[OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_generativeModelsAvailabilityProvider] = v12;
  *&v15[OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_serverControlProvider] = v13;
  has_internal_ui = os_variant_has_internal_ui();
  v17 = 0;
  if (has_internal_ui)
  {
    v18 = a2;
    v17 = a2;
  }

  *&v15[OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_preferences] = v17;
  v39.receiver = v15;
  v39.super_class = v14;
  v19 = objc_msgSendSuper2(&v39, "init", v32);
  v20 = a2;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v5 + 8))(v7, v32);
  v21 = type metadata accessor for IntelligenceStateProvider();
  v22 = objc_allocWithZone(v21);
  v38[3] = v8;
  v38[4] = &protocol witness table for GenerativeModelsAvailability;
  v23 = sub_100011C98(v38);
  (*(v9 + 16))(v23, v11, v8);
  sub_100011CFC(v38, &v22[OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_generativeModelProvider]);
  *&v22[OBJC_IVAR____TtC5Setup25IntelligenceStateProvider_preferences] = v20;
  v37.receiver = v22;
  v37.super_class = v21;
  v24 = objc_msgSendSuper2(&v37, "init");
  (*(v9 + 8))(v11, v8);
  sub_10003F190(v38);
  v25 = objc_allocWithZone(type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager());
  v26 = v20;
  v27 = v36;
  swift_unknownObjectRetain();
  v28 = v33;
  v29 = BuddyControlCenterVisualIntelligencePresentationManager.init(preferenceController:deviceProvider:chronicle:)(v26, v27, v28);
  v30 = [v34 initWithFeatureFlags:v35 availabilityProvider:v19 stateProvider:v24 preferences:v26 chronicle:v28 deviceProvider:v27 visualIntelligencePresentationManager:v29];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v30;
}

uint64_t IntelligenceManager.shouldShowIntelligence(withServerCheck:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10003BE2C, 0, 0);
}

uint64_t sub_10003BE2C()
{
  v1 = [*(v0[2] + OBJC_IVAR____TtC5Setup19IntelligenceManager_featureFlags) isIntelligenceEnabled];
  if (v1 && (*(v0[2] + OBJC_IVAR____TtC5Setup19IntelligenceManager_didShowIntelligencePaneThisBuddyRun) & 1) == 0)
  {
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_10003BF30;

    return IntelligenceManager.isIntelligenceEnabled()();
  }

  else
  {

    v2 = v0[1];

    return v2(v1);
  }
}

uint64_t sub_10003BF30(char a1)
{
  *(*v1 + 65) = a1;

  return _swift_task_switch(sub_10003C030, 0, 0);
}

uint64_t sub_10003C030()
{
  if (*(v0 + 65) == 1)
  {
    if (sub_10003EC34() & 1) != 0 || (sub_10003EDA0())
    {
LABEL_12:
      v10 = swift_task_alloc();
      *(v0 + 56) = v10;
      *v10 = v0;
      v10[1] = sub_10003C1F8;
      v11 = *(v0 + 64);

      return sub_10003E140(v11);
    }
  }

  else
  {
    if (![*(*(v0 + 16) + OBJC_IVAR____TtC5Setup19IntelligenceManager_stateProvider) wasOfferedIntelligence])
    {
      goto LABEL_12;
    }

    static Logger.purpleBuddyGeneral.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "User was offered intelligence before.", v7, 2u);
    }

    (*(v5 + 8))(v4, v6);
  }

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_10003C1F8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10003C49C(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10003C558;

  return IntelligenceManager.shouldShowIntelligence(withServerCheck:)(a1);
}

uint64_t sub_10003C558(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

Swift::Void __swiftcall IntelligenceManager.setDidShowIntelligencePaneInCurrentSession()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "didShowIntelligencePaneThisBuddyRun is set this buddy run.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC5Setup19IntelligenceManager_didShowIntelligencePaneThisBuddyRun) = 1;
}

uint64_t IntelligenceManager.isIntelligenceEnabled()()
{
  v1[18] = v0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003C910, 0, 0);
}

uint64_t sub_10003C910()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Checking intelligence status", v3, 2u);
  }

  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];

  v8 = *(v6 + 8);
  v0[24] = v8;
  v8(v4, v5);
  v9 = *(v7 + OBJC_IVAR____TtC5Setup19IntelligenceManager_stateProvider);
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_10003CAE0;
  v10 = swift_continuation_init();
  v0[17] = sub_100006410(&unk_1003A1908);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10003CE98;
  v0[13] = &unk_100329B40;
  v0[14] = v10;
  [v9 isIntelligenceEnabledWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10003CAE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_10003CD14;
  }

  else
  {
    v2 = sub_10003CBF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003CBF0()
{
  v1 = *(v0 + 208);
  static Logger.purpleBuddyGeneral.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Intelligence status: %{BOOL}d", v4, 8u);
  }

  (*(v0 + 192))(*(v0 + 176), *(v0 + 152));

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_10003CD14()
{
  swift_willThrow();
  static Logger.purpleBuddyGeneral.getter();
  v1 = static os_log_type_t.error.getter();
  v2 = Logger.logObject.getter();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Failed to determine intelligence status. Error: %@", v3, 0xCu);
    sub_1000063A8(v4);
  }

  else
  {
  }

  (*(v0 + 192))(*(v0 + 168), *(v0 + 152));

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_10003CE98(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000171F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006410(&unk_1003A1DA0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10003D0D8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10003F90C;

  return IntelligenceManager.isIntelligenceEnabled()();
}

Swift::Void __swiftcall IntelligenceManager.applyStashedIsIntelligenceEnabled(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  static Logger.purpleBuddyGeneral.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Will apply stashed intelligence enabled %{BOOL}d", v13, 8u);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  [*(v2 + OBJC_IVAR____TtC5Setup19IntelligenceManager_stateProvider) applyStashedIsIntelligenceEnabled:a1];
  static Logger.purpleBuddyGeneral.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Did apply stashed intelligence enabled", v17, 2u);
  }

  v14(v8, v4);
}

uint64_t IntelligenceManager.updateAppleIntelligenceUpsellPreferences(didShow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10003D4BC, 0, 0);
}

uint64_t sub_10003D4BC()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 56);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Updating Intelligence presented keys. Did show: %{BOOL}d", v4, 8u);
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 56);

  (*(v6 + 8))(v5, v7);
  v10 = *(v8 + OBJC_IVAR____TtC5Setup19IntelligenceManager_chronicle);
  if (v9 == 1)
  {
    [v10 recordFeatureShown:4];
    v11 = swift_task_alloc();
    *(v0 + 48) = v11;
    *v11 = v0;
    v11[1] = sub_10003D67C;

    return IntelligenceManager.isIntelligenceEnabled()();
  }

  else
  {
    [v10 removeRecordForFeature:4];

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10003D67C(char a1)
{
  *(*v1 + 57) = a1;

  return _swift_task_switch(sub_10003D77C, 0, 0);
}

uint64_t sub_10003D77C()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(*(v0 + 16) + OBJC_IVAR____TtC5Setup19IntelligenceManager_visualIntelligencePresentationManager);
    if (v1)
    {
      [v1 updatePresentedKeyWithNewState:1];
    }
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003D990(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10003DA4C;

  return IntelligenceManager.updateAppleIntelligenceUpsellPreferences(didShow:)(a1);
}

uint64_t sub_10003DA4C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t IntelligenceManager.stashableNotificationOnboardingDefaults()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  static Logger.purpleBuddyGeneral.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Will generate stashable notification onboarding defaults", v11, 2u);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = [*(v1 + OBJC_IVAR____TtC5Setup19IntelligenceManager_stateProvider) stashableNotificationOnboardingDefaults];
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  static Logger.purpleBuddyGeneral.getter();
  sub_10003F1DC(v15, v17);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = v17 >> 60 == 15;
    sub_100011858(v15, v17);
    _os_log_impl(&_mh_execute_header, v18, v19, "Did generate stashable notification onboarding defaults - is nil? %{BOOL}d", v20, 8u);
  }

  else
  {
    sub_100011858(v15, v17);
  }

  v12(v6, v2);
  return v15;
}

uint64_t IntelligenceManager.applyStashedNotificationOnboardingDefaults(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  static Logger.purpleBuddyGeneral.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Will apply stashed notification onboarding defaults", v11, 2u);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = *(v1 + OBJC_IVAR____TtC5Setup19IntelligenceManager_stateProvider);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v13 applyStashedNotificationOnboardingDefaults:isa];

  static Logger.purpleBuddyGeneral.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Did apply stashed notification onboarding defaults", v17, 2u);
  }

  return (v12)(v6, v2);
}

uint64_t sub_10003E140(char a1)
{
  *(v2 + 272) = v1;
  *(v2 + 354) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 280) = v3;
  *(v2 + 288) = *(v3 - 8);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_10003E228, 0, 0);
}

uint64_t sub_10003E228()
{
  if (*(v0 + 354) == 1)
  {
    static Logger.purpleBuddyGeneral.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Updating intelligence availability", v3, 2u);
    }

    v4 = v0 + 80;
    v5 = *(v0 + 320);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    v8 = *(v0 + 272);

    v9 = *(v7 + 8);
    *(v0 + 328) = v9;
    v9(v5, v6);
    v10 = *(v8 + OBJC_IVAR____TtC5Setup19IntelligenceManager_availabilityProvider);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 353;
    *(v0 + 88) = sub_10003E568;
    v11 = swift_continuation_init();
    *(v0 + 264) = sub_100006410(&unk_1003A1908);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10003CE98;
    *(v0 + 232) = &unk_100329CF8;
    *(v0 + 240) = v11;
    [v10 fetchLatestAvailabilityWithCompletionHandler:v0 + 208];
  }

  else
  {
    static Logger.purpleBuddyGeneral.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Local availability check", v14, 2u);
    }

    v4 = v0 + 16;
    v15 = *(v0 + 312);
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    v18 = *(v0 + 272);

    v19 = *(v17 + 8);
    *(v0 + 344) = v19;
    v19(v15, v16);
    v20 = *(v18 + OBJC_IVAR____TtC5Setup19IntelligenceManager_availabilityProvider);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_10003E7C4;
    v21 = swift_continuation_init();
    *(v0 + 200) = sub_100006410(&unk_1003A1940);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10001685C;
    *(v0 + 168) = &unk_100329CD0;
    *(v0 + 176) = v21;
    [v20 isDeviceEligibleForIntelligenceWithCompletionHandler:v0 + 144];
  }

  return _swift_continuation_await(v4);
}

uint64_t sub_10003E568()
{
  v1 = *(*v0 + 112);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_10003E9F0;
  }

  else
  {
    v2 = sub_10003E678;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003E678()
{
  v1 = *(v0 + 353);
  v2 = *(v0 + 328);
  static Logger.purpleBuddyGeneral.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Intelligence availablility status: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 280);

  v2(v6, v7);

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_10003E7C4()
{

  return _swift_task_switch(sub_10003E8A4, 0, 0);
}

uint64_t sub_10003E8A4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  static Logger.purpleBuddyGeneral.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Intelligence availablility status: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 280);

  v2(v6, v7);

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_10003E9F0()
{
  swift_willThrow();
  static Logger.purpleBuddyGeneral.getter();
  v1 = static os_log_type_t.error.getter();
  v2 = Logger.logObject.getter();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Failed to fetch latest availability status with error: %@", v3, 0xCu);
    sub_1000063A8(v4);
  }

  else
  {
  }

  (*(v0 + 328))(*(v0 + 296), *(v0 + 280));
  v6 = *(v0 + 328);
  static Logger.purpleBuddyGeneral.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    _os_log_impl(&_mh_execute_header, v7, v8, "Intelligence availablility status: %{BOOL}d", v9, 8u);
  }

  v10 = *(v0 + 304);
  v11 = *(v0 + 280);

  v6(v10, v11);

  v12 = *(v0 + 8);

  return v12(0);
}

id sub_10003EC34()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + OBJC_IVAR____TtC5Setup19IntelligenceManager_stateProvider) shouldShowForSummarization];
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Should show summarization: %{BOOL}d", v8, 8u);
  }

  (*(v2 + 8))(v4, v1);
  return v5;
}

id sub_10003EDA0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC5Setup19IntelligenceManager_visualIntelligencePresentationManager))
  {
    return 0;
  }

  v5 = [swift_unknownObjectRetain() shouldPresentVisualIntelligencePane];
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Should show Visual Intelligence (CC): %{BOOL}d", v8, 8u);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v2 + 8))(v4, v1);
  return v5;
}

id IntelligenceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntelligenceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10003F08C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v6[OBJC_IVAR____TtC5Setup19IntelligenceManager_didShowIntelligencePaneThisBuddyRun] = 0;
  *&v6[OBJC_IVAR____TtC5Setup19IntelligenceManager_featureFlags] = a1;
  *&v6[OBJC_IVAR____TtC5Setup19IntelligenceManager_availabilityProvider] = a2;
  *&v6[OBJC_IVAR____TtC5Setup19IntelligenceManager_stateProvider] = a3;
  *&v6[OBJC_IVAR____TtC5Setup19IntelligenceManager_preferences] = a4;
  *&v6[OBJC_IVAR____TtC5Setup19IntelligenceManager_chronicle] = a5;
  *&v6[OBJC_IVAR____TtC5Setup19IntelligenceManager_visualIntelligencePresentationManager] = a6;
  v12.receiver = v6;
  v12.super_class = type metadata accessor for IntelligenceManager();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a5;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10003F190(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10003F1DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100015910(a1, a2);
  }

  return a1;
}

uint64_t sub_10003F218()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003F934;

  return sub_10003D990(v2, v4, v3);
}

uint64_t sub_10003F2D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F310()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003F928;

  return sub_10003D0D8(v2, v3);
}

uint64_t sub_10003F3BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003F92C;

  return sub_100063764(v2, v3, v4);
}

uint64_t sub_10003F47C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003F930;

  return sub_10006384C(a1, v4, v5, v6);
}

uint64_t sub_10003F548()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F588()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003F63C;

  return sub_10003C49C(v2, v4, v3);
}

uint64_t sub_10003F63C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003F730()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003F938;

  return sub_100063764(v2, v3, v4);
}

uint64_t sub_10003F7F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003F93C;

  return sub_10006384C(a1, v4, v5, v6);
}

id sub_10003F9FC()
{
  v1 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = [*&v0[OBJC_IVAR____TtC5Setup27NewFeaturesFlowAssetManager_manager] needsToRun];
  if (result)
  {
    v5 = *&v0[OBJC_IVAR____TtC5Setup27NewFeaturesFlowAssetManager_networkMonitor];
    if ([v5 currentNetworkType] == 1)
    {
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v0;
      v8 = v0;
      sub_100022A78(0, 0, v3, &unk_100298968, v7);
    }

    else
    {

      return [v5 addObserver:v0];
    }
  }

  return result;
}

uint64_t sub_10003FB74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003FC00;

  return sub_1000404D4();
}

uint64_t sub_10003FC00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003FEB0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10003FF58;

  return sub_100040CBC();
}

uint64_t sub_10003FF58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

id sub_1000400A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewFeaturesFlowAssetManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004016C()
{
  [*(*(v0 + 16) + OBJC_IVAR____TtC5Setup27NewFeaturesFlowAssetManager_networkMonitor) removeObserver:?];
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100040214;

  return sub_1000404D4();
}

uint64_t sub_100040214()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100040420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041198;

  return sub_10004014C(a1, v4, v5, v6);
}

uint64_t sub_1000404D4()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_10004059C, 0, 0);
}

uint64_t sub_10004059C()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Download new features assets", v3, 2u);
  }

  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  v7 = *(v6 + 8);
  v0[6] = v7;
  v7(v4, v5);
  type metadata accessor for NewFeaturesHandler();
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_1000406DC;

  return static NewFeaturesHandler.retrieveAssetFromServer()();
}

uint64_t sub_1000406DC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100040820, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100040820()
{
  static Logger.purpleBuddyGeneral.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to download assets: %@", v3, 0xCu);
    sub_1000063A8(v4);
  }

  else
  {
  }

  (*(v0 + 48))(*(v0 + 32), *(v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000409A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000409E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100041194;

  return sub_10003FB74();
}

uint64_t sub_100040A98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040AD8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040B84;

  return sub_10003FEB0(v2);
}

uint64_t sub_100040B84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100040C7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040CBC()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_100040D84, 0, 0);
}

uint64_t sub_100040D84()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove new features assets", v3, 2u);
  }

  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  v7 = *(v6 + 8);
  v0[6] = v7;
  v7(v4, v5);
  type metadata accessor for NewFeaturesHandler();
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_100040EC4;

  return static NewFeaturesHandler.removeAsset()();
}

uint64_t sub_100040EC4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100041008, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100041008()
{
  static Logger.purpleBuddyGeneral.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to remove assets: %@", v3, 0xCu);
    sub_1000063A8(v4);
  }

  else
  {
  }

  (*(v0 + 48))(*(v0 + 32), *(v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

id sub_10004119C()
{
  *&v0[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationLayer] = 0;
  *&v0[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationSpeed] = 0;
  *&v0[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_flowItemDispositionProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_runState] = 0;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v13._object = 0xE000000000000000;
  v3._object = 0x800000010029CAE0;
  v3._countAndFlagsBits = 0xD000000000000012;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v13);

  v5 = [v1 mainBundle];
  v14._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x800000010029CB00;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v14);

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v12.receiver = v0;
  v12.super_class = type metadata accessor for BuddyChildSafetyController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v8, v9, 0, 2);

  return v10;
}

void sub_100041364()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BuddyChildSafetyController();
  v83.receiver = v0;
  v83.super_class = v6;
  objc_msgSendSuper2(&v83, "viewDidLoad");
  v7 = [objc_opt_self() mainBundle];
  v84._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x45554E49544E4F43;
  v8._object = 0xE800000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v84._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v84);

  v10 = String._bridgeToObjectiveC()();

  [v1 addBoldButton:v10 action:"continueTapped"];

  v11 = [v1 buttonTray];
  sub_100006410(&unk_1003A20B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002978B0;
  *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 40) = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setPrivacyLinkForBundles:isa];

  v15 = objc_opt_self();
  v16 = [v15 currentDevice];
  LOBYTE(isa) = [v16 hasHomeButton];

  if (isa)
  {
    object = 0xE900000000000064;
    countAndFlagsBits = 0x6C6F685F656D6F68;
  }

  else
  {
    strcpy(v82, "homeless_hold");
    HIWORD(v82[1]) = -4864;
    v19 = [v15 currentDevice];
    v20 = [v19 hasDynamicIsland];

    if (!v20)
    {
      goto LABEL_6;
    }

    v81._countAndFlagsBits = 0x5F746F6C73;
    v81._object = 0xE500000000000000;
    v21._countAndFlagsBits = 0x7373656C656D6F68;
    v21._object = 0xED0000646C6F685FLL;
    String.append(_:)(v21);
    countAndFlagsBits = v81._countAndFlagsBits;
    object = v81._object;
  }

  v82[0] = countAndFlagsBits;
  v82[1] = object;
LABEL_6:
  v22 = objc_opt_self();
  v23 = [v22 mainScreen];
  [v23 scale];
  v25 = v24;
  v26 = v24;

  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v81._countAndFlagsBits = v25;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v81._countAndFlagsBits = 64;
  v81._object = 0xE100000000000000;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 120;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);

  String.append(_:)(v81);

  v30 = v82[0];
  v29 = v82[1];
  v31 = objc_allocWithZone(NSDataAsset);
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 initWithName:v32];

  if (v33)
  {
    v34 = [objc_allocWithZone(BuddyAspectFitLayerView) init];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v1 contentView];
    [v35 addSubview:v34];

    v36 = objc_opt_self();
    v37 = [v33 data];
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = Data._bridgeToObjectiveC()().super.isa;
    sub_100011804(v38, v40);
    v42 = [v36 buddy_layerForPackageWithData:v41 geometryFlipped:1 scale:1.0];

    v43 = OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationLayer;
    v44 = *&v1[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationLayer];
    *&v1[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationLayer] = v42;
    v45 = v42;

    if (v45)
    {
      [v45 speed];
      v47 = v46;

      *&v1[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationSpeed] = v47;
      if (*&v1[v43])
      {
        [v34 setManagedLayer:?];
        v48 = *&v1[v43];
        if (v48)
        {
          v49 = v48;

          [v49 bounds];
          v51 = v50;

          v52 = [v22 mainScreen];
          [v52 scale];
          v54 = v53;

          v55 = objc_opt_self();
          sub_100006410(&qword_1003A1400);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_100298490;
          v57 = [v34 centerXAnchor];
          v58 = [v1 contentView];
          v59 = [v58 centerXAnchor];

          v60 = [v57 constraintEqualToAnchor:v59];
          *(v56 + 32) = v60;
          v61 = [v34 widthAnchor];
          v62 = [v1 contentView];
          v63 = [v62 widthAnchor];

          v64 = [v61 constraintEqualToAnchor:v63];
          *(v56 + 40) = v64;
          v65 = [v34 topAnchor];
          v66 = [v1 contentView];
          v67 = [v66 topAnchor];

          v68 = [v65 constraintEqualToAnchor:v67];
          *(v56 + 48) = v68;
          v69 = [v34 heightAnchor];
          v70 = [v69 constraintEqualToConstant:v51 / v54 + v51 / v54];

          *(v56 + 56) = v70;
          v71 = [v34 bottomAnchor];

          v72 = [v1 contentView];
          v73 = [v72 bottomAnchor];

          v74 = [v71 constraintEqualToAnchor:v73];
          *(v56 + 64) = v74;
          sub_10002BE84();
          v75 = Array._bridgeToObjectiveC()().super.isa;

          [v55 activateConstraints:v75];

          return;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  static Logger.purpleBuddyGeneral.getter();

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v81._countAndFlagsBits = v79;
    *v78 = 136315138;
    v80 = sub_100063F14(v30, v29, &v81._countAndFlagsBits);

    *(v78 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v76, v77, "Failed to load asset with name '%s'", v78, 0xCu);
    sub_10000A420(v79);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
}

void sub_100041D38(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BuddyChildSafetyController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationLayer;
  v4 = *&v1[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationLayer];
  if (v4)
  {
    [v4 setSpeed:0.0];
    v5 = *&v1[v3];
    if (v5)
    {
      v6 = v5;
      [v6 setBeginTime:CACurrentMediaTime()];
    }
  }
}

id sub_100041E18(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BuddyChildSafetyController();
  result = objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  v4 = OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationLayer;
  v5 = *&v1[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationLayer];
  if (v5)
  {
    v6 = v5;
    [v6 setBeginTime:CACurrentMediaTime()];

    result = *&v1[v4];
    if (result)
    {
      LODWORD(v7) = *&v1[OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_animationSpeed];
      return [result setSpeed:v7];
    }
  }

  return result;
}

uint64_t sub_100042068()
{
  if (!*(v0 + OBJC_IVAR____TtC5Setup26BuddyChildSafetyController_runState))
  {
    return 0;
  }

  if ([swift_unknownObjectRetain() hasCompletedInitialRun])
  {
    goto LABEL_7;
  }

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 type];

  if (!v2)
  {
    v3 = 1;
LABEL_8:
    swift_unknownObjectRelease();
    return v3;
  }

  if (v2 == 1)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  type metadata accessor for BYDeviceType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id sub_1000421D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyChildSafetyController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100042324()
{
  *&v0[OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_iPadMultitaskingModeManager] = 0;
  *&v0[OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_settingsManager] = 0;
  *&v0[OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_delegate] = 0;
  *&v0[OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_cachedViewController] = 0;
  v1 = OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_viewControllerProvider;
  *&v0[v1] = [objc_allocWithZone(SBSUIBuddyMultitaskingFlow) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BuddyMultitaskingSelectionFlowItem();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_1000423E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_100042470()
{
  v1 = OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_cachedViewController;
  v2 = *(v0 + OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_cachedViewController);
  v3 = v2;
  if (!v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_viewControllerProvider);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_100042858;
    v11[5] = v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100042658;
    v11[3] = &unk_100329E10;
    v6 = _Block_copy(v11);

    v3 = [v4 makeViewControllerWithCompletion:v6];
    _Block_release(v6);
    v7 = *(v0 + v1);
    *(v0 + v1) = v3;
    v8 = v3;
  }

  v9 = v2;
  return v3;
}

void sub_100042594()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_iPadMultitaskingModeManager;
    v3 = *(Strong + OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_iPadMultitaskingModeManager);
    if (v3)
    {
      if (*&v1[OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_settingsManager])
      {
        [v3 stashSettingUsing:?];
        v4 = *&v1[v2];
        if (v4)
        {
          [v4 updatePanePresented:1];
          v5 = *&v1[OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_delegate];
          if (v5)
          {
            [v5 flowItemDone:v1];

            return;
          }

LABEL_11:
          __break(1u);
          return;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t sub_100042658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_10004274C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyMultitaskingSelectionFlowItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100042820()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100042860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100042878(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000171F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006410(&unk_1003A1DA0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100042948(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000171F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006410(&unk_1003A1DA0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_100043FD4();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100042BCC(uint64_t a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[5] = v12;
  v14 = a5;
  v15 = swift_task_alloc();
  v5[6] = v15;
  *v15 = v5;
  v15[1] = sub_100042CE8;

  return sub_100043280(a1, v8, v10, v11, v13);
}

uint64_t sub_100042CE8(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

id sub_100042EF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupUserDispositionProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100042F50()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100042FA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100043068;

  return sub_100042BCC(v2, v3, v4, v5, v6);
}

uint64_t sub_100043068()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100043160()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000431A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a1 - 1) < 2)
  {
    return 0;
  }

  if (a1 == 3 || !a1)
  {
    v7 = a2 + 40;
    v8 = *(a2 + 16) + 1;
    do
    {
      v4 = --v8 == 0;
      if (!v8)
      {
        break;
      }

      v9 = v7 + 16;

      v10._countAndFlagsBits = a3;
      v10._object = a4;
      v11 = String.hasPrefix(_:)(v10);

      v7 = v9;
    }

    while (!v11);
    return v4;
  }

  type metadata accessor for BuddyDataTransferMethod(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100043280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  return _swift_task_switch(sub_1000432A8, 0, 0);
}

uint64_t sub_1000432A8()
{
  v1 = [objc_opt_self() defaultStore];
  v0[32] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_1000433EC;
    v3 = swift_continuation_init();
    v0[25] = sub_100006410(&qword_1003A1AB8);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100042878;
    v0[21] = &unk_100329EB0;
    v0[22] = v3;
    [v2 aa_primaryAppleAccountWithCompletion:v0 + 18];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_1000433EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_100043EB8;
  }

  else
  {
    v2 = sub_1000434FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000434FC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 256);
  *(v0 + 272) = v1;

  if (v1)
  {
    v3 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    *(v0 + 280) = v3;
    v4 = [objc_allocWithZone(AKDeviceListRequestContext) init];
    *(v0 + 288) = v4;
    v5 = [v1 aa_altDSID];
    [v4 setAltDSID:v5];

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v4 setOperatingSystems:isa];

    if (v3)
    {
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 208;
      *(v0 + 88) = sub_100043A28;
      v7 = swift_continuation_init();
      *(v0 + 200) = sub_100006410(&qword_1003A1AC0);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_100042948;
      *(v0 + 168) = &unk_100329ED8;
      *(v0 + 176) = v7;
      [v3 fetchDeviceListWithContext:v4 completion:v0 + 144];
      v8 = (v0 + 80);

      return _swift_continuation_await(v8);
    }

    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_45;
    }

    v10 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    if (v10)
    {
      v11 = 0;
      v42 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (_swiftEmptyArrayStorage >> 62)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v12 = _swiftEmptyArrayStorage[v11 + 4];
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v10 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_9;
        }

        v15 = [v12 serialNumber];
        if (!v15)
        {
          goto LABEL_11;
        }

        v16 = v10;
        v18 = *(v0 + 240);
        v17 = *(v0 + 248);
        v19 = v15;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if (v20 == v18 && v22 == v17)
        {

          v10 = v16;
          goto LABEL_12;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v10 = v16;
        if (v24)
        {
        }

        else
        {
LABEL_11:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

LABEL_12:
        ++v11;
      }

      while (v14 != v10);
    }

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (v25)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = _swiftEmptyArrayStorage[2];
      if (v25)
      {
LABEL_29:
        v43 = v0;
        v8 = sub_10005ADCC(0, v25 & ~(v25 >> 63), 0);
        if ((v25 & 0x8000000000000000) == 0)
        {
          v26 = 0;
          v0 = _swiftEmptyArrayStorage & 0xC000000000000001;
          while (1)
          {
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_43;
            }

            if (v0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v26 >= _swiftEmptyArrayStorage[2])
              {
                goto LABEL_44;
              }

              v28 = _swiftEmptyArrayStorage[v26 + 4];
            }

            v29 = v28;
            v8 = [v28 model];
            if (!v8)
            {
              goto LABEL_53;
            }

            v30 = v8;
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            v35 = _swiftEmptyArrayStorage[2];
            v34 = _swiftEmptyArrayStorage[3];
            if (v35 >= v34 >> 1)
            {
              sub_10005ADCC((v34 > 1), v35 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = (v35 + 1);
            v36 = &_swiftEmptyArrayStorage[2 * v35];
            v36[4] = v31;
            v36[5] = v33;
            ++v26;
            if (v27 == v25)
            {

              v0 = v43;
              goto LABEL_48;
            }
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
        return _swift_continuation_await(v8);
      }
    }

LABEL_48:
    v38 = *(v0 + 280);
    v37 = *(v0 + 288);
    v39 = *(v0 + 272);
    v9 = sub_1000431A0(*(v0 + 216), _swiftEmptyArrayStorage, *(v0 + 224), *(v0 + 232));
  }

  else
  {
    v9 = 0;
  }

  v40 = *(v0 + 8);

  return v40(v9 & 1);
}

uint64_t sub_100043A28()
{
  v1 = *(*v0 + 112);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_100043F2C;
  }

  else
  {
    v2 = sub_100043B38;
  }

  return _swift_task_switch(v2, 0, 0);
}

char *sub_100043B38()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 208);

  if (!v2)
  {

    v2 = &_swiftEmptyArrayStorage;
  }

  if (v2 >> 62)
  {
    goto LABEL_41;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  if (v3)
  {
    v4 = 0;
    v33 = v3;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_5;
      }

      v8 = [v5 serialNumber];
      if (!v8)
      {
        goto LABEL_7;
      }

      v10 = *(v0 + 240);
      v9 = *(v0 + 248);
      v11 = v8;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == v10 && v14 == v9)
      {

        v3 = v33;
        goto LABEL_8;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v33;
      if (v16)
      {
      }

      else
      {
LABEL_7:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

LABEL_8:
      ++v4;
    }

    while (v7 != v3);
  }

  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_25;
    }

LABEL_43:

LABEL_44:
    v28 = *(v0 + 280);
    v29 = *(v0 + 288);
    v30 = *(v0 + 272);
    v31 = sub_1000431A0(*(v0 + 216), &_swiftEmptyArrayStorage, *(v0 + 224), *(v0 + 232));

    v32 = *(v0 + 8);

    return v32(v31 & 1);
  }

  v17 = *(&_swiftEmptyArrayStorage + 2);
  if (!v17)
  {
    goto LABEL_43;
  }

LABEL_25:
  result = sub_10005ADCC(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v34 = v0;
    v19 = 0;
    while (1)
    {
      v0 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_39;
      }

      if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(&_swiftEmptyArrayStorage + 2))
        {
          goto LABEL_40;
        }

        v20 = *(&_swiftEmptyArrayStorage + v19 + 4);
      }

      v21 = v20;
      result = [v20 model];
      if (!result)
      {
        goto LABEL_48;
      }

      v22 = result;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v2 = *(&_swiftEmptyArrayStorage + 2);
      v26 = *(&_swiftEmptyArrayStorage + 3);
      if (v2 >= v26 >> 1)
      {
        sub_10005ADCC((v26 > 1), v2 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v2 + 1;
      v27 = &_swiftEmptyArrayStorage + 16 * v2;
      *(v27 + 4) = v23;
      *(v27 + 5) = v25;
      ++v19;
      if (v0 == v17)
      {

        v0 = v34;
        goto LABEL_44;
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_100043EB8()
{
  v1 = *(v0 + 256);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_100043F2C()
{
  v1 = v0[36];
  v3 = v0[34];
  v2 = v0[35];
  swift_willThrow();

  v4 = v0[1];

  return v4(0);
}

unint64_t sub_100043FD4()
{
  result = qword_1003A1AC8;
  if (!qword_1003A1AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A1AC8);
  }

  return result;
}

uint64_t sub_100044068()
{
  type metadata accessor for AvailabilityClient();
  swift_allocObject();
  *(v0 + 16) = AvailabilityClient.init()();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10004411C;

  return AvailabilityClient.updateAll()();
}

uint64_t sub_10004411C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100044258, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100044258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044430(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_100044498, 0, 0);
}

uint64_t sub_100044498()
{
  type metadata accessor for AvailabilityClient();
  swift_allocObject();
  *(v0 + 24) = AvailabilityClient.init()();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10004454C;

  return AvailabilityClient.updateAll()();
}

uint64_t sub_10004454C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000446A4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 16));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1000446A4()
{
  v1 = *(v0 + 16);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

id BuddyGMAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BuddyGMAvailabilityProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyGMAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id BuddyGMAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyGMAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s5Setup27BuddyGMAvailabilityProviderC11isAvailableSbyF_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 2;
  v4 = static GenerativeModelsAvailability.shouldBeShown(inSetupAssistantReturning:)();
  static Logger.purpleBuddyGeneral.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v4 & 1;
    *(v7 + 8) = 2048;
    swift_beginAccess();
    *(v7 + 10) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "GM on device status: shouldShow: %{BOOL}d, with availability state: %ld", v7, 0x12u);
  }

  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1000449FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044A3C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100044AE8;

  return sub_100044430(v2);
}

uint64_t sub_100044AE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100044BE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100044C24(uint64_t a1, void *a2)
{
  v3 = *sub_1000171F4((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100006410(&unk_1003A1DA0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return _swift_continuation_throwingResumeWithError(v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t IntelligenceAvailabilityProvider.isDeviceEligibleForIntelligence()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_100044DC0;

  return sub_100045E64(0);
}

uint64_t sub_100044DC0(char a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100044EC0, 0, 0);
}

uint64_t sub_100044EC0()
{
  if (*(v0 + 56) == 1)
  {
    v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_generativeModelsAvailabilityProvider) isAvailable];
    static Logger.purpleBuddyGeneral.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v2, v3, "Checking intelligence on device availability status: %{BOOL}d", v4, 8u);
    }

    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 24);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v1 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_100045180(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100045228;

  return IntelligenceAvailabilityProvider.isDeviceEligibleForIntelligence()();
}

uint64_t sub_100045228(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t IntelligenceAvailabilityProvider.fetchLatestAvailability()()
{
  v1[18] = v0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_100045460;

  return sub_100045E64(1);
}

uint64_t sub_100045460(char a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_100045560, 0, 0);
}

uint64_t sub_100045560()
{
  if (*(v0 + 200) == 1)
  {
    static Logger.purpleBuddyGeneral.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Fetching latest Intelligence availability status", v3, 2u);
    }

    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);

    (*(v5 + 8))(v4, v6);
    v8 = *(v7 + OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_generativeModelsAvailabilityProvider);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100045778;
    v9 = swift_continuation_init();
    *(v0 + 136) = sub_100006410(&qword_1003A1C70);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100044C24;
    *(v0 + 104) = &unk_100329F78;
    *(v0 + 112) = v9;
    [v8 fetchLatestAvailabilityStatusWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_100045778()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100045A3C;
  }

  else
  {
    v2 = sub_100045888;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100045888()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_100045918;

  return IntelligenceAvailabilityProvider.isDeviceEligibleForIntelligence()();
}

uint64_t sub_100045918(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100045A3C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100045C2C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100045CD4;

  return IntelligenceAvailabilityProvider.fetchLatestAvailability()();
}

uint64_t sub_100045CD4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100045E64(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 233) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 184) = v3;
  *(v2 + 192) = *(v3 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100045F40, 0, 0);
}

uint64_t sub_100045F40()
{
  v1 = *(v0 + 176);
  v2 = OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_serverBackedValue;
  *(v0 + 224) = OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_serverBackedValue;
  v3 = *(v1 + v2);
  if (v3 != 2)
  {
LABEL_10:

    v21 = *(v0 + 8);

    return v21(v3 & 1);
  }

  if (os_variant_has_internal_ui())
  {
    v4 = *(*(v0 + 176) + OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_preferences);
    if (v4)
    {
      v5 = v4;
      static Logger.purpleBuddyGeneral.getter();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Checking override flag", v8, 2u);
      }

      v9 = *(v0 + 216);
      v10 = *(v0 + 184);
      v11 = *(v0 + 192);

      v12 = *(v11 + 8);
      v12(v9, v10);
      v13 = String._bridgeToObjectiveC()();
      v14 = [v5 objectForKey:v13];

      if (v14)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100015A54(v0 + 144);
        v15 = String._bridgeToObjectiveC()();
        v3 = [v5 BOOLForKey:v15];

        static Logger.purpleBuddyGeneral.getter();
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 67109120;
          *(v18 + 4) = v3;
          _os_log_impl(&_mh_execute_header, v16, v17, "Found intelligence override flag: %{BOOL}d", v18, 8u);
        }

        v19 = *(v0 + 208);
        v20 = *(v0 + 184);

        v12(v19, v20);
        goto LABEL_10;
      }

      *(v0 + 144) = 0u;
      *(v0 + 160) = 0u;
      sub_100015A54(v0 + 144);
    }
  }

  static Logger.purpleBuddyGeneral.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Checking intelligence bag", v25, 2u);
  }

  v27 = *(v0 + 192);
  v26 = *(v0 + 200);
  v29 = *(v0 + 176);
  v28 = *(v0 + 184);
  v30 = *(v0 + 233);

  (*(v27 + 8))(v26, v28);
  v31 = *(v29 + OBJC_IVAR____TtC5Setup32IntelligenceAvailabilityProvider_serverControlProvider);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 232;
  *(v0 + 24) = sub_1000463B0;
  v32 = swift_continuation_init();
  *(v0 + 136) = sub_100006410(&unk_1003A1940);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10001685C;
  *(v0 + 104) = &unk_10032A090;
  *(v0 + 112) = v32;
  [v31 isFeatureEnabledFromCache:(v30 & 1) == 0 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000463B0()
{

  return _swift_task_switch(sub_100046490, 0, 0);
}

uint64_t sub_100046490()
{
  v2 = *(v0 + 232);
  if (*(v0 + 233) == 1)
  {
    *(*(v0 + 176) + *(v0 + 224)) = v2;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

id IntelligenceAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntelligenceAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100046690()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10004673C;

  return sub_100045C2C(v2, v3);
}

uint64_t sub_10004673C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100046834()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046874()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100046B04;

  return sub_100045180(v2, v3);
}

uint64_t sub_100046920()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100046B08;

  return sub_100063764(v2, v3, v4);
}

uint64_t sub_1000469E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100046A20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100046B0C;

  return sub_10006384C(a1, v4, v5, v6);
}

NSString sub_100046B10()
{
  result = String._bridgeToObjectiveC()();
  qword_1003A1B40 = result;
  return result;
}

UIContentSizeCategory sub_100046B84()
{
  v0 = String._bridgeToObjectiveC()();
  if (qword_10039F9E0 != -1)
  {
    swift_once();
  }

  v1 = CFPreferencesCopyAppValue(v0, qword_1003A1B40);

  if (v1)
  {
    type metadata accessor for UIContentSizeCategory(0);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  return UIContentSizeCategoryLarge;
}

void sub_100046C74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC5Setup51StolenDeviceProtectionExpressSettingDeferredHandler_includesStrictMode);
  static Logger.purpleBuddyGeneral.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Enabling Stolen Device Protection; with strict mode: %{BOOL}d", v12, 8u);
  }

  (*(v6 + 8))(v8, v5);
  v13 = [objc_opt_self() sharedInstance];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  aBlock[4] = sub_100047864;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004CF34;
  aBlock[3] = &unk_10032A0E0;
  v15 = _Block_copy(aBlock);

  [v13 enableFeatureActivatingGracePeriodWithReply:v15];
  _Block_release(v15);
}

void sub_100046EB8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v42 - v18;
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  if (a2)
  {
    v43 = a4;
    swift_errorRetain();
    static Logger.purpleBuddyGeneral.getter();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = a5;
      v25 = v24;
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to enable Stolen Device Protection: %@", v25, 0xCu);
      sub_1000063A8(v26);
    }

    v28 = *(v10 + 8);
    v28(v21, v9);
    if (a3)
    {
      static Logger.purpleBuddyGeneral.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Strict Mode skipped since SDP restore failed", v31, 2u);
      }

      v28(v19, v9);
    }

    v32 = _convertErrorToNSError(_:)();
    v43();
  }

  else if (a3)
  {
    static Logger.purpleBuddyGeneral.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Enabling Strict mode", v35, 2u);
    }

    (*(v10 + 8))(v16, v9);
    v36 = [objc_opt_self() sharedInstance];
    v37 = swift_allocObject();
    *(v37 + 16) = a4;
    *(v37 + 24) = a5;
    aBlock[4] = sub_1000478C0;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000476AC;
    aBlock[3] = &unk_10032A130;
    v38 = _Block_copy(aBlock);

    [v36 enableFeatureStrictModeWithCompletion:v38];
    _Block_release(v38);
  }

  else
  {
    static Logger.purpleBuddyGeneral.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Stolen Device Protection enabled", v41, 2u);
    }

    (*(v10 + 8))(v13, v9);
    (a4)(0);
  }
}

void sub_1000473B8(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  if (a1)
  {
    swift_errorRetain();
    static Logger.purpleBuddyGeneral.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to enable Stolen Device Protection Strict Mode: %@", v13, 0xCu);
      sub_1000063A8(v14);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    v20[1] = a1;
    swift_errorRetain();
    sub_100006410(&unk_1003A1DA0);
    sub_1000478C8();
    if (swift_dynamicCast())
    {
      v19 = v20[0];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    static Logger.purpleBuddyGeneral.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Strict mode enabled", v18, 2u);
    }

    (*(v5 + 8))(v10, v4);
    swift_errorRetain();
    v19 = 0;
  }

  a2(v19);
}

void sub_1000476AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1000477D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StolenDeviceProtectionExpressSettingDeferredHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004782C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100047870(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100047888()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000478C8()
{
  result = qword_1003A07E0;
  if (!qword_1003A07E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A07E0);
  }

  return result;
}

uint64_t sub_100047914()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100026950(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10004AC68(v10, &qword_1003A0110);
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

      sub_10004AC68(a3, &qword_1003A0110);

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

  sub_10004AC68(a3, &qword_1003A0110);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_100047C04()
{
  v1 = &v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_name];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_accountStore] = 0;
  *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_primaryAccount] = 0;
  *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_buddyPreferencesExcludedFromBackup] = 0;
  *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_flowItemDispositionProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_lockdownModeProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_setupMethod] = 0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v18._object = 0xE000000000000000;
  v4._object = 0x800000010029D070;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 modelSpecificLocalizedStringKeyForKey:v7];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v2 mainBundle];
    v19._object = 0xE000000000000000;
    v13._countAndFlagsBits = v9;
    v13._object = v11;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v19);

    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();

    v17.receiver = v0;
    v17.super_class = type metadata accessor for BuddyReadyForChildController();
    objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v15, v16, 0, 2);
  }

  else
  {
    __break(1u);
  }
}

void sub_100047E64()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BuddyReadyForChildController();
  v53.receiver = v0;
  v53.super_class = v6;
  objc_msgSendSuper2(&v53, "viewDidLoad");
  v7 = &v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_name];
  v8 = *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_name + 8];
  if (!v8)
  {
LABEL_4:
    v30 = sub_100048568();
    if (v30)
    {
      v31 = v30;
      v32 = [v1 headerView];
      v33 = [v32 customIconContainerView];

      if (v33)
      {
        [v33 addSubview:v31];
        v52 = objc_opt_self();
        sub_100006410(&qword_1003A1400);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_100297C60;
        v35 = [v31 centerXAnchor];
        v36 = [v33 centerXAnchor];
        v37 = [v35 constraintEqualToAnchor:v36];

        *(v34 + 32) = v37;
        v38 = [v31 centerYAnchor];
        v39 = [v33 centerYAnchor];
        v40 = [v38 constraintEqualToAnchor:v39];

        *(v34 + 40) = v40;
        sub_10004AC20(0, &qword_1003A0BF0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v52 activateConstraints:isa];

LABEL_11:
        v45 = [objc_opt_self() mainBundle];
        v56._object = 0xE000000000000000;
        v46._countAndFlagsBits = 1162760004;
        v46._object = 0xE400000000000000;
        v47._countAndFlagsBits = 0;
        v47._object = 0xE000000000000000;
        v56._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v56);

        v48 = String._bridgeToObjectiveC()();

        [v1 addBoldButton:v48 action:"continueTapped"];

        return;
      }
    }

    static Logger.purpleBuddyGeneral.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to get a header view for BuddyReadyForChildController", v44, 2u);
    }

    (*(v3 + 8))(v5, v2);
    goto LABEL_11;
  }

  v50 = v5;
  v51 = v3;
  v52 = v2;
  v9 = *v7;

  v10 = [v1 headerView];
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v54._object = 0xE000000000000000;
  v13._object = 0x800000010029D020;
  v13._countAndFlagsBits = 0xD00000000000001FLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v54);

  sub_100006410(&qword_1003A0450);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002978B0;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_10000EEE4();
  *(v15 + 64) = v16;
  *(v15 + 32) = v9;
  *(v15 + 40) = v8;

  String.init(format:_:)();

  v17 = String._bridgeToObjectiveC()();

  [v10 setTitle:v17];

  v18 = [v1 headerView];
  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 modelSpecificLocalizedStringKeyForKey:v20];

  if (v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v11 mainBundle];
    v55._object = 0xE000000000000000;
    v26._countAndFlagsBits = v22;
    v26._object = v24;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v55);

    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100297E80;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = v16;
    *(v28 + 32) = v9;
    *(v28 + 40) = v8;
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v16;
    *(v28 + 72) = v9;
    *(v28 + 80) = v8;

    String.init(format:_:)();

    v29 = String._bridgeToObjectiveC()();

    [v18 setDetailText:v29];

    v3 = v51;
    v2 = v52;
    v5 = v50;
    goto LABEL_4;
  }

  __break(1u);
}

id sub_100048568()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = &v84 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_primaryAccount);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_accountStore);
  if (!v8)
  {
    return 0;
  }

  v9 = objc_allocWithZone(AAUIProfilePictureStore);
  v10 = v8;
  v11 = v7;
  v94 = [v9 initWithAppleAccount:v11 store:v10];
  if (v94)
  {
    v89 = v11;
    v90 = v10;
    v12 = [objc_opt_self() _typeOfCurrentDevice];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10004AC20(0, &qword_1003A1C78);
    v13 = UTType.identifier.getter();
    v15 = sub_1000491D8(v13, v14, 1, 1);
    v16 = AMSDevice_ptr;
    v92 = v6;
    v93 = v2;
    v88 = v3;
    if (v15)
    {
      v91 = v15;
      v18 = [v91 name];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [objc_opt_self() currentDevice];
      v23 = [v22 type];

      v24 = v6;
      if (v23 == 1)
      {
        v95 = v19;
        v96 = v21;
        v25._countAndFlagsBits = 0x616373646E616C2ELL;
        v25._object = 0xEA00000000006570;
        String.append(_:)(v25);
      }

      v26 = &selRef_setStartTime_;
      v27 = objc_opt_self();
      v28 = [v27 configurationWithPointSize:69.0];
      v29 = [v27 configurationPreferringMonochrome];
      v30 = [v28 configurationByApplyingConfiguration:v29];

      v31 = v30;
      v32 = String._bridgeToObjectiveC()();

      v33 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

      v34 = [objc_allocWithZone(UIImageView) initWithImage:v33];
      if (v34)
      {
        [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      v6 = v24;
      v35 = v94;
      v36 = &selRef_fetchAccountStateWithCompletionHandler_;
      v16 = AMSDevice_ptr;
    }

    else
    {
      v34 = 0;
      v91 = 0;
      v35 = v94;
      v26 = &selRef_setStartTime_;
      v36 = &selRef_fetchAccountStateWithCompletionHandler_;
    }

    v37 = [v35 profilePictureForAccountOwner];
    v38 = v16;
    v39 = [objc_allocWithZone(v16[368]) v36[371]];

    v40 = v39;
    [v40 v26[62]];
    if (v34)
    {
      v41 = objc_opt_self();
      v42 = v34;
      v43 = [v41 configurationWithPointSize:7 weight:24.0];
      v44 = String._bridgeToObjectiveC()();
      v45 = [objc_opt_self() systemImageNamed:v44 withConfiguration:v43];

      v46 = [objc_allocWithZone(v38[368]) v36[371]];
      v47 = v46;
      [v47 v26[62]];
      v48 = [objc_opt_self() currentDevice];
      v49 = [v48 type];

      if (v49)
      {
        v50 = 1.0;
      }

      else
      {
        v50 = -4.0;
      }

      v51 = [objc_allocWithZone(UIView) init];
      [v51 v26[62]];
      [v51 addSubview:v40];
      v52 = v51;
      [v51 addSubview:v47];
      v53 = v42;
      v86 = v51;
      [v51 addSubview:v53];
      v87 = objc_opt_self();
      sub_100006410(&qword_1003A1400);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100298450;
      v55 = [v40 heightAnchor];
      v56 = [v55 constraintEqualToConstant:80.0];

      *(v54 + 32) = v56;
      v57 = [v40 widthAnchor];
      v58 = [v57 constraintEqualToConstant:80.0];

      *(v54 + 40) = v58;
      v59 = [v53 leadingAnchor];

      v60 = [v52 leadingAnchor];
      v61 = [v59 constraintEqualToAnchor:v60];

      *(v54 + 48) = v61;
      v85 = v47;
      v62 = [v47 leadingAnchor];
      v63 = [v53 trailingAnchor];

      v64 = [v62 constraintEqualToAnchor:v63 constant:v50];
      *(v54 + 56) = v64;
      v65 = [v40 leadingAnchor];
      v66 = [v47 trailingAnchor];
      v67 = [v65 constraintEqualToAnchor:v66 constant:10.0];

      *(v54 + 64) = v67;
      v68 = [v40 trailingAnchor];
      v69 = v86;
      v70 = [v86 trailingAnchor];
      v71 = [v68 constraintEqualToAnchor:v70];

      *(v54 + 72) = v71;
      v72 = [v53 centerYAnchor];

      v73 = [v69 centerYAnchor];
      v74 = [v72 constraintEqualToAnchor:v73];

      *(v54 + 80) = v74;
      v75 = v85;
      v76 = [v85 centerYAnchor];

      v77 = v75;
      v78 = [v69 centerYAnchor];
      v79 = [v76 constraintEqualToAnchor:v78];

      *(v54 + 88) = v79;
      v80 = [v40 centerYAnchor];

      v81 = [v69 centerYAnchor];
      v82 = [v80 constraintEqualToAnchor:v81];

      *(v54 + 96) = v82;
      sub_10004AC20(0, &qword_1003A0BF0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v87 activateConstraints:isa];

      (*(v88 + 8))(v92, v93);
      return v69;
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      return v40;
    }
  }

  else
  {

    return 0;
  }
}

id sub_1000491D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  v11 = 0;
  v7 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v6 withResolutionStrategy:a3 variantOptions:a4 error:&v11];

  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

void sub_1000492C8()
{
  v1 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - v10;
  v12 = *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_flowItemDispositionProvider];
  if (!v12)
  {
    return;
  }

  v13 = *&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_lockdownModeProvider];
  if (!v13)
  {
    return;
  }

  v40 = v9;
  swift_unknownObjectRetain();
  v14 = v12;
  v15 = [v0 delegate];
  if (v15)
  {
    v16 = v15;
    v17 = [v0 navigationController];
    if (v17)
    {
      v39 = v17;
      v18 = [v17 viewControllers];
      sub_10004AC20(0, &qword_1003A1218);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10005991C(v19);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v16 removeViewControllersOnNextPush:isa];

      v21 = [objc_allocWithZone(BYSetupUserDisposition) initWithChild:1];
      if (*&v0[OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_buddyPreferencesExcludedFromBackup])
      {
        v22 = v21;
        [v21 persistUsingPreferences:?];
        if ([v13 hasStagedEnablement])
        {
          static Logger.purpleBuddyGeneral.getter();
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "LockdownMode commit and rebooting ...", v25, 2u);
          }

          (*(v5 + 8))(v11, v40);
          v26 = type metadata accessor for TaskPriority();
          (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
          type metadata accessor for MainActor();
          swift_unknownObjectRetain();
          v27 = static MainActor.shared.getter();
          v28 = swift_allocObject();
          v28[2] = v27;
          v28[3] = &protocol witness table for MainActor;
          v28[4] = v13;
          sub_100047968(0, 0, v3, &unk_100298BA0, v28);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = v0;
          static Logger.purpleBuddyGeneral.getter();
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v30, v31, "Locking the screen...", v32, 2u);
          }

          (*(v5 + 8))(v8, v40);
          v33 = [objc_allocWithZone(SBSLockScreenService) init];
          v34 = swift_allocObject();
          v34[2] = v33;
          v34[3] = v14;
          v34[4] = v16;
          v34[5] = v29;
          aBlock[4] = sub_10004A960;
          aBlock[5] = v34;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10004A02C;
          aBlock[3] = &unk_10032A1A8;
          v35 = _Block_copy(aBlock);
          v36 = v14;
          v37 = v33;
          swift_unknownObjectRetain();
          v38 = v29;

          [v37 lockDeviceAnimated:1 withCompletion:v35];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          _Block_release(v35);
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100049894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_10004992C, v6, v5);
}

uint64_t sub_10004992C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_100049A44;
  v2 = swift_continuation_init();
  v0[17] = sub_100006410(&qword_1003A1C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100044C24;
  v0[13] = &unk_10032A1F8;
  v0[14] = v2;
  [v1 enableWithStrategy:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100049A44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_100049BD8;
  }

  else
  {
    v5 = sub_100049B74;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100049B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100049BD8()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100049C4C(char a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v31 = a3;
  v32 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v11 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v30 = a2;
    static Logger.purpleBuddyGeneral.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = a5;
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to lock screen!", v20, 2u);
      a5 = v29;
    }

    (*(v15 + 8))(v17, v14);
    a2 = v30;
  }

  [a2 invalidate];
  sub_10004AC20(0, &qword_1003A0430);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v24 = v31;
  v23 = v32;
  v22[2] = v31;
  v22[3] = v23;
  v22[4] = a5;
  aBlock[4] = sub_10004ABCC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E3B4;
  aBlock[3] = &unk_10032A248;
  v25 = _Block_copy(aBlock);
  v26 = v24;
  swift_unknownObjectRetain();
  v27 = a5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000ED80();
  sub_100006410(&unk_1003A0440);
  sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v34 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v33);
}

uint64_t sub_10004A02C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10004A264(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v21 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004AC20(0, &qword_1003A0430);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v21;
  v16 = v22;
  v14[2] = v22;
  v14[3] = v15;
  v14[4] = v23;
  aBlock[4] = sub_10004AD48;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000525E0;
  aBlock[3] = &unk_10032A2C0;
  v17 = _Block_copy(aBlock);
  v18 = v16;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000ED80();
  sub_100006410(&unk_1003A0440);
  sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v24);
}

void sub_10004A5C8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = [objc_allocWithZone(ACAccountStore) init];
  v5 = *(a1 + OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_accountStore);
  *(a1 + OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_accountStore) = v4;
  v16 = v4;

  if (v16)
  {
    v6 = [v16 aa_primaryAppleAccount];
    v7 = *(a1 + OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_primaryAccount);
    *(a1 + OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_primaryAccount) = v6;
    v15 = v6;

    if (v15)
    {
      v8 = [v15 aa_firstName];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v14 = (a1 + OBJC_IVAR____TtC5Setup28BuddyReadyForChildController_name);
      *v14 = v10;
      v14[1] = v12;

      a2(1);

      v13 = v15;
    }

    else
    {
      a2(1);
      v13 = v16;
    }
  }

  else
  {
    a2(1);
  }
}

id sub_10004A818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyReadyForChildController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004A910()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004A984()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004A9C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004AA78;

  return sub_100049894(a1, v4, v5, v6);
}

uint64_t sub_10004AA78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004AB84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10004ABCC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  [v1 setPreferredDispositions:16];

  return [v2 flowItemDone:v3];
}

uint64_t sub_10004AC20(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10004AC68(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006410(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004ACC8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004AD08()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10004AD64(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10004C6E0(0, &unk_1003A1FB0);
    sub_100020C40();
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
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
    if (!__CocoaSet.Iterator.next()() || (sub_10004C6E0(0, &unk_1003A1FB0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_100021664();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
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

id *sub_10004AFD0()
{
  v1 = *(*&v0[OBJC_IVAR____TtC5Setup13LabeledSlider_ticks] + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v18 = xmmword_100298BB0;
  do
  {
    [v0 maximumValue];
    v5 = v4;
    [v0 maximumValue];
    v7 = v6;
    [v0 minimumValue];
    v9 = v8;
    [v0 bounds];
    [v0 trackRectForBounds:?];
    Width = CGRectGetWidth(v19);
    [v0 bounds];
    [v0 trackRectForBounds:?];
    v12 = v11;
    [v0 bounds];
    [v0 trackRectForBounds:?];
    MidY = CGRectGetMidY(v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10004C82C(0, v3[2] + 1, 1, v3);
    }

    v15 = v3[2];
    v14 = v3[3];
    if (v15 >= v14 >> 1)
    {
      v3 = sub_10004C82C((v14 > 1), v15 + 1, 1, v3);
    }

    v3[2] = (v15 + 1);
    v16 = &v3[4 * v15];
    *(v16 + 4) = (Width + -16.0) / (v7 - v9) * ((v5 / (v1 - 1)) * v2) + v12 + 8.0 + -1.0;
    *(v16 + 5) = MidY + -6.0;
    *(v16 + 3) = v18;
    ++v2;
  }

  while (v1 != v2);
  return v3;
}

double sub_10004B21C()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for LabeledSlider();
  objc_msgSendSuper2(&v13, "intrinsicContentSize");
  v2 = v1;
  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC5Setup13LabeledSlider_labels];
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v8 frame];
      MaxY = CGRectGetMaxY(v14);

      if (v4 <= MaxY)
      {
        v4 = MaxY;
      }

      if (v10 == i)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return v2;
}

uint64_t sub_10004B348(uint64_t a1)
{
  v2 = &unk_1003A1000;
  *(v1 + OBJC_IVAR____TtC5Setup13LabeledSlider_labelPositionConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Setup13LabeledSlider_labelOffset) = 0x4024000000000000;
  *(v1 + OBJC_IVAR____TtC5Setup13LabeledSlider_thumbSize) = 0x403B000000000000;
  v3 = *(a1 + 16);
  v4 = v3 - 1;
  if (v3 <= 1)
  {
    goto LABEL_51;
  }

  v5 = a1;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 connectedScenes];

  sub_10004C6E0(0, &unk_1003A1FB0);
  sub_100020C40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10004AD64(v8);
  v10 = v9;

  if (!(v10 >> 62))
  {
    v67 = v1;
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:

    goto LABEL_28;
  }

LABEL_23:
  v67 = v1;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_51:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 32);
LABEL_7:
  v12 = v11;
  v69 = v5;

  v13 = [v12 windows];

  sub_10004C6E0(0, &unk_1003A1FC0);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
LABEL_9:
      v15 = 0;
      v10 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v16 = *(v1 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if ([v16 isKeyWindow])
        {
          break;
        }

        ++v15;
        if (v18 == v14)
        {
          goto LABEL_27;
        }
      }

      v19 = [v17 traitCollection];

      v20 = [v19 layoutDirection];
      v1 = v67;
      if (v20 == 1)
      {
        v5 = sub_10004BD20(v69);
      }

      else
      {
        v5 = v69;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_9;
    }
  }

LABEL_27:

  v1 = v67;
  v5 = v69;
LABEL_28:
  v21 = &unk_1003A1000;
  *(v1 + OBJC_IVAR____TtC5Setup13LabeledSlider_ticks) = v5;
  v22 = *(v5 + 16);
  v23 = &selRef_fetchAccountStateWithCompletionHandler_;
  if (v22)
  {

    specialized ContiguousArray.reserveCapacity(_:)();
    v24 = objc_opt_self();
    v25 = v5 + 40;
    do
    {
      v26 = objc_allocWithZone(UILabel);

      v27 = [v26 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
      v28 = [v24 preferredFontForTextStyle:UIFontTextStyleFootnote];
      [v27 setFont:v28];

      v29 = String._bridgeToObjectiveC()();
      [v27 setText:v29];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v25 += 16;
      --v22;
    }

    while (v22);

    v2 = &unk_1003A1000;
    v1 = v67;
    v21 = &unk_1003A1000;
    v23 = &selRef_fetchAccountStateWithCompletionHandler_;
  }

  *(v1 + OBJC_IVAR____TtC5Setup13LabeledSlider_labels) = _swiftEmptyArrayStorage;
  v30 = type metadata accessor for LabeledSlider();
  v72.receiver = v1;
  v72.super_class = v30;
  v71.receiver = objc_msgSendSuper2(&v72, v23[365], 0.0, 0.0, 0.0, 0.0);
  v71.super_class = v30;
  v31 = v71.receiver;
  objc_msgSendSuper2(&v71, "_setTrackEnabled:", 1);
  [v31 setMinimumValue:0.0];
  *&v32 = v4;
  [v31 setMaximumValue:v32];

  v68 = *(v31 + OBJC_IVAR____TtC5Setup13LabeledSlider_labels);
  if (v68 >> 62)
  {
    goto LABEL_49;
  }

  v33 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:
  v65 = v21[400];
  v66 = v2[402];

  if (v33)
  {
    v34 = 0;
    v64 = v33;
    do
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v2 = &selRef_cloudConfigurationUIDidCompleteWasApplied_;
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = &selRef_cloudConfigurationUIDidCompleteWasApplied_;
        if (v34 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v35 = *(v68 + 8 * v34 + 32);
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v33 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_34;
        }
      }

      v70 = v36;
      [v31 maximumValue];
      v38 = (v37 / (*(*(v31 + v65) + 16) - 1)) * v34;
      v39 = v31;
      v40 = v35;
      v41 = v39;
      v42 = v40;
      [v41 addSubview:v42];
      v43 = [v42 centerXAnchor];
      v44 = [v41 leftAnchor];
      [v41 maximumValue];
      v46 = v45;
      [v41 minimumValue];
      v48 = v46 - v47;
      [v41 bounds];
      [v41 trackRectForBounds:?];
      v49 = (CGRectGetWidth(v73) + -16.0) / v48 * v38;
      [v41 bounds];
      [v41 trackRectForBounds:?];
      v51 = [v43 v2[71]];
      v52 = v2;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v66[v31] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v66[v31] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v53 = objc_opt_self();
      sub_100006410(&qword_1003A1400);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100297C60;
      v55 = [v42 topAnchor];

      v56 = [v41 topAnchor];
      v57 = [v55 v52[71]];

      *(v54 + 32) = v57;
      v58 = [v42 bottomAnchor];

      v21 = [v41 bottomAnchor];
      v59 = [v58 constraintEqualToAnchor:v21];

      *(v54 + 40) = v59;
      sub_10004C6E0(0, &qword_1003A0BF0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v53 activateConstraints:isa];

      ++v34;
    }

    while (v70 != v64);
  }

  v61 = objc_opt_self();
  swift_beginAccess();
  sub_10004C6E0(0, &qword_1003A0BF0);

  v62 = Array._bridgeToObjectiveC()().super.isa;

  [v61 activateConstraints:v62];

  return v31;
}

uint64_t sub_10004BD20(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = v1[2];
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = v1[v3 + 4];
    v10 = v1[v3 + 5];
    v13 = *(v1 + i - 8);
    v12 = *(v1 + i);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_10004CA3C(v1);
    }

    v14 = &v1[v3];
    v14[4] = v13;
    v14[5] = v12;

    if (v6 >= v1[2])
    {
      goto LABEL_15;
    }

    v8 = (v1 + i);
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 2;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id sub_10004BF18()
{
  v1 = OBJC_IVAR____TtC5Setup13LabeledSlider_labelPositionConstraints;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = OBJC_IVAR____TtC5Setup13LabeledSlider_ticks;

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v0 maximumValue];
      v9 = (v8 / (*(*&v0[v17] + 16) - 1)) * v4;
      [v0 maximumValue];
      v11 = v10;
      [v0 minimumValue];
      v13 = v11 - v12;
      [v0 bounds];
      [v0 trackRectForBounds:?];
      v14 = (CGRectGetWidth(v19) + -16.0) / v13 * v9;
      [v0 bounds];
      [v0 trackRectForBounds:?];
      [v6 setConstant:v14 + v15 + 8.0];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v18.receiver = v0;
  v18.super_class = type metadata accessor for LabeledSlider();
  return objc_msgSendSuper2(&v18, "updateConstraints");
}

void sub_10004C160(double a1, double a2, double a3, double a4)
{
  v17.receiver = v4;
  v17.super_class = type metadata accessor for LabeledSlider();
  objc_msgSendSuper2(&v17, "trackRectForBounds:", a1, a2, a3, a4);
  v9 = *&v4[OBJC_IVAR____TtC5Setup13LabeledSlider_labels];
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v10 = *(v9 + 32);
    }

    v11 = v10;
    if (v9 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
LABEL_8:
        v13 = __OFSUB__(v12, 1);
        v14 = v12 - 1;
        if (!v13)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
            v16 = v15;
            [v11 frame];
            CGRectGetWidth(v18);
            [v16 frame];
            CGRectGetWidth(v19);

            return;
          }

          if ((v14 & 0x8000000000000000) == 0)
          {
            if (v14 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v15 = *(v9 + 8 * v14 + 32);
              goto LABEL_16;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    return;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_3;
  }
}

id sub_10004C45C(float a1)
{
  result = [v1 maximumValue];
  v5 = roundf(a1 / (v4 / (*(*&v1[OBJC_IVAR____TtC5Setup13LabeledSlider_ticks] + 16) - 1)));
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.2234e18)
  {
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_10004C584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabeledSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10004C638()
{
  [v0 value];

  return sub_10004C45C(v1);
}

id sub_10004C66C(uint64_t a1)
{
  [v1 maximumValue];
  *&v3 = (*&v3 / (*(*&v1[OBJC_IVAR____TtC5Setup13LabeledSlider_ticks] + 16) - 1)) * a1;

  return [v1 setValue:1 animated:v3];
}

uint64_t sub_10004C6E0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *sub_10004C728(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006410(&qword_1003A1CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_10004C82C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006410(&qword_1003A1CD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

id *sub_10004C930(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006410(&unk_1003A20B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10004CA54()
{
  v1 = [v0 _minTrackView];
  if (!v1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  [v1 setHidden:1];

  v3 = [v0 _maxTrackView];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden:1];

    v5 = objc_opt_self();
    v6 = [v5 systemFillColor];
    [v6 set];

    [v0 bounds];
    [v0 trackRectForBounds:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v0 bounds];
    [v0 trackRectForBounds:?];
    v15 = CGRectGetHeight(v40) * 0.5;
    v39 = objc_opt_self();
    v16 = [v39 bezierPathWithRoundedRect:v8 cornerRadius:{v10, v12, v14, v15}];
    [v16 fill];

    v17 = [v5 systemGray4Color];
    [v17 set];

    v18 = sub_10004AFD0();
    v19 = v18[2];
    v20 = OBJC_IVAR____TtC5Setup13LabeledSlider_labelPositionConstraints;
    v38 = OBJC_IVAR____TtC5Setup13LabeledSlider_ticks;
    swift_beginAccess();
    if (!v19)
    {
LABEL_12:

      return;
    }

    v21 = 0;
    v22 = (v18 + 7);
    while (v21 < v18[2])
    {
      v23 = *(v22 - 3);
      v24 = *(v22 - 2);
      v25 = *(v22 - 1);
      v26 = *v22;
      v27 = *&v0[v20];
      if ((v27 & 0xC000000000000001) != 0)
      {

        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v28 = *(v27 + 8 * v21 + 32);
      }

      [v0 maximumValue];
      v30 = (v29 / (*(*&v0[v38] + 16) - 1)) * v21;
      [v0 maximumValue];
      v32 = v31;
      [v0 minimumValue];
      v34 = v32 - v33;
      [v0 bounds];
      [v0 trackRectForBounds:?];
      v35 = (CGRectGetWidth(v41) + -16.0) / v34 * v30;
      [v0 bounds];
      [v0 trackRectForBounds:?];
      [v28 setConstant:v35 + v36 + 8.0];

      v42.origin.x = v23;
      v42.origin.y = v24;
      v42.size.width = v25;
      v42.size.height = v26;
      v37 = [v39 bezierPathWithRoundedRect:v23 cornerRadius:{v24, v25, v26, CGRectGetWidth(v42) * 0.5}];
      [v37 fill];

      v22 += 4;
      if (v19 == ++v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

void sub_10004CE10()
{
  [v0 setNeedsDisplay];
  v1 = *&v0[OBJC_IVAR____TtC5Setup13LabeledSlider_labels];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = objc_opt_self();
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v4 preferredFontForTextStyle:UIFontTextStyleFootnote];
      [v7 setFont:v8];
    }

    while (v2 != v5);
  }
}

uint64_t sub_10004CF34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void *sub_10004CFE0()
{
  result = *(v0 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_capabilities);
  if (result)
  {
    v2 = [result supportsPearl];
    v3 = [objc_opt_self() mainBundle];
    v4 = "StolenDeviceProtectionPresented";
    if (v2)
    {
      v4 = "OTECTION_TOUCH_ID_ITEM_TITLE";
      v5 = 0xD00000000000002BLL;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    v10._object = 0xE000000000000000;
    v6.value._countAndFlagsBits = 0x654B656C706D6944;
    v7 = v4 | 0x8000000000000000;
    v6.value._object = 0xE900000000000079;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, v6, v3, v8, v10)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10004D0CC()
{
  v1 = OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController____lazy_storage___findMyManager;
  v2 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController____lazy_storage___findMyManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController____lazy_storage___findMyManager);
  }

  else
  {
    v4 = [objc_allocWithZone(BYFindMyManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10004D140()
{
  v1 = OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_notificationCenter;
  *&v0[v1] = [objc_opt_self() defaultCenter];
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_forceExecutePostAuthenticationWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_postAuthenticationWorkItem] = 0;
  v2 = &v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_localAuthenticationReason];
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v28._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000003ELL;
  v5._object = 0x800000010029D650;
  v6.value._countAndFlagsBits = 0x654B656C706D6944;
  v6.value._object = 0xE900000000000079;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v28);

  *v2 = v8;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController____lazy_storage___findMyManager] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_managedConfiguration] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_capabilities] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_paneFeatureAnalyticsManager] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_featureFlags] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_buddyPreferencesExcludedFromBackup] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_miscState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_expressSettingsCache] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_setupMethod] = 0;
  v9 = [v3 mainBundle];
  v29._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  v10._object = 0x800000010029D690;
  v11.value._countAndFlagsBits = 0x654B656C706D6944;
  v11.value._object = 0xE900000000000079;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v29);

  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 modelSpecificLocalizedStringKeyForKey:v14];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v3 mainBundle];
    v30._object = 0xE000000000000000;
    v20._countAndFlagsBits = v16;
    v20._object = v18;
    v21.value._countAndFlagsBits = 0x654B656C706D6944;
    v21.value._object = 0xE900000000000079;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v30);

    v23 = String._bridgeToObjectiveC()();
    v24 = [objc_opt_self() imageNamed:v23];

    v25 = String._bridgeToObjectiveC()();

    v26 = String._bridgeToObjectiveC()();

    v27.receiver = v0;
    v27.super_class = type metadata accessor for BuddyStolenDeviceProtectionController();
    objc_msgSendSuper2(&v27, "initWithTitle:detailText:icon:contentLayout:", v25, v26, v24, 2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004D4D8()
{
  sub_10004CFE0();
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();
  v3 = *&v0[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_capabilities];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v3 supportsPearl];
  v4 = String._bridgeToObjectiveC()();

  [v0 addBulletedListItemWithTitle:v1 description:v2 symbolName:v4];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v37._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x800000010029D570;
  v8.value._countAndFlagsBits = 0x654B656C706D6944;
  v8.value._object = 0xE900000000000079;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v37);

  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  [v0 addBulletedListItemWithTitle:v10 description:v11 symbolName:v12];

  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 modelSpecificLocalizedStringKeyForKey:v14];

  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v5 mainBundle];
  v38._object = 0xE000000000000000;
  v20._countAndFlagsBits = v16;
  v20._object = v18;
  v21.value._countAndFlagsBits = 0x654B656C706D6944;
  v21.value._object = 0xE900000000000079;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v38);

  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  [v0 addBulletedListItemWithTitle:v23 description:v24 symbolName:v25];

  v26 = [v5 mainBundle];
  v39._object = 0xE000000000000000;
  v27._object = 0x800000010029D5F0;
  v27._countAndFlagsBits = 0xD000000000000027;
  v28.value._countAndFlagsBits = 0x654B656C706D6944;
  v28.value._object = 0xE900000000000079;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v39);

  v30 = String._bridgeToObjectiveC()();

  [v0 addBoldButton:v30 action:"turnOnTapped"];

  v31 = [v5 mainBundle];
  v40._object = 0xE000000000000000;
  v32._object = 0x800000010029D620;
  v32._countAndFlagsBits = 0xD000000000000027;
  v33.value._countAndFlagsBits = 0x654B656C706D6944;
  v33.value._object = 0xE900000000000079;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v40);

  v35 = String._bridgeToObjectiveC()();

  [v0 addLinkButton:v35 action:"notNowTapped"];
}

id sub_10004D984(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BuddyStolenDeviceProtectionController();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  result = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_paneFeatureAnalyticsManager];
  if (result)
  {
    result = [result clearActionForFeature:17];
    v4 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_buddyPreferencesExcludedFromBackup];
    if (v4)
    {
      v5 = v4;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v7 = String._bridgeToObjectiveC()();
      [v5 setObject:isa forKey:v7];

      return [*&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_notificationCenter] addObserver:v1 selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004DDE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_10004DEEC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_featureFlags);
  if (!v5)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = [v5 isStolenDeviceProtectionEnabled];
  if (!result)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_runState;
  v5 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_runState);
  if (!v5)
  {
    goto LABEL_32;
  }

  if ([v5 hasCompletedInitialRun])
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_miscState);
    if (!v5)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    result = [v5 launchedToShowStolenDeviceProtection];
    if (!result)
    {
      return result;
    }
  }

  v5 = *(v0 + v7);
  if (!v5)
  {
    goto LABEL_33;
  }

  v5 = [v5 hasCompletedInitialRun];
  if ((v5 & 1) == 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_setupMethod);
    if (!v5)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v5 = [v5 dataTransferMethod];
    if ((v5 - 1) >= 2)
    {
      if (v5 && v5 != 3)
      {
        goto LABEL_39;
      }

      static Logger.purpleBuddyGeneral.getter();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Skipping SDP as user is not restoring or migrating", v27, 2u);
      }

      (*(v2 + 8))(v4, v1);
      return 0;
    }
  }

  v8 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_buddyPreferencesExcludedFromBackup);
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 BOOLForKey:v10];

  if (v11)
  {
    return 0;
  }

  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v14 = [v13 isFeatureEnabled];

  if (v14)
  {
    return 0;
  }

  v15 = [v12 sharedInstance];
  v16 = [v15 isFeatureAvailable];

  if (!v16)
  {
    return 0;
  }

  v17 = objc_opt_self();
  v18 = [v17 sharedInstance];
  v19 = [v18 primaryAuthKitAccount];

  if (!v19)
  {
    return 0;
  }

  v20 = [v17 sharedInstance];
  v21 = [v20 securityLevelForAccount:v19];

  if (v21 != 4)
  {
    goto LABEL_29;
  }

  v5 = [objc_opt_self() sharedInterface];
  if (!v5)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = v5;
  v23 = [v5 isManateeAvailable];

  if ((v23 & 1) == 0)
  {
LABEL_29:

    return 0;
  }

  v5 = *(v0 + v7);
  if (!v5)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    v28 = v5;
    type metadata accessor for BuddyDataTransferMethod(0);
    v29[1] = v28;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if ([v5 hasCompletedInitialRun])
  {
    v24 = [objc_opt_self() locationServicesEnabled];

    return v24;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_10004E330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v6[7] = v7;
  *v7 = v6;
  v7[1] = sub_10004E3DC;

  return sub_100051F74();
}

uint64_t sub_10004E3DC(char a1)
{
  *(*v1 + 64) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004E520, v3, v2);
}

uint64_t sub_10004E520()
{
  v1 = *(v0 + 64);

  if (v1 == 1)
  {
    v2 = sub_10004D0CC();
    v3 = [v2 isFindMyEnabled];

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  (*(v0 + 24))(v4);
  v5 = *(v0 + 8);

  return v5();
}

void sub_10004E630()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Stolen device protection pane - Turn on tapped", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() sharedInstance];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  aBlock[4] = sub_100051AF4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004CF34;
  aBlock[3] = &unk_10032A510;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v9 checkCanEnableFeatureWithCompletion:v11];
  _Block_release(v11);
}

void sub_10004E844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = __chkstk_darwin(v6);
  v11 = &v28[-v10 - 8];
  __chkstk_darwin(v9);
  v13 = &v28[-v12 - 8];
  if (a2)
  {
    swift_errorRetain();
    static Logger.purpleBuddyGeneral.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to checkCanEnableFeature (Stolen Device Protection) with error: %@", v16, 0xCu);
      sub_1000063A8(v17);
    }

    else
    {
    }

    (*(v5 + 8))(v13, v4);
  }

  else if (a1)
  {
    v27 = 2;
    type metadata accessor for LARatchetManagerEnableFeatureResultKey(0);
    sub_100051AFC(&qword_1003A1DB8, type metadata accessor for LARatchetManagerEnableFeatureResultKey);
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v19 = sub_100067E7C(v28), (v20 & 1) != 0))
    {
      sub_10000A46C(*(a1 + 56) + 32 * v19, v29);
      sub_100051A50(v28);
      if ((swift_dynamicCast() & 1) != 0 && v27 == 1)
      {
        sub_1000505B0();
        return;
      }
    }

    else
    {
      sub_100051A50(v28);
    }

    static Logger.purpleBuddyGeneral.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Liveness check failed; prompt for biometrics authenticate", v23, 2u);
    }

    (*(v5 + 8))(v8, v4);
    sub_10004F11C();
  }

  else
  {
    static Logger.purpleBuddyGeneral.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No results, and no error during checkCanEnableFeature (StolenDeviceProtection)", v26, 2u);
    }

    (*(v5 + 8))(v11, v4);
  }
}

void sub_10004EC8C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Stolen device protection pane - not now tapped", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_runState);
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ([v9 hasCompletedInitialRun])
  {
LABEL_9:
    sub_10004EE88(0);
    return;
  }

  v10 = OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_expressSettingsCache;
  v11 = *(v1 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_expressSettingsCache);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (![v11 hasExpressSetting:13])
  {
    goto LABEL_9;
  }

  v12 = *(v1 + v10);
  if (v12)
  {
    [v12 removeApplyHandlerFor:13];
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

void sub_10004EE88(char a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = v3;
  v5 = [v3 window];

  if (v5)
  {
    [v5 setUserInteractionEnabled:1];
  }

  v6 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_buddyPreferencesExcludedFromBackup];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v9];

  v10 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_paneFeatureAnalyticsManager];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = objc_allocWithZone(NSNumber);
  v12 = v10;
  v13 = [v11 initWithInteger:a1 & 1];
  [v12 recordActionWithValue:v13 forFeature:17];

  if (a1)
  {
    v14 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_runState];
    if (!v14)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ([v14 hasCompletedInitialRun])
    {
      goto LABEL_11;
    }

    v15 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_expressSettingsCache];
    if (!v15)
    {
LABEL_23:
      __break(1u);
      return;
    }

    if (([v15 hasExpressSetting:13] & 1) == 0)
    {
LABEL_11:
      v16 = [v1 delegate];
      if (!v16)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v17 = v16;
      sub_100006410(&qword_1003A1DB0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1002978B0;
      *(v18 + 56) = type metadata accessor for BuddyStolenDeviceProtectionController();
      *(v18 + 32) = v1;
      v19 = v1;
      v20 = Array._bridgeToObjectiveC()().super.isa;

      [v17 removeViewControllersOnNextPush:v20];
      swift_unknownObjectRelease();
    }
  }

  v21 = [v1 delegate];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v21 flowItemDone:v1];

  swift_unknownObjectRelease();
}

void sub_10004F11C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 window];

  if (v8)
  {
    [v8 setUserInteractionEnabled:0];
  }

  static Logger.purpleBuddyGeneral.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Start biometrics authentication", v11, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v12 = [objc_allocWithZone(LAContext) init];
  sub_100051AAC(0, &qword_1003A0330);
  isa = NSNumber.init(integerLiteral:)(4).super.super.isa;
  [v12 setTouchIDAuthenticationRetryLimit:isa];

  sub_100006410(&qword_1003A1D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100297E80;
  v30[0] = 2;
  AnyHashable.init<A>(_:)();
  v16 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_localAuthenticationReason];
  v15 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_localAuthenticationReason + 8];
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v16;
  *(inited + 80) = v15;
  v30[0] = 1024;

  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  v17 = sub_10005D700(inited);
  swift_setDeallocating();
  sub_100006410(&qword_1003A1D98);
  swift_arrayDestroy();
  v18 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_capabilities];
  if (!v18)
  {
    goto LABEL_12;
  }

  if ([v18 supportsPearl])
  {
    v32._countAndFlagsBits = 1;
    AnyHashable.init<A>(_:)();
    v19 = [objc_opt_self() mainBundle];
    v34._object = 0xE000000000000000;
    v20.value._countAndFlagsBits = 0x654B656C706D6944;
    v21._object = 0x800000010029D440;
    v21._countAndFlagsBits = 0xD000000000000032;
    v20.value._object = 0xE900000000000079;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v34);

    v33 = &type metadata for String;
    v32 = v23;
  }

  else
  {
    v32._countAndFlagsBits = 1011;
    AnyHashable.init<A>(_:)();
    v33 = &type metadata for Bool;
    LOBYTE(v32._countAndFlagsBits) = 0;
  }

  sub_100015B18(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[6] = v17;
  sub_100051888(v31, v30, isUniquelyReferenced_nonNull_native);
  sub_100051A50(v30);
  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  v30[4] = sub_100051AA4;
  v30[5] = v26;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_10004CF34;
  v30[3] = &unk_10032A4C0;
  v27 = _Block_copy(v30);
  v28 = v1;

  [v12 evaluatePolicy:1 options:v25 reply:v27];

  _Block_release(v27);
}

void sub_10004F628(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v32 - v11;
  if (a2)
  {
    v32[1] = a2;
    swift_errorRetain();
    sub_100006410(&unk_1003A1DA0);
    sub_100051AAC(0, &qword_1003A07E0);
    if (swift_dynamicCast())
    {
      v13 = v32[0];
      static Logger.purpleBuddyGeneral.getter();
      v14 = static os_log_type_t.error.getter();
      v15 = Logger.logObject.getter();
      if (os_log_type_enabled(v15, v14))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v15, v14, "Failed to authenticate with error: %@", v16, 0xCu);
        sub_1000063A8(v17);
      }

      (*(v7 + 8))(v12, v6);
      v19 = [v13 domain];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v20 == 0xD00000000000001DLL && 0x800000010029D480 == v22)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          v29 = [a3 view];
          if (!v29)
          {
            __break(1u);
            return;
          }

          v30 = v29;
          v31 = [v29 window];

          if (v31)
          {
            [v31 setUserInteractionEnabled:1];
          }

          goto LABEL_22;
        }
      }

      v28 = [v13 code];
      if (v28 + 8 <= 7 && ((1 << (v28 + 8)) & 0xA1) != 0)
      {
        sub_10004F11C();
      }

      else
      {
        sub_10004FA10(0);
      }

LABEL_22:

      return;
    }
  }

  if (a1)
  {
    v23 = 1;
  }

  else
  {
    static Logger.purpleBuddyGeneral.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = Logger.logObject.getter();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v25, v24, "No authentication results", v26, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v23 = 0;
  }

  sub_10004FA10(v23);
}

uint64_t sub_10004FA10(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchQoS();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = __chkstk_darwin(v6);
  v48 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = v47 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v47 - v18;
  static Logger.purpleBuddyGeneral.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "Authentication completed - did Authenticate: %{BOOL}d", v22, 8u);
  }

  v23 = a1;

  v24 = *(v14 + 8);
  v24(v19, v13);
  v25 = OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_postAuthenticationWorkItem;
  if (*(v2 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_postAuthenticationWorkItem))
  {
    static Logger.purpleBuddyGeneral.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Ignoring user authentication completed more while another request is being processed.", v28, 2u);
    }

    return (v24)(v17, v13);
  }

  else
  {
    v30 = v2;
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v23 & 1;
    v62 = sub_10005186C;
    v63 = v32;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v47[4] = &v60;
    v60 = sub_10002E3B4;
    v61 = &unk_10032A420;
    _Block_copy(&aBlock);
    v57 = _swiftEmptyArrayStorage;
    v33 = sub_100051AFC(&qword_1003A0300, &type metadata accessor for DispatchWorkItemFlags);

    v47[3] = sub_100006410(&unk_1003A0440);
    v47[2] = sub_10000977C();
    v34 = v50;
    v35 = v30;
    v47[1] = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v36 = DispatchWorkItem.init(flags:block:)();

    *(v35 + v25) = v36;

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = sub_100051878;
    v63 = v37;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_10002E3B4;
    v61 = &unk_10032A448;
    _Block_copy(&aBlock);
    v57 = _swiftEmptyArrayStorage;

    dispatch thunk of SetAlgebra.init<A>(_:)();
    swift_allocObject();
    v38 = DispatchWorkItem.init(flags:block:)();

    *(v35 + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_forceExecutePostAuthenticationWorkItem) = v38;

    sub_100051AAC(0, &qword_1003A0430);
    v39 = static OS_dispatch_queue.main.getter();
    v40 = v48;
    static DispatchTime.now()();
    v41 = v51;
    + infix(_:_:)();
    v52 = *(v52 + 8);
    v42 = v40;
    v43 = v53;
    (v52)(v42, v53);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = sub_100051880;
    v63 = v44;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1000525E0;
    v61 = &unk_10032A470;
    v45 = _Block_copy(&aBlock);

    v46 = v54;
    static DispatchQoS.unspecified.getter();
    v57 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v45);

    (*(v49 + 8))(v12, v34);
    (*(v55 + 8))(v46, v56);
    (v52)(v41, v43);
  }
}

void sub_100050214(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_forceExecutePostAuthenticationWorkItem) = 0;

    *&v4[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_postAuthenticationWorkItem] = 0;

    if (a2)
    {
      sub_1000505B0();
    }

    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 window];

      if (v7)
      {
        [v7 setUserInteractionEnabled:1];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000502FC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_forceExecutePostAuthenticationWorkItem) = 0;
    v5 = Strong;

    static Logger.purpleBuddyGeneral.getter();
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v14[1] = swift_getObjectType();
      sub_100006410(&unk_1003A1D80);
      v11 = String.init<A>(describing:)();
      v13 = sub_100063F14(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Force navigation from %s", v9, 0xCu);
      sub_10000A420(v10);
    }

    (*(v1 + 8))(v3, v0);
    if (*&v6[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_postAuthenticationWorkItem])
    {

      dispatch thunk of DispatchWorkItem.perform()();
    }
  }
}

void sub_100050534()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_forceExecutePostAuthenticationWorkItem])
    {

      dispatch thunk of DispatchWorkItem.perform()();
    }

    else
    {
    }
  }
}

void sub_1000505B0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Enabling stolen device protection enabled", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_runState;
  v10 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_runState];
  if (!v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (([v10 hasCompletedInitialRun] & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_expressSettingsCache;
    v12 = *&v1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_expressSettingsCache];
    if (!v12)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    if ([v12 hasExpressSetting:13])
    {
      v13 = *&v1[v11];
      if (v13)
      {
        [v13 setApplyHandlerFor:13];
        sub_10004EE88(1);
        return;
      }

      goto LABEL_18;
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = *&v1[v9];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v14;
  v17 = v1;
  v18 = [v15 hasCompletedInitialRun];
  v19 = [objc_opt_self() sharedInstance];
  if (v18)
  {
    v25 = sub_100051794;
    v26 = v16;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10004CF34;
    v24 = &unk_10032A358;
    v20 = _Block_copy(&aBlock);

    [v19 enableFeatureWithReply:v20];
  }

  else
  {
    v25 = sub_100051794;
    v26 = v16;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10004CF34;
    v24 = &unk_10032A330;
    v20 = _Block_copy(&aBlock);

    [v19 enableFeatureActivatingGracePeriodWithReply:v20];
  }

  _Block_release(v20);
}

uint64_t sub_1000508F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051AAC(0, &qword_1003A0430);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1000517F4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E3B4;
  aBlock[3] = &unk_10032A3A8;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100051AFC(&qword_1003A0300, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006410(&unk_1003A0440);
  sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_100050BC4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  if (a1)
  {
    swift_errorRetain();
    static Logger.purpleBuddyGeneral.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to enable stolen device protection: %@", v11, 0xCu);
      sub_1000063A8(v12);
    }

    (*(v3 + 8))(v6, v2);
    sub_100050E44();
  }

  else
  {
    static Logger.purpleBuddyGeneral.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Stolen device protection enabled", v16, 2u);
    }

    (*(v3 + 8))(v8, v2);
    sub_10004EE88(1);
  }
}

void sub_100050E44()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v14._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x654B656C706D6944;
  v4._object = 0x800000010029D400;
  v4._countAndFlagsBits = 0xD000000000000035;
  v3.value._object = 0xE900000000000079;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v14);

  v6 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v7 = [v1 mainBundle];
  v15._object = 0xE000000000000000;
  v8._countAndFlagsBits = 19279;
  v8._object = 0xE200000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v15);

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() actionWithTitle:v10 style:0 handler:0];

  [v12 addAction:v11];
  [v0 presentViewController:v12 animated:1 completion:0];
}

void sub_1000510A0(uint64_t a1)
{
  v2 = sub_100006410(&unk_1003A2300);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v2;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Will call routine manager", v12, 2u);
    v2 = v18;
  }

  (*(v7 + 8))(v9, v6);
  v13 = [objc_opt_self() defaultManager];
  (*(v3 + 16))(v5, a1, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v5, v2);
  aBlock[4] = sub_10005250C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005151C;
  aBlock[3] = &unk_10032A5B0;
  v16 = _Block_copy(aBlock);

  [v13 fetchRoutineStateWithHandler:v16];
  _Block_release(v16);
}

uint64_t sub_100051390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1 == 2 && a2 == 0;
  static Logger.purpleBuddyGeneral.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Routine manager supplied state %{BOOL}d", v12, 8u);
  }

  (*(v5 + 8))(v7, v4);
  v14[15] = v9;
  sub_100006410(&unk_1003A2300);
  return CheckedContinuation.resume(returning:)();
}

void sub_10005151C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1000515F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyStolenDeviceProtectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005175C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005179C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000517B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000517FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051834()
{

  return _swift_deallocObject(v0, 25, 7);
}

_OWORD *sub_100051888(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100067E7C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000152A8();
      goto LABEL_7;
    }

    sub_100014E6C(v13, a3 & 1);
    v19 = sub_100067E7C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100015ABC(a2, v21);
      return sub_1000519D4(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000A420(v17);

  return sub_100015B18(a1, v17);
}

_OWORD *sub_1000519D4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100015B18(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100051AAC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100051AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051B44(char *a1, void (**a2)(void, void))
{
  v4 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  result = swift_allocObject();
  *(result + 16) = a2;
  v8 = *&a1[OBJC_IVAR____TtC5Setup37BuddyStolenDeviceProtectionController_runState];
  if (v8)
  {
    v9 = result;
    _Block_copy(a2);
    if ([v8 hasCompletedInitialRun])
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      type metadata accessor for MainActor();
      v11 = a1;

      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v11;
      v13[5] = sub_100051D68;
      v13[6] = v9;
      sub_100022A78(0, 0, v6, &unk_100298C60, v13);
    }

    else
    {
      a2[2](a2, 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100051D30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051D70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100051DB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100051E80;

  return sub_10004E330(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100051E80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100051F74()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[8] = v3;
  v0[9] = v2;

  return _swift_task_switch(sub_100052074, v3, v2);
}

uint64_t sub_100052074()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Will await routine manager continuation", v3, 2u);
  }

  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  v7 = *(v6 + 8);
  v0[10] = v7;
  v7(v4, v5);
  v8 = static MainActor.shared.getter();
  v0[11] = v8;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_100052208;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 13, v8, &protocol witness table for MainActor, 0xD00000000000001FLL, 0x800000010029D550, sub_1000510A0, 0, &type metadata for Bool);
}

uint64_t sub_100052208()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10005234C, v3, v2);
}

uint64_t sub_10005234C()
{

  v1 = *(v0 + 104);
  static Logger.purpleBuddyGeneral.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did finish await for routine manager continuation", v4, 2u);
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  v5(v6, v7);

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_100052478()
{
  v1 = sub_100006410(&unk_1003A2300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005250C(uint64_t a1, uint64_t a2)
{
  sub_100006410(&unk_1003A2300);

  return sub_100051390(a1, a2);
}

uint64_t sub_1000525E0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100052624()
{
  v1 = OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController____lazy_storage___cachedViewController;
  v2 = *(v0 + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController____lazy_storage___cachedViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController____lazy_storage___cachedViewController);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_wrapper) viewController];
    v5 = *(v0 + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_buddyPreferences);
    if (v5)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 BOOLForKey:v7];

      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 1;
    }

    v10 = type metadata accessor for EnclosingViewController();
    v11 = objc_allocWithZone(v10);
    swift_unknownObjectWeakInit();
    *&v11[OBJC_IVAR____TtC5Setup23EnclosingViewController_enclosedViewController] = v4;
    swift_unknownObjectWeakAssign();
    v11[OBJC_IVAR____TtC5Setup23EnclosingViewController_overrideBackButton] = v9;
    v16.receiver = v11;
    v16.super_class = v10;
    v12 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
    v13 = *(v0 + v1);
    *(v0 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_10005278C()
{
  v1 = OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_wrapper;
  *&v0[v1] = [objc_allocWithZone(BuddyButtonConfigurationWrapper) init];
  *&v0[OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController____lazy_storage___cachedViewController] = 0;
  *&v0[OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_deviceProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_buddyPreferences] = 0;
  *&v0[OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_settingsManager] = 0;
  *&v0[OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_delegate] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BuddyButtonConfigurationController();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_1000529A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_1000529E4()
{
  result = *(v0 + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_deviceProvider);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result hasActionButton];
  if (!result)
  {
    return result;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_buddyPreferences);
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  return (v5 ^ 1);
}

void sub_100052AC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() currentThread];
  v14 = [v13 isMainThread];

  if (v14)
  {
    v15 = *&v3[OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_wrapper];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = a2;
    v30 = sub_1000538B4;
    v31 = v17;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1000525E0;
    v29 = &unk_10032A6A0;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    [v19 prepare:v18];
    _Block_release(v18);
  }

  else
  {
    sub_100053768(0, &qword_1003A0430);
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    v21[2] = v3;
    v21[3] = a1;
    v21[4] = a2;
    v30 = sub_100053848;
    v31 = v21;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10002E3B4;
    v29 = &unk_10032A650;
    v22 = _Block_copy(&aBlock);

    v23 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10000ED80();
    sub_100006410(&unk_1003A0440);
    sub_10000977C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v25 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_100052E98(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_wrapper);
    v5 = Strong;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000538C0;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E3B4;
    aBlock[3] = &unk_10032A6C8;
    v7 = _Block_copy(aBlock);
    v8 = v4;

    [v8 setConfigurationCompleted:v7];
    _Block_release(v7);

    (a2)(1);
  }

  else
  {
    a2();
  }
}

void sub_100052FE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_settingsManager);
    if (v2)
    {
      [v2 stashCurrentActionButtonData];
      v3 = OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_buddyPreferences;
      v4 = *&v1[OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_buddyPreferences];
      if (v4)
      {
        v5 = *&v1[OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_delegate];
        if (v5)
        {
          swift_unknownObjectRetain();
          v6 = v4;
          isa = Bool._bridgeToObjectiveC()().super.super.isa;
          v8 = String._bridgeToObjectiveC()();
          [v6 setObject:isa forKey:v8];

          [v5 flowItemDone:v1];
          v9 = *&v1[v3];
          if (!v9 || (v10 = v9, v11 = String._bridgeToObjectiveC()(), v12 = [v10 BOOLForKey:v11], v10, v11, (v12 & 1) == 0))
          {
            sub_1000531EC();
          }

          swift_unknownObjectRelease();
          v1 = v6;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000531EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100052624();
  v11 = [v10 navigationController];

  v12 = [v11 topViewController];
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController____lazy_storage___cachedViewController);
    sub_100053768(0, &qword_1003A1218);
    v14 = v13;
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      sub_100053768(0, &qword_1003A0430);
      v16 = static OS_dispatch_queue.main.getter();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000537E8;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E3B4;
      aBlock[3] = &unk_10032A600;
      v18 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000ED80();
      sub_100006410(&unk_1003A0440);
      sub_10000977C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_100053518()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100052624();

    v3 = [v2 navigationController];
    if (v3)
    {
      v4 = [v3 navigationBar];

      v5 = [objc_opt_self() whiteColor];
      [v4 setTintColor:v5];
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1000531EC();
  }
}

id sub_100053684()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyButtonConfigurationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100053768(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000537B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000537F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100053808()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053874()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000538C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100053920(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000597F8(0, &unk_1003A1FB0);
    sub_1000597B4(&qword_1003A0BE0, &unk_1003A1FB0);
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
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
    if (!__CocoaSet.Iterator.next()() || (sub_1000597F8(0, &unk_1003A1FB0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_100021664();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
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

uint64_t sub_100053BB8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100053CAC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id sub_100053FA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyAppearanceController.BuddyAppearanceAnimationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000541FC()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 modelSpecificLocalizedStringKeyForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = [objc_opt_self() mainBundle];
    v10._object = 0xE000000000000000;
    v7._countAndFlagsBits = v3;
    v7._object = v5;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

    xmmword_1003A1E20 = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_100054308()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x800000010029DB10;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1003A1E30 = v3;
}

uint64_t sub_1000543AC()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1000597F8(0, &unk_1003A1FB0);
  sub_1000597B4(&qword_1003A0BE0, &unk_1003A1FB0);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100053920(v3);
  v5 = v4;

  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  for (result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = _CocoaArrayWrapper.endIndex.getter())
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v7 = *(v5 + 32);
    }

    v8 = v7;

    v9 = [v8 windows];

    sub_1000597F8(0, &unk_1003A1FC0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        break;
      }
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        break;
      }
    }

    v11 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v5 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v12 isKeyWindow])
      {

        v15 = [v13 traitCollection];

        v16 = [v15 layoutDirection];
        goto LABEL_25;
      }

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_24:

  v16 = 0;
LABEL_25:
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_layoutDirection] = v16;
  v17 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationViewWrapper;
  *&v0[v17] = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_continueButton] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_revertButton] = 0;
  v18 = &v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView];
  *v18 = 0;
  v18[1] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_delegate] = 0;
  v19 = &v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_presentationDismissalObserver];
  *v19 = 0u;
  v19[1] = 0u;
  v20 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_cloudConfigManager;
  *&v0[v20] = [objc_opt_self() sharedManager];
  v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_skippedByCloudConfiguration] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_featureFlags] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_appearanceModeProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_displayZoomExecutor] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_flowItemDispositionProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_analyticsEventAppearance] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_deviceProvider] = 0;
  v21 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationView;
  type metadata accessor for BuddyAppearanceController.BuddyAppearanceAnimationView();
  *&v0[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationController] = 0;
  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_constraintsToButtonTray] = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v22 = sub_100013E98(_swiftEmptyArrayStorage);
  }

  else
  {
    v22 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_cancellables] = v22;
  if (qword_10039F9E8 != -1)
  {
    swift_once();
  }

  v23 = [objc_opt_self() mainBundle];
  v30._object = 0xE000000000000000;
  v24._object = 0x800000010029DC00;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v30);

  v26 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();
  v29.receiver = v0;
  v29.super_class = type metadata accessor for BuddyAppearanceController();
  v28 = objc_msgSendSuper2(&v29, "initWithTitle:detailText:icon:contentLayout:", v26, v27, 0, 2);

  return v28;
}

void sub_10005490C()
{
  v1 = v0;
  v2 = sub_100006410(&qword_1003A1F58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v110 - v4;
  v6 = sub_100006410(&qword_1003A1F60);
  __chkstk_darwin(v6 - 8);
  v8 = &v110 - v7;
  v9 = sub_100006410(&qword_1003A1F68);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v120 = &v110 - v11;
  v12 = type metadata accessor for BuddyAppearanceController();
  v127.receiver = v1;
  v127.super_class = v12;
  objc_msgSendSuper2(&v127, "viewDidLoad");
  v13 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_flowItemDispositionProvider);
  if (!v13)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v118 = v10;
  v119 = v9;
  v115 = v5;
  v116 = v3;
  v117 = v2;
  if (([v13 dispositions] & 0x10) != 0)
  {
    v114 = v8;
    v14 = [v1 headerView];
    v15 = objc_opt_self();
    v16 = [v15 mainBundle];
    v128._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0xD000000000000024;
    v17._object = 0x800000010029DBA0;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v128._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v128);
    v19 = v1;

    v20 = String._bridgeToObjectiveC()();

    [v14 setTitle:v20];

    v21 = [v1 headerView];
    v22 = objc_opt_self();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 modelSpecificLocalizedStringKeyForKey:v23];

    if (!v24)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [v15 mainBundle];
    v129._object = 0xE000000000000000;
    v29._countAndFlagsBits = v25;
    v29._object = v27;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v129._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v129);

    v31 = String._bridgeToObjectiveC()();

    [v21 setDetailText:v31];

    v1 = v19;
    v8 = v114;
  }

  v32 = [objc_opt_self() boldButton];
  v33 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_continueButton;
  v34 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_continueButton);
  *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_continueButton) = v32;
  v35 = v32;

  if (!v35)
  {
    goto LABEL_46;
  }

  v121 = objc_opt_self();
  v36 = [v121 mainBundle];
  v130._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0x45554E49544E4F43;
  v37._object = 0xE800000000000000;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v130._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v130);

  v39 = String._bridgeToObjectiveC()();

  [v35 setTitle:v39 forState:0];

  v40 = *(v1 + v33);
  if (!v40)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v40 addTarget:v1 action:"continueTapped" forControlEvents:64];
  v41 = [v1 buttonTray];
  if (!*(v1 + v33))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v42 = v41;
  [v41 addButton:?];

  v43 = [objc_opt_self() linkButton];
  v44 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_revertButton;
  v45 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_revertButton);
  *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_revertButton) = v43;
  v46 = v43;

  if (!v46)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v47 = [v121 mainBundle];
  v131._object = 0xE000000000000000;
  v48._object = 0x800000010029DB80;
  v48._countAndFlagsBits = 0xD000000000000011;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v131._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, v131);

  v50 = String._bridgeToObjectiveC()();

  [v46 setTitle:v50 forState:0];

  v51 = *(v1 + v44);
  if (!v51)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v51 addTarget:v1 action:"revertTapped" forControlEvents:64];
  v52 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_featureFlags;
  v53 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_featureFlags);
  if (!v53)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v54 = [v53 isSolariumEnabled];
  v55 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel);
  v111 = v52;
  if (v54)
  {
    if (!v55)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v57 = sub_100058E20(v56);
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [v1 contentView];
    v59 = &off_100327F60;
LABEL_36:
    v78 = v58;
    [v78 addSubview:v57];

    v79 = v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView;
    v80 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView);
    *v79 = v57;
    v79[1] = v59;

    v81 = [v1 contentView];
    v82 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationViewWrapper);
    [v81 addSubview:v82];

    v83 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationView);
    [v82 addSubview:v83];
    [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_100056CD8();
    v121 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel;
    v84 = *(v1 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel);
    if (v84)
    {
      aBlock[0] = *(v84 + 24);
      sub_1000597F8(0, &qword_1003A0430);

      v85 = static OS_dispatch_queue.main.getter();
      v122 = v85;
      v86 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v87 = *(v86 - 8);
      v88 = *(v87 + 56);
      v113 = (v87 + 56);
      v114 = v88;
      (v88)(v8, 1, 1, v86);
      sub_100006410(&qword_1003A1F70);
      sub_100059644(&unk_1003A1F78, &qword_1003A1F70);
      v89 = sub_1000597B4(&qword_1003A1800, &qword_1003A0430);
      v90 = v120;
      v112 = v89;
      Publisher.receive<A>(on:options:)();
      sub_100059840(v8, &qword_1003A1F60);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100059644(&qword_1003A1F88, &qword_1003A1F68);
      v91 = v119;
      Publisher.sink(receiveCompletion:receiveValue:)();

      (*(v118 + 8))(v90, v91);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v92 = *&v121[v1];
      if (v92)
      {
        aBlock[0] = *(v92 + 40);

        v93 = static OS_dispatch_queue.main.getter();
        v122 = v93;
        (v114)(v8, 1, 1, v86);
        v94 = v8;
        sub_100006410(&unk_1003A1F90);
        sub_100059644(&qword_1003A0620, &unk_1003A1F90);
        v95 = v115;
        Publisher.receive<A>(on:options:)();
        sub_100059840(v94, &qword_1003A1F60);

        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100059644(&unk_1003A1FA0, &qword_1003A1F58);
        v96 = v117;
        Publisher.sink(receiveCompletion:receiveValue:)();

        (*(v116 + 8))(v95, v96);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v97 = objc_opt_self();
        v98 = [v97 accessibilityViewController];
        if (!v98)
        {
LABEL_44:
          v103 = [objc_opt_self() defaultCenter];
          v104 = UIPresentationControllerDismissalTransitionDidEndNotification;
          v105 = [objc_opt_self() mainQueue];
          v106 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v125 = sub_10005968C;
          v126 = v106;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100053BB8;
          ObjectType = &unk_10032A808;
          v107 = _Block_copy(aBlock);

          v108 = [v103 addObserverForName:v104 object:0 queue:v105 usingBlock:v107];
          _Block_release(v107);

          ObjectType = swift_getObjectType();
          aBlock[0] = v108;
          v109 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_presentationDismissalObserver;
          swift_beginAccess();
          sub_100059694(aBlock, v1 + v109);
          swift_endAccess();
          return;
        }

        v99 = *(v1 + v111);
        if (v99)
        {
          if ([v99 isSolariumEnabled])
          {
            v100 = [v1 navigationItem];
            v101 = [v97 navigationBarButtonItemWithTarget:v1 selector:"showAccessibilitySettings"];
            [v100 setRightBarButtonItem:v101];
          }

          else
          {
            v102 = [v97 navigationBarButton];
            [v102 addTarget:v1 action:"showAccessibilitySettings" forControlEvents:64];
            v100 = [v1 navigationItem];
            v101 = [v97 navigationBarButtonItemWithButton:v102];
            [v100 setRightBarButtonItem:v101];
          }

          goto LABEL_44;
        }

        goto LABEL_54;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v55)
  {
    v60 = *(v55 + 16);
    v61 = *(v60 + 16);
    v62 = _swiftEmptyArrayStorage;
    if (v61)
    {
      v113 = v1;
      v114 = v8;
      aBlock[0] = _swiftEmptyArrayStorage;

      sub_10005ADCC(0, v61, 0);
      v63 = 32;
      v62 = aBlock[0];
      do
      {
        v64 = *(v60 + v63);
        v65 = 0x4D554944454DLL;
        if (v64 != 2)
        {
          v65 = 0x454752414CLL;
        }

        v66 = 0xE600000000000000;
        if (v64 != 2)
        {
          v66 = 0xE500000000000000;
        }

        v67 = 0x4C4C414D53;
        if (*(v60 + v63))
        {
          v67 = 0x544C5541464544;
        }

        v68 = 0xE700000000000000;
        if (!*(v60 + v63))
        {
          v68 = 0xE500000000000000;
        }

        if (*(v60 + v63) <= 1u)
        {
          v69 = v67;
        }

        else
        {
          v69 = v65;
        }

        if (*(v60 + v63) <= 1u)
        {
          v70 = v68;
        }

        else
        {
          v70 = v66;
        }

        v71 = [v121 mainBundle];
        v132._object = 0xE000000000000000;
        v72._countAndFlagsBits = v69;
        v72._object = v70;
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        v132._countAndFlagsBits = 0;
        v74 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v132);

        aBlock[0] = v62;
        v76 = v62[2];
        v75 = v62[3];
        if (v76 >= v75 >> 1)
        {
          sub_10005ADCC((v75 > 1), v76 + 1, 1);
          v62 = aBlock[0];
        }

        v62[2] = (v76 + 1);
        *&v62[2 * v76 + 4] = v74;
        ++v63;
        --v61;
      }

      while (v61);

      v1 = v113;
      v8 = v114;
    }

    v77 = objc_allocWithZone(type metadata accessor for LabeledSlider());
    v57 = sub_10004B348(v62);
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v57 addTarget:v1 action:"modeChanged" forControlEvents:192];
    v58 = [v1 contentView];
    v59 = &off_10032A2E8;
    goto LABEL_36;
  }

LABEL_57:
  __break(1u);
}