uint64_t sub_1003ED2A8()
{
  v0 = sub_1003ED35C();

  return v0;
}

uint64_t sub_1003ED308()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003ED380(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_10005D520;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t static Task<>.delayed(by:priority:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_100003ABC(&unk_1006138B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - v11;
  sub_1003ED568(a1, &v15 - v11);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;

  return sub_1003EDAC4(0, 0, v12, &unk_1004E88A8, v13);
}

uint64_t sub_1003ED568(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_1006138B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ED5D8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_1003ED600, 0, 0);
}

uint64_t sub_1003ED600(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_1003ED6E8;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_1003ED6E8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[4] + *v2[4]);
    v6 = swift_task_alloc();
    v2[7] = v6;
    *v6 = v3;
    v6[1] = sub_1003ED8B8;
    v7 = v2[2];

    return v8(v7);
  }
}

uint64_t sub_1003ED8B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003ED9AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003ED9EC(uint64_t a1)
{
  v4 = *(v1 + 3);
  v5 = *(v1 + 2);
  v6 = v1[5];
  v8 = *(v1 + 6);
  v7 = *(v1 + 7);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000136EC;

  return sub_1003ED5D8(a1, v6, v5, v4, v8, v7);
}

uint64_t sub_1003EDAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003ABC(&unk_1006138B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  sub_1003ED568(a3, &v23[-1] - v10);
  v12 = sub_1004BC4B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1003EDDF8(v11);
  }

  else
  {
    sub_1004BC4A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004BC3E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004BBF54();
      sub_100023770(v19 + 32, v23);

      v20 = v23[0];
      sub_1003EDDF8(a3);

      return v20;
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

  sub_1003EDDF8(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t static Task<>.userFeedbackDelayed(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&unk_1006138B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_1004BC484();
  v9 = sub_1004BC4B4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = static Task<>.delayed(by:priority:task:)(v8, a1, a2, a3, 2.0);
  sub_1003EDDF8(v8);
  return v10;
}

uint64_t sub_1003EDDF8(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_1006138B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CASpringAnimation.springParameters.getter()
{
  [v0 mass];
  v2 = v1;
  [v0 stiffness];
  v4 = v3;
  [v0 damping];
  v6 = v5;
  v7 = objc_allocWithZone(UISpringTimingParameters);

  return [v7 initWithMass:v2 stiffness:v4 damping:v6 initialVelocity:{0.0, 0.0}];
}

void CASpringAnimation.springParameters.setter(void *a1)
{
  [a1 mass];
  [v1 setMass:?];
  [a1 stiffness];
  [v1 setStiffness:?];
  [a1 damping];
  [v1 setDamping:?];
  [v1 setInitialVelocity:0.0];
}

void (*CASpringAnimation.springParameters.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  [v1 mass];
  v4 = v3;
  [v1 stiffness];
  v6 = v5;
  [v1 damping];
  *a1 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:v4 stiffness:v6 damping:v7 initialVelocity:{0.0, 0.0}];
  return sub_1003EE058;
}

void sub_1003EE058(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1;
  if (a2)
  {
    v4 = v2;
    [v4 mass];
    [v3 setMass:?];
    [v4 stiffness];
    [v3 setStiffness:?];
    [v4 damping];
    [v3 setDamping:?];
    [v3 setInitialVelocity:0.0];
  }

  else
  {
    [v2 mass];
    [v3 setMass:?];
    [v5 stiffness];
    [v3 setStiffness:?];
    [v5 damping];
    [v3 setDamping:?];
    [v3 setInitialVelocity:0.0];
  }
}

void static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  [a1 settlingDuration];
  v15 = v14;
  [a1 mass];
  v17 = v16;
  [a1 stiffness];
  v19 = v18;
  [a1 damping];
  v21 = v20;
  v27 = a3;
  v28 = a4;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000D6C80;
  v26 = &unk_1005CE888;
  v22 = _Block_copy(&v23);

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100398C10;
    v26 = &unk_1005CE8B0;
    a5 = _Block_copy(&v23);
  }

  [objc_opt_self() _animateUsingSpringWithDuration:a2 delay:v22 options:a5 mass:v15 stiffness:a7 damping:v17 initialVelocity:v19 animations:v21 completion:0.0];
  _Block_release(a5);
  _Block_release(v22);
}

uint64_t sub_1003EE35C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7, double a8)
{
  v16 = objc_opt_self();
  [v16 begin];
  [v16 setAnimationTimingFunction:a1];
  v23 = a3;
  v24 = a4;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000D6C80;
  v22 = &unk_1005CE8D8;
  v17 = _Block_copy(&v19);

  if (a5)
  {
    v23 = a5;
    v24 = a6;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100398C10;
    v22 = &unk_1005CE900;
    a5 = _Block_copy(&v19);
  }

  [objc_opt_self() animateWithDuration:a2 delay:v17 options:a5 animations:a7 completion:a8];
  _Block_release(a5);
  _Block_release(v17);
  return [v16 commit];
}

char *sub_1003EE528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration];
  *v14 = 0;
  v14[8] = 1;
  *&v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink] = 0;
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = &v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  v17 = *&v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  *v16 = a1;
  *(v16 + 1) = a2;
  v18 = v15;
  sub_10003CC4C(v17);
  v19 = &v18[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  v20 = *&v18[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  *v19 = a3;
  *(v19 + 1) = a4;
  sub_10003CC4C(v20);

  return v18;
}

void sub_1003EE62C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating))
  {
    [a1 duration];
    v2 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration;
    *v2 = v3;
    *(v2 + 8) = 0;
    v4 = CACurrentMediaTime();
    v5 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime;
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = [objc_opt_self() displayLinkWithTarget:v1 selector:"displayLinkFiredWithDisplayLink:"];
    v7 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink);
    *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink) = v6;
    v8 = v6;

    if (v8)
    {
      v9 = [objc_opt_self() currentRunLoop];
      [v8 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1003EE838(void *a1)
{
  result = [a1 timestamp];
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime + 8))
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
  if (!v4)
  {
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration + 8))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = (v3 - *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime)) / *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration);

  v4(v6, v5);

  return sub_10003CC4C(v4);
}

id CAAnimation.progress.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 delegate];
  if (result)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v9 = *(v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      *v8 = a1;
      v8[1] = a2;
      sub_10003CC4C(v9);

      return swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

    v11 = sub_1003EE528(a1, a2, 0, 0);
    [v3 setDelegate:v11];

    return sub_10003CC4C(a1);
  }

  return result;
}

uint64_t (*CAAnimation.progress.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if ([v1 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v5 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating + 8);
      sub_10002F518(v4);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_1003EEC10;
}

uint64_t sub_1003EEC70(void *a1, void (*a2)(void, void))
{
  if (![v2 delegate])
  {
    return 0;
  }

  type metadata accessor for CAAnimationCompletionHandler();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = (v5 + *a1);
    v7 = *v6;
    a2(*v6, v6[1]);
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRelease();
  return v7;
}

id CAAnimation.completion.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 delegate];
  if (result)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v9 = *(v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v8 = a1;
      v8[1] = a2;
      sub_10003CC4C(v9);

      return swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

    v11 = sub_1003EE528(0, 0, a1, a2);
    [v3 setDelegate:v11];

    return sub_10003CC4C(a1);
  }

  return result;
}

uint64_t (*CAAnimation.completion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if ([v1 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v5 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion + 8);
      sub_10002F518(v4);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_1003EEEE8;
}

uint64_t sub_1003EEF28(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

uint64_t CALayer.addAsyncAnimation(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_1004BC474();
  v4[7] = sub_1004BC464();
  v6 = sub_1004BC3E4();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1003EF06C, v6, v5);
}

{
  v7 = sub_100003ABC(&qword_1006138D0);
  v8 = __chkstk_darwin(v7);
  v13 = a1;
  v14 = v3;
  v15 = a2;
  v16 = a3;
  (*(v10 + 104))(&v12[-v9], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  return sub_1004BC4F4();
}

uint64_t sub_1003EF06C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_1004BC464();
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = v3;
  v6[5] = v2;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1003EF190;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 13, v5, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x800000010050C7D0, sub_1003EF8A8, v6, &type metadata for Bool);
}

uint64_t sub_1003EF190()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1003EF2F0, v3, v2);
}

uint64_t sub_1003EF2F0()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_1003EF354(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v8 = sub_100003ABC(&unk_100613990);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v42 - v11;
  (*(v9 + 16))(&v42 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  if ([a2 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v17 = *(v15 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v16 = sub_1003F05DC;
      v16[1] = v14;
      sub_10003CC4C(v17);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v18 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v19 = sub_1003EE528(0, 0, sub_1003F05DC, v14);
  [a2 setDelegate:v19];

LABEL_6:
  v20 = objc_opt_self();
  [v20 begin];
  [v20 setDisableActions:1];
  if (a5)
  {
    v21 = sub_1004BBE24();
  }

  else
  {
    v21 = 0;
  }

  [v44 addAnimation:a2 forKey:v21];

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    if (a5)
    {
      v23 = [v22 toValue];
      v24 = sub_1004BBE24();
      [v44 setValue:v23 forKey:v24];
      swift_unknownObjectRelease();
    }

    return [v20 commit];
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    return [v20 commit];
  }

  result = [v25 animations];
  v27 = _swiftEmptyArrayStorage;
  if (result)
  {
    v28 = result;
    sub_1003F04F8();
    v29 = sub_1004BC2A4();

    v45 = _swiftEmptyArrayStorage;
    if (v29 >> 62)
    {
LABEL_32:
      v30 = sub_1004BD6A4();
      if (v30)
      {
LABEL_16:
        v31 = 0;
        do
        {
          v32 = v31;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v33 = sub_1004BD484();
            }

            else
            {
              if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v33 = *(v29 + 8 * v32 + 32);
            }

            v34 = v33;
            v31 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }

          sub_1004BC274();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004BC2E4();
          }

          sub_1004BC334();
          v27 = v45;
        }

        while (v31 != v30);
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_16;
      }
    }

LABEL_33:
  }

  if (!(v27 >> 62))
  {
    v35 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

  result = sub_1004BD6A4();
  v35 = result;
  if (!result)
  {
LABEL_46:

    return [v20 commit];
  }

LABEL_36:
  v43 = v20;
  if (v35 >= 1)
  {
    for (i = 0; i != v35; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v37 = sub_1004BD484();
      }

      else
      {
        v37 = *(v27 + 8 * i + 32);
      }

      v38 = v37;
      v39 = [v37 keyPath];
      if (v39)
      {
        v40 = v39;
        v41 = [v38 toValue];
        [v44 setValue:v41 forKey:v40];

        swift_unknownObjectRelease();
        v38 = v40;
      }
    }

    v20 = v43;
    return [v20 commit];
  }

  __break(1u);
  return result;
}

id sub_1003EF9D0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v58 = a4;
  v59 = a5;
  v60 = a3;
  v7 = sub_100003ABC(&qword_100613978);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v14 = *(v8 + 16);
  v57 = a1;
  v55 = v14;
  (v14)(&v54 - v12, a1, v7, v11);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v54 = *(v8 + 32);
  v54(v16 + v15, v13, v7);
  v17 = a2;
  if ([a2 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = (v18 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v20 = *(v18 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      *v19 = sub_1003F0400;
      v19[1] = v16;
      sub_10003CC4C(v20);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v21 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v22 = sub_1003EE528(sub_1003F0400, v16, 0, 0);
  [a2 setDelegate:v22];

LABEL_6:
  v23 = v56;
  v55(v56, v57, v7);
  v24 = swift_allocObject();
  v54(v24 + v15, v23, v7);
  v25 = [v17 delegate];
  v26 = v59;
  if (v25)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v29 = *(v27 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v28 = sub_1003F047C;
      v28[1] = v24;
      sub_10003CC4C(v29);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v30 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v31 = sub_1003EE528(0, 0, sub_1003F047C, v24);
  [v17 setDelegate:v31];

LABEL_11:
  v32 = objc_opt_self();
  [v32 begin];
  [v32 setDisableActions:1];
  if (v26)
  {
    v33 = sub_1004BBE24();
  }

  else
  {
    v33 = 0;
  }

  [v60 addAnimation:v17 forKey:v33];

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    if (v26)
    {
      v35 = [v34 toValue];
      v36 = sub_1004BBE24();
      [v60 setValue:v35 forKey:v36];
      swift_unknownObjectRelease();
    }

    return [v32 commit];
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    return [v32 commit];
  }

  result = [v37 animations];
  v39 = _swiftEmptyArrayStorage;
  if (result)
  {
    v40 = result;
    sub_1003F04F8();
    v41 = sub_1004BC2A4();

    v61 = _swiftEmptyArrayStorage;
    if (v41 >> 62)
    {
LABEL_37:
      v42 = sub_1004BD6A4();
      if (v42)
      {
LABEL_21:
        v43 = 0;
        do
        {
          v44 = v43;
          while (1)
          {
            if ((v41 & 0xC000000000000001) != 0)
            {
              v45 = sub_1004BD484();
            }

            else
            {
              if (v44 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v45 = *(v41 + 8 * v44 + 32);
            }

            v46 = v45;
            v43 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v44;
            if (v43 == v42)
            {
              goto LABEL_38;
            }
          }

          sub_1004BC274();
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004BC2E4();
          }

          sub_1004BC334();
          v39 = v61;
        }

        while (v43 != v42);
      }
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        goto LABEL_21;
      }
    }

LABEL_38:
  }

  if (!(v39 >> 62))
  {
    v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_41;
    }

    goto LABEL_51;
  }

  result = sub_1004BD6A4();
  v47 = result;
  if (!result)
  {
LABEL_51:

    return [v32 commit];
  }

LABEL_41:
  v59 = v32;
  if (v47 >= 1)
  {
    for (i = 0; i != v47; ++i)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v49 = sub_1004BD484();
      }

      else
      {
        v49 = *(v39 + 8 * i + 32);
      }

      v50 = v49;
      v51 = [v49 keyPath];
      if (v51)
      {
        v52 = v51;
        v53 = [v50 toValue];
        [v60 setValue:v53 forKey:v52];

        swift_unknownObjectRelease();
        v50 = v52;
      }
    }

    v32 = v59;
    return [v32 commit];
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F0078(double a1)
{
  v2 = sub_100003ABC(&qword_100613988);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  v7 = a1;
  v8 = 0;
  sub_100003ABC(&qword_100613978);
  sub_1004BC4D4();
  return (*(v3 + 8))(v5, v2);
}

void sub_1003F0178(char a1)
{
  v2 = sub_100003ABC(&qword_100613988);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  v6 = a1 & 1;
  v7 = 1;
  sub_100003ABC(&qword_100613978);
  sub_1004BC4D4();
  (*(v3 + 8))(v5, v2);
  sub_1004BC4E4();
}

id static CATransaction.performWithoutAnimation(_:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  [v2 begin];
  a1([v2 setDisableActions:1]);

  return [v2 commit];
}

void sub_1003F031C(char a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink;
  v4 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v1 + v3);
    *(v1 + v3) = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
  if (v8)
  {

    v8(a1 & 1);

    sub_10003CC4C(v8);
  }
}

