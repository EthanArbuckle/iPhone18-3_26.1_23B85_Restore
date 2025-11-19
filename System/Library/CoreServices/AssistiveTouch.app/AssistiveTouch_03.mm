uint64_t initializeBufferWithCopyOfBuffer for HeadTracker.HeadTrackerError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadTracker.HeadTrackerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeadTracker.HeadTrackerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10011067C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100110698(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100110710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100110770()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001107C8()
{
  v1 = *(sub_1000F40B0(&unk_100217BC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100110908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F40B0(&unk_100217BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100110978()
{
  v1 = *(sub_1000F40B0(&unk_100217BC0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_10010AF7C(v3, v4, v0 + v2, v6, v7);
}

unint64_t sub_100110A18()
{
  result = qword_100217EF8;
  if (!qword_100217EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217EF8);
  }

  return result;
}

double sub_100110A6C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

void *sub_100110C04()
{
  v1 = OBJC_IVAR___HNDMorphTransitionHelper_menuTransitionAnimation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100110C50(uint64_t a1)
{
  v3 = OBJC_IVAR___HNDMorphTransitionHelper_menuTransitionAnimation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100110D78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MorphTransitionHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100110DBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _UILiquidMorphAnimation.Parameters();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 alwaysShowMenu];
  v11 = [v3 currentStyle];
  if (v10)
  {
    sub_1000F40B0(&qword_100217B50);
    v12 = swift_allocObject();
    v38 = xmmword_1001BDE50;
    *(v12 + 16) = xmmword_1001BDE50;
    v36 = v7;
    v37 = v6;
    v34 = a1;
    v35 = a2;
    if (v11)
    {
      *(v12 + 32) = [v3 rocker];
      v13 = swift_allocObject();
      *(v13 + 16) = v38;
      *(v13 + 32) = [v3 expandedRocker];

      v14 = [v3 expandedRocker];
      [v14 ax_setWantsFlexibleGlassAppearance:1];
    }

    else
    {
      *(v12 + 32) = [v3 expandedRocker];
      v13 = swift_allocObject();
      *(v13 + 16) = v38;
      *(v13 + 32) = [v3 rocker];
    }

    v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v22 = *(v13 + 8 * i + 32);
        }

        v23 = v22;
        [v22 setAlpha:1.0];
      }
    }

    v24 = [v3 transitionHelper];
    v25 = (*((swift_isaMask & *v24) + 0x58))();

    if (v25)
    {

      v26 = [v3 transitionHelper];
      v27 = (*((swift_isaMask & *v26) + 0x58))();

      if (v27)
      {
LABEL_22:

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

        swift_allocObject();
        swift_unknownObjectWeakInit();

        _UILiquidMorphAnimation.Parameters.init(manageViews:usingIntermediateShapes:kick:animationSmoothness:)();
        dispatch thunk of _UILiquidMorphAnimation.morph(to:parameters:alongsideAnimations:completion:)();

        (*(v36 + 8))(v9, v37);

        return;
      }
    }

    else
    {
      v28 = [v3 transitionHelper];

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      v29 = objc_allocWithZone(type metadata accessor for _UILiquidMorphAnimation());
      v30 = _UILiquidMorphAnimation.init(morphables:)();
      (*((swift_isaMask & *v28) + 0x60))(v30);

      v31 = [v3 transitionHelper];
      v32 = (*((swift_isaMask & *v31) + 0x58))();

      if (v32)
      {
        _UILiquidMorphAnimation.overrideReduceMotion.setter();
      }

      v33 = [v3 transitionHelper];
      v27 = (*((swift_isaMask & *v33) + 0x58))();

      if (v27)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v15 = [v3 expandedRocker];
    v16 = v15;
    v17 = 0.0;
    if (!v11)
    {
      v17 = 1.0;
    }

    [v15 setAlpha:v17];

    v18 = [v3 expandedRocker];
    [v18 ax_setWantsFlexibleGlassAppearance:v11 == 0];

    sub_1001115A4();
    v19 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v19);
    *(&v34 - 2) = v3;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    static UIView.animate(_:changes:completion:)();
  }
}

unint64_t sub_1001115A4()
{
  result = qword_100217FE8;
  if (!qword_100217FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100217FE8);
  }

  return result;
}

void sub_1001115F0()
{
  v1 = *(v0 + 16);
  v2 = [v1 currentStyle];
  v3 = [v1 expandedRocker];
  v4 = v3;
  v5 = v2 == 0;
  v6 = v2 != 0;
  v7 = 0.0;
  if (!v5)
  {
    v7 = 1.0;
  }

  [v3 setAlpha:v7];

  v8 = [v1 expandedRocker];
  [v8 ax_setWantsFlexibleGlassAppearance:v6];
}

uint64_t sub_1001116B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001116E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong currentStyle];
    v3 = &selRef_expandedRocker;
    if (v2)
    {
      v3 = &selRef_rocker;
    }

    v4 = [v1 *v3];
    [v4 setAlpha:0.0];
  }
}

void sub_100111788()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong transitionHelper];

    (*((swift_isaMask & *v2) + 0x60))(0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 currentStyle];
    v6 = &selRef_expandedRocker;
    if (v5)
    {
      v6 = &selRef_rocker;
    }

    v7 = [v4 *v6];
    [v7 setAlpha:0.0];
  }
}

uint64_t sub_1001118B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100111C30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100111CC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

id sub_100111FB0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___HNDEvent_actionOverride];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR___HNDEvent_hardwareIdentifier];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR___HNDEvent_type] = 0;
  v4 = &v0[OBJC_IVAR___HNDEvent_location];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR___HNDEvent_deltaX] = 0;
  *&v0[OBJC_IVAR___HNDEvent_deltaY] = 0;
  *&v0[OBJC_IVAR___HNDEvent_buttonNumber] = 0;
  swift_beginAccess();
  *v2 = 0;
  v2[1] = 0;
  swift_beginAccess();
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR___HNDEvent_isEyeTrackingEvent] = 0;
  v0[OBJC_IVAR___HNDEvent_isVirtualTrackpadEvent] = 0;
  v0[OBJC_IVAR___HNDEvent_isGamepadEvent] = 0;
  v0[OBJC_IVAR___HNDEvent_isHeadTrackingEvent] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100112148()
{
  ObjectType = swift_getObjectType();
  sub_1000F40B0(&qword_100217900);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001BF4A0;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v25, "description");
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v2 + 56) = &type metadata for String;
  v7 = sub_100112498();
  *(v2 + 64) = v7;
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v8 = OBJC_IVAR___HNDEvent_type;
  swift_beginAccess();
  v9 = *&v0[v8];
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        v10 = 0xEA00000000006465;
        v11 = 0x766F4D6573756F4DLL;
LABEL_13:
        *(v2 + 96) = &type metadata for String;
        *(v2 + 104) = v7;
        *(v2 + 72) = v11;
        *(v2 + 80) = v10;
        swift_beginAccess();
        isa = CGPoint._bridgeToObjectiveC()().super.isa;
        *(v2 + 136) = sub_1001124EC();
        *(v2 + 144) = sub_100112538();
        *(v2 + 112) = isa;
        v13 = OBJC_IVAR___HNDEvent_deltaX;
        swift_beginAccess();
        v14 = *&v0[v13];
        *(v2 + 176) = &type metadata for CGFloat;
        v15 = sub_100112590();
        *(v2 + 184) = v15;
        *(v2 + 152) = v14;
        v16 = OBJC_IVAR___HNDEvent_deltaY;
        swift_beginAccess();
        v17 = *&v0[v16];
        *(v2 + 216) = &type metadata for CGFloat;
        *(v2 + 224) = v15;
        *(v2 + 192) = v17;
        v18 = OBJC_IVAR___HNDEvent_buttonNumber;
        swift_beginAccess();
        v19 = *&v0[v18];
        *(v2 + 256) = &type metadata for Int;
        *(v2 + 264) = &protocol witness table for Int;
        *(v2 + 232) = v19;
        swift_beginAccess();

        sub_1000F40B0(&qword_1002180F8);
        v20 = String.init<A>(describing:)();
        *(v2 + 296) = &type metadata for String;
        *(v2 + 304) = v7;
        *(v2 + 272) = v20;
        *(v2 + 280) = v21;
        v22 = OBJC_IVAR___HNDEvent_isEyeTrackingEvent;
        swift_beginAccess();
        v23 = v0[v22];
        *(v2 + 336) = &type metadata for Bool;
        *(v2 + 344) = &protocol witness table for Bool;
        *(v2 + 312) = v23;
        return String.init(format:_:)();
      }

      if (v9 == 4)
      {
        v10 = 0xEB000000006C6565;
        v11 = 0x68576C6C6F726353;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v10 = 0xED000070556E6F74;
LABEL_12:
    v11 = 0x7475426573756F4DLL;
    goto LABEL_13;
  }

  if (!v9)
  {
    v10 = 0xE400000000000000;
    v11 = 1819047246;
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    v10 = 0xEF6E776F446E6F74;
    goto LABEL_12;
  }

LABEL_14:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t sub_100112498()
{
  result = qword_1002180D8;
  if (!qword_1002180D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002180D8);
  }

  return result;
}

unint64_t sub_1001124EC()
{
  result = qword_1002180E0;
  if (!qword_1002180E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002180E0);
  }

  return result;
}

unint64_t sub_100112538()
{
  result = qword_1002180E8;
  if (!qword_1002180E8)
  {
    sub_1001124EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002180E8);
  }

  return result;
}

unint64_t sub_100112590()
{
  result = qword_1002180F0;
  if (!qword_1002180F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002180F0);
  }

  return result;
}

id sub_1001125E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100112694()
{
  v0 = swift_allocObject();
  sub_1001126CC();
  return v0;
}

uint64_t sub_1001126CC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0x3FE8000000000000;
  *(v0 + 40) = 11;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_100112834;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100101F7C;
  v7[3] = &unk_1001D9010;
  v3 = _Block_copy(v7);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:10.0];
  _Block_release(v3);
  v5 = *(v0 + 48);
  *(v0 + 48) = v4;

  return v0;
}

uint64_t sub_1001127FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100112834()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 56) = 1;
  }

  swift_beginAccess();
  v1 = swift_weakLoadStrong();
  if (v1)
  {
    v2 = *(v1 + 48);

    [v2 invalidate];
  }
}

uint64_t sub_1001128D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001128E8(CGFloat *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v11 = *(v9 + 40);
  v12 = sub_1001129B0(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v11 != 11)
  {
    LOBYTE(v12) = sub_100112B5C(v11, v12, a1);
  }

  *(v9 + 40) = v12;
  if (!static HeadGestureState.HeadState.__derived_enum_equals(_:_:)(v12, 10))
  {
    v13 = static HeadGestureState.HeadState.__derived_enum_equals(_:_:)(v12, 9);
    v14 = CACurrentMediaTime();
    if (v13)
    {
      if (*(v9 + 24) == 1)
      {
        *(v9 + 16) = v14;
        *(v9 + 24) = 0;
      }

      else if (v14 - *(v9 + 16) >= 0.75)
      {
        v15 = 256;
        return v15 | v12;
      }
    }

    else
    {
      *(v9 + 16) = 0;
      *(v9 + 24) = 1;
    }
  }

  v15 = 0;
  return v15 | v12;
}