uint64_t sub_1003F0400(double a1)
{
  sub_100003ABC(&qword_100613978);

  return sub_1003F0078(a1);
}

void sub_1003F047C(char a1)
{
  sub_100003ABC(&qword_100613978);

  sub_1003F0178(a1);
}

unint64_t sub_1003F04F8()
{
  result = qword_100613980;
  if (!qword_100613980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100613980);
  }

  return result;
}

uint64_t sub_1003F0558(uint64_t *a1)
{
  v2 = sub_100003ABC(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1003F05DC()
{
  sub_100003ABC(&unk_100613990);
  sub_100003ABC(&unk_100613990);
  return sub_1004BC404();
}

double CGSize.nonNegative()(double result)
{
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

CGFloat static CGAffineTransform.+ infix(_:_:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v4;
  *&t1.tx = a1[2];
  v5 = a2[1];
  *&t2.a = *a2;
  *&t2.c = v5;
  *&t2.tx = a2[2];
  CGAffineTransformConcat(&v9, &t1, &t2);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a3 = *&v9.a;
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

uint64_t static CGPoint.topLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topLeft = *&a1;
  unk_100619960 = *&a2;
  return result;
}

uint64_t static CGPoint.topCenter.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topCenter = *&a1;
  *algn_100613A08 = a2;
  return result;
}

uint64_t static CGPoint.topRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topRight = *&a1;
  *algn_100613A18 = a2;
  return result;
}

uint64_t static CGPoint.centerLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.centerLeft = *&a1;
  unk_100613A28 = *&a2;
  return result;
}

uint64_t static CGPoint.center.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.center = *&a1;
  unk_100613A38 = *&a2;
  return result;
}

uint64_t static CGPoint.centerRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.centerRight = *&a1;
  unk_100613A48 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomLeft = *&a1;
  unk_100613A58 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomCenter.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomCenter = *&a1;
  unk_100613A68 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomRight = *&a1;
  unk_100613A78 = *&a2;
  return result;
}

CTFrameRef CTFramesetterRef.createFrame(_:)(double a1, double a2, double a3, double a4)
{
  v5 = CGPathCreateWithRect(*&a1, 0);
  v8.location = 0;
  v8.length = 0;
  Frame = CTFramesetterCreateFrame(v4, v8, v5, 0);

  return Frame;
}

double CTFramesetterRef.suggestedFrameSize(constraints:)(double a1, double a2)
{
  v4.location = 0;
  v4.length = 0;
  *&result = *&CTFramesetterSuggestFrameSizeWithConstraints(v2, v4, 0, *&a1, 0);
  return result;
}

CGPoint **CTFrameRef.lineOrigins.getter()
{
  v1 = CTFrameGetLines(v0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = sub_1004BD6A4();
    goto LABEL_4;
  }

  type metadata accessor for CTLine(0);
  sub_1004BC294();

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v3 = v0;
  v4 = sub_1003F2E20(v2, v3);

  return v4;
}

CGPoint **sub_1003F11C0(CGPoint **result, uint64_t *a2, CTFrameRef frame)
{
  v3 = *result;
  if (*result)
  {
    v9.location = 0;
    v9.length = 0;
    CTFrameGetLineOrigins(frame, v9, v3);
    v7 = CTFrameGetLines(frame);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CTLine(0);
      sub_1004BC294();

      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_4:
        v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

        *a2 = v8;
        return result;
      }
    }

    else
    {

      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_4;
      }
    }

    v8 = sub_1004BD6A4();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id *CTFrameRef.lineFrames(lines:origins:flippedCoordinates:useExtendedLineBounds:)(unint64_t a1, uint64_t a2, char a3, char a4)
{
  LOBYTE(v4) = a4;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(a1 + 32);
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v7 = sub_1004BD6A4();
    if (!v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v9 = sub_1004BD484();
LABEL_6:
  v10 = v9;
  if (!*(a2 + 16))
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_36:

    return v4;
  }

  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (v4)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  options = v13;
  BoundsWithOptions = CTLineGetBoundsWithOptions(v9, v13);
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  if ((a3 & 1) == 0)
  {
    v11 = 0.0;
  }

  v4 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1003F2514(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v17 = v4[2];
  v16 = v4[3];
  if (v17 >= v16 >> 1)
  {
    v4 = sub_1003F2514((v16 > 1), v17 + 1, 1, v4);
  }

  v4[2] = (v17 + 1);
  v18 = &v4[5 * v17];
  *(v18 + 4) = v10;
  *(v18 + 5) = v12;
  v18[6] = 0.0;
  v18[7] = width;
  v18[8] = height;
  v19 = v7 - 1;
  if (v7 != 1)
  {
    v20 = (a2 + 56);
    v21 = 5;
    v22 = 0.0;
    while (1)
    {
      v23 = v21 - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = sub_1004BD484();
      }

      else
      {
        if (v23 >= *(v8 + 16))
        {
          goto LABEL_37;
        }

        v24 = *(a1 + 8 * v21);
      }

      v10 = v24;
      v25 = *(a2 + 16);
      if (v23 == v25)
      {
        goto LABEL_36;
      }

      if (v23 >= v25)
      {
        goto LABEL_38;
      }

      v26 = *(v20 - 1);
      v27 = *v20;
      v39 = CTLineGetBoundsWithOptions(v24, options);
      v28 = v39.size.width;
      v29 = v39.size.height;
      v30 = v22 + v11 - v27;
      if (a3)
      {
        v31 = v22 + v11 - v27;
      }

      else
      {
        v31 = 0.0;
      }

      if (a3)
      {
        v11 = v27;
        v22 = v30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1003F2514(0, v4[2] + 1, 1, v4);
      }

      v33 = v4[2];
      v32 = v4[3];
      if (v33 >= v32 >> 1)
      {
        v4 = sub_1003F2514((v32 > 1), v33 + 1, 1, v4);
      }

      v4[2] = (v33 + 1);
      v34 = &v4[5 * v33];
      v34[4] = v10;
      v34[5] = v26;
      *(v34 + 6) = v31;
      *(v34 + 7) = v28;
      *(v34 + 8) = v29;
      ++v21;
      v20 += 2;
      --v19;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v19)
      {
        return v4;
      }
    }
  }

  return v4;
}

id *CTFrameRef.linesWithFrames(flippedCoordinates:useExtendedLineBounds:)(char a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v5 = CTFrameGetLines(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTLine(0);
    sub_1004BC294();
  }

  v6 = CTFrameGetLines(v3);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTLine(0);
    sub_1004BC294();

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_5:
      v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_5;
    }
  }

  v7 = sub_1004BD6A4();
LABEL_6:

  v8 = v3;
  v9 = sub_1003F2E20(v7, v8);

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_46;
  }

  v10 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_47:
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  while (1)
  {
    v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = _swiftEmptyArrayStorage[4];
      goto LABEL_11;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v10 = sub_1004BD6A4();
    if (!v10)
    {
      goto LABEL_47;
    }
  }

  v12 = sub_1004BD484();
LABEL_11:
  v13 = v12;
  if (v9[2])
  {
    v15 = v9[4];
    v14 = *(v9 + 5);
    if (v4)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    options = v16;
    BoundsWithOptions = CTLineGetBoundsWithOptions(v12, v16);
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    if ((a1 & 1) == 0)
    {
      v14 = 0.0;
    }

    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1003F2514(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v20 = v4[2];
    v19 = v4[3];
    if (v20 >= v19 >> 1)
    {
      v4 = sub_1003F2514((v19 > 1), v20 + 1, 1, v4);
    }

    v4[2] = (v20 + 1);
    v21 = &v4[5 * v20];
    *(v21 + 4) = v13;
    *(v21 + 5) = v15;
    v21[6] = 0.0;
    v21[7] = width;
    v21[8] = height;
    v22 = v10 - 1;
    if (v10 != 1)
    {
      v23 = (v9 + 7);
      v24 = 5;
      v25 = 0.0;
      do
      {
        v26 = v24 - 4;
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v27 = sub_1004BD484();
        }

        else
        {
          if (v26 >= *(v11 + 16))
          {
            goto LABEL_44;
          }

          v27 = _swiftEmptyArrayStorage[v24];
        }

        v13 = v27;
        v28 = v9[2];
        if (v26 == v28)
        {
          goto LABEL_43;
        }

        if (v26 >= v28)
        {
          goto LABEL_45;
        }

        v29 = *(v23 - 1);
        v30 = *v23;
        v42 = CTLineGetBoundsWithOptions(v27, options);
        v31 = v42.size.width;
        v32 = v42.size.height;
        v33 = v25 + v14 - v30;
        if (a1)
        {
          v34 = v25 + v14 - v30;
        }

        else
        {
          v34 = 0.0;
        }

        if (a1)
        {
          v14 = v30;
          v25 = v33;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1003F2514(0, v4[2] + 1, 1, v4);
        }

        v36 = v4[2];
        v35 = v4[3];
        if (v36 >= v35 >> 1)
        {
          v4 = sub_1003F2514((v35 > 1), v36 + 1, 1, v4);
        }

        v4[2] = (v36 + 1);
        v37 = &v4[5 * v36];
        v37[4] = v13;
        v37[5] = v29;
        *(v37 + 6) = v34;
        *(v37 + 7) = v31;
        *(v37 + 8) = v32;
        ++v24;
        v23 += 2;
        --v22;
        v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
      }

      while (v22);
    }

LABEL_48:

    return v4;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_43:

  return v4;
}

id *sub_1003F1A24(uint64_t (*a1)(uint64_t), void (*a2)(void))
{
  v4 = a1(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    a2(0);
    sub_1004BC294();
  }

  return _swiftEmptyArrayStorage;
}

__C::_NSRange_optional __swiftcall CTRunRef.convertToGlyphRange(textRange:stringIndices:)(__C::_NSRange textRange, Swift::OpaquePointer stringIndices)
{
  v3 = v2;
  length = textRange.length;
  location = textRange.location;
  Status = CTRunGetStatus(v3);
  v10 = location + length;
  v11 = __OFADD__(location, length);
  if (Status)
  {
    if (!v11)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 1;
      v15 = location + length;
      v12 = location;
      goto LABEL_10;
    }

    goto LABEL_63;
  }

  if (v11)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v13 = -1;
  v14 = 0x8000000000000000;
  v15 = location;
LABEL_10:
  v9 = 0;
  v16 = 0;
  v17 = 0;
LABEL_11:
  v18 = v15 >= v12;
  if (Status)
  {
    v18 = v12 >= v15;
  }

  if (v18)
  {
    v19 = 0;
    v20 = v12 != v15 || v9;
    v9 = 1;
    if (v20)
    {
      v8 = 0;
      goto LABEL_60;
    }

    v21 = v12;
    v8 = 0;
    if (!v17 && v16 == 0x8000000000000000)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v17 = !__OFADD__(v12, v13);
    if (__OFADD__(v12, v13))
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = 0;
    }

    if (__OFADD__(v12, v13))
    {
      v21 = v14;
    }

    else
    {
      v21 = v12 + v13;
    }
  }

  v22 = *(stringIndices._rawValue + 2);
  v23 = v22;
  do
  {
    if (!v23)
    {
      v12 = v21;
      goto LABEL_11;
    }

    v19 = v23 - 1;
    v24 = *(stringIndices._rawValue + v23-- + 3);
  }

  while (v24 != v12);
  v9 = 0;
  v8 = 1;
  if (v22 == 1 || length == 1)
  {
    goto LABEL_60;
  }

  if ((Status & 1) == 0)
  {
    v25 = 1;
    goto LABEL_37;
  }

  if (v11)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v25 = -1;
  location += length;
LABEL_37:
  v26 = v12 >= location;
  if ((Status & 1) == 0)
  {
    v26 = location >= v12;
  }

  if (!v26)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    if (Status)
    {
      v27 = 0x8000000000000000;
    }

    v8 = 1;
    while (1)
    {
      v29 = location + v25;
      if (__OFADD__(location, v25))
      {
        v29 = v27;
      }

      if (v22)
      {
        break;
      }

LABEL_44:
      v28 = v12 >= v29;
      if ((Status & 1) == 0)
      {
        v28 = v29 >= v12;
      }

      location = v29;
      if (v28)
      {
        goto LABEL_59;
      }
    }

    v30 = 0;
    while (*(stringIndices._rawValue + v30 + 4) != location)
    {
      if (v22 == ++v30)
      {
        goto LABEL_44;
      }
    }

    v32 = v19 - v30;
    v31 = v19 - v30 < 0;
    if (v19 >= v30)
    {
      v19 = v30;
    }

    if (v31)
    {
      v32 = -v32;
    }

    v8 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
LABEL_59:
      v9 = 0;
      goto LABEL_60;
    }

    goto LABEL_66;
  }

  v9 = 0;
  v8 = 1;
LABEL_60:
  Status = v19;
LABEL_67:
  result.value.length = v8;
  result.value.location = Status;
  result.is_nil = v9;
  return result;
}

void CTRunRef.drawingWidth(range:positions:)(CFRange range, id *a2)
{
  v3 = v2;
  location = range.location;
  ImageBounds = CTRunGetImageBounds(v3, 0, range);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  if (a2)
  {
    v10 = a2;
    if ((location & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v10[2] > location)
      {

        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        CGRectGetWidth(v18);
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  GlyphCount = CTRunGetGlyphCount(v3);
  if ((GlyphCount & 0x8000000000000000) == 0)
  {
    v12 = GlyphCount;
    if (GlyphCount)
    {
      _s3__C7CGPointVMa_2(0);
      v13 = v3;
      v10 = sub_1004BC314();
      v10[2] = v12;
    }

    else
    {
      v14 = v3;
      v10 = _swiftEmptyArrayStorage;
    }

    v16.location = 0;
    v16.length = 0;
    CTRunGetPositions(v3, v16, v10 + 2);
    v15 = CTRunGetGlyphCount(v3);
    if (v12 < v15)
    {
      goto LABEL_14;
    }

    v10[2] = v15;

    if ((location & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

CFIndex CTRunRef.positions.getter()
{
  result = CTRunGetGlyphCount(v0);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      _s3__C7CGPointVMa_2(0);
      v3 = v0;
      v4 = sub_1004BC314();
      v4[2] = v2;
    }

    else
    {
      v5 = v0;
      v4 = _swiftEmptyArrayStorage;
    }

    v6.location = 0;
    v6.length = 0;
    CTRunGetPositions(v0, v6, v4 + 2);
    result = CTRunGetGlyphCount(v0);
    if (v2 >= result)
    {
      v4[2] = result;

      return v4;
    }
  }

  __break(1u);
  return result;
}

void CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(CFRange a1)
{
  length = a1.length;
  a1.length = 1;
  CTRunRef.drawingWidth(range:positions:)(a1, length);
}

double CTRunRef.typographicBounds(forGlyphAtIndex:)(CFRange range)
{
  v3.location = range.location;
  v3.length = 1;
  return CTRunGetTypographicBounds(v1, v3, 0, 0, 0);
}

CFIndex sub_1003F1FA4(uint64_t a1, void (*a2)(const __CTRun *, void, void, id *))
{
  result = CTRunGetGlyphCount(v2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = v2;
    if (v5)
    {
      v7 = sub_1004BC314();
      v7[2] = v5;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    a2(v6, 0, 0, v7 + 4);
    result = CTRunGetGlyphCount(v6);
    if (v5 >= result)
    {
      v7[2] = result;

      return v7;
    }
  }

  __break(1u);
  return result;
}

id CTRunRef.PartialRunView.__allocating_init(run:range:textPosition:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run] = a1;
  v12 = &v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition];
  *v13 = a4;
  v13[1] = a5;
  v17.receiver = v11;
  v17.super_class = v5;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setOpaque:{0, v17.receiver, v17.super_class}];

  return v15;
}

id CTRunRef.PartialRunView.init(run:range:textPosition:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run] = a1;
  v7 = &v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range];
  *v7 = a2;
  *(v7 + 1) = a3;
  v8 = &v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition];
  *v8 = a4;
  v8[1] = a5;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for CTRunRef.PartialRunView();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setOpaque:{0, v12.receiver, v12.super_class}];

  return v10;
}

void CTRunRef.PartialRunView.draw(_:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for CTRunRef.PartialRunView();
  objc_msgSendSuper2(&v16, "drawRect:", a1, a2, a3, a4);
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() blueColor];
    v12 = [v11 CGColor];

    CGContextSetFillColorWithColor(v10, v12);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    Height = CGRectGetHeight(v17);
    CGAffineTransformMakeTranslation(&v15, 0.0, Height + *&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition + 8]);
    CGAffineTransformScale(&v14, &v15, 1.0, -1.0);
    v15 = v14;
    CGContextSetTextMatrix(v10, &v15);
    CTRunDraw(*&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run], v10, *&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range]);
  }
}

id CTRunRef.PartialRunView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CTRunRef.PartialRunView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id *sub_1003F2514(id *result, int64_t a2, char a3, id *a4)
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

  if (v9)
  {
    sub_100003ABC(&qword_100613B00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 40));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003ABC(&qword_100613B08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003F2670(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100613AF8);
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

size_t sub_1003F27A4(size_t result, int64_t a2, char a3, unint64_t a4)
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003ABC(&qword_100613AE0);
  v10 = *(sub_100003ABC(&qword_100613AE8) - 8);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(sub_100003ABC(&qword_100613AE8) - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1003F29A8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100003ABC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

id *sub_1003F2AA4(id *result, int64_t a2, char a3, id *a4)
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

  if (v9)
  {
    sub_100003ABC(&qword_100613AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 56));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003ABC(&qword_100613AD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1003F2C44(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003ABC(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = (2 * ((result - v16) / v15));
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

CGPoint **sub_1003F2E20(CGPoint **result, const __CTFrame *a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  if (result)
  {
    _s3__C7CGPointVMa_2(0);
    v5 = sub_1004BC314();
    v5[2] = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v7 = 0;
  v6[0] = (v5 + 4);
  v6[1] = v4;
  result = sub_1003F11C0(v6, &v7, a2);
  if (v2)
  {
    if (v7 <= v4)
    {
      v5[2] = v7;

      return v5;
    }

    goto LABEL_12;
  }

  if (v7 <= v4)
  {
    v5[2] = v7;
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_1004BA8F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BA924();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_1003E53C4();
  v13 = sub_1004BCB44();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005CEA30;
  v14 = _Block_copy(aBlock);

  sub_1004BA914();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1003E5954();
  sub_100003ABC(&unk_1006143D0);
  sub_1003E59AC();
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1003F31AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static OS_dispatch_queue.syncOnMainIfNeeded(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_1003E53C4();
  v5 = sub_1004BCB44();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1000E6038;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100008224;
  v8[3] = &unk_1005CEA80;
  v7 = _Block_copy(v8);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t OS_dispatch_queue.asyncAfter(_:block:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BA8F4();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BA924();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BA954();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_1004BA944();
  sub_1004BA9B4();
  v17 = *(v11 + 8);
  v17(v14, v10);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005CEAA8;
  v18 = _Block_copy(aBlock);

  sub_1004BA914();
  v24 = _swiftEmptyArrayStorage;
  sub_1003E5954();
  sub_100003ABC(&unk_1006143D0);
  sub_1003E59AC();
  sub_1004BD2D4();
  sub_1004BCB04();
  _Block_release(v18);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
  v17(v16, v10);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BA954();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  v11 = sub_1004BA8F4();
  __chkstk_darwin(v11);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005CEAD0;
  _Block_copy(aBlock);
  v14[1] = _swiftEmptyArrayStorage;
  sub_1003E5954();

  sub_100003ABC(&unk_1006143D0);
  sub_1003E59AC();
  sub_1004BD2D4();
  sub_1004BA984();
  swift_allocObject();
  sub_1004BA964();

  sub_1004BA944();
  sub_1004BA9B4();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_1004BCB14();

  return (v12)(v10, v4);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)()
{
  v0 = sub_1004BA954();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_1004BA944();
  sub_1004BA9B4();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_1004BCB14();
  return (v7)(v6, v0);
}

uint64_t static OS_dispatch_queue.UIFeedbackDeadline.getter()
{
  v0 = sub_1004BA954();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BA944();
  sub_1004BA9B4();
  return (*(v1 + 8))(v3, v0);
}

void NSFileManager.createDirectoryIfNeeded(at:)()
{
  v1 = v0;
  sub_1004B6AA4();
  LOBYTE(v15) = 0;
  v2 = sub_1004BBE24();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:&v15];

  if (v3)
  {
    if (v15)
    {
      return;
    }

    sub_1004B6A44(v15);
    v6 = v5;
    v15 = 0;
    v7 = [v0 removeItemAtURL:v5 error:&v15];

    v8 = v15;
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = v15;
  }

  sub_1004B6A44(v4);
  v11 = v10;
  v15 = 0;
  v12 = [v1 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v15];

  v8 = v15;
  if (v12)
  {
    v13 = v15;
    return;
  }

LABEL_7:
  v14 = v8;
  sub_1004B69B4();

  swift_willThrow();
}

Swift::tuple_exists_Bool_isDirectory_Bool __swiftcall NSFileManager.directoryExists(at:)(Swift::String at)
{
  v7 = 0;
  v2 = sub_1004BBE24();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v7];

  v5 = v3;
  result.isDirectory = v4;
  result.exists = v5;
  return result;
}

uint64_t NSFileManager.groupCacheURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003ABC(&qword_100613B18);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1004B6B04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BBE24();
  v15 = [v2 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (v15)
  {
    sub_1004B6A94();

    v16 = *(v11 + 56);
    v16(v7, 0, 1, v10);
  }

  else
  {
    v16 = *(v11 + 56);
    v16(v7, 1, 1, v10);
  }

  sub_1003F3F50(v7, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1003F3FC0(v9);
    v17 = 1;
  }

  else
  {
    sub_1004B6A54();
    v18 = *(v11 + 8);
    v18(v9, v10);
    sub_1004B6A54();
    v18(v13, v10);
    v17 = 0;
  }

  return (v16)(a1, v17, 1, v10);
}

uint64_t sub_1003F3F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100613B18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F3FC0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100613B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003F402C()
{
  result = qword_100613B20;
  if (!qword_100613B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613B20);
  }

  return result;
}

uint64_t String.sha256Data.getter()
{
  v0 = sub_1004BBBB4();
  v17 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004BBBA4();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BBEB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BBEA4();
  v9 = sub_1004BBE74();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 != 15)
  {
    sub_10003E428(v9, v11);
    sub_1003F4CF4(&qword_100613B28, &type metadata accessor for SHA256);
    sub_1004BBB94();
    sub_10003E428(v9, v11);
    sub_1003F48AC(v9, v11, v2);
    sub_100004D7C(v9, v11);
    sub_100004D7C(v9, v11);
    v12 = v18;
    sub_1004BBB84();
    (*(v17 + 8))(v2, v0);
    v22 = v3;
    v23 = sub_1003F4CF4(&qword_100613B30, &type metadata accessor for SHA256Digest);
    v13 = sub_1000133B0(v21);
    v14 = v19;
    (*(v19 + 16))(v13, v12, v3);
    sub_100009178(v21, v22);
    sub_1004B6804();
    sub_100004D7C(v9, v11);
    (*(v14 + 8))(v12, v3);
    v9 = v20;
    sub_100004C6C(v21);
  }

  return v9;
}

uint64_t Data.Digest.SHA256.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004BBBB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F4CF4(&qword_100613B28, &type metadata accessor for SHA256);
  sub_1004BBB94();
  sub_10003E428(a1, a2);
  sub_1003F48AC(a1, a2, v7);
  sub_100004D90(a1, a2);
  sub_1004BBB84();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.MD5.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004BBBD4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F4CF4(&qword_100613B38, &type metadata accessor for Insecure.MD5);
  sub_1004BBB94();
  sub_10003E428(a1, a2);
  sub_1003F4AD0(a1, a2, v7);
  sub_100004D90(a1, a2);
  sub_1004BBB84();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.SHA512.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004BBBC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F4CF4(&qword_100613B40, &type metadata accessor for SHA512);
  sub_1004BBB94();
  sub_10003E428(a1, a2);
  sub_1003F4D3C(a1, a2, v7);
  sub_100004D90(a1, a2);
  sub_1004BBB84();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003F48AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1004BBBB4();
      sub_1003F4CF4(&qword_100613B28, &type metadata accessor for SHA256);
      return sub_1004BBB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1003F502C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100613B28, &type metadata accessor for SHA256);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1003F502C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100613B28, &type metadata accessor for SHA256);
  }

  sub_1004BBBB4();
  sub_1003F4CF4(&qword_100613B28, &type metadata accessor for SHA256);
  return sub_1004BBB74();
}

uint64_t sub_1003F4AD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1004BBBD4();
      sub_1003F4CF4(&qword_100613B38, &type metadata accessor for Insecure.MD5);
      return sub_1004BBB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1003F502C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_100613B38, &type metadata accessor for Insecure.MD5);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1003F502C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_100613B38, &type metadata accessor for Insecure.MD5);
  }

  sub_1004BBBD4();
  sub_1003F4CF4(&qword_100613B38, &type metadata accessor for Insecure.MD5);
  return sub_1004BBB74();
}

uint64_t sub_1003F4CF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F4D3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1004BBBC4();
      sub_1003F4CF4(&qword_100613B40, &type metadata accessor for SHA512);
      return sub_1004BBB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1003F502C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100613B40, &type metadata accessor for SHA512);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1003F502C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100613B40, &type metadata accessor for SHA512);
  }

  sub_1004BBBC4();
  sub_1003F4CF4(&qword_100613B40, &type metadata accessor for SHA512);
  return sub_1004BBB74();
}

uint64_t sub_1003F4F60(uint64_t a1)
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