uint64_t sub_1001129B0(CGFloat *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (*(v9 + 56))
  {
    return 10;
  }

  v24 = a1[8];
  v25 = a1[7];
  v23 = a1[9];
  v19 = sub_10011F574(*a1, a1[1], a1[2], a1[3]);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v27.origin.x = a6;
  v20 = v19;
  v27.origin.y = a7;
  v27.size.width = a8;
  v27.size.height = a9;
  v21 = CGRectContainsRect(v26, v27);
  if (*sub_10011ED0C() <= v20)
  {
    return 7;
  }

  v22 = *sub_10011ED18();
  if (v20 <= v22 || !v21)
  {
    return 8 * (v20 <= v22);
  }

  if (v25 <= *sub_10011ECD0())
  {
    return 2;
  }

  if (*sub_10011ECC4() <= v25)
  {
    return 1;
  }

  if (v24 <= *sub_10011ECE8())
  {
    return 3;
  }

  if (*sub_10011ECDC() <= v24)
  {
    return 4;
  }

  if (v23 <= *sub_10011ED00())
  {
    return 6;
  }

  if (*sub_10011ECF4() > v23)
  {
    return 9;
  }

  return 5;
}

uint64_t sub_100112B5C(uint64_t a1, uint64_t a2, CGFloat *a3)
{
  if (*(v3 + 56))
  {
    return 10;
  }

  v4 = a1;
  sub_100112ED8();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return v4;
  }

  v7 = a3[7];
  v8 = a3[8];
  v9 = a3[9];
  v10 = sub_10011F574(*a3, a3[1], a3[2], a3[3]);
  v11 = v4;
  if (v4 > 4u)
  {
    if (v4 > 6u)
    {
      if (v4 == 7)
      {
        v12 = *(sub_10011ED0C() + 1) < v10;
        v13 = 7;
      }

      else
      {
        v4 = a2;
        if (v11 != 8)
        {
          return v4;
        }

        v12 = v10 < *(sub_10011ED18() + 1);
        v13 = 8;
      }
    }

    else if (v4 == 5)
    {
      v12 = *(sub_10011ECF4() + 1) < v9;
      v13 = 5;
    }

    else
    {
      v4 = a2;
      if (v11 != 6)
      {
        return v4;
      }

      v12 = *(sub_10011ED00() + 1) < v9;
      v13 = 6;
    }

    goto LABEL_25;
  }

  if (v4 > 2u)
  {
    if (v4 == 3)
    {
      v12 = v8 < *(sub_10011ECE8() + 1);
      v13 = 3;
    }

    else
    {
      v4 = a2;
      if (v11 != 4)
      {
        return v4;
      }

      v12 = *(sub_10011ECDC() + 1) < v8;
      v13 = 4;
    }

LABEL_25:
    if (v12)
    {
      return v13;
    }

    else
    {
      return a2;
    }
  }

  if (v4 != 1)
  {
    v4 = a2;
    if (v11 != 2)
    {
      return v4;
    }

    v12 = v7 < *(sub_10011ECD0() + 1);
    v13 = 2;
    goto LABEL_25;
  }

  if (*(sub_10011ECC4() + 1) < v7)
  {
    return 1;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_100112D0C()
{

  return _swift_deallocClassInstance(v0, 57, 7);
}

uint64_t getEnumTagSinglePayload for FaceAlignmentValidatorMetadata(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceAlignmentValidatorMetadata(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100112ED8()
{
  result = qword_100218260;
  if (!qword_100218260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218260);
  }

  return result;
}

id sub_100112F2C()
{
  v1 = OBJC_IVAR___HNDZoomViewController____lazy_storage___zoomView;
  v2 = *&v0[OBJC_IVAR___HNDZoomViewController____lazy_storage___zoomView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___HNDZoomViewController____lazy_storage___zoomView];
LABEL_5:
    v17 = v2;
    return v3;
  }

  v4 = v0;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    type metadata accessor for ZoomLensView();
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = sub_100126BC8(v8, v10, v12, v14);
    v16 = *&v0[v1];
    *&v4[v1] = v15;
    v3 = v15;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100113004()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___HNDZoomViewController____lazy_storage___zoomView] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = v0;
  v2 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = sub_100112F2C();
    [v4 addSubview:v5];

    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001130FC()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___HNDZoomViewController____lazy_storage___zoomView] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = sub_100112F2C();
    [v4 addSubview:v5];

    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001132AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001132E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      [v4 didZoomInto:a1];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001135EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000FB624(v0, qword_10021C930);
  sub_1000F4758(v0, qword_10021C930);
  return Logger.init(subsystem:category:)();
}

uint64_t HandTrackerAvailabilityDetail.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x73646E6168206F6ELL;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t HandTrackerAvailabilityDetail.localizedDescription.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = String._bridgeToObjectiveC()();
    v2 = sub_100042B24(v1);

    if (v2)
    {
LABEL_6:
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }

    __break(1u);
  }

  if (!a1)
  {
    v3 = String._bridgeToObjectiveC()();
    v2 = sub_100042B24(v3);

    if (v2)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t HandTrackerAvailabilityDetail.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1001137E0()
{
  if (!*v0)
  {
    return 1701736302;
  }

  if (*v0 == 1)
  {
    return 0x73646E6168206F6ELL;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10011386C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F40B0(&qword_100218378);
  result = __chkstk_darwin(v4 - 8);
  v7 = OBJC_IVAR___SCATHandTracker_minimumHandID;
  if (*(v2 + OBJC_IVAR___SCATHandTracker_minimumHandID) != a1)
  {
    v44 = &v42 - v6;
    v8 = OBJC_IVAR___SCATHandTracker_currentHands;
    v9 = *(v2 + OBJC_IVAR___SCATHandTracker_currentHands);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    for (i = &_swiftEmptyArrayStorage; v12; *&i[8 * v21 + 32] = v17)
    {
LABEL_5:
      while (1)
      {
        v16 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v17 = *(*(v9 + 48) + ((v14 << 9) | (8 * v16)));
        if (v17 < *(v2 + v7))
        {
          break;
        }

        if (!v12)
        {
          goto LABEL_7;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100118B34(0, *(i + 2) + 1, 1, i);
        i = result;
      }

      v21 = *(i + 2);
      v20 = *(i + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v42 = v21 + 1;
        v23 = i;
        v24 = v21;
        result = sub_100118B34((v20 > 1), v21 + 1, 1, v23);
        v22 = v42;
        v21 = v24;
        i = result;
      }

      *(i + 2) = v22;
    }

LABEL_7:
    v18 = v44;
    while (1)
    {
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v19 >= v13)
      {
        break;
      }

      v12 = *(v9 + 64 + 8 * v19);
      ++v14;
      if (v12)
      {
        v14 = v19;
        goto LABEL_5;
      }
    }

    v25 = *(i + 2);
    if (v25)
    {
      v26 = 32;
      v27 = &qword_100218378;
      v43 = v8;
      do
      {
        v30 = *(v2 + v8);
        v31 = sub_100118D34(*&i[v26]);
        if (v32)
        {
          v33 = v27;
          v34 = i;
          v35 = v31;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v30;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100119B00();
            v30 = v45;
          }

          v37 = *(v30 + 56);
          v38 = type metadata accessor for Hand();
          v39 = *(v38 - 8);
          v40 = v39;
          v41 = v37 + *(v39 + 72) * v35;
          v18 = v44;
          (*(v39 + 32))(v44, v41, v38);
          sub_100119954(v35, v30);
          (*(v40 + 56))(v18, 0, 1, v38);
          i = v34;
          v27 = v33;
          v8 = v43;
        }

        else
        {
          v28 = type metadata accessor for Hand();
          (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
        }

        sub_1000F454C(v18, v27);
        v29 = *(v2 + v8);
        *(v2 + v8) = v30;

        sub_100117DF8(v29, v30);

        v26 += 8;
        --v25;
      }

      while (v25);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100113C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100118D34(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100119B00();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for Hand();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_100119954(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for Hand();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t HandTracker.hasHandGestureSwitchesAssigned.getter()
{
  v1 = [v0 actions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v10 = 1;
  type metadata accessor for AXCameraHandGesturesEventUsage(0);
  sub_10011C838(&unk_1002182A0, type metadata accessor for AXCameraHandGesturesEventUsage);
  AnyHashable.init<A>(_:)();
  if (*(v3 + 16) && (v4 = sub_10010CD74(v12), (v5 & 1) != 0))
  {
    sub_1000FB5C4(*(v3 + 56) + 32 * v4, &v10);
    sub_10010EDA0(v12);
    sub_1000F454C(&v10, &qword_100217B88);

    return 1;
  }

  else
  {
    sub_10010EDA0(v12);
    v10 = 0u;
    v11 = 0u;
    sub_1000F454C(&v10, &qword_100217B88);
    *&v10 = 2;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v7 = sub_10010CD74(v12), (v8 & 1) != 0))
    {
      sub_1000FB5C4(*(v3 + 56) + 32 * v7, &v10);
      sub_10010EDA0(v12);

      v6 = 1;
    }

    else
    {

      sub_10010EDA0(v12);
      v6 = 0;
      v10 = 0u;
      v11 = 0u;
    }

    sub_1000F454C(&v10, &qword_100217B88);
  }

  return v6;
}

id HandTracker.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___SCATHandTracker_persistentSwitchIdentifiers;
  *&v0[v2] = sub_10011C1E0(&_swiftEmptyArrayStorage);
  v3 = OBJC_IVAR___SCATHandTracker_switchDisplayNames;
  *&v0[v3] = sub_10011C3BC(&_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR___SCATHandTracker_handsSession] = 0;
  *&v0[OBJC_IVAR___SCATHandTracker_minimumNotDetectedCount] = 10;
  *&v0[OBJC_IVAR___SCATHandTracker_minimumHandID] = 0;
  if (qword_10021B830 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000F4758(v4, qword_10021C930);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "HandGestures: Initializing Hand Tracker Session.", v7, 2u);
  }

  *&v1[OBJC_IVAR___SCATHandTracker_currentHands] = sub_10011C4E4(&_swiftEmptyArrayStorage);
  v1[OBJC_IVAR___SCATHandTracker_availability] = 0;
  *&v1[OBJC_IVAR___SCATHandTracker_availabilityDetail] = 0;
  *&v1[OBJC_IVAR___SCATHandTracker_notDetectedCount] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HandTracker();
  return objc_msgSendSuper2(&v9, "init");
}

id HandTracker.__deallocating_deinit()
{
  v1 = v0;
  if (qword_10021B830 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C930);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HandGestures: Deinitializing Hand Tracker Session.", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for HandTracker();
  return objc_msgSendSuper2(&v7, "dealloc");
}

Swift::Void __swiftcall HandTracker.startRunning()()
{
  v1 = v0;
  v2 = type metadata accessor for HandsSessionSettings();
  __chkstk_darwin(v2 - 8);
  if (qword_10021B830 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000F4758(v3, qword_10021C930);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HandGestures: Will start Hand Gestures Session.", v6, 2u);
  }

  type metadata accessor for HandsSession();
  HandsSessionSettings.init()();
  *&v1[OBJC_IVAR___SCATHandTracker_handsSession] = HandsSession.__allocating_init(settings:)();

  v7 = sub_1000F4F78();
  v8 = *v7;
  v9 = *((swift_isaMask & **v7) + 0x150);
  v10 = type metadata accessor for HandTracker();
  v11 = v8;
  v9(v1, v10, &protocol witness table for HandTracker);

  v12.receiver = v1;
  v12.super_class = v10;
  objc_msgSendSuper2(&v12, "startRunning");
}

Swift::Void __swiftcall HandTracker.stopRunning()()
{
  v1 = v0;
  if (qword_10021B830 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C930);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HandGestures: Will stop Hand Gestures Session.", v5, 2u);
  }

  *&v1[OBJC_IVAR___SCATHandTracker_handsSession] = 0;

  v6 = sub_1000F4F78();
  v7 = *v6;
  v8 = *((swift_isaMask & **v6) + 0x158);
  v9 = type metadata accessor for HandTracker();
  v10 = v7;
  v8(v1, v9, &protocol witness table for HandTracker);

  v11.receiver = v1;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, "stopRunning");
}

Swift::Bool __swiftcall HandTracker.checkIsRunning()()
{
  v1 = sub_1000F4F78();
  v2 = *v1;
  v3 = *((swift_isaMask & **v1) + 0x168);
  v4 = type metadata accessor for HandTracker();
  v5 = v2;
  LOBYTE(v4) = v3(v0, v4, &protocol witness table for HandTracker);

  return v4 & 1;
}

void HandTracker.update(withSwitches:recipe:)(uint64_t a1, void *a2)
{
  v5 = sub_1000F40B0(&unk_100217BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v69 - v6;
  if (!a1)
  {
    if (qword_10021B830 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000F4758(v13, qword_10021C930);
    v79 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v79, v14, "update switches called with nil list of switches.", v15, 2u);
    }

    v16 = v79;

    return;
  }

  v74 = v7;
  v8 = sub_10011C6E4(&_swiftEmptyArrayStorage);
  v77 = v2;
  v78 = v8;
  v75 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10011C7EC();
    sub_10011C838(&qword_100217BD0, sub_10011C7EC);
    Set.Iterator.init(_cocoa:)();
    a1 = v83;
    v9 = v84;
    v10 = v85;
    v11 = v86;
    v12 = v87;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v12 = v19 & *(a1 + 56);

    v11 = 0;
  }

  v76 = v10;
  v20 = (v10 + 64) >> 6;
  v79 = SCATSwitchSourceCameraHandGesture;
  v73 = @"SwitchActionTypeNormal";
  v72 = @"SwitchActionTypeLongPress";
  while (1)
  {
    if (a1 < 0)
    {
      v24 = __CocoaSet.Iterator.next()();
      if (!v24)
      {
        break;
      }

      v82 = v24;
      sub_10011C7EC();
      swift_dynamicCast();
      v23 = v81;
      if (!v81)
      {
        break;
      }

      goto LABEL_25;
    }

    v21 = v11;
    v22 = v12;
    if (!v12)
    {
      while (1)
      {
        v11 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v11 >= v20)
        {
          goto LABEL_36;
        }

        v22 = *(v9 + 8 * v11);
        ++v21;
        if (v22)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_21:
    v12 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      break;
    }

LABEL_25:
    v25 = [v23 source];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
    {

LABEL_32:
      v71 = [v23 accessibilityEventUsage];
      v32 = sub_10010F1A8(&_swiftEmptyArrayStorage);
      v82 = v32;
      v33 = v75;
      if (v75)
      {
        v34 = objc_allocWithZone(SCATActionItem);
        v70 = v33;
        v35 = [v34 init];
        v36 = [objc_allocWithZone(SCATActionItem) init];
        v37 = v35;
        v38 = v36;
        SCATGetActionIdentifiersForRecipeAndSwitch(v70, v23, v37, v38);
        v39 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v32;
        sub_10010E1EC(v37, v39, isUniquelyReferenced_nonNull_native);

        v41 = v81;
        v42 = v72;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v41;
        sub_10010E1EC(v38, v42, v43);

        v44 = v81;
        v82 = v81;
      }

      else
      {
        v45 = objc_opt_self();
        v46 = v73;
        v47 = v23;
        sub_10010C480([v45 fromSwitch:v47 longPress:0], v46);
        v48 = v72;
        v49 = [v45 fromSwitch:v47 longPress:1];

        sub_10010C480(v49, v48);
        v44 = v82;
      }

      v50 = v78;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v50;
      v52 = v71;
      sub_10011A55C(v44, v71, v51);
      v78 = v81;
      v53 = [v23 uuid];
      v54 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = type metadata accessor for UUID();
      (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
      v56 = v77;
      swift_beginAccess();
      sub_100114F94(v54, v52);
      swift_endAccess();
      v57 = [v23 name];
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = OBJC_IVAR___SCATHandTracker_switchDisplayNames;
      swift_beginAccess();
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v80 = *&v56[v60];
      *&v56[v60] = 0x8000000000000000;
      sub_10011A294(v70, v59, v71, v61);
      *&v56[v60] = v80;
      swift_endAccess();
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_36:
  sub_10010F1A0();
  if (qword_10021B830 == -1)
  {
    goto LABEL_37;
  }

LABEL_41:
  swift_once();
LABEL_37:
  v62 = type metadata accessor for Logger();
  sub_1000F4758(v62, qword_10021C930);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v77;
  if (v65)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "HandGestures: Updated Actions", v67, 2u);
  }

  sub_100115434(v78);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v66 setActions:isa];
}

uint64_t sub_100114F94(uint64_t a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = sub_1000F40B0(&unk_100217BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1000F454C(a1, &unk_100217BC0);
    v13 = sub_10010CD08(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100119ED0();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_10010DA40(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1000F454C(v8, &unk_100217BC0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10011A3F4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1001151E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F40B0(&qword_100218378);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Hand();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1000F454C(a1, &qword_100218378);
    v13 = sub_100118D34(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100119B00();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_100119954(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1000F454C(v8, &qword_100218378);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10011A6A8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_100115434(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F40B0(&qword_100217F38);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    *&v28[0] = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    type metadata accessor for AXCameraHandGesturesEventUsage(0);

    swift_dynamicCast();
    sub_1000F40B0(&unk_100217F00);
    swift_dynamicCast();
    v24 = v20;
    v25 = v21;
    v26 = v22;
    sub_1000FAF9C(&v23, v27);
    v20 = v24;
    v21 = v25;
    v22 = v26;
    sub_1000FAF9C(v27, v28);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v20;
    *(v11 + 16) = v21;
    *(v11 + 32) = v22;
    result = sub_1000FAF9C(v28, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001157C4(uint64_t a1)
{
  v3 = [v1 actions];
  if (!v3)
  {
    if (qword_10021B830 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000F4758(v9, qword_10021C930);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "HandGestures: could not lookup action identifier because actions are nil", v12, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for AXCameraHandGesturesEventUsage(0);
  sub_10011C838(&unk_1002182A0, type metadata accessor for AXCameraHandGesturesEventUsage);
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10010CD74(v13), (v7 & 1) == 0))
  {

    sub_10010EDA0(v13);
    return 0;
  }

  sub_1000FB5C4(*(v5 + 56) + 32 * v6, v14);
  sub_10010EDA0(v13);

  sub_1000F40B0(&unk_100217F00);
  if (swift_dynamicCast())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall HandTracker._didReceiveAction(withIdentifier:start:ignoreInputHold:)(SCATActionItem withIdentifier, Swift::Bool start, Swift::Bool ignoreInputHold)
{
  v4 = v3;
  shortcutIdentifier = withIdentifier.shortcutIdentifier;
  action = withIdentifier.action;
  isa = withIdentifier.super.isa;
  if ([v4 delegate])
  {
    aBlock[6] = &OBJC_PROTOCOL____TtP15assistivetouchd34SCATHandTrackerInputSourceDelegate__0;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8 && (v9 = v8, (v10 = [v4 queue]) != 0))
    {
      v11 = v10;
      if ([v9 respondsToSelector:"handTrackerInputSource:didReceiveActionWithIdentifier:start:ignoreInputHold:"])
      {
        v12 = swift_allocObject();
        *(v12 + 16) = v9;
        *(v12 + 24) = v4;
        *(v12 + 32) = isa;
        *(v12 + 40) = action & 1;
        *(v12 + 41) = shortcutIdentifier & 1;
        aBlock[4] = sub_10011C8C8;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000F55D8;
        aBlock[3] = &unk_1001D9108;
        v13 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v14 = v4;
        v15 = isa;

        [v11 performAsynchronousWritingBlock:v13];
        swift_unknownObjectRelease();

        _Block_release(v13);
      }

      else
      {
        if (qword_10021B830 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_1000F4758(v16, qword_10021C930);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "HandGestures: Failed to send action.", v19, 2u);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_100115CB4(char a1, uint64_t a2)
{
  v3 = v2;
  if ([v2 delegate])
  {
    aBlock[6] = &OBJC_PROTOCOL____TtP15assistivetouchd34SCATHandTrackerInputSourceDelegate__0;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6 && (v7 = v6, (v8 = [v2 queue]) != 0))
    {
      v9 = v8;
      v10 = a1 & 1;
      if (v2[OBJC_IVAR___SCATHandTracker_availability] == (a1 & 1) && *&v2[OBJC_IVAR___SCATHandTracker_availabilityDetail] == a2)
      {
        swift_unknownObjectRelease();

        return;
      }

      v2[OBJC_IVAR___SCATHandTracker_availability] = v10;
      *&v2[OBJC_IVAR___SCATHandTracker_availabilityDetail] = a2;
      if (qword_10021B830 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000F4758(v11, qword_10021C930);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v26 = v9;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        aBlock[0] = v15;
        *v14 = 67109378;
        *(v14 + 4) = a1 & 1;
        *(v14 + 8) = 2080;
        v25 = a1 & 1;
        if (a2)
        {
          if (a2 != 1)
          {
            _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
            return;
          }

          v16 = 0xE800000000000000;
          v17 = 0x73646E6168206F6ELL;
        }

        else
        {
          v16 = 0xE400000000000000;
          v17 = 1701736302;
        }

        v18 = sub_1000F9228(v17, v16, aBlock);

        *(v14 + 10) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Did Update Availability: isAvailable: %{BOOL}d - detail: %s", v14, 0x12u);
        sub_1000FA500(v15);

        v9 = v26;
        v10 = v25;
      }

      else
      {
      }

      if ([v7 respondsToSelector:"handTrackerInputSource:didUpdateAvailability:withDetail:"])
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v7;
        *(v19 + 24) = v3;
        *(v19 + 32) = v10;
        *(v19 + 40) = a2;
        aBlock[4] = sub_10011D7E0;
        aBlock[5] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000F55D8;
        aBlock[3] = &unk_1001D92A0;
        v20 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v21 = v3;

        [v9 performAsynchronousWritingBlock:v20];
        swift_unknownObjectRelease();

        _Block_release(v20);
      }

      else
      {
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "HandGestures: Failed to update availability.", v24, 2u);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_10011609C(opaqueCMSampleBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for HandsInput();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CameraMetadata();
  v42 = *(v44 - 8);
  v7 = __chkstk_darwin(v44);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for CameraCalibration();
  v13 = __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v19 = &v32 - v18;
  if (*(v2 + OBJC_IVAR___SCATHandTracker_handsSession))
  {
    v38 = v17;
    v39 = v16;
    v37 = v4;

    v20 = CMSampleBufferRef.imageBuffer.getter();
    if (v20)
    {
      v21 = v20;
      CMSampleBufferGetPresentationTimeStamp(&v45, a1);
      value = v45.value;
      epoch = v45.epoch;
      v36 = *&v45.timescale;
      v23 = CMGetAttachment(a1, kCMSampleBufferAttachmentKey_CameraIntrinsicMatrix, 0);
      if (v23 && (v46 = v23, (swift_dynamicCast() & 1) != 0))
      {
        v32 = value;
        v25 = v45.value;
        v24 = *&v45.timescale;
        type metadata accessor for simd_float3x3(0);
        v34 = v25;
        v33 = v24;
        v26 = v40;
        Data.withUnsafeBytes<A, B>(_:)();
        v40 = v26;
        CVImageBufferGetEncodedSize(v21);
        static CameraCalibration.rectilinear(imageSize:intrinsics:)();
        (*(v38 + 16))(v15, v19, v39);
        CameraMetadata.init(timestamp:calibration:)();
        v27 = v42;
        (*(v42 + 16))(v9, v11, v44);
        v28 = v21;
        HandsInput.init(image:metadata:)();
        dispatch thunk of HandsSession.runSync(input:)();
        sub_10011D74C(v34, v33);

        (*(v43 + 8))(v6, v37);
        (*(v27 + 8))(v11, v44);
        (*(v38 + 8))(v19, v39);
      }

      else
      {
        sub_10011D6E4();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_10011D6E4();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10011D6E4();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }
}

__n128 sub_100116530@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_100116544()
{
  v2 = type metadata accessor for Hand();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___SCATHandTracker_minimumHandID;
  v18 = v0;
  v7 = *(v0 + OBJC_IVAR___SCATHandTracker_minimumHandID);
  result = HandsOutput.hands.getter();
  v9 = result;
  v17 = *(result + 16);
  if (v17)
  {
    v10 = 0;
    v15 = v6;
    v16 = v3 + 16;
    v11 = (v3 + 8);
    while (v10 < *(v9 + 16))
    {
      (*(v3 + 16))(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v2);
      sub_100116768(v5);
      if (v1)
      {
        (*v11)(v5, v2);
      }

      if (v7 < Hand.id.getter())
      {
        v7 = Hand.id.getter();
      }

      ++v10;
      result = (*v11)(v5, v2);
      if (v17 == v10)
      {

        v13 = *(v18 + v15);
        *(v18 + v15) = v7;
        return sub_10011386C(v13);
      }
    }

    __break(1u);
  }

  else
  {

    sub_10011D6E4();
    swift_allocError();
    *v12 = 3;
    return swift_willThrow();
  }

  return result;
}

Swift::UInt sub_100116768(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F40B0(&qword_100218378);
  v5 = __chkstk_darwin(v4 - 8);
  v99 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v105 = &v95 - v8;
  __chkstk_darwin(v7);
  v104 = &v95 - v9;
  v10 = type metadata accessor for Hand.Action();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v113 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v95 - v14;
  v16 = type metadata accessor for Hand.Chirality();
  v101 = *(v16 - 8);
  v102 = v16;
  __chkstk_darwin(v16);
  v100 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Hand();
  v115 = *(v112 - 8);
  v18 = __chkstk_darwin(v112);
  v103 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v107 = &v95 - v21;
  v22 = __chkstk_darwin(v20);
  v106 = &v95 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v95 - v25;
  __chkstk_darwin(v24);
  v28 = &v95 - v27;
  v29 = [objc_opt_self() sharedInstance];
  v30 = [v29 switchControlDebugLoggingEnabled];

  v116 = v2;
  v110 = v10;
  v111 = a1;
  v109 = v15;
  if (v30)
  {
    v114 = v11;
    if (qword_10021B830 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000F4758(v31, qword_10021C930);
    v32 = v115;
    v33 = *(v115 + 16);
    v34 = v112;
    v33(v28, a1, v112);
    v33(v26, a1, v34);
    v33(v106, a1, v34);
    v33(v107, a1, v34);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v117[0] = v97;
      *v37 = 134218754;
      v96 = v36;
      v38 = Hand.id.getter();
      v98 = *(v32 + 8);
      v98(v28, v34);
      *(v37 + 4) = v38;
      v95 = v35;
      *(v37 + 12) = 2080;
      v39 = v100;
      Hand.chirality.getter();
      sub_10011C838(&qword_100218380, &type metadata accessor for Hand.Chirality);
      v40 = v102;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v101 + 8))(v39, v40);
      v98(v26, v34);
      v44 = sub_1000F9228(v41, v43, v117);

      *(v37 + 14) = v44;
      *(v37 + 22) = 2080;
      v15 = v109;
      v45 = v106;
      Hand.action.getter();
      v46 = Hand.Action.description.getter();
      v48 = v47;
      v49 = v114;
      v10 = v110;
      (*(v114 + 8))(v15, v110);
      v50 = v45;
      v51 = v98;
      v98(v50, v34);
      v52 = sub_1000F9228(v46, v48, v117);

      *(v37 + 24) = v52;
      *(v37 + 32) = 2048;
      v53 = v107;
      Hand.confidence.getter();
      v55 = v54;
      v56 = v34;
      v11 = v49;
      v51(v53, v56);
      *(v37 + 34) = v55;
      v57 = v95;
      _os_log_impl(&_mh_execute_header, v95, v96, "Hand: id: %llu \n chirality: %s \n action: %s \n confidence: %f", v37, 0x2Au);
      swift_arrayDestroy();

      v2 = v116;
    }

    else
    {
      v58 = *(v32 + 8);
      v58(v28, v34);

      v58(v107, v34);
      v58(v106, v34);
      v58(v26, v34);
      v2 = v116;
      v15 = v109;
      v10 = v110;
      v11 = v114;
    }
  }

  Hand.action.getter();
  v59 = v113;
  v107 = *(v11 + 104);
  (v107)(v113, enum case for Hand.Action.none(_:), v10);
  v60 = static Hand.Action.== infix(_:_:)();
  v61 = *(v11 + 8);
  v61(v59, v10);
  v114 = v11 + 8;
  v61(v15, v10);
  v62 = v112;
  if (v60)
  {
    v63 = Hand.id.getter();
    v64 = OBJC_IVAR___SCATHandTracker_currentHands;
    v117[0] = *(v116 + OBJC_IVAR___SCATHandTracker_currentHands);

    v65 = v104;
    sub_100113C4C(v63, v104);
    v66 = v117[0];
    v67 = *(v116 + v64);
    *(v116 + v64) = v117[0];
    v2 = v116;

    sub_100117DF8(v67, v66);

    v68 = v115;
    if ((*(v115 + 48))(v65, 1, v62) == 1)
    {
      sub_1000F454C(v65, &qword_100218378);
    }

    else
    {
      v69 = v103;
      (*(v68 + 32))(v103, v65, v62);
      v70 = Hand.eventUsage.getter();
      if ((v71 & 1) == 0)
      {
        sub_1001176B0(v70, 0);
        return (*(v68 + 8))(v69, v62);
      }

      (*(v68 + 8))(v69, v62);
    }
  }

  v72 = Hand.id.getter();
  v73 = OBJC_IVAR___SCATHandTracker_currentHands;
  v74 = *(v2 + OBJC_IVAR___SCATHandTracker_currentHands);
  if (*(v74 + 16) && (v75 = sub_100118D34(v72), (v76 & 1) != 0))
  {
    v77 = v115;
    v78 = *(v74 + 56) + *(v115 + 72) * v75;
    v79 = v105;
    (*(v115 + 16))(v105, v78, v62);
    (*(v77 + 56))(v79, 0, 1, v62);
    return sub_1000F454C(v79, &qword_100218378);
  }

  else
  {
    v81 = v105;
    v106 = *(v115 + 56);
    (v106)(v105, 1, 1, v62);
    sub_1000F454C(v81, &qword_100218378);
    v82 = v109;
    v83 = v111;
    Hand.action.getter();
    v84 = v113;
    v85 = v110;
    (v107)(v113, enum case for Hand.Action.thumbIndexPinch(_:), v110);
    LOBYTE(v81) = static Hand.Action.== infix(_:_:)();
    v61(v84, v85);
    result = (v61)(v82, v85);
    if (v81)
    {
      result = Hand.eventUsage.getter();
      v86 = v108;
      if ((v87 & 1) == 0)
      {
        v88 = v83;
        v89 = v116;
        result = sub_1001176B0(result, 1);
        if (!v86)
        {
          v90 = Hand.id.getter();
          v91 = v99;
          v92 = v112;
          (*(v115 + 16))(v99, v88, v112);
          (v106)(v91, 0, 1, v92);
          v117[0] = *(v89 + v73);

          sub_1001151E4(v91, v90);
          v93 = v117[0];
          v94 = *(v89 + v73);
          *(v89 + v73) = v117[0];

          sub_100117DF8(v94, v93);
        }
      }
    }
  }

  return result;
}

uint64_t Hand.eventUsage.getter()
{
  v1 = type metadata accessor for Hand();
  v31 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Hand.Chirality();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Hand.Action();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  Hand.action.getter();
  if ((*(v9 + 88))(v14, v8) != enum case for Hand.Action.thumbIndexPinch(_:))
  {
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  Hand.chirality.getter();
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 == enum case for Hand.Chirality.left(_:))
  {
    return 1;
  }

  if (v15 != enum case for Hand.Chirality.right(_:))
  {
    v30 = v5;
    if (qword_10021B830 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000F4758(v17, qword_10021C930);
    (*(v31 + 16))(v3, v0, v1);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v20;
      v29 = swift_slowAlloc();
      v32 = v29;
      *v20 = 136315138;
      v28 = v19;
      Hand.action.getter();
      v26 = Hand.Action.description.getter();
      v22 = v21;
      (*(v9 + 8))(v12, v8);
      (*(v31 + 8))(v3, v1);
      v23 = sub_1000F9228(v26, v22, &v32);

      v24 = v27;
      *(v27 + 1) = v23;
      _os_log_impl(&_mh_execute_header, v18, v28, "HandGestures: Received unknown action: %s", v24, 0xCu);
      sub_1000FA500(v29);
    }

    else
    {

      (*(v31 + 8))(v3, v1);
    }

    (*(v30 + 8))(v7, v4);
    return 0;
  }

  return 2;
}

uint64_t sub_1001176B0(Swift::UInt a1, int a2)
{
  v4 = v2;
  v7 = sub_1000F40B0(&unk_100217BC0);
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  result = sub_1001157C4(a1);
  if (result)
  {
    v14 = result;
    v15 = [v2 queue];
    if (!v15)
    {
    }

    v49 = v15;
    v50 = v3;
    v16 = OBJC_IVAR___SCATHandTracker_persistentSwitchIdentifiers;
    swift_beginAccess();
    v17 = *&v2[v16];
    v18 = *(v17 + 16);
    v48 = a2;
    if (v18 && (v19 = sub_10010CD08(a1), (v20 & 1) != 0))
    {
      v21 = v19;
      v47 = *(v17 + 56);
      v22 = type metadata accessor for UUID();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v12, v47 + *(v23 + 72) * v21, v22);
      (*(v23 + 56))(v12, 0, 1, v22);
    }

    else
    {
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    }

    v25 = OBJC_IVAR___SCATHandTracker_switchDisplayNames;
    swift_beginAccess();
    v26 = *&v4[v25];
    if (*(v26 + 16) && (v27 = sub_10010CD08(a1), (v28 & 1) != 0))
    {
      v29 = (*(v26 + 56) + 16 * v27);
      v30 = v29[1];
      v47 = *v29;

      if (!*(v14 + 16))
      {
LABEL_10:
        v31 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v47 = 0;
      v30 = 0;
      if (!*(v14 + 16))
      {
        goto LABEL_10;
      }
    }

    v32 = sub_1000FCCD4(@"SwitchActionTypeNormal");
    if (v33)
    {
      v31 = *(*(v14 + 56) + 8 * v32);
      v34 = v31;
      if (!*(v14 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v31 = 0;
      if (!*(v14 + 16))
      {
        goto LABEL_19;
      }
    }

    v35 = sub_1000FCCD4(@"SwitchActionTypeLongPress");
    if (v36)
    {
      v37 = *(*(v14 + 56) + 8 * v35);

LABEL_20:
      sub_1000F44E4(v12, v10, &unk_100217BC0);
      v38 = (*(v52 + 80) + 41) & ~*(v52 + 80);
      v39 = (v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v4;
      *(v40 + 24) = v31;
      *(v40 + 32) = v37;
      *(v40 + 40) = v48 & 1;
      sub_100110908(v10, v40 + v38);
      v41 = (v40 + v39);
      *v41 = v47;
      v41[1] = v30;
      aBlock[4] = sub_10011D63C;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000F55D8;
      aBlock[3] = &unk_1001D9250;
      v42 = _Block_copy(aBlock);
      v43 = v37;
      v44 = v4;
      v45 = v31;

      v46 = v49;
      [v49 performAsynchronousWritingBlock:v42];
      _Block_release(v42);

      return sub_1000F454C(v12, &unk_100217BC0);
    }

LABEL_19:

    v37 = 0;
    goto LABEL_20;
  }

  return result;
}

void sub_100117B3C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, NSString a7)
{
  v19[1] = a6;
  v13 = sub_1000F40B0(&unk_100217BC0);
  __chkstk_darwin(v13 - 8);
  v15 = v19 - v14;
  sub_1000F44E4(a5, v19 - v14, &unk_100217BC0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000F454C(v15, &unk_100217BC0);
    v18 = 0;
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  UUID.uuidString.getter();
  (*(v17 + 8))(v15, v16);
  v18 = String._bridgeToObjectiveC()();

  if (a7)
  {
LABEL_5:
    a7 = String._bridgeToObjectiveC()();
  }

LABEL_6:
  [a1 _handleAction:a2 longPressAction:a3 start:a4 & 1 switchIdentifier:v18 switchDisplayName:a7];
}

uint64_t sub_100117D00(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_10011A8BC(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100117DF8(uint64_t a1, uint64_t a2)
{
  v75 = type metadata accessor for Hand.Chirality();
  v67 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Hand.Action();
  v73 = *(v70 - 8);
  v5 = __chkstk_darwin(v70);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v60 - v7;
  v79 = type metadata accessor for Hand();
  v82 = *(v79 - 8);
  v9 = __chkstk_darwin(v79);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v60 - v12;

  v15 = sub_100117D00(v14);

  v17 = sub_100117D00(v16);
  if (v17[2] <= v15[2] >> 3)
  {
    v84[0] = v15;

    sub_10011A99C(v17);
    v18 = v84[0];
  }

  else
  {

    v18 = sub_10011AA94(v17, v15);
  }

  if (v15[2] <= v17[2] >> 3)
  {
    v84[0] = v17;
    sub_10011A99C(v15);

    v19 = v84[0];
  }

  else
  {
    v19 = sub_10011AA94(v15, v17);
  }

  v20 = sub_10011CCA4(a1, v19);
  swift_bridgeObjectRelease_n();

  v21 = sub_10011CCA4(a2, v18);
  swift_bridgeObjectRelease_n();
  v83 = v21;
  v22 = *(v21 + 16);
  v81 = v8;
  if (v22)
  {
    v23 = sub_100118C38(v22, 0);
    v80 = sub_10011BF3C(v84, &v23[(*(v82 + 80) + 32) & ~*(v82 + 80)], v22, v83);
    v78 = v84[4];

    sub_10010F1A0();
    if (v80 != v22)
    {
      __break(1u);
    }
  }

  v24 = *(v20 + 16);
  v25 = v79;
  if (v24)
  {
    v26 = sub_100118C38(*(v20 + 16), 0);
    v27 = sub_10011BF3C(v84, &v26[(*(v82 + 80) + 32) & ~*(v82 + 80)], v24, v20);
    sub_10010F1A0();
    if (v27 != v24)
    {
      goto LABEL_44;
    }
  }

  else
  {

    v26 = &_swiftEmptyArrayStorage;
  }

  v29 = v70;
  v80 = *(v26 + 2);
  if (!v80)
  {

LABEL_42:

    return;
  }

  v68 = v11;
  v30 = 0;
  v76 = 0;
  v78 = &v26[(*(v82 + 80) + 32) & ~*(v82 + 80)];
  v83 = v82 + 16;
  v31 = (v73 + 11);
  v77 = enum case for Hand.Action.thumbIndexPinch(_:);
  ++v73;
  v32 = (v82 + 8);
  v72 = (v67 + 11);
  v71 = enum case for Hand.Chirality.left(_:);
  v69 = enum case for Hand.Chirality.right(_:);
  ++v67;
  *&v28 = 136315138;
  v60 = v28;
  while (v30 < *(v26 + 2))
  {
    v33 = v26;
    v34 = *(v82 + 16);
    v34(v13, v78 + *(v82 + 72) * v30, v25);
    v35 = v81;
    Hand.action.getter();
    v36 = (*v31)(v35, v29);
    if (v36 == v77)
    {
      v37 = v74;
      Hand.chirality.getter();
      v38 = (*v72)(v37, v75);
      if (v38 == v71)
      {
        v39 = 1;
      }

      else
      {
        if (v38 != v69)
        {
          v45 = v79;
          if (qword_10021B830 != -1)
          {
            swift_once();
          }

          v46 = type metadata accessor for Logger();
          sub_1000F4758(v46, qword_10021C930);
          v47 = v68;
          v34(v68, v13, v45);
          v48 = v45;
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v64 = v49;
            v52 = v51;
            v65 = swift_slowAlloc();
            v84[0] = v65;
            *v52 = v60;
            v63 = v50;
            v53 = v61;
            v66 = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            Hand.action.getter();
            v62 = Hand.Action.description.getter();
            v55 = v54;
            (*v73)(v53, v70);
            v56 = *v32;
            (*v32)(v47, v48);
            v57 = sub_1000F9228(v62, v55, v84);

            v58 = v52;
            *(v52 + 4) = v57;
            v59 = v64;
            _os_log_impl(&_mh_execute_header, v64, v63, "HandGestures: Received unknown action: %s", v58, 0xCu);
            sub_1000FA500(v65);

            v25 = v79;
          }

          else
          {

            v56 = *v32;
            (*v32)(v47, v48);
            v25 = v48;
          }

          v26 = v33;
          (*v67)(v74, v75);
          v56(v13, v25);
          v29 = v70;
          goto LABEL_18;
        }

        v39 = 2;
      }

      (*v32)(v13, v79);
      v40 = v76;
      sub_1001176B0(v39, 0);
      if (v40)
      {
        if (qword_10021B830 != -1)
        {
          swift_once();
        }

        v76 = 0;
        v41 = type metadata accessor for Logger();
        sub_1000F4758(v41, qword_10021C930);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "HandGestures: Error handling removed Hand reference", v44, 2u);
        }

        v29 = v70;
      }

      else
      {
        v76 = 0;
      }

      v25 = v79;
    }

    else
    {
      (*v73)(v35, v29);
      (*v32)(v13, v25);
    }

    v26 = v33;
LABEL_18:
    if (v80 == ++v30)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t Hand.Action.description.getter()
{
  v1 = type metadata accessor for Hand.Action();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = *(v2 + 16);
  v8(&v21 - v6, v0, v1);
  v9 = (*(v2 + 88))(v7, v1);
  if (v9 == enum case for Hand.Action.none(_:))
  {
    return 1701736302;
  }

  if (v9 == enum case for Hand.Action.thumbIndexPinch(_:))
  {
    return 0x68636E6970;
  }

  if (v9 == enum case for Hand.Action.thumbIndexTap(_:))
  {
    return 7364980;
  }

  if (qword_10021B830 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000F4758(v11, qword_10021C930);
  v8(v5, v0, v1);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v14;
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315138;
    v15 = Hand.Action.description.getter();
    v17 = v16;
    v18 = *(v2 + 8);
    v18(v5, v1);
    v19 = sub_1000F9228(v15, v17, &v24);

    v20 = v22;
    *(v22 + 1) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "HandGestures: Received unknown action: %s", v20, 0xCu);
    sub_1000FA500(v23);
  }

  else
  {

    v18 = *(v2 + 8);
    v18(v5, v1);
  }

  v18(v7, v1);
  return 0x6E776F6E6B6E75;
}

char *sub_100118B34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F40B0(&unk_100218390);
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

void *sub_100118C38(uint64_t a1, uint64_t a2)
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

  sub_1000F40B0(&qword_100218360);
  v4 = *(type metadata accessor for Hand() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100118D34(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10010CDB8(a1, v2);
}

uint64_t sub_100118D78(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = type metadata accessor for Hand();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000F40B0(&qword_100218370);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1001190C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F40B0(&qword_1002183B0);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100119360(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = type metadata accessor for UUID();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000F40B0(&qword_1002183B8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1001196C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F40B0(&unk_1002183C0);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_100119954(unint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for Hand() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100119B00()
{
  v1 = v0;
  v29 = type metadata accessor for Hand();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F40B0(&qword_100218370);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_100119D68()
{
  v1 = v0;
  sub_1000F40B0(&qword_1002183B0);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_100119ED0()
{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F40B0(&qword_1002183B8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10011A138()
{
  v1 = v0;
  sub_1000F40B0(&unk_1002183C0);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

unint64_t sub_10011A294(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10010CD08(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1001190C4(v16, a4 & 1);
      result = sub_10010CD08(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for AXCameraHandGesturesEventUsage(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100119D68();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_10011A3F4(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10010CD08(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100119ED0();
      goto LABEL_7;
    }

    sub_100119360(v13, a3 & 1);
    v24 = sub_10010CD08(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for AXCameraHandGesturesEventUsage(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for UUID();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10010E354(v10, a2, a1, v16);
}

unint64_t sub_10011A55C(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10010CD08(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1001196C4(v14, a3 & 1);
      result = sub_10010CD08(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for AXCameraHandGesturesEventUsage(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10011A138();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_10011A6A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100118D34(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100119B00();
      goto LABEL_7;
    }

    sub_100118D78(v13, a3 & 1);
    v24 = sub_100118D34(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for Hand();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10011A810(v10, a2, a1, v16);
}

uint64_t sub_10011A810(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Hand();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_10011A8BC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10011BE1C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10011A99C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_10011B2AC(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

char *sub_10011AA94(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v47 << 9) | (8 * v18)));
        v19 = static Hasher._hash(seed:_:)();
        v20 = -1 << v6[32];
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & v13[v5 >> 6]) == 0);
      v21 = *(v6 + 6);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & v13[v5 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v49 = v45;
    v50 = v47;
    v51 = v11;
    v48[0] = v46;
    v48[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, v6 + 56, v14);
      v40 = sub_10011B5C0(v39, v4, v6, v5, v48);

      v45 = v49;
      v47 = v50;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v4;
    v43 = &v41;
    __chkstk_darwin(v22);
    v5 = &v41 - v23;
    memcpy(&v41 - v23, v6 + 56, v14);
    v24 = *(v6 + 2);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v47 << 9) | (8 * v29)));
      v30 = static Hasher._hash(seed:_:)();
      v31 = -1 << v6[32];
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = *(v6 + 6);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_10011B77C(v5, v42, v44, v6);
LABEL_43:
    sub_10010F1A0();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

unint64_t *sub_10011AEF0(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10011C94C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_10011AF8C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = type metadata accessor for Hand();
  v8 = *(v44 - 8);
  v9 = __chkstk_darwin(v44);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v35 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1000F40B0(&qword_100218370);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v36 = v8;
  v37 = a4;
  v38 = v8 + 32;
  v39 = v8 + 16;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v41 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + 8 * v20);
    v42 = *(v8 + 72);
    v23 = v40;
    v24 = v44;
    (*(v8 + 16))(v40, v21 + v42 * v20, v44);
    v25 = *(v8 + 32);
    v25(v43, v23, v24);
    result = static Hasher._hash(seed:_:)();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v13 + 48) + 8 * v29) = v22;
    result = (v25)(*(v13 + 56) + v29 * v42, v43, v44);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v8 = v36;
    a4 = v37;
    v14 = v41;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10011B2AC(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10011B968();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_10011BC98(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_10011B39C()
{
  v1 = v0;
  v2 = *v0;
  sub_1000F40B0(&qword_100218358);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10011B5C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = static Hasher._hash(seed:_:)();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_10011B77C(v8, a2, v10, a3);
}

uint64_t sub_10011B77C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000F40B0(&qword_100218358);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = static Hasher._hash(seed:_:)();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10011B968()
{
  v1 = v0;
  sub_1000F40B0(&qword_100218358);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_10011BAA8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000F40B0(&qword_100218358);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10011BC98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10011BE1C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10011B39C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10011B968();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10011BAA8();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10011BF3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Hand();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_10011C1E0(uint64_t a1)
{
  v2 = sub_1000F40B0(&qword_1002183D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000F40B0(&qword_1002183B8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000F44E4(v9, v5, &qword_1002183D8);
      v11 = *v5;
      result = sub_10010CD08(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10011C3BC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F40B0(&qword_1002183B0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_10010CD08(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10010CD08(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10011C4E4(uint64_t a1)
{
  v2 = sub_1000F40B0(&qword_1002183D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000F40B0(&qword_100218370);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000F44E4(v9, v5, &qword_1002183D0);
      v11 = *v5;
      result = sub_100118D34(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Hand();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10011C6E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F40B0(&unk_1002183C0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10010CD08(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10010CD08(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10011C7EC()
{
  result = qword_100218300;
  if (!qword_100218300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100218300);
  }

  return result;
}

uint64_t sub_10011C838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10011C880()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 42, 7);
}

id sub_10011C8C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = [v3 action];

  return [v1 handTrackerInputSource:v2 didReceiveActionWithIdentifier:v6 start:v4 ignoreInputHold:v5];
}

uint64_t sub_10011C934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10011C94C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a2;
  v37 = a1;
  v44 = sub_1000F40B0(&qword_100218368);
  __chkstk_darwin(v44);
  v49 = &v36 - v6;
  v48 = type metadata accessor for Hand();
  result = __chkstk_darwin(v48);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v10 = 0;
  v45 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v42 = v8 + 16;
  v43 = v8;
  v18 = a4 + 56;
  v40 = (v8 + 8);
  v41 = a4;
  v19 = v47;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v46 = (v16 - 1) & v16;
LABEL_13:
    v23 = v20 | (v10 << 6);
    v24 = v45[7];
    v25 = *(v45[6] + 8 * v23);
    v26 = *(v43 + 72);
    v39 = v23;
    v27 = *(v43 + 16);
    v28 = v48;
    v27(v19, v24 + v26 * v23, v48);
    v29 = v49;
    *v49 = v25;
    v27(&v29[*(v44 + 48)], v19, v28);
    v30 = v41;
    if (*(v41 + 16) && (v31 = static Hasher._hash(seed:_:)(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v18 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (*(*(v30 + 48) + 8 * v33) != v25)
      {
        v33 = (v33 + 1) & v34;
        if (((*(v18 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_1000F454C(v49, &qword_100218368);
      result = (*v40)(v47, v48);
      *(v37 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v35 = __OFADD__(v38++, 1);
      v16 = v46;
      if (v35)
      {
        __break(1u);
        return sub_10011AF8C(v37, v36, v38, v45);
      }
    }

    else
    {
LABEL_5:
      sub_1000F454C(v49, &qword_100218368);
      result = (*v40)(v47, v48);
      v16 = v46;
    }
  }

  v21 = v10;
  while (1)
  {
    v10 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_10011AF8C(v37, v36, v38, v45);
    }

    v22 = v12[v10];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v46 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011CCA4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_10011AEF0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_10011C94C((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

id sub_10011CE64(opaqueCMSampleBuffer *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HandsOutput();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((swift_isaMask & *v1) + 0x178))(v6))
  {
    sub_10011609C(a1, v8);
    sub_100116544();
    *(v1 + OBJC_IVAR___SCATHandTracker_notDetectedCount) = 0;
    sub_100115CB4(1, 0);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_10021B830 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000F4758(v9, qword_10021C930);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "HandGestures: Shouldn't be running when no hand gestures are assigned.", v12, 2u);
    }

    return [v2 stopRunning];
  }
}

unint64_t sub_10011D2A0()
{
  result = qword_100218310;
  if (!qword_100218310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218310);
  }

  return result;
}

unint64_t sub_10011D2F8()
{
  result = qword_100218318;
  if (!qword_100218318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218318);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandTracker.HandTrackerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandTracker.HandTrackerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10011D4F4()
{
  v1 = *(sub_1000F40B0(&unk_100217BC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_10011D63C()
{
  v1 = *(sub_1000F40B0(&unk_100217BC0) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_100117B3C(v3, v4, v5, v6, v0 + v2, v8, v9);
}

unint64_t sub_10011D6E4()
{
  result = qword_100218388;
  if (!qword_100218388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218388);
  }

  return result;
}

uint64_t sub_10011D74C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10011D7A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_10011D7F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10011D80C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011D82C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t static AXPrefsBridge.voiceSelection(forLanguageCode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1000F40B0(&qword_100218418);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for Locale.Language();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  sub_1000F40B0(&qword_100218420);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10011DA04, 0, 0);
}

uint64_t sub_10011DA04()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  Locale.init(withAXRemapping:)();
  type metadata accessor for AXSettings();
  v4 = static AXSettings.shared.getter();
  v5 = direct field offset for AXSettings.assistiveTouch;
  swift_beginAccess();
  v6 = *&v4[v5];

  v7 = AXSettings.AssistiveTouch.defaultVoiceSelectionsByLanguage.getter();
  v0[16] = v7;

  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v2 + 8))(v1, v3);
  type metadata accessor for VoiceResolver();
  v8 = static VoiceResolver.shared.getter();
  v0[17] = v8;
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_10011DB8C;
  v10 = v0[12];
  v11 = v0[8];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v10, v11, v8, 0, v7);
}

uint64_t sub_10011DB8C()
{
  v1 = *(*v0 + 64);

  sub_1000F454C(v1, &qword_100218418);

  return _swift_task_switch(sub_10011DCF4, 0, 0);
}

uint64_t sub_10011DCF4()
{
  v1 = v0[12];
  v2 = type metadata accessor for VoiceSelection();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[5];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v3 + 32))(v5, v1, v2);

    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_10011DFC8(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for VoiceSelection();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v2[6] = v7;
  v9 = swift_task_alloc();
  v2[7] = v9;
  *v9 = v2;
  v9[1] = sub_10011E0F4;

  return static AXPrefsBridge.voiceSelection(forLanguageCode:)(v5, v6, v8);
}

uint64_t sub_10011E0F4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  v5 = VoiceSelection._bridgeToObjectiveC()();
  (*(v3 + 8))(v2, v4);
  (v1)[2](v1, v5);

  _Block_release(v1);

  v6 = *(v8 + 8);

  return v6();
}

id AXPrefsBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXPrefsBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id AXPrefsBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXPrefsBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011E378()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011E3B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100100240;

  return sub_10011DFC8(v2, v3);
}

uint64_t sub_10011E46C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100102FFC;

  return v6();
}

uint64_t sub_10011E558()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100102FFC;

  return sub_10011E46C(v2, v3, v4);
}

uint64_t sub_10011E618(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100100240;

  return v7();
}

uint64_t sub_10011E700()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10011E740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100102FFC;

  return sub_10011E618(a1, v4, v5, v6);
}

uint64_t sub_10011E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F40B0(&qword_100217A40);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100102DDC(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000F454C(v11, &qword_100217A40);
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

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
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

    sub_1000F454C(a3, &qword_100217A40);

    return v21;
  }

LABEL_8:
  sub_1000F454C(a3, &qword_100217A40);
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

uint64_t sub_10011EAF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011EB30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100102FFC;

  return sub_10010203C(a1, v4);
}

uint64_t sub_10011EBE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100100240;

  return sub_10010203C(a1, v4);
}

int *sub_10011ECA8@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

Swift::Int sub_10011ED34()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10011EDA0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

float64x2_t sub_10011EDE0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  isa = [a1 pitch];
  if (!isa)
  {
    sub_10011EF94();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  v13 = isa;
  v14 = [a1 yaw];
  if (!v14)
  {
    sub_10011EF94();
    v14 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  v15 = v14;
  v16 = [a1 roll];
  if (!v16)
  {
    sub_10011EF94();
    v16 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  v17 = v16;
  [(objc_class *)v13 doubleValue];
  v19 = v18;

  [(objc_class *)v15 doubleValue];
  v25 = v20;

  [(objc_class *)v17 doubleValue];
  v24 = v21;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19 * 180.0 / 3.14159265;
  v22.f64[0] = v25;
  v22.f64[1] = v24;
  result = vdivq_f64(vmulq_f64(v22, vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
  *(a2 + 64) = result;
  return result;
}

unint64_t sub_10011EF94()
{
  result = qword_100218450;
  if (!qword_100218450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100218450);
  }

  return result;
}

void sub_10011EFE0()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_frontCameraOffsetFromDisplayCenter_obj();

    if (v2)
    {
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = sub_10011F0D0(v3);

      if (v4)
      {
        v5 = v4[2];
        if (v5)
        {
          v6 = *(v4 + 8);
          v7 = v6;
          if (v5 != 1)
          {
            v8 = *(v4 + 9);

            v9 = v8;
            if (v8 >= v6)
            {
              v9 = v6;
            }

LABEL_13:
            v10 = v7 == v9;
            goto LABEL_14;
          }
        }

        else
        {
          v7 = 0.0;
        }

        v9 = -1.0;
        if (v7 <= -1.0)
        {
          v9 = v7;
        }

        goto LABEL_13;
      }
    }
  }

  v10 = 0;
LABEL_14:
  byte_10021C948 = v10;
}

unint64_t *sub_10011F0D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  sub_10011F9BC(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000FB5C4(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10011F9BC((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      *(v3 + v6 + 8) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

char *sub_10011F1E4()
{
  if (qword_10021BDC0 != -1)
  {
    swift_once();
  }

  return &byte_10021C948;
}

void sub_10011F234(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 > 4u)
  {
    if (a1 > 7u)
    {
      goto LABEL_12;
    }

    if (a1 == 5)
    {
      goto LABEL_21;
    }

    if (a1 != 6)
    {
      goto LABEL_29;
    }

    v2 = String._bridgeToObjectiveC()();
    v3 = sub_100042B24(v2);

    if (v3)
    {
LABEL_32:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    __break(1u);
  }

  if (v1 <= 1)
  {
    goto LABEL_16;
  }

  if (v1 == 2)
  {
    goto LABEL_19;
  }

  if (v1 != 3)
  {
    goto LABEL_25;
  }

  v4 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v4);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_12:
  if (v1 == 8)
  {
    goto LABEL_23;
  }

  if (v1 != 9)
  {
    goto LABEL_31;
  }

  v5 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v5);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_16:
  if (v1)
  {
    goto LABEL_27;
  }

  v6 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v6);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_19:
  v7 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v7);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_21:
  v8 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v8);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_23:
  v9 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v9);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_25:
  v10 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v10);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_27:
  v11 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v11);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_29:
  v12 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v12);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  v13 = String._bridgeToObjectiveC()();
  v3 = sub_100042B24(v13);

  if (v3)
  {
    goto LABEL_32;
  }

  __break(1u);
}

double sub_10011F574(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

unint64_t sub_10011F5D4()
{
  result = qword_100218458;
  if (!qword_100218458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218458);
  }

  return result;
}

unint64_t sub_10011F62C()
{
  result = qword_100218460;
  if (!qword_100218460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218460);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FaceDetectorError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FaceDetectorError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_10011F7A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10011F7C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011F808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FaceGuidanceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceGuidanceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_10011F9BC(char *a1, int64_t a2, char a3)
{
  result = sub_10011F9DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10011F9DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F40B0(&qword_100218468);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10011FAE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000FB624(v0, qword_10021C950);
  sub_1000F4758(v0, qword_10021C950);
  return Logger.init(subsystem:category:)();
}

uint64_t AirPodsAvailabilityDetail.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x656E6E6F63736964;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t AirPodsAvailabilityDetail.localizedDescription.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = String._bridgeToObjectiveC()();
    v2 = sub_100042B24(v1);

    if (v2)
    {
LABEL_6:
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }

    __break(1u);
  }

  if (!a1)
  {
    v3 = String._bridgeToObjectiveC()();
    v2 = sub_100042B24(v3);

    if (v2)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10011FCCC()
{
  if (!*v0)
  {
    return 1701736302;
  }

  if (*v0 == 1)
  {
    return 0x656E6E6F63736964;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10011FD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  sub_100103224(a1);

  return v9(a1, a2, a3, a4);
}

uint64_t sub_10011FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  sub_100103224(a1);

  return v9(a1, a2, a3, a4);
}

uint64_t sub_10011FF38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_headGesturesDelegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t SCATAirPodsSource.requestHeadGesturesParts.getter()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_hgManager;
  swift_beginAccess();
  sub_100102B24(v0 + v1, v6);
  v2 = v7;
  v3 = v8;
  sub_1001029E8(v6, v7);
  v4 = (*(v3 + 8))(v2, v3);
  sub_1000FA500(v6);
  LOBYTE(v2) = dispatch thunk of HGConfiguration.requestPartGestures.getter();

  return v2 & 1;
}

void (*SCATAirPodsSource.requestHeadGesturesParts.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_hgManager;
  swift_beginAccess();
  sub_100102B24(v1 + v5, v4);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  sub_1001029E8(v4, v6);
  v8 = (*(v7 + 8))(v6, v7);
  sub_1000FA500(v4);
  LOBYTE(v6) = dispatch thunk of HGConfiguration.requestPartGestures.getter();

  *(v4 + 72) = v6 & 1;
  return sub_1001201C4;
}

void sub_1001201C4(uint64_t a1)
{
  v1 = *a1;
  (*((swift_isaMask & **(*a1 + 64)) + 0x160))(*(*a1 + 72));

  free(v1);
}

uint64_t sub_100120244@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result & 1;
  return result;
}

void sub_1001202AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_isSimulatingLongPress;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_100120308(v5);
}

void sub_100120308(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_isSimulatingLongPress;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      if (qword_10021C1D0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000F4758(v4, qword_10021C950);
      v5 = v1;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        aBlock[0] = v9;
        *v8 = 136315138;
        v10 = v5;
        v11 = [v10 description];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = sub_1000F9228(v12, v14, aBlock);

        *(v8 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v6, v7, "Begin simulated long press for %s", v8, 0xCu);
        sub_1000FA500(v9);
      }

      [v5 beginSimulatedLongPressForInputSource:v5];
      v16 = *&v5[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_dispatchTimer];
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      aBlock[4] = sub_10012515C;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000F55D8;
      aBlock[3] = &unk_1001D99B8;
      v18 = _Block_copy(aBlock);
      v19 = v5;

      [v16 afterDelay:v18 processBlock:0.5];
      _Block_release(v18);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_dispatchTimer] cancel];
      if (qword_10021C1D0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000F4758(v20, qword_10021C950);
      v21 = v1;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136315138;
        v26 = v21;
        v27 = [v26 description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_1000F9228(v28, v30, aBlock);

        *(v24 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v22, v23, "End simulated long press for %s", v24, 0xCu);
        sub_1000FA500(v25);
      }

      [v21 endSimulatedLongPressForInputSource:v21];
    }
  }
}

uint64_t SCATAirPodsSource.isSimulatingLongPress.getter()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_isSimulatingLongPress;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100120754(char a1)
{
  v3 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_isSimulatingLongPress;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100120308(v4);
}

char *sub_1001207D0()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for SCATAirPodsHeadGesturesDelegate();
  v1 = swift_allocObject();
  type metadata accessor for HGConfiguration();
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;

  static HGConfiguration.defaultConfig.getter();
  v2 = type metadata accessor for HGManager();
  v3 = objc_allocWithZone(v2);
  v4 = HGManager.init(delegate:config:)();
  v5 = dispatch thunk of HGManager.configuration.getter();
  dispatch thunk of HGConfiguration.requestPartGestures.setter();

  v6 = dispatch thunk of HGManager.configuration.getter();
  v7 = dispatch thunk of HGConfiguration.audioFeedbackConfig.getter();

  dispatch thunk of HGAudioFeedbackConfiguration.enableAudioFeedback.setter();
  v8 = swift_getObjectType();
  v19[3] = v2;
  v19[4] = &protocol witness table for HGManager;
  v19[0] = v4;
  v9 = (*(v8 + 344))(v19, 0, 1);
  swift_deallocPartialClassInstance();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = ObjectType;
  swift_beginAccess();
  v12 = *(v1 + 16);
  *(v1 + 16) = sub_100122EE8;
  *(v1 + 24) = v11;
  v13 = v9;

  sub_100103294(v12);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = ObjectType;
  swift_beginAccess();
  v16 = *(v1 + 32);
  *(v1 + 32) = sub_100122FB0;
  *(v1 + 40) = v15;

  sub_100103294(v16);

  v17 = &v13[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_headGesturesDelegate];
  swift_beginAccess();
  *v17 = v1;
  v17[1] = &off_1001D97B0;
  swift_unknownObjectRelease();
  return v13;
}

double sub_100120A8C()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void SCATAirPodsSource.init(headGestureManager:enableAudioFeedback:allowPartialGestures:)(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource__isStreaming] = 0;
  v4 = &v1[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_headGesturesDelegate];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_timerDelay] = 0x3FE0000000000000;
  v5 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_isSimulatingLongPress;
  v1[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_isSimulatingLongPress] = 0;
  v6 = &v1[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_hgManager];
  sub_100102B24(a1, &v1[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_hgManager]);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  sub_1001029E8(v6, v7);
  v9 = (*(v8 + 8))(v7, v8);
  swift_endAccess();
  dispatch thunk of HGConfiguration.requestPartGestures.setter();

  swift_beginAccess();
  v10 = v6[3];
  v11 = v6[4];
  sub_1001029E8(v6, v10);
  v12 = (*(v11 + 8))(v10, v11);
  swift_endAccess();
  v13 = dispatch thunk of HGConfiguration.audioFeedbackConfig.getter();

  dispatch thunk of HGAudioFeedbackConfiguration.enableAudioFeedback.setter();
  swift_beginAccess();
  v2[v5] = 0;
  v2[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_availability] = 0;
  *&v2[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_availabilityDetail] = 0;
  sub_1000FB560(0, &unk_100217B00);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = [objc_allocWithZone(AXDispatchTimer) initWithTargetSerialQueue:v14];

  if (v15)
  {
    v16 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_dispatchTimer;
    *&v2[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_dispatchTimer] = v15;
    [v15 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v17 = *&v2[v16];
    v18 = String._bridgeToObjectiveC()();
    [v17 setLabel:v18];

    v19.receiver = v2;
    v19.super_class = type metadata accessor for SCATAirPodsSource();
    objc_msgSendSuper2(&v19, "init");
    sub_1000FA500(a1);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SCATAirPodsSource.setRequestPartGestures(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_hgManager;
  swift_beginAccess();
  sub_100102B24(v1 + v4, v11);
  v5 = v12;
  v6 = v13;
  sub_1001029E8(v11, v12);
  v7 = (*(v6 + 8))(v5, v6);
  sub_1000FA500(v11);
  LODWORD(v5) = dispatch thunk of HGConfiguration.requestPartGestures.getter() & 1;

  if (v5 != v3)
  {
    sub_100102B24(v2 + v4, v11);
    v8 = v12;
    v9 = v13;
    sub_1001029E8(v11, v12);
    v10 = (*(v9 + 8))(v8, v9);
    sub_1000FA500(v11);
    dispatch thunk of HGConfiguration.requestPartGestures.setter();

    if ([v2 isRunning])
    {
      [v2 stopRunning];
      [v2 startRunning];
    }
  }
}

Swift::Void __swiftcall SCATAirPodsSource.startRunning()()
{
  v1 = v0;
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C950);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HeadGestures: Will start Head Gestures Manager", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_hgManager;
  swift_beginAccess();
  sub_100102B24(v1 + v6, v9);
  v7 = v10;
  v8 = v11;
  sub_1001029E8(v9, v10);
  (*(v8 + 32))(v7, v8);
  sub_1000FA500(v9);
  [v1 setRunning:1];
}

Swift::Void __swiftcall SCATAirPodsSource.stopRunning()()
{
  v1 = v0;
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C950);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HeadGestures: Will stop Head Gestures Manager", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_hgManager;
  swift_beginAccess();
  sub_100102B24(v1 + v6, v9);
  v7 = v10;
  v8 = v11;
  sub_1001029E8(v9, v10);
  (*(v8 + 40))(v7, v8);
  sub_1000FA500(v9);
  [v1 setRunning:0];
}

uint64_t sub_100121244(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F40B0(&qword_100217F38);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v14 = *(*(a1 + 56) + v13);
    *&v30[0] = *(*(a1 + 48) + v13);
    type metadata accessor for AXHeadGesturesEventUsage(0);
    v14;
    swift_dynamicCast();
    sub_1000FB560(0, &qword_100218300);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1000FAF9C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1000FAF9C(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1000FAF9C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id SCATAirPodsSource.switchKey(for:)(id result)
{
  if (result)
  {
    return [result accessibilityEventUsage];
  }

  __break(1u);
  return result;
}

uint64_t SCATAirPodsSource.handle(headGestureResult:)(void *a1)
{
  v2 = v1;
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000F4758(v4, qword_10021C950);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "handling head gesture result: %@", v8, 0xCu);
    sub_1001247B4(v9);
  }

  v11 = HGHeadGestureResult.eventUsage.getter();
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = v11;
    v15 = sub_1001224F8(v5);
    v16 = OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_isSimulatingLongPress;
    swift_beginAccess();
    v17 = *(v2 + v16);
    *(v2 + v16) = v15 & 1;
    sub_100120308(v17);
    v13 = sub_100121824(v14);
  }

  return v13 & 1;
}

uint64_t HGHeadGestureResult.eventUsage.getter()
{
  result = [v0 headGesture];
  if ((result - 1) >= 2)
  {
    v2 = [v0 headGesturePart];
    if (v2 > 2)
    {
      if (v2 != 3)
      {
        if (v2 == 4)
        {
          return 6;
        }

        return 0;
      }

      return 5;
    }

    else
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {
          return 4;
        }

        return 0;
      }

      return 3;
    }
  }

  return result;
}

uint64_t sub_100121824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100121C20(a1);
  if (!v4)
  {
    if (qword_10021C1D0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000F4758(v20, qword_10021C950);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v21, v22, "No AXSwitch found for event usage with raw value: %ld", v23, 0xCu);
    }

    goto LABEL_16;
  }

  v5 = v4;
  v6 = [objc_opt_self() fromSwitch:v4 longPress:0];
  if (!v6)
  {
    if (qword_10021C1D0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000F4758(v24, qword_10021C950);
    v25 = v5;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v26, v27))
    {

      return 0;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v5;
    v21 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "Cannot convert AXSwitch: %@ to action item.", v28, 0xCu);
    sub_1001247B4(v29);

LABEL_16:
    return 0;
  }

  v7 = v6;
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000F4758(v8, qword_10021C950);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v7;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "handling switch control action item: %@", v12, 0xCu);
    sub_1001247B4(v13);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v2;
  v30[4] = sub_100124FE4;
  v30[5] = v15;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_1000F55D8;
  v30[3] = &unk_1001D9968;
  v16 = _Block_copy(v30);
  v17 = v9;
  v18 = v2;

  AXPerformBlockOnMainThread();

  _Block_release(v16);
  return 1;
}

uint64_t sub_100121C20(uint64_t a1)
{
  v3 = [v1 actions];
  if (!v3)
  {
    if (qword_10021C1D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000F4758(v9, qword_10021C950);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not lookup action identifier because actions are nil", v12, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for AXHeadGesturesEventUsage(0);
  sub_100124EB4(&unk_1002185F8, type metadata accessor for AXHeadGesturesEventUsage);
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10010CD74(v13), (v7 & 1) == 0))
  {

    sub_10010EDA0(v13);
    return 0;
  }

  sub_1000FB5C4(*(v5 + 56) + 32 * v6, v14);
  sub_10010EDA0(v13);

  sub_1000FB560(0, &qword_100218300);
  if (swift_dynamicCast())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id sub_100121E30(uint64_t a1)
{
  v2 = sub_100121C20(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v10 = &selRef_action;
LABEL_10:

    goto LABEL_11;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    v10 = &selRef_action;
    goto LABEL_11;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
    v10 = &selRef_longPressAction;
    goto LABEL_10;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v10 = &selRef_longPressAction;
LABEL_11:
  v11 = [v3 *v10];
LABEL_12:
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 switchControlDebugLoggingEnabled];

  if (v13)
  {
    if (qword_10021C1D0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000F4758(v14, qword_10021C950);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v11;
      *(v17 + 12) = 2048;
      *(v17 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v15, v16, "Found action: %ld for event usage: %ld", v17, 0x16u);
    }
  }

  return v11;
}

void sub_100122108(char a1, uint64_t a2)
{
  v3 = v2;
  if ([v2 delegate])
  {
    aBlock[6] = &OBJC_PROTOCOL____TtP15assistivetouchd30SCATAirPodsInputSourceDelegate__0;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6 && (v7 = v6, (v8 = [v2 queue]) != 0))
    {
      v9 = v8;
      v10 = a1 & 1;
      if (v2[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_availability] == (a1 & 1) && *&v2[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_availabilityDetail] == a2)
      {
        swift_unknownObjectRelease();

        return;
      }

      v2[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_availability] = v10;
      *&v2[OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource_availabilityDetail] = a2;
      if (qword_10021C1D0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000F4758(v11, qword_10021C950);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v26 = v9;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        aBlock[0] = v15;
        *v14 = 67109378;
        *(v14 + 4) = a1 & 1;
        *(v14 + 8) = 2080;
        v25 = a1 & 1;
        if (a2)
        {
          if (a2 != 1)
          {
            _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
            return;
          }

          v16 = 0xEC00000064657463;
          v17 = 0x656E6E6F63736964;
        }

        else
        {
          v16 = 0xE400000000000000;
          v17 = 1701736302;
        }

        v18 = sub_1000F9228(v17, v16, aBlock);

        *(v14 + 10) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Did Update Availability: isAvailable: %{BOOL}d - detail: %s", v14, 0x12u);
        sub_1000FA500(v15);

        v9 = v26;
        v10 = v25;
      }

      else
      {
      }

      if ([v7 respondsToSelector:"airPodsInputSource:didUpdateAvailability:withDetail:"])
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v7;
        *(v19 + 24) = v3;
        *(v19 + 32) = v10;
        *(v19 + 40) = a2;
        aBlock[4] = sub_100124E70;
        aBlock[5] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000F55D8;
        aBlock[3] = &unk_1001D98C8;
        v20 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v21 = v3;

        [v9 performAsynchronousWritingBlock:v20];
        swift_unknownObjectRelease();

        _Block_release(v20);
      }

      else
      {
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed to update availability.", v24, 2u);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_1001224F8(void *a1)
{
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C950);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Should simulate long press: %@", v6, 0xCu);
    sub_1001247B4(v7);
  }

  result = [v3 headGesturePart];
  if (result)
  {
    v10 = [v3 headGesturePart];
    if ((v10 - 1) > 3)
    {
      return 0;
    }

    else
    {
      return (sub_100121E30(qword_1001C0108[(v10 - 1)]) != 0);
    }
  }

  return result;
}

uint64_t HGHeadGesturePart.gesture.getter(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 4;
  }

  else
  {
    return qword_1001C0108[a1 - 1];
  }
}

uint64_t HGHeadGesture.eventUsage.getter(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id SCATAirPodsSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCATAirPodsSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001227CC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_100103224(v1);
  return v1;
}

uint64_t sub_10012281C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100103294(v5);
}

uint64_t sub_1001228C0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_100103224(v1);
  return v1;
}

uint64_t sub_100122910(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_100103294(v5);
}

void (*sub_1001229B4(void *a1))(id)
{
  v2 = v1;
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000F4758(v4, qword_10021C950);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1000F9228(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "HeadGestures: %s", v8, 0xCu);
    sub_1000FA500(v9);
  }

  result = (*(*v2 + 120))();
  if (result)
  {
    v16 = result;
    result(v5);

    return sub_100103294(v16);
  }

  return result;
}

void (*sub_100122C0C(char a1))(void)
{
  v2 = v1;
  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000F4758(v4, qword_10021C950);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 21321;
    }

    else
    {
      v9 = 0x544F4E205349;
    }

    if (a1)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    v11 = sub_1000F9228(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "HeadGestures: Motion Data %s streaming", v7, 0xCu);
    sub_1000FA500(v8);
  }

  result = (*(*v2 + 96))();
  if (result)
  {
    v13 = result;
    result(a1 & 1);

    return sub_100103294(v13);
  }

  return result;
}

uint64_t sub_100122E38()
{
  sub_100103294(*(v0 + 16));
  sub_100103294(*(v0 + 32));

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100122E78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100122EB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100122EE8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC15assistivetouchd17SCATAirPodsSource__isStreaming) = a1 & 1;
    if (a1)
    {
      v4 = 1;
      v5 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 1;
    }

    sub_100122108(v4, v5);
  }
}

void sub_100122FB0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((swift_isaMask & *Strong) + 0x170))(a1);

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  if (qword_10021C1D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000F4758(v6, qword_10021C950);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 1024;
    v12 = v5 != 2 && (v5 & 1) != 0;
    *(v10 + 14) = v12;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "HeadGestures: SwitchControl handled hgResult: %@. Result: %{BOOL}d", v10, 0x12u);
    sub_1001247B4(v11);
  }
}

void (*sub_100123184(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_100125214;
}

void (*sub_10012325C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 136))();
  return sub_100125214;
}

void (*sub_100123348(uint64_t *a1))(void *)
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
  *(v2 + 32) = dispatch thunk of HGManager.configuration.modify();
  return sub_1001233BC;
}

unint64_t HGHeadGestureResult.description.getter()
{
  if ([v0 headGesture] - 1 > 1)
  {
    v8 = [v0 headGesturePart];
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v7 = 0xE900000000000074;
        v6 = 0x66654C656B616873;
        goto LABEL_23;
      }

      if (v8 == 4)
      {
        v7 = 0xEA00000000007468;
        v6 = 0x676952656B616873;
        goto LABEL_23;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v7 = 0xE500000000000000;
        v6 = 0x7055646F6ELL;
        goto LABEL_23;
      }

      if (v8 == 2)
      {
        v7 = 0xE700000000000000;
        v9 = 1147432814;
LABEL_20:
        v6 = v9 | 0x6E776F00000000;
        goto LABEL_23;
      }
    }

    v7 = 0xE700000000000000;
    v9 = 1852534389;
    goto LABEL_20;
  }

  v1 = [v0 headGesture];
  v2 = 0xE500000000000000;
  v3 = 0x656B616873;
  v4 = 0xE700000000000000;
  v5 = 0x6E776F6E6B6E75;
  if (v1 == 1)
  {
    v5 = 6582126;
    v4 = 0xE300000000000000;
  }

  if (v1 != 2)
  {
    v3 = v5;
    v2 = v4;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x756F72676B636162;
  }

  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0xEA0000000000646ELL;
  }

LABEL_23:
  _StringGuts.grow(_:)(23);

  v10._countAndFlagsBits = v6;
  v10._object = v7;
  String.append(_:)(v10);

  return 0xD000000000000015;
}

uint64_t HGHeadGesture.description.getter(uint64_t a1)
{
  v1 = 0x656B616873;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 6582126;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t HGHeadGesturePart.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x676952656B616873;
      }

      goto LABEL_8;
    }

    return 0x66654C656B616873;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v1 = 1147432814;
        return v1 | 0x6E776F00000000;
      }

LABEL_8:
      v1 = 1852534389;
      return v1 | 0x6E776F00000000;
    }

    return 0x7055646F6ELL;
  }
}

id sub_100123744(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t HGHeadGestureResult.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x8000000100179190;
  String.append(_:)(v6);
  v7 = [v0 headGesture];
  if (v7)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    if (v7 == 1)
    {
      v9 = 6582126;
      v8 = 0xE300000000000000;
    }

    v10 = v7 == 2;
    if (v7 == 2)
    {
      v11 = 0x656B616873;
    }

    else
    {
      v11 = v9;
    }

    if (v10)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {
    v11 = 0x756F72676B636162;
    v12 = 0xEA0000000000646ELL;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x6469666E6F43202CLL;
  v14._object = 0xEE00203A65636E65;
  String.append(_:)(v14);
  v15 = [v0 avgConfidence];
  v16 = [v15 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x7473656D6954202CLL;
  v21._object = 0xED0000203A706D61;
  String.append(_:)(v21);
  v22 = [v1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100124EB4(&qword_1002184C0, &type metadata accessor for Date);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  (*(v3 + 8))(v5, v2);
  v24._object = 0x80000001001791B0;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25 = [v1 headGesturePart];
  if (v25 <= 2)
  {
    if (v25 == 1)
    {
      v26 = 0xE500000000000000;
      v28 = 0x7055646F6ELL;
      goto LABEL_22;
    }

    if (v25 == 2)
    {
      v26 = 0xE700000000000000;
      v27 = 1147432814;
LABEL_19:
      v28 = v27 | 0x6E776F00000000;
      goto LABEL_22;
    }

LABEL_18:
    v26 = 0xE700000000000000;
    v27 = 1852534389;
    goto LABEL_19;
  }

  if (v25 == 3)
  {
    v26 = 0xE900000000000074;
    v28 = 0x66654C656B616873;
    goto LABEL_22;
  }

  if (v25 != 4)
  {
    goto LABEL_18;
  }

  v26 = 0xEA00000000007468;
  v28 = 0x676952656B616873;
LABEL_22:
  v29 = v26;
  String.append(_:)(*&v28);

  return v31[0];
}