uint64_t sub_1003F4F7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003F4FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1003F502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_1004B6724();
  if (!result || (result = sub_1004B6754(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1004B6744();
      a5(0);
      sub_1003F4CF4(a6, a7);
      return sub_1004BBB74();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F5110(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
LABEL_24:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v5;
    *(result + 24) = a5 < 1;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a4 + a5;
    v7 = __OFADD__(a4, a5);
    if (v5 > v6)
    {
      v6 = v5;
    }

    v8 = v6 - v5;
    v9 = 1;
    while (1)
    {
      if (a5 < 1)
      {
        v5 = 0;
        a3 = 0;
        goto LABEL_24;
      }

      if (v7)
      {
        break;
      }

      if (v5 - v6 + v9 == 1)
      {
        v5 = v6;
        a3 = v8;
        goto LABEL_24;
      }

      *a2 = v5 + v9 - 1;
      if (a3 == v9)
      {
        v5 += v9;
        goto LABEL_24;
      }

      ++a2;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.append(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10(v7);
  if (v11)
  {
    (*(v6 + 16))(v9, a1, v5);
    sub_1004BC364();
  }

  return v11 & 1;
}

uint64_t Array.append<A>(contentsOf:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11(v8);
  if (v12)
  {
    (*(v7 + 16))(v10, a1, a5);
    sub_1004BC354();
  }

  return v12 & 1;
}

uint64_t Array.item(where:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1004BC3B4();
  swift_getWitnessTable();
  sub_1004BC784();
  if (v6)
  {
    v4 = 1;
  }

  else
  {
    sub_1004BC3C4();
    v4 = 0;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

Swift::Void __swiftcall Array.moveItem(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(at);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v10 - v8;
  sub_1004BC384();
  (*(v4 + 16))(v6, v9, v3);
  sub_1004BC374();
  (*(v4 + 8))(v9, v3);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1004BC3B4();
  swift_getWitnessTable();
  sub_1004BC714();
  sub_100003ABC(&qword_100613B48);
  if (sub_1004BC894())
  {
    sub_1004BC3C4();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  return Array.inserting(separator:)(sub_1003F5748, v4, a2, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1004BC344();
  if (result < 2)
  {

    return a3;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    v12[8] = 0;
    v12[9] = 2 * result - 1;
    __chkstk_darwin(result);
    v12[2] = a4;
    v12[3] = a3;
    v12[4] = a1;
    v12[5] = a2;
    v9 = sub_100003ABC(&qword_100613B48);
    v10 = sub_1003F5CF4();
    return sub_1003F58D4(sub_1003F588C, v12, v9, a4, &type metadata for Never, v10, &protocol witness table for Never, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F588C(void *a1)
{
  if (*a1)
  {
    return (*(v1 + 32))();
  }

  else
  {
    return sub_1004BC3C4();
  }
}

uint64_t sub_1003F58D4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_1004BC734();
  if (!v19)
  {
    return sub_1004BC304();
  }

  v41 = v19;
  v45 = sub_1004BD574();
  v32 = sub_1004BD584();
  sub_1004BD514(v41);
  result = sub_1004BC724();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1004BC844();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1004BD564();
      result = sub_1004BC774();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003F5CF4()
{
  result = qword_100613B50;
  if (!qword_100613B50)
  {
    sub_100003B68(&qword_100613B48);
    sub_1003F5D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613B50);
  }

  return result;
}

unint64_t sub_1003F5D80()
{
  result = qword_100613B58;
  if (!qword_100613B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613B58);
  }

  return result;
}

uint64_t Set.insert(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12(v9))
  {
    (*(v8 + 16))(v11, a2, v7);
    v13 = sub_1004BC694();
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a1, 1, 1, v7);
    v13 = 0;
  }

  return v13 & 1;
}

id NSBundle.displayName.getter()
{
  result = [v0 localizedInfoDictionary];
  if (result)
  {
    v2 = result;
    v3 = sub_1004BBC44();

    if (*(v3 + 16) && (v4 = sub_1003FB214(0xD000000000000013, 0x800000010050C980, &String.hash(into:), sub_100034AC0), (v5 & 1) != 0))
    {
      sub_100004DE4(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t NSBundle.exportedTypeDeclarations.getter()
{
  v1 = sub_1004BBE24();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100003ABC(&qword_100613B60);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100007214(v7, &qword_1006143E0);
    return 0;
  }
}

uint64_t ClosedRange.clamp(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BDA74();
  sub_1004BDA84();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ClosedRange<>.scaledValue(relativeTo:relativeValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v36 = a4;
  v31 = a2;
  v7 = *(*(a4 + 16) + 8);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  __chkstk_darwin(v10);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v37 = &v30 - v16;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  __chkstk_darwin(v20);
  v22 = &v30 - v21;
  v34 = a3;
  v35 = v7;
  v23 = *(v7 + 8);
  v33 = a1;
  v25 = v24;
  sub_1004BD654();
  swift_getAssociatedConformanceWitness();
  sub_1004BDA44();
  sub_1004BD994();
  LOBYTE(v7) = sub_1004BBD44();
  v26 = *(v25 + 8);
  v26(v19, v8);
  if (v7)
  {
    ClosedRange.clamp(_:)(v31, v34);
    sub_1004BD654();
    v30 = v23;
    sub_1004BBCC4();
    v26(v14, v8);
    v27 = v32;
    sub_1004BD654();
    v28 = v37;
    sub_1004BC704();
    v26(v27, v8);
    sub_1004BD644();
    v26(v14, v8);
    v26(v28, v8);
    v26(v19, v8);
    return (v26)(v22, v8);
  }

  else
  {
    v26(v22, v8);
    return (*(v25 + 16))(v38, v39, v8);
  }
}

uint64_t Data.hexRepresentation.getter(uint64_t a1, unint64_t a2)
{
  sub_10003E428(a1, a2);
  result = sub_1003F69A8(a1, a2, a1, a2);
  if (!v5)
  {
    return 0;
  }

  return result;
}

void sub_1003F66B8(unint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_1004BBEB4();
  __chkstk_darwin(v8 - 8);
  v9 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    swift_slowAlloc();
    goto LABEL_42;
  }

  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v10 = v10;
  }

LABEL_10:
  if (v10 + 0x4000000000000000 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = swift_slowAlloc();
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      LODWORD(v15) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v15 = v15;
      goto LABEL_17;
    }

    v15 = BYTE6(a3);
    if (BYTE6(a3))
    {
LABEL_21:
      v18 = v15 - 1;
      if (v15 - 1 >= 0x4000000000000000)
      {
        v19 = 0x4000000000000000;
      }

      else
      {
        v19 = v15 - 1;
      }

      if (v15 <= 0x20)
      {
        goto LABEL_29;
      }

      if (v18 >= 0x4000000000000000)
      {
        v18 = 0x4000000000000000;
      }

      if (v14 >= a1 + v18 + 1 || v14 + 2 * v18 + 2 <= a1)
      {
        v21 = v19 + 1;
        v22 = v21 & 0x1F;
        if ((v21 & 0x1F) == 0)
        {
          v22 = 32;
        }

        v20 = v21 - v22;
        v23 = (v14 + 32);
        v24 = (a1 + 16);
        v25.i64[0] = 0x9F9F9F9F9F9F9F9FLL;
        v25.i64[1] = 0x9F9F9F9F9F9F9F9FLL;
        v26.i64[0] = 0x5757575757575757;
        v26.i64[1] = 0x5757575757575757;
        v27.i64[0] = 0x3030303030303030;
        v27.i64[1] = 0x3030303030303030;
        v28.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v28.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v29.i64[0] = 0x909090909090909;
        v29.i64[1] = 0x909090909090909;
        v30 = v20;
        do
        {
          v31 = v24[-1];
          v32.i64[0] = 0x5757575757575757;
          v32.i64[1] = 0x5757575757575757;
          v33.i64[0] = 0x5757575757575757;
          v33.i64[1] = 0x5757575757575757;
          v34.i64[0] = 0x3030303030303030;
          v34.i64[1] = 0x3030303030303030;
          v35.i64[0] = 0x3030303030303030;
          v35.i64[1] = 0x3030303030303030;
          v50.val[0] = vbslq_s8(vcgtq_u8(v31, v25), vsraq_n_u8(v32, v31, 4uLL), vsraq_n_u8(v34, v31, 4uLL));
          v36 = vandq_s8(v31, v28);
          v50.val[1] = vbslq_s8(vcgtq_u8(v36, v29), vaddq_s8(v36, v26), vorrq_s8(v36, v27));
          v49.val[0] = vbslq_s8(vcgtq_u8(*v24, v25), vsraq_n_u8(v33, *v24, 4uLL), vsraq_n_u8(v35, *v24, 4uLL));
          v37 = vandq_s8(*v24, v28);
          v38 = v23 - 32;
          vst2q_s8(v38, v50);
          v49.val[1] = vbslq_s8(vcgtq_u8(v37, v29), vaddq_s8(v37, v26), vorrq_s8(v37, v27));
          vst2q_s8(v23, v49);
          v23 += 64;
          v24 += 2;
          v30 -= 32;
        }

        while (v30);
      }

      else
      {
LABEL_29:
        v20 = 0;
      }

      v39 = v20 - 0x4000000000000000;
      v40 = (v14 + 2 * v20 + 1);
      v41 = v15 - v20;
      v42 = (a1 + v20);
      while (v39)
      {
        v44 = *v42++;
        v43 = v44;
        v45 = (v44 >> 4) + 87;
        v46 = (v44 >> 4) | 0x30;
        if (v44 > 0x9F)
        {
          LOBYTE(v46) = v45;
        }

        *(v40 - 1) = v46;
        if ((v43 & 0xFu) <= 9)
        {
          v47 = v43 & 0xF | 0x30;
        }

        else
        {
          v47 = (v43 & 0xF) + 87;
        }

        *v40 = v47;
        v40 += 2;
        ++v39;
        if (!--v41)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    sub_1004BBEA4();
    *a4 = sub_1004BBD94();
    a4[1] = v48;
    return;
  }

  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v13 = __OFSUB__(v16, v17);
  v15 = v16 - v17;
  if (!v13)
  {
LABEL_17:
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (!v15)
    {
      goto LABEL_42;
    }

    goto LABEL_21;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_1003F69A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v13, 0, 14);
LABEL_10:
      sub_1003F66B8(v13, a3, a4, &v14);
      result = sub_100004D90(a3, a4);
      if (!v4)
      {
        return v14;
      }

      return result;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_10;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1003FBD24(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v4)
  {
    return sub_100004D90(a3, a4);
  }

  v12 = v10;
  sub_100004D90(a3, a4);
  return v12;
}

uint64_t sub_1003F6B4C()
{
  v0 = sub_1003E3504(&off_1005CD5D8);
  sub_100003ABC(&qword_100613C90);
  result = swift_arrayDestroy();
  static Data.Hexadecimal.hexToDecimalMapping = v0;
  return result;
}

uint64_t *Data.Hexadecimal.hexToDecimalMapping.unsafeMutableAddressor()
{
  if (qword_100612FE0 != -1)
  {
    swift_once();
  }

  return &static Data.Hexadecimal.hexToDecimalMapping;
}

uint64_t static Data.Hexadecimal.hexToDecimalMapping.getter()
{
  if (qword_100612FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Data.Hexadecimal.hexToDecimalMapping.setter(uint64_t a1)
{
  if (qword_100612FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Data.Hexadecimal.hexToDecimalMapping = a1;
}

uint64_t (*static Data.Hexadecimal.hexToDecimalMapping.modify())()
{
  if (qword_100612FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Data.init(hexString:)(uint64_t a1, void *a2)
{
  if (sub_1004BBFB4())
  {
    v17[0] = 48;
    v17[1] = 0xE100000000000000;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    sub_1004BC024(v19);
  }

  v4 = 0;
  LOBYTE(v5) = 0;
  v18 = xmmword_1004C51E0;
  while (1)
  {
    v7 = sub_1004BC034();
    if (!v8)
    {
      break;
    }

    v9 = v7;
    v10 = v8;
    if (qword_100612FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static Data.Hexadecimal.hexToDecimalMapping;
    if (!*(static Data.Hexadecimal.hexToDecimalMapping + 16) || (v12 = sub_1003FB214(v9, v10, &Character.hash(into:), sub_100034AC0), (v13 & 1) == 0))
    {
      swift_endAccess();

      sub_100004D90(v18, *(&v18 + 1));
      return 0;
    }

    v14 = *(*(v11 + 56) + v12);
    swift_endAccess();

    if (v4)
    {
      v5 = v14 + v5;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_17;
      }

      v15 = sub_100003ABC(&qword_100613B68);
      v17[3] = v15;
      v17[4] = sub_1000206D4(&qword_100613B70, &qword_100613B68);
      LOBYTE(v17[0]) = v5;
      sub_100009178(v17, v15);
      sub_1004B6B44();
      sub_100004C6C(v17);
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = 16 * (v14 & 0xF) + v5;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return v18;
}

uint64_t sub_1003F7040()
{
  v0 = sub_100003ABC(&qword_100613B78);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_1004B6E74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B6F34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007108(v11, static Calendar.musicDefaultCalendar);
  v12 = sub_100007084(v7, static Calendar.musicDefaultCalendar);
  (*(v4 + 104))(v6, enum case for Calendar.Identifier.gregorian(_:), v3);
  sub_1004B6E84();
  (*(v4 + 8))(v6, v3);
  sub_1004B6FA4();
  v13 = sub_1004B6FC4();
  result = (*(*(v13 - 8) + 48))(v2, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1004B6F14();
    return (*(v8 + 32))(v12, v10, v7);
  }

  return result;
}

uint64_t Calendar.musicDefaultCalendar.unsafeMutableAddressor()
{
  if (qword_100612FE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B6F34();

  return sub_100007084(v0, static Calendar.musicDefaultCalendar);
}

uint64_t static Calendar.musicDefaultCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100612FE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B6F34();
  v3 = sub_100007084(v2, static Calendar.musicDefaultCalendar);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Calendar.date(forReleaseYear:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_100003ABC(&qword_100613B78);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100003ABC(&qword_100613B80);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1004B67C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = sub_1004B6CD4();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }

  else
  {
    if (qword_100612FE8 != -1)
    {
      swift_once();
    }

    v17 = sub_1004B6F34();
    sub_100007084(v17, static Calendar.musicDefaultCalendar);
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = sub_1004B6FC4();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    sub_1004B67B4();
    sub_1004B6EE4();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t static FormatStyle<>.musicReleaseYear.getter()
{
  v0 = sub_1004B6FC4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004B6BC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B6BE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6914();
  sub_1004B6BB4();
  sub_1004B6BA4();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  if (qword_100612FE8 != -1)
  {
    swift_once();
  }

  v9 = sub_1004B6F34();
  sub_100007084(v9, static Calendar.musicDefaultCalendar);
  sub_1004B6F04();
  return sub_1004B6BD4();
}

id static NSDateFormatter.iso8601ExtendedDateFormatter.getter()
{
  v0 = sub_100003ABC(&qword_100613B78);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1004B6E64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1004B6D24();
  isa = sub_1004B6D84().super.isa;
  (*(v4 + 8))(v6, v3);
  [v7 setLocale:isa];

  v9 = sub_1004BBE24();
  [v7 setDateFormat:v9];

  sub_1004B6FA4();
  v10 = sub_1004B6FC4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1004B6FB4().super.isa;
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone:v12];

  return v7;
}

void sub_1003F7B50()
{
  v0 = sub_1004B6FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:3];
  if (qword_100612FE8 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B6F34();
  sub_100007084(v5, static Calendar.musicDefaultCalendar);
  sub_1004B6F04();
  isa = sub_1004B6FB4().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone:isa];

  static NSDateFormatter.releaseDateFormatter = v4;
}

uint64_t *NSDateFormatter.releaseDateFormatter.unsafeMutableAddressor()
{
  if (qword_100612FF0 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.releaseDateFormatter;
}

id sub_1003F7D2C()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:3];
  result = [v0 setAllowedUnits:96];
  static NSDateFormatter.collectionsDurationFormatter = v0;
  return result;
}

uint64_t *NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor()
{
  if (qword_100612FF8 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.collectionsDurationFormatter;
}

uint64_t Dictionary.filterIncludingPairsWithStringValues()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = *(a3 - 8);
  __chkstk_darwin(a1);
  v70 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = v57 - v10;
  v58 = *(v11 - 8);
  __chkstk_darwin(v12);
  v78 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = v57 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = sub_1004BD174();
  v17 = *(v67 - 8);
  __chkstk_darwin(v67);
  v73 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v66 = v57 - v20;
  swift_getTupleTypeMetadata2();
  v21 = sub_1004BC304();
  v60 = a4;
  v22 = sub_1003FB920(v21, a2, &type metadata for String, a4);

  v81 = v22;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v23 = sub_1004BD5E4();
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v69 = v23 | 0x8000000000000000;
  }

  else
  {
    v27 = -1 << *(a1 + 32);
    v25 = ~v27;
    v24 = a1 + 64;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = v29 & *(a1 + 64);
    v69 = a1;
  }

  v75 = (v58 + 32);
  v74 = (v59 + 32);
  v65 = TupleTypeMetadata2 - 8;
  v57[1] = v25;
  v30 = (v25 + 64) >> 6;
  v71 = (v58 + 16);
  v57[2] = v59 + 16;
  v63 = (v58 + 8);
  v64 = (v17 + 32);
  v62 = (v59 + 8);

  v32 = 0;
  v33 = v70;
  v34 = v73;
  v68 = v24;
  v35 = v69;
  if ((v69 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_1004BD614())
  {
    sub_1004BD984();
    swift_unknownObjectRelease();
    v36 = v61;
    sub_1004BD984();
    swift_unknownObjectRelease();
    v37 = v32;
    v77 = v26;
    goto LABEL_20;
  }

  v38 = 1;
  v76 = v32;
  v77 = v26;
  while (1)
  {
    v33 = v70;
LABEL_22:
    v47 = *(TupleTypeMetadata2 - 8);
    (*(v47 + 56))(v34, v38, 1, TupleTypeMetadata2);
    v48 = v66;
    (*v64)(v66, v34, v67);
    if ((*(v47 + 48))(v48, 1, TupleTypeMetadata2) == 1)
    {
      sub_1001A43F8();
      return v81;
    }

    v49 = *(TupleTypeMetadata2 + 48);
    (*v75)(v78, v48, a2);
    (*v74)(v33, &v48[v49], a3);
    if (swift_dynamicCast())
    {
      v50 = v79;
      v51 = v80;
LABEL_27:
      v55 = v72;
      v26 = v77;
      (*v62)(v33, a3);
      v56 = v78;
      (*v71)(v55, v78, a2);
      v79 = v50;
      v80 = v51;
      sub_1004BBC84();
      sub_1004BBCB4();
      result = (*v63)(v56, a2);
      v32 = v76;
      v34 = v73;
      goto LABEL_29;
    }

    sub_100009130(0, &qword_100613B88);
    if (swift_dynamicCast())
    {
      v52 = v79;
      v53 = [v79 description];
      v50 = sub_1004BBE64();
      v51 = v54;

      v33 = v70;
      goto LABEL_27;
    }

    (*v63)(v78, a2);
    result = (*v62)(v33, a3);
    v32 = v76;
    v26 = v77;
LABEL_29:
    v24 = v68;
    v35 = v69;
    if ((v69 & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v39 = v26;
    v37 = v32;
    if (!v26)
    {
      break;
    }

LABEL_19:
    v77 = (v39 - 1) & v39;
    v43 = __clz(__rbit64(v39)) | (v37 << 6);
    v44 = v35;
    (*(v58 + 16))(v72, *(v35 + 48) + *(v58 + 72) * v43, a2);
    v45 = *(v44 + 56) + *(v59 + 72) * v43;
    v36 = v61;
    (*(v59 + 16))(v61, v45, a3);
LABEL_20:
    v46 = *(TupleTypeMetadata2 + 48);
    v34 = v73;
    (*v75)();
    (*v74)(&v34[v46], v36, a3);
    v38 = 0;
    v76 = v37;
  }

  if (v30 <= v32 + 1)
  {
    v40 = v32 + 1;
  }

  else
  {
    v40 = v30;
  }

  v41 = v40 - 1;
  v42 = v32;
  while (1)
  {
    v37 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v37 >= v30)
    {
      v76 = v41;
      v77 = 0;
      v38 = 1;
      goto LABEL_22;
    }

    v39 = *(v24 + 8 * v37);
    ++v42;
    if (v39)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary.filteredDictionary(_:)(uint64_t (*a1)(char *, char *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a1;
  v68 = a2;
  v10 = sub_1004BD174();
  __chkstk_darwin(v10 - 8);
  v59 = v57 - v11;
  v62 = *(a5 - 8);
  __chkstk_darwin(v12);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = v57 - v16;
  v61 = *(a4 - 8);
  __chkstk_darwin(v17);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v82 = v57 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = sub_1004BD174();
  v23 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v73 = v57 - v26;
  swift_getTupleTypeMetadata2();
  v27 = sub_1004BC304();
  v80 = a4;
  v60 = a6;
  v28 = sub_1003FB920(v27, a4, a5, a6);

  v84 = v28;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v29 = sub_1004BD5E4();
    v30 = 0;
    v31 = 0;
    v76 = v29 | 0x8000000000000000;
    v77 = 0;
  }

  else
  {
    v32 = -1 << *(a3 + 32);
    v30 = ~v32;
    v33 = *(a3 + 64);
    v76 = a3;
    v77 = a3 + 64;
    v34 = -v32;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v31 = v35 & v33;
  }

  v79 = (v61 + 32);
  v36 = (v62 + 32);
  v72 = TupleTypeMetadata2 - 8;
  v57[1] = v30;
  v37 = (v30 + 64) >> 6;
  v69 = (v62 + 16);
  v70 = (v61 + 16);
  v71 = (v23 + 32);
  v65 = (v61 + 8);
  v66 = (v62 + 8);
  v58 = (v62 + 56);

  v39 = 0;
  v81 = v14;
  v63 = v19;
  while (1)
  {
    v78 = v31;
    if ((v76 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1004BD614())
    {
      sub_1004BD984();
      swift_unknownObjectRelease();
      v48 = v64;
      sub_1004BD984();
      swift_unknownObjectRelease();
      v41 = v39;
      v83 = v78;
      goto LABEL_21;
    }

    v51 = 1;
    v43 = v39;
    v83 = v78;
    v50 = v74;
LABEL_22:
    v52 = *(TupleTypeMetadata2 - 8);
    (*(v52 + 56))(v50, v51, 1, TupleTypeMetadata2);
    v53 = v73;
    (*v71)();
    if ((*(v52 + 48))(v53, 1, TupleTypeMetadata2) == 1)
    {
      sub_1001A43F8();
      return v84;
    }

    v54 = *(TupleTypeMetadata2 + 48);
    v55 = v80;
    (*v79)(v19, v53, v80);
    (*v36)(v14, &v53[v54], a5);
    if (v67(v19, v14))
    {
      (*v70)(v82, v19, v55);
      v56 = v59;
      (*v69)(v59, v81, a5);
      (*v58)(v56, 0, 1, a5);
      sub_1004BBC84();
      v14 = v81;
      sub_1004BBCB4();
    }

    (*v66)(v14, a5);
    result = (*v65)(v19, v55);
    v39 = v43;
    v31 = v83;
  }

  v40 = v31;
  v41 = v39;
  if (v31)
  {
LABEL_18:
    v83 = (v40 - 1) & v40;
    v45 = __clz(__rbit64(v40)) | (v41 << 6);
    v46 = v76;
    (*(v61 + 16))(v82, *(v76 + 48) + *(v61 + 72) * v45, v80);
    v47 = *(v46 + 56) + *(v62 + 72) * v45;
    v48 = v64;
    (*(v62 + 16))(v64, v47, a5);
LABEL_21:
    v49 = *(TupleTypeMetadata2 + 48);
    v50 = v74;
    (*v79)();
    (*v36)(&v50[v49], v48, a5);
    v51 = 0;
    v43 = v41;
    v14 = v81;
    v19 = v63;
    goto LABEL_22;
  }

  if (v37 <= v39 + 1)
  {
    v42 = v39 + 1;
  }

  else
  {
    v42 = v37;
  }

  v43 = v42 - 1;
  v44 = v39;
  while (1)
  {
    v41 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v41 >= v37)
    {
      v83 = 0;
      v51 = 1;
      v50 = v74;
      goto LABEL_22;
    }

    v40 = *(v77 + 8 * v41);
    ++v44;
    if (v40)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t IndexPath.safeSection.getter()
{
  if ((sub_1004B7034() - 1) > 1)
  {

    return sub_1004B64A4();
  }

  else
  {

    return sub_1004B7054();
  }
}

uint64_t IndexPath.safeSection.setter()
{
  result = sub_1004B7034();
  if ((result - 1) <= 1)
  {

    return sub_1004B7064();
  }

  return result;
}

uint64_t (*IndexPath.safeSection.modify(uint64_t *a1))()
{
  a1[1] = v1;
  if ((sub_1004B7034() - 1) > 1)
  {
    v3 = sub_1004B64A4();
  }

  else
  {
    v3 = sub_1004B7054();
  }

  *a1 = v3;
  return sub_1003F8E10;
}

uint64_t sub_1003F8E10()
{
  result = sub_1004B7034();
  if ((result - 1) <= 1)
  {
    return sub_1004B7064();
  }

  return result;
}

uint64_t IndexPath.safeItem.getter()
{
  if (sub_1004B7034() > 1)
  {

    return sub_1004B7054();
  }

  else
  {

    return sub_1004B64A4();
  }
}

unint64_t IndexPath.safeItem.setter()
{
  result = sub_1004B7034();
  if (result >= 2)
  {

    return sub_1004B7064();
  }

  return result;
}

unint64_t (*IndexPath.safeItem.modify(uint64_t *a1))()
{
  a1[1] = v1;
  if (sub_1004B7034() > 1)
  {
    v3 = sub_1004B7054();
  }

  else
  {
    v3 = sub_1004B64A4();
  }

  *a1 = v3;
  return sub_1003F8F48;
}

unint64_t sub_1003F8F48()
{
  result = sub_1004B7034();
  if (result >= 2)
  {
    return sub_1004B7064();
  }

  return result;
}

Swift::String __swiftcall String.trim()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1004B65B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6574();
  v15._countAndFlagsBits = 41154;
  v15._object = 0xA200000000000000;
  sub_1004B6584(v15);
  v14[0] = v3;
  v14[1] = v2;
  sub_1003FBC0C();
  v8 = sub_1004BD214();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall String.removeSpaces()()
{
  sub_1003FBC0C();
  v0 = sub_1004BD224();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.replace(usingRegexPattern:with:options:)(Swift::String usingRegexPattern, Swift::String with, NSRegularExpressionOptions options)
{
  v5 = v4;
  v6 = v3;
  object = usingRegexPattern._object;
  countAndFlagsBits = usingRegexPattern._countAndFlagsBits;
  objc_allocWithZone(NSRegularExpression);

  v10 = sub_1003FB0E0(countAndFlagsBits, object, options);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1004BBFB4();
    v13 = sub_1004BBE24();
    v14 = sub_1004BBE24();
    v15 = [v11 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{v12, v14}];

    v6 = sub_1004BBE64();
    v5 = v16;
  }

  else
  {
  }

  v17 = v6;
  v18 = v5;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

Swift::String __swiftcall String.insensitiveCompareString()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_100003ABC(&qword_100613B98);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = 0xE000000000000000;
  v29 = 0;
  v30 = 0xE000000000000000;
  v8 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v3;
  v26 = v2;
  v27 = 0;
  v28 = v8;

  v9 = sub_1004BC034();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    do
    {
      if ((sub_1004BBD04() & 1) == 0)
      {
        v31._countAndFlagsBits = v11;
        v31._object = v12;
        sub_1004BC014(v31);
      }

      v11 = sub_1004BC034();
      v12 = v13;
    }

    while (v13);
    v14 = v29;
    v7 = v30;
  }

  else
  {
    v14 = 0;
  }

  v25 = v14;
  v26 = v7;
  sub_1003FBC0C();
  v15 = sub_1004BD204();
  v17 = v16;

  v29 = v15;
  v30 = v17;
  sub_1004B6DF4();
  v18 = sub_1004B6E64();
  (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
  v19 = sub_1004BD244();
  v21 = v20;
  sub_100007214(v6, &qword_100613B98);

  v22 = v19;
  v23 = v21;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

id String.BOOLValue.getter()
{
  v0 = sub_1004BBE24();
  v1 = [v0 BOOLValue];

  return v1;
}

uint64_t String.containsExcessiveHeightCharacters.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100613BA0);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = sub_1004B65B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  __chkstk_darwin(v14);
  v16 = v25 - v15;
  v17 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v19 = 0;
      return v19 & 1;
    }

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_1003FC0E4(&qword_100613BA8, &type metadata accessor for CharacterSet);
    sub_1004BD754();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v20 = *(v8 + 32);
      v20(v13, v6, v7);
      v20(v16, v13, v7);
      (*(v8 + 16))(v10, v16, v7);
      sub_1004B6594();
      sub_1004B6594();
      v25[0] = a1;
      v25[1] = a2;
      sub_1003FBC0C();
      sub_1004BD1F4();
      v22 = v21;
      v23 = *(v8 + 8);
      v23(v10, v7);
      v23(v16, v7);
      v19 = v22 ^ 1;
      return v19 & 1;
    }
  }

  v19 = 0;
  return v19 & 1;
}

BOOL String.containsCharacter(from:)()
{
  sub_1003FBC0C();
  sub_1004BD1F4();
  return (v0 & 1) == 0;
}

uint64_t Optional<A>.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t Optional<A>.nonEmpty.getter(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

NSAttributedString __swiftcall NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(Swift::String string, Swift::OpaquePointer attributes, Swift::String replacingPlaceholder, UIImage_optional withImage, Swift::OpaquePointer imageAttributes)
{
  isa = withImage.value.super.isa;
  sub_1004BBE34();
  v6 = objc_allocWithZone(NSMutableAttributedString);
  v7 = sub_1004BBE24();

  _s3__C3KeyVMa_0(0);
  sub_1003FC0E4(&qword_100613168, _s3__C3KeyVMa_0);
  v8 = sub_1004BBC24().super.isa;

  v9 = [v6 initWithString:v7 attributes:v8];

  v10 = sub_1004BBE24();

  v11 = sub_1004BBE24();

  v12 = [v10 rangeOfString:v11 options:129];
  v14 = v13;

  if (isa)
  {
    v15 = objc_opt_self();
    isa = isa;
    v16 = [v15 textAttachmentWithImage:isa];
    v17 = sub_1004BBC24().super.isa;

    v18 = [objc_opt_self() attributedStringWithAttachment:v16 attributes:v17];
  }

  else
  {

    v18 = [objc_allocWithZone(NSAttributedString) init];
  }

  [v9 replaceCharactersInRange:v12 withAttributedString:{v14, v18}];
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString:v9];

  return v19;
}

uint64_t NSAttributedString.init(_:)(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100613BB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1004B68B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_1003FBC60(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(a1, &qword_100613BB0);
    sub_100007214(v4, &qword_100613BB0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v13 = sub_1004BCBB4();
    sub_100007214(a1, &qword_100613BB0);
    (*(v6 + 8))(v11, v5);
    return v13;
  }
}

uint64_t *Double.epsilon.unsafeMutableAddressor()
{
  if (qword_100613000 != -1)
  {
    swift_once();
  }

  return &static Double.epsilon;
}

double static Double.epsilon.getter()
{
  if (qword_100613000 != -1)
  {
    swift_once();
  }

  return *&static Double.epsilon;
}

uint64_t _NSRange.init(range:in:)()
{
  sub_1004BBFA4();
  if (v0 & 1) != 0 || (sub_1004BBFA4(), (v1))
  {
    result = sub_1004BD624();
    __break(1u);
  }

  else
  {
    v2 = sub_1004BC0A4();
    sub_1004BC0A4();

    return v2;
  }

  return result;
}

{
  sub_1004BBFC4();
  sub_1004BBFA4();
  if (v0 & 1) != 0 || (sub_1004BBFA4(), (v1))
  {
    result = sub_1004BD624();
    __break(1u);
  }

  else
  {
    v2 = sub_1004BC0A4();
    sub_1004BC0A4();

    return v2;
  }

  return result;
}

Swift::Bool __swiftcall _NSRange.contains(_:)(__C::_NSRange a1)
{
  if (a1.location >= v1)
  {
    if (__OFADD__(a1.location, a1.length))
    {
      __break(1u);
    }

    else if (!__OFADD__(v1, v2))
    {
      LOBYTE(a1.location) = v1 + v2 >= a1.location + a1.length;
      return a1.location;
    }

    __break(1u);
    return a1.location;
  }

  LOBYTE(a1.location) = 0;
  return a1.location;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(Swift::String from, Swift::String to, Swift::Bool preserveLength)
{
  sub_1003FBC0C();
  if (sub_1004BD264())
  {
    v4 = sub_1004BC084();
    v5 = sub_1004BBE24();
    v6 = sub_1004BBE24();
    v7 = [v5 rangeOfString:{v6, to._countAndFlagsBits, to._object, from._countAndFlagsBits, from._object}];
    v9 = v8;

    v10.location = 0;
    v10.length = v4;
    v11.location = v7;
    v11.length = v9;
    v14 = _NSRange.convert(from:to:preserveLength:)(v10, v11, preserveLength);
    length = v14.length;
    location = v14.location;
  }

  else
  {
    sub_1003FBCD0();
    swift_allocError();
    *v15 = 4;
    location = swift_willThrow();
  }

  result.length = length;
  result.location = location;
  return result;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(__C::_NSRange from, __C::_NSRange to, Swift::Bool preserveLength)
{
  if (to.location < from.location)
  {
    goto LABEL_5;
  }

  if (__OFADD__(to.location, to.length))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = from.location + from.length;
  if (__OFADD__(from.location, from.length))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 < to.location + to.length)
  {
LABEL_5:
    v6 = 0;
LABEL_6:
    sub_1003FBCD0();
    swift_allocError();
    *v7 = v6;
    from.location = swift_willThrow();
    return from;
  }

  if (v3 < from.location)
  {
LABEL_11:
    v6 = 1;
    goto LABEL_6;
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_20;
  }

  if (v5 < v3 + v4)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v3, to.location))
  {
LABEL_21:
    __break(1u);
    return from;
  }

  v11.location = 0;
  v11.length = to.length;
  v9 = v4;
  from.location = sub_1004BD0E4(v11);
  if (v10)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (preserveLength && from.length != v9)
  {
    v6 = 3;
    goto LABEL_6;
  }

  return from;
}

Swift::Bool __swiftcall _NSRange.intersects(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v4)
  {
    v5 = a1.location + a1.length;
  }

  else
  {
    v5 = v1 + v2;
  }

  if (v1 >= a1.location && v4 > v1)
  {
    if (!__OFSUB__(v5, v1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v6 = 0;
  if (a1.location < v1 || v3 <= a1.location)
  {
    goto LABEL_15;
  }

  if (__OFSUB__(v5, a1.location))
  {
LABEL_18:
    __break(1u);
    return a1.location;
  }

LABEL_14:
  v6 = 1;
LABEL_15:
  LOBYTE(a1.location) = v6;
  return a1.location;
}

uint64_t sub_1003FA3A0()
{
  result = sub_1004B64A4();
  static _NSRange.notFound = result;
  *algn_1006199A8 = 0;
  return result;
}

uint64_t *_NSRange.notFound.unsafeMutableAddressor()
{
  if (qword_100613008 != -1)
  {
    swift_once();
  }

  return &static _NSRange.notFound;
}

uint64_t static _NSRange.notFound.getter()
{
  if (qword_100613008 != -1)
  {
    swift_once();
  }

  return static _NSRange.notFound;
}

Swift::tuple_first___C__NSRange_second___C__NSRange __swiftcall _NSRange.difference(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  v4 = __OFADD__(v1, v2);
  if (v1 < a1.location)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (__OFADD__(a1.location, a1.length))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    v11 = v2;
    v13 = v1;
    swift_once();
    v2 = v11;
    v1 = v13;
    goto LABEL_39;
  }

  if (a1.location + a1.length >= v3)
  {
    if (qword_100613008 == -1)
    {
LABEL_44:
      v1 = static _NSRange.notFound;
      v2 = *algn_1006199A8;
      v5 = static _NSRange.notFound;
      v7 = *algn_1006199A8;
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_44;
  }

LABEL_10:
  v5 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v1 < a1.location || v5 <= v1)
  {
    goto LABEL_27;
  }

  v6 = 0;
  v2 = a1.location - v1;
  if (!__OFSUB__(a1.location, v1))
  {
    while (1)
    {
      v7 = v3 - v5;
      if (__OFSUB__(v3, v5))
      {
        goto LABEL_49;
      }

      if (!v6)
      {
        break;
      }

      if (v5 >= v3)
      {
        goto LABEL_38;
      }

      v3 = v1 + v2;
      if (__OFADD__(v1, v2))
      {
        __break(1u);
LABEL_54:
        v12 = v7;
        v14 = a1.location + a1.length;
        swift_once();
        v7 = v12;
        v5 = v14;
LABEL_42:
        v1 = v5;
        v2 = v7;
        v5 = static _NSRange.notFound;
        v7 = *algn_1006199A8;
        goto LABEL_45;
      }

      if (v3 < v5)
      {
        goto LABEL_45;
      }

      v8 = __OFADD__(v5, v7);
      v9 = v5 + v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v3 > v9)
      {
        v9 = v1 + v2;
      }

      if (v5 < v1)
      {
        v1 = a1.location + a1.length;
      }

      v2 = v9 - v1;
      if (!__OFSUB__(v9, v1))
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_27:
      if (a1.location < v1 || v3 <= a1.location)
      {
        goto LABEL_38;
      }

      v6 = v1 < a1.location && v2 > 0;
      v2 = a1.location - v1;
      if (__OFSUB__(a1.location, v1))
      {
        goto LABEL_37;
      }
    }

    if (v5 < v3)
    {
      if (qword_100613008 != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (qword_100613008 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (qword_100613008 != -1)
  {
    goto LABEL_52;
  }

LABEL_39:
  v5 = static _NSRange.notFound;
  v7 = *algn_1006199A8;
LABEL_45:
  a1.location = v1;
  a1.length = v2;
  v1 = v5;
  v2 = v7;
LABEL_56:
  result.first = a1;
  result.second.length = v2;
  result.second.location = v1;
  return result;
}

Swift::Int_optional __swiftcall _NSRange.NSRangeIterator.next()()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 8);
    if (__OFADD__(*v0, v3))
    {
      __break(1u);
    }

    else if (v1 >= *v0 + v3)
    {
      v1 = 0;
      v2 = 1;
    }

    else
    {
      v2 = 0;
      *(v0 + 16) = v1 + 1;
    }
  }

  result.value = v1;
  result.is_nil = v2;
  return result;
}

void sub_1003FA6A0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 8);
  if (!__OFADD__(*v1, v3))
  {
    if (v2 < *v1 + v3)
    {
      v4 = 0;
      *(v1 + 16) = v2 + 1;
LABEL_7:
      *a1 = v2;
      *(a1 + 8) = v4;
      return;
    }

    v2 = 0;
LABEL_6:
    v4 = 1;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1003FA6F8(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2 >= 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2 < 1;
}

uint64_t WeakWrapper.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakWrapper.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1003FA7B4;
}

uint64_t sub_1003FA7B4()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakWrapper.init(value:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static WeakWrapper.== infix(_:_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t Int.romanNumeral.getter(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = a1;
  for (i = 0; i != 13; ++i)
  {
    v3 = qword_1004E8F78[*(&off_1005CD808 + i + 32)];
    if (v1 >= v3)
    {
      v4 = 0xE100000000000000;
      v5 = 77;
      switch(*(&off_1005CD808 + i + 32))
      {
        case 1:
          v4 = 0xE200000000000000;
          v5 = 19779;
          break;
        case 2:
          v5 = 68;
          break;
        case 3:
          v4 = 0xE200000000000000;
          v5 = 17475;
          break;
        case 4:
          v5 = 67;
          break;
        case 5:
          v4 = 0xE200000000000000;
          v5 = 17240;
          break;
        case 6:
          v5 = 76;
          break;
        case 7:
          v4 = 0xE200000000000000;
          v5 = 19544;
          break;
        case 8:
          v5 = 88;
          break;
        case 9:
          v4 = 0xE200000000000000;
          v5 = 22601;
          break;
        case 0xA:
          v5 = 86;
          break;
        case 0xB:
          v4 = 0xE200000000000000;
          v5 = 22089;
          break;
        case 0xC:
          v5 = 73;
          break;
        default:
          goto LABEL_18;
      }

      do
      {
LABEL_18:
        v1 -= v3;
        v7._countAndFlagsBits = v5;
        v7._object = v4;
        sub_1004BC024(v7);
      }

      while (v1 >= v3);
    }
  }

  return 0;
}

uint64_t RomanNumerals.rawValue.getter(char a1)
{
  result = 77;
  switch(a1)
  {
    case 1:
      result = 19779;
      break;
    case 2:
      result = 68;
      break;
    case 3:
      result = 17475;
      break;
    case 4:
      result = 67;
      break;
    case 5:
      result = 17240;
      break;
    case 6:
      result = 76;
      break;
    case 7:
      result = 19544;
      break;
    case 8:
      result = 88;
      break;
    case 9:
      result = 22601;
      break;
    case 10:
      result = 86;
      break;
    case 11:
      result = 22089;
      break;
    case 12:
      result = 73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003FAB40(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RomanNumerals.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RomanNumerals.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_1003FABC8()
{
  v1 = *v0;
  sub_1004BDBA4();
  RomanNumerals.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1003FAC2C()
{
  RomanNumerals.rawValue.getter(*v0);
  sub_1004BBF84();
}

Swift::Int sub_1003FAC80()
{
  v1 = *v0;
  sub_1004BDBA4();
  RomanNumerals.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1003FACE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1003FAD10@<X0>(uint64_t *a1@<X8>)
{
  result = RomanNumerals.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1003FAD4C()
{
  result = sub_1003FC12C(&off_1005CD990);
  static NSDirectionalEdgeInsets.Edge.all = result;
  return result;
}

uint64_t *NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor()
{
  if (qword_100613010 != -1)
  {
    swift_once();
  }

  return &static NSDirectionalEdgeInsets.Edge.all;
}

uint64_t static NSDirectionalEdgeInsets.Edge.all.getter()
{
  if (qword_100613010 != -1)
  {
    swift_once();
  }
}

double NSDirectionalEdgeInsets.init(edge:length:)(uint64_t a1, double a2)
{
  if (sub_1000FF478(0, a1))
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  sub_1000FF478(1u, a1);
  sub_1000FF478(2u, a1);
  sub_1000FF478(3u, a1);

  return v4;
}

uint64_t sub_1003FAEC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B7044();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1003FC0E4(&qword_100613C78, &type metadata accessor for IndexPath), v7 = sub_1004BBCD4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1003FC0E4(&qword_100613C80, &type metadata accessor for IndexPath);
      v15 = sub_1004BBD84();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_1003FB0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004BBE24();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1004B69B4();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1003FB214(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  sub_1004BDBA4();
  a3(v10, a1, a2);
  v7 = sub_1004BDBF4();

  return a4(a1, a2, v7);
}

unint64_t sub_1003FB2A8(uint64_t a1)
{
  v2 = sub_1004BDB94();

  return sub_1003FB458(a1, v2);
}

unint64_t sub_1003FB2EC(Swift::UInt a1)
{
  sub_1004BDBA4();
  sub_1004BDBB4(a1);
  v2 = sub_1004BDBF4();

  return sub_1003FB458(a1, v2);
}

unint64_t sub_1003FB358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004BDBA4();
  if (a2)
  {
    sub_1004BDBB4(1uLL);
    sub_1004BBF84();
  }

  else
  {
    sub_1004BDBB4(0);
  }

  v6 = sub_1004BDBF4();

  return sub_1003FB4C4(a1, a2, a3, v6);
}

unint64_t sub_1003FB3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BBCD4();

  return sub_1003FB60C(a1, v6, a2, a3);
}

unint64_t sub_1003FB458(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003FB4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    do
    {
      v14 = (*(v8 + 48) + 24 * v7);
      v15 = v14[1];
      v16 = v14[2];
      if (v15)
      {
        if (a2)
        {
          v17 = *v14 == a1 && v15 == a2;
          if (v17 || (sub_1004BD9C4() & 1) != 0)
          {
LABEL_3:
            sub_100009130(0, &unk_1006143A0);

            v12 = v16;
            v13 = sub_1004BCFA4();

            if (v13)
            {
              return v7;
            }
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_3;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1003FB60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1004BBD84();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1003FB794(uint64_t result, uint64_t a2)
{
  v2 = _swiftEmptyArrayStorage;
  v21 = a2 < 1;
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = result;
    if (__OFADD__(result, a2))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v4 = 0;
    if (result <= result + a2)
    {
      v5 = result + a2;
    }

    else
    {
      v5 = result;
    }

    v6 = &_swiftEmptyArrayStorage[4];
    while (v5 != v3)
    {
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_100003ABC(&qword_100613C70);
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 25;
        }

        v13 = v12 >> 3;
        v10[2] = v9;
        v10[3] = (2 * (v12 >> 3));
        v14 = (v10 + 4);
        v15 = v2[3] >> 1;
        if (v2[2])
        {
          v16 = v2 + 4;
          if (v10 != v2 || v14 >= v16 + 8 * v15)
          {
            memmove(v10 + 4, v16, 8 * v15);
          }

          v2[2] = 0;
        }

        v6 = (v14 + 8 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v2 = v10;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      *v6++ = v3++;
      if (v21)
      {
        break;
      }
    }
  }

  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = (v19 - v4);
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003FB920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1004BC344())
  {
    sub_1004BD704();
    v13 = sub_1004BD6F4();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_1004BC3A4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1004BC324())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1004BD474();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1003FB3FC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_1003FBC0C()
{
  result = qword_100613B90;
  if (!qword_100613B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613B90);
  }

  return result;
}

uint64_t sub_1003FBC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100613BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003FBCD0()
{
  result = qword_100613BB8;
  if (!qword_100613BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613BB8);
  }

  return result;
}

void sub_1003FBD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1004B6724();
  if (v9)
  {
    v10 = sub_1004B6754();
    if (__OFSUB__(a1, v10))
    {
      goto LABEL_7;
    }

    v9 += a1 - v10;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1004B6744();
    sub_1003F66B8(v9, a4, a5, &v11);
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

uint64_t _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005CD838;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1003FBE30()
{
  result = qword_100613BC0;
  if (!qword_100613BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613BC0);
  }

  return result;
}

unint64_t sub_1003FBE88()
{
  result = qword_100613BC8;
  if (!qword_100613BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613BC8);
  }

  return result;
}

unint64_t sub_1003FBEE0()
{
  result = qword_100613BD0;
  if (!qword_100613BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613BD0);
  }

  return result;
}

unint64_t sub_1003FBF7C()
{
  result = qword_100613BE8[0];
  if (!qword_100613BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100613BE8);
  }

  return result;
}

__n128 sub_1003FBFFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1003FC010(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003FC030(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1003FC070()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003FC0E4(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_1003FC12C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100613C88);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004BDBA4();
      sub_1004BDBB4(v10);
      result = sub_1004BDBF4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t MPModelObject.humanDescription(including:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v13._countAndFlagsBits = sub_1004BDC84();
  sub_1004BC024(v13);

  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  sub_1004BC024(v14);
  sub_1004BD5C4();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v12;
  v5[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1003FC794;
  *(v6 + 24) = v5;
  v11[4] = sub_1000E6038;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100008224;
  v11[3] = &unk_1005CEF70;
  v7 = _Block_copy(v11);

  v8 = v2;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v10 = v12[0];

    return v10;
  }

  return result;
}

uint64_t sub_1003FC460(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = sub_100422808(*(a1 + 16), 0);
  v25 = sub_100390D60(v27, v6 + 32, v4, a1);

  sub_1001A43F8();
  if (v25 != v4)
  {
    __break(1u);
LABEL_4:
    v6 = &_swiftEmptyArrayStorage;
  }

  *&v27[0] = v6;
  sub_1003FD76C(v27);
  v7 = *&v27[0];
  v8 = *(*&v27[0] + 16);
  if (!v8)
  {
  }

  v9 = 0;
  v10 = *&v27[0] + 32;
  while (v9 < *(v7 + 16))
  {
    if (!*(v10 + v9))
    {
      strcpy(v27, " identifiers=");
      HIWORD(v27[0]) = -4864;
      v11 = [a3 identifiers];
      v12 = [v11 description];
      v13 = sub_1004BBE64();
      v15 = v14;

      v28._countAndFlagsBits = v13;
      v28._object = v15;
      sub_1004BC024(v28);

LABEL_8:
      v17 = *(&v27[0] + 1);
      v16._countAndFlagsBits = *&v27[0];
      goto LABEL_9;
    }

    if (*(v10 + v9) == 1)
    {
      *&v27[0] = 23328;
      *(&v27[0] + 1) = 0xE200000000000000;
      v18 = [a3 shortDescription];
      v19 = sub_1004BBE64();
      v21 = v20;

      v29._countAndFlagsBits = v19;
      v29._object = v21;
      sub_1004BC024(v29);

      v30._countAndFlagsBits = 93;
      v30._object = 0xE100000000000000;
      sub_1004BC024(v30);
      goto LABEL_8;
    }

    sub_1003FD8A4();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    InstanceVariable = class_getInstanceVariable(ObjCClassFromMetadata, "_storage");
    if (!InstanceVariable)
    {
      goto LABEL_10;
    }

    strcpy(v26, " properties=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    if (object_getIvar(a3, InstanceVariable))
    {
      sub_1004BD284();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    sub_100003ABC(&qword_1006143E0);
    v31._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v31);

    v16._countAndFlagsBits = v26[0];
    v17 = v26[1];
LABEL_9:
    v16._object = v17;
    sub_1004BC024(v16);

LABEL_10:
    if (v8 == ++v9)
    {
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1003FC754()
{

  return swift_deallocObject();
}

uint64_t sub_1003FC7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1003FC7CC()
{
  result = qword_100613C98;
  if (!qword_100613C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613C98);
  }

  return result;
}

uint64_t sub_1003FC888()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1004BBE64();
    v6 = v5;
  }

  else
  {
    v6 = 0xED0000676E6F5320;
    v4 = 0x64656C7469746E55;
  }

  v20._countAndFlagsBits = v4;
  v20._object = v6;
  sub_1004BC024(v20);

  v21._countAndFlagsBits = 34;
  v21._object = 0xE100000000000000;
  sub_1004BC024(v21);
  v7 = [v1 album];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 shortDescription];
    v10 = sub_1004BBE64();
    v12 = v11;

    v22._countAndFlagsBits = v10;
    v22._object = v12;
    sub_1004BC024(v22);

    v23._countAndFlagsBits = 0x206D75626C41203BLL;
    v23._object = 0xE800000000000000;
    sub_1004BC024(v23);
  }

  v13 = [v1 artist];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 shortDescription];
    v16 = sub_1004BBE64();
    v18 = v17;

    v24._countAndFlagsBits = v16;
    v24._object = v18;
    sub_1004BC024(v24);

    v25._countAndFlagsBits = 0x747369747241203BLL;
    v25._object = 0xE900000000000020;
    sub_1004BC024(v25);
  }

  return 0x22203A656C746954;
}

uint64_t sub_1003FCC88()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004BBE64();
    v5 = v4;
  }

  else
  {
    v5 = 0x8000000100505050;
    v3 = 0xD000000000000011;
  }

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_1004BC024(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  sub_1004BC024(v8);
  return 0x22203A656D614ELL;
}

uint64_t sub_1003FCD5C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1003FD6F4;
  *(v2 + 24) = v1;
  v8 = v2;
  v3 = v0;
  sub_100003ABC(&qword_100613CA0);
  v9._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v9);

  v10._countAndFlagsBits = 2236475;
  v10._object = 0xE300000000000000;
  sub_1004BC024(v10);
  v4 = [v3 anyObject];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 shortDescription];

    sub_1004BBE64();
  }

  sub_100003ABC(&qword_100613CA8);
  v11._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  sub_1004BC024(v12);
  return 0x203A65707954;
}

uint64_t sub_1003FD0A4()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1004BBE64();
    v6 = v5;
  }

  else
  {
    v6 = 0x800000010050CAB0;
    v4 = 0xD000000000000010;
  }

  v20._countAndFlagsBits = v4;
  v20._object = v6;
  sub_1004BC024(v20);

  v21._countAndFlagsBits = 34;
  v21._object = 0xE100000000000000;
  sub_1004BC024(v21);
  v7 = [v1 show];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 shortDescription];
    v10 = sub_1004BBE64();
    v12 = v11;

    v22._countAndFlagsBits = v10;
    v22._object = v12;
    sub_1004BC024(v22);

    v23._countAndFlagsBits = 0x20776F6853203BLL;
    v23._object = 0xE700000000000000;
    sub_1004BC024(v23);
  }

  v13 = [v1 season];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 shortDescription];
    v16 = sub_1004BBE64();
    v18 = v17;

    v24._countAndFlagsBits = v16;
    v24._object = v18;
    sub_1004BC024(v24);

    v25._countAndFlagsBits = 0x6E6F73616553203BLL;
    v25._object = 0xE900000000000020;
    sub_1004BC024(v25);
  }

  return 0x22203A656C746954;
}

id sub_1003FD3A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1004BBE24();

  return v5;
}

uint64_t sub_1003FD418()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004BBE64();
    v5 = v4;
  }

  else
  {
    v5 = 0x800000010050CA90;
    v3 = 0xD000000000000010;
  }

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_1004BC024(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  sub_1004BC024(v8);
  return 0x22203A656D614ELL;
}

uint64_t sub_1003FD6BC()
{

  return swift_deallocObject();
}

uint64_t sub_1003FD704()
{

  return swift_deallocObject();
}

uint64_t sub_1003FD73C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

Swift::Int sub_1003FD76C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100424B10(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004BD8B4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004BC314();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1003FD8F0(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1003FD8A4()
{
  result = qword_100613CB0;
  if (!qword_100613CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100613CB0);
  }

  return result;
}

uint64_t sub_1003FD8F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1004249F8(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1003909D0((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003F265C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1003F265C((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1003909D0((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1004249F8(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_10042496C(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1003FDE30(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1003F2670(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1003FDF24(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003F2994(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1003FE010(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 24) >> 1)
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

  v3 = sub_1003F27A4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (*(v3 + 24) >> 1) - *(v3 + 16);
  result = sub_100003ABC(&qword_100613AE8);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1003FE148(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1004BD6A4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1004BD6A4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10013232C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1003FF114(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1003FE238(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 24) >> 1)
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

  v3 = sub_1003F2BF4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (*(v3 + 24) >> 1) - *(v3 + 16);
  result = sub_1004B6634();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t String.components(wrappedToLineLength:bullet:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v74 = a1;
  v9 = sub_1004B65B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75._countAndFlagsBits = a4;
  v75._object = a5;
  sub_1004B65A4();
  v64 = sub_1003FBC0C();
  v13 = sub_1004BD1C4();
  v14 = *(v10 + 8);
  v14(v12, v9);
  result = v13;
  v69 = *(v13 + 16);
  if (v69)
  {
    v16 = 0;
    v67 = a2;
    v68 = v13 + 32;
    v17 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v17 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v62 = v17;
    v18 = &_swiftEmptyArrayStorage;
    v65 = v13;
    v66 = a3;
    while (1)
    {
      if (v16 >= *(result + 16))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return result;
      }

      v19 = (v68 + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      v81 = v18;
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v72 = v16;
        v23 = objc_allocWithZone(NSScanner);

        v71 = v21;
        v24 = v18;
        v25 = sub_1004BBE24();
        v26 = [v23 initWithString:v25];

        v80._countAndFlagsBits = sub_1003FE9EC(v67, a3, &v81);
        v80._object = v27;
        sub_1004B6564();
        v28 = sub_1004BD114();
        v30 = v29;
        v14(v12, v9);
        v70 = v24;
        v73 = v24;
        if (v30)
        {
          v73 = v70;
          while (1)
          {
            v31 = v80;
            v32 = sub_1004BBFB4();
            result = sub_1004BBFB4();
            v33 = v32 + result;
            if (__OFADD__(v32, result))
            {
              break;
            }

            v34 = __OFADD__(v33, 1);
            v35 = v33 + 1;
            if (v34)
            {
              goto LABEL_49;
            }

            if (v35 > v74)
            {
              v75 = v31;
              v78 = 606827356;
              v79 = 0xE400000000000000;
              v76 = 0;
              v77 = 0xE000000000000000;
              v37 = sub_1004BD224();
              v63 = v38;

              swift_beginAccess();
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v39 = v73;
              }

              else
              {
                v39 = sub_1003F2670(0, *(v73 + 2) + 1, 1, v73);
              }

              v41 = *(v39 + 2);
              v40 = *(v39 + 3);
              if (v41 >= v40 >> 1)
              {
                v39 = sub_1003F2670((v40 > 1), v41 + 1, 1, v39);
              }

              *(v39 + 2) = v41 + 1;
              v42 = &v39[16 * v41];
              v43 = v63;
              *(v42 + 4) = v37;
              *(v42 + 5) = v43;
              v73 = v39;
              v81 = v39;
              swift_endAccess();
              if (v62)
              {
                result = sub_1004BBFB4();
                v44 = result + 1;
                if (__OFADD__(result, 1))
                {
                  goto LABEL_51;
                }

                v83._countAndFlagsBits = 32;
                v83._object = 0xE100000000000000;
                v45 = sub_1004BC0D4(v83, v44);
                v47 = v46;
              }

              else
              {
                v45 = 0;
                v47 = 0xE000000000000000;
              }

              v75._countAndFlagsBits = v45;
              v75._object = v47;

              v84._countAndFlagsBits = v28;
              v84._object = v30;
              sub_1004BC024(v84);

              v85._countAndFlagsBits = 32;
              v85._object = 0xE100000000000000;
              sub_1004BC024(v85);

              v80 = v75;
            }

            else
            {
              v75._countAndFlagsBits = v28;
              v75._object = v30;

              v82._countAndFlagsBits = 32;
              v82._object = 0xE100000000000000;
              sub_1004BC024(v82);

              sub_1004BC024(v75);
            }

            sub_1004B6564();
            v28 = sub_1004BD114();
            v30 = v36;
            v14(v12, v9);
            if (!v30)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_31:
        v48 = (v80._object >> 56) & 0xF;
        if ((v80._object & 0x2000000000000000) == 0)
        {
          v48 = v80._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          v75 = v80;
          v78 = 606827356;
          v79 = 0xE400000000000000;
          v76 = 0;
          v77 = 0xE000000000000000;
          v49 = sub_1004BD224();
          v51 = v50;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v52 = v73;
          }

          else
          {
            v52 = sub_1003F2670(0, *(v73 + 2) + 1, 1, v73);
          }

          v54 = *(v52 + 2);
          v53 = *(v52 + 3);
          if (v54 >= v53 >> 1)
          {
            v52 = sub_1003F2670((v53 > 1), v54 + 1, 1, v52);
          }

          *(v52 + 2) = v54 + 1;
          v55 = &v52[16 * v54];
          *(v55 + 4) = v49;
          *(v55 + 5) = v51;
          a3 = v66;
          v18 = v52;
        }

        else
        {

          a3 = v66;
          v18 = v73;
        }
      }

      else
      {
        v56 = *(v18 + 2);
        if (!v56)
        {
          goto LABEL_8;
        }

        v71 = v21;
        v72 = v16;

        v57 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1003F2670(0, v56 + 1, 1, v18);
        }

        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        if (v59 >= v58 >> 1)
        {
          v57 = sub_1003F2670((v58 > 1), v59 + 1, 1, v57);
        }

        *(v57 + 2) = v59 + 1;
        v60 = &v57[16 * v59];
        v61 = v71;
        *(v60 + 4) = v20;
        *(v60 + 5) = v61;
        v18 = v57;
      }

      result = v65;
      v16 = v72;
LABEL_8:
      if (++v16 == v69)
      {
        goto LABEL_47;
      }
    }
  }

  v18 = &_swiftEmptyArrayStorage;
LABEL_47:

  return v18;
}

uint64_t sub_1003FE9EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(*a3 + 16))
  {
    result = sub_1004BBFB4();
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v8._countAndFlagsBits = 32;
      v8._object = 0xE100000000000000;
      return sub_1004BC0D4(v8, v7);
    }
  }

  else
  {

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    sub_1004BC024(v9);
    return a1;
  }

  return result;
}

char *Array<A>.asciiBoxed()(uint64_t a1)
{
  v40 = *(a1 + 16);
  if (v40)
  {
    v41 = 0;
    v5 = 0;
    v38 = a1 + 32;
    while (1)
    {
      v2 = *(v38 + 8 * v5);
      v7 = v2[2];
      if (v7)
      {
        v4 = v2[4];
        v3 = v2[5];

        if (v7 != 1)
        {
          v8 = v2 + 5;
          v1 = 1;
          v37 = v5;
LABEL_10:
          v9 = &v8[2 * v1];
          while (1)
          {
            v10 = v2[2];
            if (v1 >= v10)
            {
              break;
            }

            v12 = *(v9 - 1);
            v11 = *v9;
            v13 = (v1 + 1);

            v14 = sub_1004BBFB4();
            if (v14 < sub_1004BBFB4())
            {

              v3 = v11;
              v4 = v12;
              v5 = v37;
              v15 = v7 - 1 == v1++;
              v8 = v2 + 5;
              if (v15)
              {
                goto LABEL_17;
              }

              goto LABEL_10;
            }

            v9 += 2;
            ++v1;
            if (v7 == v13)
            {
              v5 = v37;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_17:
        v3 = sub_1004BBFB4();
      }

      else
      {
        v3 = 0;
      }

      ++v5;
      v6 = v41;
      if (v3 > v41)
      {
        v6 = v3;
      }

      v41 = v6;
      if (v5 == v40)
      {
        goto LABEL_19;
      }
    }
  }

  v41 = 0;
LABEL_19:
  v10 = v41;
  v7 = (v41 + 2);
  if (__OFADD__(v41, 2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    v7 = sub_1003F2670((v10 > 1), v1, 1, v7);
    goto LABEL_40;
  }

  sub_1003FBC0C();
  v42 = sub_1004BD254();
  v45 = v16;

  v48._countAndFlagsBits = 11441634;
  v48._object = 0xA300000000000000;
  sub_1004BC024(v48);

  v35 = v42;
  v36 = v45;
  v43 = sub_1004BD254();
  v46 = v17;

  v49._countAndFlagsBits = 10786018;
  v49._object = 0xA300000000000000;
  sub_1004BC024(v49);

  if (!v40)
  {
    v7 = &_swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v18 = 0;
  v34 = a1 + 32;
  v7 = &_swiftEmptyArrayStorage;
  do
  {
    v19 = *(v34 + 8 * v18);
    if (v18)
    {
      v20 = v46;
    }

    else
    {
      v20 = v36;
    }

    if (v18)
    {
      v21 = v43;
    }

    else
    {
      v21 = v35;
    }

    v39 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1003F2670(0, *(v7 + 2) + 1, 1, v7);
    }

    v23 = *(v7 + 2);
    v22 = *(v7 + 3);
    if (v23 >= v22 >> 1)
    {
      v7 = sub_1003F2670((v22 > 1), v23 + 1, 1, v7);
    }

    *(v7 + 2) = v23 + 1;
    v24 = &v7[16 * v23];
    *(v24 + 4) = v21;
    *(v24 + 5) = v20;
    v25 = *(v19 + 16);
    if (v25)
    {
      v26 = v19 + 40;
      do
      {
        v50._countAndFlagsBits = sub_1004BD254();
        sub_1004BC024(v50);

        v51._countAndFlagsBits = 8557794;
        v51._object = 0xA300000000000000;
        sub_1004BC024(v51);

        v28 = *(v7 + 2);
        v27 = *(v7 + 3);
        if (v28 >= v27 >> 1)
        {
          v7 = sub_1003F2670((v27 > 1), v28 + 1, 1, v7);
        }

        *(v7 + 2) = v28 + 1;
        v29 = &v7[16 * v28];
        *(v29 + 4) = 545428706;
        *(v29 + 5) = 0xA400000000000000;
        v26 += 16;
        --v25;
      }

      while (v25);
    }

    v18 = v39 + 1;
  }

  while (v39 + 1 != v40);
  v44 = sub_1004BD254();
  v47 = v30;

  v52._countAndFlagsBits = 11507170;
  v52._object = 0xA300000000000000;
  sub_1004BC024(v52);

  v2 = v44;
  v3 = v47;
  v4 = *(v7 + 2);
  v10 = *(v7 + 3);
  v1 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_45;
  }

LABEL_40:
  *(v7 + 2) = v1;
  v31 = &v7[16 * v4];
  *(v31 + 4) = v2;
  *(v31 + 5) = v3;
LABEL_42:

  return v7;
}

{
  sub_100003ABC(&qword_100613CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = a1;

  v3 = Array<A>.asciiBoxed()(inited);
  swift_setDeallocating();
  sub_1003FF0AC(inited + 32);
  return v3;
}

uint64_t Array<A>.appendStringComponents(_:lineLength:bullet:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = String.components(wrappedToLineLength:bullet:)(a3, a4, a5, a1, a2);

  return sub_1003FDE30(v5);
}

uint64_t sub_1003FF0AC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100613CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003FF114(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1003FF2E0();
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_100613CC8);
            v9 = sub_10024DFAC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1003FF294();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003FF294()
{
  result = qword_100614310;
  if (!qword_100614310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100614310);
  }

  return result;
}

unint64_t sub_1003FF2E0()
{
  result = qword_100613CD0;
  if (!qword_100613CD0)
  {
    sub_100003B68(&qword_100613CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613CD0);
  }

  return result;
}

id Optional<A>.isArtworkVisuallyIdentical(to:)(uint64_t a1, id a2)
{
  if (a2)
  {
    if (a1)
    {
      return [a2 isArtworkVisuallyIdenticalToCatalog:a1];
    }

    return 0;
  }

  return !a1;
}

uint64_t MPCPlaybackIntentOptions.debugDescription.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1003F2670(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1003F2670((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656D6D4979616C70;
  *(v5 + 5) = 0xEF796C6574616964;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003F2670(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1003F2670((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6575517465736572;
    *(v8 + 5) = 0xEA00000000006575;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003F2670(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1003F2670((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x4E70556F54646461;
    *(v11 + 5) = 0xEF64616548747865;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1003F2670(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1003F2670((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x4E70556F54646461;
  *(v14 + 5) = 0xEF6C696154747865;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003F2670(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1003F2670((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x5074726174736572;
    *(v17 + 5) = 0xEF6B63616279616CLL;
  }

LABEL_31:
  sub_100003ABC(&qword_100613CC0);
  sub_1003FF898();
  v18 = sub_1004BBD34();
  v20 = v19;

  v22._countAndFlagsBits = v18;
  v22._object = v20;
  sub_1004BC024(v22);

  v23._countAndFlagsBits = 93;
  v23._object = 0xE100000000000000;
  sub_1004BC024(v23);
  return 91;
}

__C::MPMediaLibraryFilteringOptions __swiftcall MPMediaLibraryFilteringOptions.init(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    isa = a1.value.super.super.isa;
    v2 = [(objc_class *)a1.value.super.super.isa unsignedIntegerValue];

    a1.value.super.super.isa = v2;
  }

  return a1.value.super.super.isa;
}

id static PropertySetCombinator.buildBlock(_:)(unint64_t a1)
{
  v2 = [objc_opt_self() emptyPropertySet];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = v2;
    v4 = v2;
    v11 = v2;
    if (!v3)
    {
      break;
    }

    v5 = 0;
    v6 = v2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v2 = sub_1004BD484();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v2 = *(a1 + 8 * v5 + 32);
      }

      v7 = v2;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v4 = [v6 propertySetByCombiningWithPropertySet:v2];

      ++v5;
      v6 = v4;
      if (v8 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v10 = v2;
    v3 = sub_1004BD6A4();
    v2 = v10;
  }

LABEL_12:

  return v4;
}

unint64_t sub_1003FF898()
{
  result = qword_100613CD8;
  if (!qword_100613CD8)
  {
    sub_100003B68(&qword_100613CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100613CD8);
  }

  return result;
}

uint64_t GenericMusicItem.innerMusicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v121 = a1;
  v69 = sub_1004B7BB4();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1004B7B64();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1004B7C34();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1004B7C94();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1004B7CF4();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1004BB744();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1004BB384();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1004B7B14();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1004BB204();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1004BBAB4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1004BBA84();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BAD04();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004B7A34();
  v104 = *(v14 - 8);
  v105 = v14;
  __chkstk_darwin(v14);
  v103 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BB464();
  v107 = *(v16 - 8);
  v108 = v16;
  __chkstk_darwin(v16);
  v106 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004B7AD4();
  v110 = *(v18 - 8);
  v111 = v18;
  __chkstk_darwin(v18);
  v109 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004BB6F4();
  v113 = *(v20 - 8);
  v114 = v20;
  __chkstk_darwin(v20);
  v112 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004B7AA4();
  v116 = *(v22 - 8);
  v117 = v22;
  __chkstk_darwin(v22);
  v115 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004B7C44();
  v118 = *(v24 - 8);
  v119 = v24;
  __chkstk_darwin(v24);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1004BB564();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1004BB434();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1004B7644();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v38, v120, v35);
  v39 = (*(v36 + 88))(v38, v35);
  if (v39 == enum case for GenericMusicItem.album(_:))
  {
    (*(v36 + 96))(v38, v35);
    v40 = *(v32 + 32);
    v40(v34, v38, v31);
    v41 = v121;
    v121[3] = v31;
    v41[4] = &protocol witness table for Album;
    v42 = sub_1000133B0(v41);
    return (v40)(v42, v34, v31);
  }

  v44 = v121;
  if (v39 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v45 = *(v28 + 32);
    v45(v30, v38, v27);
    v44[3] = v27;
    v44[4] = &protocol witness table for Artist;
    v46 = sub_1000133B0(v44);
    return (v45)(v46, v30, v27);
  }

  if (v39 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v36 + 96))(v38, v35);
    v47 = v119;
    v48 = *(v118 + 32);
    v48(v26, v38, v119);
    v44[3] = v47;
    v44[4] = sub_10040208C(&qword_100613D28, &type metadata accessor for Composer);
    v49 = sub_1000133B0(v44);
    v50 = v26;
    return (v48)(v49, v50, v47);
  }

  if (v39 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v51 = v115;
    v48 = *(v116 + 32);
    v47 = v117;
    v48(v115, v38, v117);
    v44[3] = v47;
    v52 = &unk_100613D20;
    v53 = &type metadata accessor for CreditArtist;
LABEL_9:
    v44[4] = sub_10040208C(v52, v53);
    v49 = sub_1000133B0(v44);
    v50 = v51;
    return (v48)(v49, v50, v47);
  }

  v54 = v121;
  if (v39 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v112;
    v56 = *(v113 + 32);
    v57 = v114;
    v56(v112, v38, v114);
    v58 = &protocol witness table for Curator;
LABEL_13:
    v54[3] = v57;
    v54[4] = v58;
LABEL_17:
    v61 = sub_1000133B0(v54);
    return (v56)(v61, v55, v57);
  }

  if (v39 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v109;
    v56 = *(v110 + 32);
    v57 = v111;
    v56(v109, v38, v111);
    v54[3] = v57;
    v59 = &unk_100613D18;
    v60 = &type metadata accessor for EditorialItem;
LABEL_16:
    v54[4] = sub_10040208C(v59, v60);
    goto LABEL_17;
  }

  if (v39 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v106;
    v56 = *(v107 + 32);
    v57 = v108;
    v56(v106, v38, v108);
    v58 = &protocol witness table for Genre;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v103;
    v56 = *(v104 + 32);
    v57 = v105;
    v56(v103, v38, v105);
    v54[3] = v57;
    v59 = &unk_100613D10;
    v60 = &type metadata accessor for MusicMovie;
    goto LABEL_16;
  }

  if (v39 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v36 + 96))(v38, v35);
    v57 = v102;
    v56 = *(v101 + 32);
    v55 = v100;
    v56(v100, v38, v102);
    v58 = &protocol witness table for MusicVideo;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v98 + 32);
    v55 = v97;
    v57 = v99;
    v56(v97, v38, v99);
    v58 = &protocol witness table for Playlist;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v95 + 32);
    v55 = v94;
    v57 = v96;
    v56(v94, v38, v96);
    v58 = &protocol witness table for RadioShow;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v92 + 32);
    v55 = v91;
    v57 = v93;
    v56(v91, v38, v93);
    v58 = &protocol witness table for RecordLabel;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v89 + 32);
    v55 = v88;
    v57 = v90;
    v56(v88, v38, v90);
    v54[3] = v57;
    v59 = &unk_100613D08;
    v60 = &type metadata accessor for SocialProfile;
    goto LABEL_16;
  }

  if (v39 == enum case for GenericMusicItem.song(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v86 + 32);
    v55 = v85;
    v57 = v87;
    v56(v85, v38, v87);
    v58 = &protocol witness table for Song;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.station(_:))
  {
    (*(v36 + 96))(v38, v35);
    v62 = *(v83 + 32);
    v63 = v82;
    v64 = v84;
    v62(v82, v38, v84);
    v44[3] = v64;
    v44[4] = &protocol witness table for Station;
    v65 = sub_1000133B0(v44);
    return (v62)(v65, v63, v64);
  }

  else
  {
    if (v39 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v80 + 32);
      v51 = v79;
      v47 = v81;
      v48(v79, v38, v81);
      v44[3] = v47;
      v52 = &unk_100613D00;
      v53 = &type metadata accessor for TVEpisode;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v77 + 32);
      v51 = v76;
      v47 = v78;
      v48(v76, v38, v78);
      v44[3] = v47;
      v52 = &unk_100613CF8;
      v53 = &type metadata accessor for TVSeason;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v74 + 32);
      v51 = v73;
      v47 = v75;
      v48(v73, v38, v75);
      v44[3] = v47;
      v52 = &unk_100613CF0;
      v53 = &type metadata accessor for TVShow;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v71 + 32);
      v51 = v70;
      v47 = v72;
      v48(v70, v38, v72);
      v44[3] = v47;
      v52 = &unk_100613CE8;
      v53 = &type metadata accessor for UploadedAudio;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v68 + 32);
      v51 = v67;
      v47 = v69;
      v48(v67, v38, v69);
      v44[3] = v47;
      v52 = &unk_100613CE0;
      v53 = &type metadata accessor for UploadedVideo;
      goto LABEL_9;
    }

    v66 = (v36 + 8);
    if (v39 == enum case for GenericMusicItem.other(_:))
    {
      result = (*v66)(v38, v35);
      v44[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
    }

    else
    {
      v121[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
      return (*v66)(v38, v35);
    }
  }

  return result;
}

uint64_t GenericMusicItem.catalogID.getter()
{
  v0 = sub_1004B7C34();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin(v0);
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004B7C94();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B7CF4();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BB384();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BBA84();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BAD04();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin(v10);
  v52 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004B7A34();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004BB564();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004BB434();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004B7644();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v57, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 != enum case for GenericMusicItem.album(_:))
  {
    if (v28 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v24 + 96))(v27, v23);
      (*(v16 + 32))(v18, v27, v15);
      v29 = sub_1004BB534();
      (*(v16 + 8))(v18, v15);
      return v29;
    }

    if (v28 != enum case for GenericMusicItem.composer(_:) && v28 != enum case for GenericMusicItem.curator(_:) && v28 != enum case for GenericMusicItem.editorialItem(_:) && v28 != enum case for GenericMusicItem.genre(_:))
    {
      if (v28 == enum case for GenericMusicItem.musicMovie(_:))
      {
        (*(v24 + 96))(v27, v23);
        v31 = v55;
        v30 = v56;
        (*(v55 + 32))(v14, v27, v56);
        v29 = sub_1004B7A24();
        (*(v31 + 8))(v14, v30);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v52;
        v33 = v53;
        v34 = v54;
        (*(v53 + 32))(v52, v27, v54);
        v35 = sub_1004BACB4();
LABEL_15:
        v29 = v35;
        (*(v33 + 8))(v32, v34);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v49;
        v33 = v50;
        v34 = v51;
        (*(v50 + 32))(v49, v27, v51);
        v35 = sub_1004BB944();
        goto LABEL_15;
      }

      if (v28 != enum case for GenericMusicItem.radioShow(_:) && v28 != enum case for GenericMusicItem.recordLabel(_:) && v28 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v28 == enum case for GenericMusicItem.song(_:))
        {
          (*(v24 + 96))(v27, v23);
          v32 = v46;
          v33 = v47;
          v34 = v48;
          (*(v47 + 32))(v46, v27, v48);
          v35 = sub_1004BB2B4();
          goto LABEL_15;
        }

        if (v28 != enum case for GenericMusicItem.station(_:))
        {
          if (v28 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v43;
            v33 = v44;
            v34 = v45;
            (*(v44 + 32))(v43, v27, v45);
            v35 = sub_1004B7CE4();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v40;
            v33 = v41;
            v34 = v42;
            (*(v41 + 32))(v40, v27, v42);
            v35 = sub_1004B7C84();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v37;
            v33 = v38;
            v34 = v39;
            (*(v38 + 32))(v37, v27, v39);
            v35 = sub_1004B7C24();
            goto LABEL_15;
          }
        }
      }
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }

  (*(v24 + 96))(v27, v23);
  (*(v20 + 32))(v22, v27, v19);
  v29 = sub_1004BB3D4();
  (*(v20 + 8))(v22, v19);
  return v29;
}